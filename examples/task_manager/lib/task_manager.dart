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
    final lpFile = path.toNativeUtf16();
    final result = ShellExecute(
      0,
      'open'.toNativeUtf16(),
      lpFile,
      nullptr,
      nullptr,
      SW_SHOWNORMAL,
    );
    free(lpFile);
    return result > 32;
  }

  /// Retrieves a list of currently running tasks.
  ///
  /// Returns `null` if retrieval failed.
  static List<Task>? get tasks {
    return using((arena) {
      final tasks = <Task>[];

      final buffer = arena<Uint32>(1024);
      final cbNeeded = arena<Uint32>();

      if (EnumProcesses(buffer, sizeOf<Uint32>() * 1024, cbNeeded) == FALSE) {
        return null;
      }

      final processCount = cbNeeded.value ~/ sizeOf<Uint32>();
      final processIds = buffer.asTypedList(processCount);

      for (final pid in processIds) {
        final hProcess = OpenProcess(
          PROCESS_QUERY_INFORMATION | PROCESS_VM_READ,
          FALSE,
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
              ) !=
              0) {
            final moduleName = arena<WCHAR>(MAX_PATH).cast<Utf16>();

            if (GetModuleBaseName(
                  hProcess,
                  hModule.value,
                  moduleName,
                  MAX_PATH,
                ) >
                0) {
              final name = moduleName.toDartString();
              final filePath = arena<WCHAR>(MAX_PATH).cast<Utf16>();
              final result = GetModuleFileNameEx(
                hProcess,
                hModule.value,
                filePath,
                MAX_PATH,
              );
              final path = result != 0 ? filePath.toDartString() : null;
              final description =
                  path != null ? (_getFileDescription(path) ?? name) : name;
              final iconAsBytes =
                  path != null
                      ? (_extractIcon(path) ?? Uint8List(0))
                      : Uint8List(0);
              final task = Task(
                iconAsBytes: iconAsBytes,
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
  }

  /// Terminates a running task with the given [pid].
  ///
  /// Returns `true` if the task was successfully terminated; otherwise,
  /// `false`.
  static bool terminate(int pid) {
    final handle = OpenProcess(PROCESS_TERMINATE, FALSE, pid);
    if (handle == NULL) return false;

    try {
      return TerminateProcess(handle, 0) == TRUE;
    } finally {
      CloseHandle(handle);
    }
  }

  static String? _getFileDescription(String path) {
    return using((arena) {
      final lptstrFileName = path.toNativeUtf16(allocator: arena);
      final handle = arena<Uint32>();
      final size = GetFileVersionInfoSize(lptstrFileName, handle);
      if (size == 0) return null;

      final versionInfo = arena<Uint8>(size);
      if (GetFileVersionInfo(lptstrFileName, 0, size, versionInfo) == FALSE) {
        return null;
      }

      final lplpBuffer = arena<Pointer<Utf16>>();
      final puLen = arena<Uint32>();

      if (VerQueryValue(
            versionInfo,
            r'\StringFileInfo\040904b0\FileDescription'.toNativeUtf16(
              allocator: arena,
            ),
            lplpBuffer.cast(),
            puLen,
          ) ==
          FALSE) {
        return null;
      }

      if (puLen.value == 0) return null;

      return lplpBuffer.value.toDartString();
    });
  }

  static Uint8List? _extractIcon(String path) {
    return using((arena) {
      final filePath = path.toNativeUtf16(allocator: arena);
      final instance = GetModuleHandle(nullptr);
      final iconID = arena<WORD>();

      final hIcon = ExtractAssociatedIcon(instance, filePath, iconID);
      if (hIcon == NULL) return null;

      final iconData = _getIconData(hIcon);
      DestroyIcon(hIcon);
      return iconData;
    });
  }

  static Uint8List? _getIconData(int hIcon, {int nColorBits = 32}) {
    return using((arena) {
      final buffer = <int>[];
      final hdc = CreateCompatibleDC(NULL);

      final icoHeader = [0, 0, 1, 0, 1, 0];
      buffer.addAll(icoHeader);

      final iconInfo = arena<ICONINFO>();
      if (GetIconInfo(hIcon, iconInfo) == 0) {
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
            nullptr,
            bmInfo,
            DIB_RGB_COLORS,
          ) ==
          0) {
        DeleteDC(hdc);
        return null;
      }

      int nBmInfoSize = sizeOf<BITMAPINFOHEADER>();
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
                nullptr,
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

      buffer.addAll(
        dir.cast<Uint8>().asTypedList(sizeOf<_IconDirectoryEntry>()),
      );

      bmInfo.ref.bmiHeader
        ..biHeight *= 2
        ..biCompression = 0
        ..biSizeImage += maskInfo.ref.bmiHeader.biSizeImage;
      buffer.addAll(bmInfo.cast<Uint8>().asTypedList(nBmInfoSize));

      buffer.addAll(bits.asTypedList(bmInfo.ref.bmiHeader.biSizeImage));
      buffer.addAll(maskBits.asTypedList(maskInfo.ref.bmiHeader.biSizeImage));

      DeleteObject(iconInfo.ref.hbmColor);
      DeleteObject(iconInfo.ref.hbmMask);
      DeleteDC(hdc);

      return Uint8List.fromList(buffer);
    });
  }
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
