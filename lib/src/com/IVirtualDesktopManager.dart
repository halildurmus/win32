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
const IID_IVirtualDesktopManager = '{A5CD92FF-29BE-454C-8D04-D82879FB3F1B}';

/// {@category Interface}
/// {@category com}
class IVirtualDesktopManager extends IUnknown {
  // vtable begins at 3, ends at 5
  IVirtualDesktopManager(Pointer<COMObject> ptr) : super(ptr);

  int IsWindowOnCurrentVirtualDesktop(
          int topLevelWindow, Pointer<Int32> onCurrentDesktop) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, IntPtr topLevelWindow,
                              Pointer<Int32> onCurrentDesktop)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int topLevelWindow,
                      Pointer<Int32> onCurrentDesktop)>()(
          ptr.ref.lpVtbl, topLevelWindow, onCurrentDesktop);

  int GetWindowDesktopId(int topLevelWindow, Pointer<GUID> desktopId) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, IntPtr topLevelWindow,
                              Pointer<GUID> desktopId)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int topLevelWindow, Pointer<GUID> desktopId)>()(
          ptr.ref.lpVtbl, topLevelWindow, desktopId);

  int MoveWindowToDesktop(int topLevelWindow, Pointer<GUID> desktopId) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, IntPtr topLevelWindow,
                              Pointer<GUID> desktopId)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int topLevelWindow, Pointer<GUID> desktopId)>()(
          ptr.ref.lpVtbl, topLevelWindow, desktopId);
}
