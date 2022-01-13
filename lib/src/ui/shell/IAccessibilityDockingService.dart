// IAccessibilityDockingService.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IAccessibilityDockingServiceCallback.dart';

/// @nodoc
const IID_IAccessibilityDockingService =
    '{8849DC22-CEDF-4C95-998D-051419DD3F76}';

/// {@category Interface}
/// {@category com}
class IAccessibilityDockingService extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAccessibilityDockingService(Pointer<COMObject> ptr) : super(ptr);

  int GetAvailableSize(
    int hMonitor,
    Pointer<Uint32> pcxFixed,
    Pointer<Uint32> pcyMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hMonitor,
            Pointer<Uint32> pcxFixed,
            Pointer<Uint32> pcyMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hMonitor,
            Pointer<Uint32> pcxFixed,
            Pointer<Uint32> pcyMax,
          )>()(
        ptr.ref.lpVtbl,
        hMonitor,
        pcxFixed,
        pcyMax,
      );

  int DockWindow(
    int hwnd,
    int hMonitor,
    int cyRequested,
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            IntPtr hMonitor,
            Uint32 cyRequested,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int hMonitor,
            int cyRequested,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        hMonitor,
        cyRequested,
        pCallback,
      );

  int UndockWindow(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );
}

/// @nodoc
const CLSID_AccessibilityDockingService =
    '{29CE1D46-B481-4AA0-A08A-D3EBC8ACA402}';

/// {@category com}
class AccessibilityDockingService extends IAccessibilityDockingService {
  AccessibilityDockingService(Pointer<COMObject> ptr) : super(ptr);

  factory AccessibilityDockingService.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_AccessibilityDockingService);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAccessibilityDockingService);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AccessibilityDockingService(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
