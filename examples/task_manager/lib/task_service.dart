import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'models.dart';

/// High-level service for interacting with running Windows processes.
final class TaskService {
  const TaskService();

  /// Runs a new task from the specified [path].
  ///
  /// Returns `true` if the task was successfully started; otherwise, `false`.
  bool run(String path) => using((arena) {
    final result = ShellExecute(
      null,
      arena.pcwstr('open'),
      arena.pcwstr(path),
      null,
      null,
      SW_SHOWNORMAL,
    );
    return result.address > 32;
  });

  /// Enumerates running processes.
  ///
  /// This method never throws. Processes that cannot be inspected are silently
  /// skipped.
  List<Task> enumerate({bool includeIcons = true}) =>
      _enumerateInternal(includeIcons);

  /// Terminates a process by PID.
  ///
  /// Returns `true` if the task was successfully terminated; otherwise,
  /// `false`.
  bool terminate(int pid) {
    final hProcess = OpenProcess(PROCESS_TERMINATE, false, pid).value;
    if (hProcess.isNull) return false;
    try {
      return TerminateProcess(hProcess, 0).value;
    } finally {
      hProcess.close();
    }
  }
}

String? _fileDescription(String path) => using((arena) {
  final fileName = arena.pcwstr(path);
  final handle = arena<Uint32>();

  final size = GetFileVersionInfoSize(fileName, handle).value;
  if (size == 0) return null;

  final buffer = arena<Uint8>(size);
  if (!GetFileVersionInfo(fileName, size, buffer).value) {
    return null;
  }

  final value = arena<Pointer<Utf16>>();
  final length = arena<Uint32>();

  const subBlock = r'\StringFileInfo\040904b0\FileDescription';
  if (!VerQueryValue(buffer, arena.pcwstr(subBlock), value, length)) {
    return null;
  }

  return length.value == 0 ? null : value.value.toDartString();
});

Uint8List? _serializeIcon(HICON hIcon, {int nColorBits = 32}) => using((arena) {
  final buffer = <int>[];
  final hdc = CreateCompatibleDC(null);

  final icoHeader = [0, 0, 1, 0, 1, 0];
  buffer.addAll(icoHeader);

  final iconInfo = arena<ICONINFO>();
  if (!GetIconInfo(hIcon, iconInfo).value) {
    DeleteDC(hdc);
    return null;
  }

  final bmInfo = arena<BITMAPINFO>();
  bmInfo.ref.bmiHeader
    ..biSize = sizeOf<BITMAPINFOHEADER>()
    ..biBitCount = 0;

  if (GetDIBits(
        hdc,
        iconInfo.ref.hbmColor,
        0,
        0,
        null,
        bmInfo,
        DIB_RGB_COLORS,
      ) ==
      0) {
    DeleteDC(hdc);
    return null;
  }

  var nBmInfoSize = sizeOf<BITMAPINFOHEADER>();
  if (nColorBits < 24) {
    nBmInfoSize += sizeOf<RGBQUAD>() * (1 << nColorBits);
  }

  if (bmInfo.ref.bmiHeader.biSizeImage == 0) {
    DeleteDC(hdc);
    return null;
  }

  final bits = arena<Uint8>(bmInfo.ref.bmiHeader.biSizeImage);

  bmInfo.ref.bmiHeader
    ..biBitCount = nColorBits
    ..biCompression = BI_RGB;

  if (GetDIBits(
        hdc,
        iconInfo.ref.hbmColor,
        0,
        bmInfo.ref.bmiHeader.biHeight,
        bits,
        bmInfo,
        DIB_RGB_COLORS,
      ) ==
      0) {
    DeleteDC(hdc);
    return null;
  }

  final maskInfo = arena<BITMAPINFO>();
  maskInfo.ref.bmiHeader
    ..biSize = sizeOf<BITMAPINFOHEADER>()
    ..biBitCount = 0;

  if (GetDIBits(
            hdc,
            iconInfo.ref.hbmMask,
            0,
            0,
            null,
            maskInfo,
            DIB_RGB_COLORS,
          ) ==
          0 ||
      maskInfo.ref.bmiHeader.biBitCount != 1) {
    DeleteDC(hdc);
    return null;
  }

  final maskBits = arena<Uint8>(maskInfo.ref.bmiHeader.biSizeImage);
  if (GetDIBits(
        hdc,
        iconInfo.ref.hbmMask,
        0,
        maskInfo.ref.bmiHeader.biHeight,
        maskBits,
        maskInfo,
        DIB_RGB_COLORS,
      ) ==
      0) {
    DeleteDC(hdc);
    return null;
  }

  final dir = arena<_IconDirectoryEntry>();
  dir.ref
    ..nWidth = bmInfo.ref.bmiHeader.biWidth
    ..nHeight = bmInfo.ref.bmiHeader.biHeight
    ..nNumColorsInPalette = (nColorBits == 4 ? 16 : 0)
    ..nNumColorPlanes = 0
    ..nBitsPerPixel = bmInfo.ref.bmiHeader.biBitCount
    ..nDataLength =
        bmInfo.ref.bmiHeader.biSizeImage +
        maskInfo.ref.bmiHeader.biSizeImage +
        nBmInfoSize
    ..nOffset = sizeOf<_IconDirectoryEntry>() + 6;

  buffer.addAll(dir.cast<Uint8>().asTypedList(sizeOf<_IconDirectoryEntry>()));

  bmInfo.ref.bmiHeader
    ..biHeight *= 2
    ..biCompression = 0
    ..biSizeImage += maskInfo.ref.bmiHeader.biSizeImage;
  buffer
    ..addAll(bmInfo.cast<Uint8>().asTypedList(nBmInfoSize))
    ..addAll(bits.asTypedList(bmInfo.ref.bmiHeader.biSizeImage))
    ..addAll(maskBits.asTypedList(maskInfo.ref.bmiHeader.biSizeImage));

  iconInfo.ref.hbmColor.close();
  iconInfo.ref.hbmMask.close();
  DeleteDC(hdc);

  return Uint8List.fromList(buffer);
});

Uint8List? _extractIcon(String path) => using((arena) {
  final iconId = arena<WORD>();
  final hIcon = ExtractAssociatedIcon(arena.pwstr(path), iconId);
  if (hIcon.isNull) return null;
  try {
    return _serializeIcon(hIcon);
  } finally {
    hIcon.close();
  }
});

Task? _inspectProcess(Arena arena, int pid, bool includeIcons) {
  final handle = OpenProcess(
    PROCESS_QUERY_INFORMATION | PROCESS_VM_READ,
    false,
    pid,
  ).value;
  if (handle.isNull) return null;

  try {
    final module = arena<Pointer>();
    final needed = arena<Uint32>();

    if (!EnumProcessModules(handle, module, sizeOf<Pointer>(), needed).value) {
      return null;
    }

    final nameBuffer = arena.pwstrBuffer(MAX_PATH);
    if (GetModuleBaseName(
          handle,
          HMODULE(module.value),
          nameBuffer,
          MAX_PATH,
        ).value ==
        0) {
      return null;
    }

    final name = nameBuffer.toDartString();
    final pathBuffer = arena.pwstrBuffer(MAX_PATH);
    final pathLength = GetModuleFileNameEx(
      handle,
      HMODULE(module.value),
      pathBuffer,
      MAX_PATH,
    ).value;

    final path = pathLength != 0 ? pathBuffer.toDartString() : null;
    final description = path != null ? (_fileDescription(path) ?? name) : name;

    return .new(
      pid: pid,
      name: name,
      description: description,
      iconAsBytes: includeIcons && path != null
          ? (_extractIcon(path) ?? Uint8List(0))
          : Uint8List(0),
    );
  } finally {
    handle.close();
  }
}

List<Task> _enumerateInternal(bool includeIcons) => using((arena) {
  final tasks = <Task>[];

  final pids = arena<Uint32>(1024);
  final bytesReturned = arena<Uint32>();

  if (!EnumProcesses(pids, sizeOf<Uint32>() * 1024, bytesReturned).value) {
    return tasks;
  }

  final count = bytesReturned.value ~/ sizeOf<Uint32>();
  final pidList = pids.asTypedList(count);

  for (final pid in pidList) {
    final task = _inspectProcess(arena, pid, includeIcons);
    if (task != null) {
      tasks.add(task);
    }
  }

  return tasks;
});

base class _IconDirectoryEntry extends Struct {
  @Uint8()
  external int nWidth;

  @Uint8()
  external int nHeight;

  @Uint8()
  external int nNumColorsInPalette;

  @Uint8()
  external int nReserved;

  @Uint16()
  external int nNumColorPlanes;

  @Uint16()
  external int nBitsPerPixel;

  @Uint32()
  external int nDataLength;

  @Uint32()
  external int nOffset;
}
