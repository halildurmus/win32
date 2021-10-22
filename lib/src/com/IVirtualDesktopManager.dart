// IVirtualDesktopManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_VirtualDesktopManager = '{AA509086-5CA9-4C25-8F95-589D3C07B48A}';

/// @nodoc
const IID_IVirtualDesktopManager = '{A5CD92FF-29BE-454C-8D04-D82879FB3F1B}';

typedef _IsWindowOnCurrentVirtualDesktop_Native = Int32 Function(
    Pointer obj, IntPtr topLevelWindow, Pointer<Int32> onCurrentDesktop);
typedef _IsWindowOnCurrentVirtualDesktop_Dart = int Function(
    Pointer obj, int topLevelWindow, Pointer<Int32> onCurrentDesktop);

typedef _GetWindowDesktopId_Native = Int32 Function(
    Pointer obj, IntPtr topLevelWindow, Pointer<GUID> desktopId);
typedef _GetWindowDesktopId_Dart = int Function(
    Pointer obj, int topLevelWindow, Pointer<GUID> desktopId);

typedef _MoveWindowToDesktop_Native = Int32 Function(
    Pointer obj, IntPtr topLevelWindow, Pointer<GUID> desktopId);
typedef _MoveWindowToDesktop_Dart = int Function(
    Pointer obj, int topLevelWindow, Pointer<GUID> desktopId);

/// {@category Interface}
/// {@category com}
class IVirtualDesktopManager extends IUnknown {
  // vtable begins at 3, ends at 5

  IVirtualDesktopManager(Pointer<COMObject> ptr) : super(ptr);

  int
      IsWindowOnCurrentVirtualDesktop(
              int topLevelWindow, Pointer<Int32> onCurrentDesktop) =>
          ptr.ref.lpVtbl.value
                  .elementAt(3)
                  .cast<
                      Pointer<
                          NativeFunction<
                              _IsWindowOnCurrentVirtualDesktop_Native>>>()
                  .value
                  .asFunction<_IsWindowOnCurrentVirtualDesktop_Dart>()(
              ptr.ref.lpVtbl, topLevelWindow, onCurrentDesktop);

  int GetWindowDesktopId(int topLevelWindow, Pointer<GUID> desktopId) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_GetWindowDesktopId_Native>>>()
              .value
              .asFunction<_GetWindowDesktopId_Dart>()(
          ptr.ref.lpVtbl, topLevelWindow, desktopId);

  int MoveWindowToDesktop(int topLevelWindow, Pointer<GUID> desktopId) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_MoveWindowToDesktop_Native>>>()
              .value
              .asFunction<_MoveWindowToDesktop_Dart>()(
          ptr.ref.lpVtbl, topLevelWindow, desktopId);
}

/// {@category com}
class VirtualDesktopManager extends IVirtualDesktopManager {
  VirtualDesktopManager(Pointer<COMObject> ptr) : super(ptr);

  factory VirtualDesktopManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_VirtualDesktopManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IVirtualDesktopManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return VirtualDesktopManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
