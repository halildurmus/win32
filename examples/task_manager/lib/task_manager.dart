import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'models.dart';

/// Provides functionality for managing Windows tasks, including:
/// - Enumerating running tasks
/// - Running a new task
/// - Terminating a running task
abstract class TaskManager {
  /// Runs a new task from the specified [path].
  ///
  /// Returns `true` if the task was successfully started; otherwise, `false`.
  static bool run(String path) {
    final operation = w('open');
    final file = w(path);
    final result = ShellExecute(
      null,
      operation.ptr,
      file.ptr,
      null,
      null,
      SW_SHOWNORMAL,
    );
    return result > 32;
  }

  /// Retrieves a list of currently running tasks.
  ///
  /// Returns `null` if retrieval failed.
  static List<Task>? get tasks => using((arena) {
    final tasks = <Task>[];

    final buffer = arena<Uint32>(1024);
    final cbNeeded = arena<Uint32>();

    if (!EnumProcesses(buffer, sizeOf<Uint32>() * 1024, cbNeeded)) {
      return null;
    }

    final processCount = cbNeeded.value ~/ sizeOf<Uint32>();
    final processIds = buffer.asTypedList(processCount);

    for (final pid in processIds) {
      final hProcess = OpenProcess(
        PROCESS_QUERY_INFORMATION | PROCESS_VM_READ,
        false,
        pid,
      );

      if (hProcess != NULL) {
        final hModule = arena<HMODULE>();
        final cbNeededMod = arena<Uint32>();

        if (EnumProcessModules(
          hProcess,
          hModule,
          sizeOf<HMODULE>(),
          cbNeededMod,
        )) {
          final moduleName = Pwstr.allocate(MAX_PATH);

          if (GetModuleBaseName(
                hProcess,
                hModule.value,
                moduleName.ptr,
                MAX_PATH,
              ) >
              0) {
            final name = moduleName.toDartString();
            final filePath = Pwstr.allocate(MAX_PATH);
            final result = GetModuleFileNameEx(
              hProcess,
              hModule.value,
              filePath.ptr,
              MAX_PATH,
            );
            final path = result != 0 ? filePath.toDartString() : null;

            final description = path != null
                ? (_getFileDescription(path) ?? name)
                : name;

            final task = Task(
              iconAsBytes: path != null
                  ? (_extractIcon(path) ?? Uint8List(0))
                  : Uint8List(0),
              name: name,
              pid: pid,
              description: description,
            );
            tasks.add(task);
          }
        }

        CloseHandle(hProcess);
      }
    }

    return tasks;
  });

  /// Terminates a running task with the given [pid].
  ///
  /// Returns `true` if the task was successfully terminated; otherwise,
  /// `false`.
  static bool terminate(int pid) {
    final handle = OpenProcess(PROCESS_TERMINATE, false, pid);
    if (handle == NULL) return false;

    try {
      return TerminateProcess(handle, 0);
    } finally {
      CloseHandle(handle);
    }
  }

  static String? _getFileDescription(String path) => using((arena) {
    final lptstrFileName = w(path);
    final handle = arena<Uint32>();
    final size = GetFileVersionInfoSize(lptstrFileName.ptr, handle);
    if (size == 0) return null;

    final versionInfo = arena<Uint8>(size);
    if (!GetFileVersionInfo(lptstrFileName.ptr, size, versionInfo)) {
      return null;
    }

    final lplpBuffer = arena<PWSTR>();
    final puLen = arena<Uint32>();

    final subBlock = w(r'\StringFileInfo\040904b0\FileDescription');
    if (!VerQueryValue(versionInfo, subBlock.ptr, lplpBuffer, puLen)) {
      return null;
    }

    if (puLen.value == 0) return null;

    return lplpBuffer.value.toDartString();
  });

  static Uint8List? _extractIcon(String path) => using((arena) {
    final filePath = w(path);
    final iconID = arena<WORD>();
    final hIcon = ExtractAssociatedIcon(filePath.ptr, iconID);
    if (hIcon == NULL) return null;
    final iconData = _getIconData(hIcon);
    DestroyIcon(hIcon);
    return iconData;
  });

  static Uint8List? _getIconData(int hIcon, {int nColorBits = 32}) => using((
    arena,
  ) {
    final buffer = <int>[];
    final hdc = CreateCompatibleDC(null);

    final icoHeader = [0, 0, 1, 0, 1, 0];
    buffer.addAll(icoHeader);

    final iconInfo = arena<ICONINFO>();
    if (!GetIconInfo(hIcon, iconInfo)) {
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

    DeleteObject(iconInfo.ref.hbmColor);
    DeleteObject(iconInfo.ref.hbmMask);
    DeleteDC(hdc);

    return Uint8List.fromList(buffer);
  });
}

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
