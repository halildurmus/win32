// IAppVisibility.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IAppVisibilityEvents.dart';

/// @nodoc
const IID_IAppVisibility = '{2246EA2D-CAEA-4444-A3C4-6DE827E44313}';

/// {@category Interface}
/// {@category com}
class IAppVisibility extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAppVisibility(Pointer<COMObject> ptr) : super(ptr);

  int GetAppVisibilityOnMonitor(
    int hMonitor,
    Pointer<Int32> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hMonitor,
            Pointer<Int32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hMonitor,
            Pointer<Int32> pMode,
          )>()(
        ptr.ref.lpVtbl,
        hMonitor,
        pMode,
      );

  int IsLauncherVisible(
    Pointer<Int32> pfVisible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfVisible,
          )>()(
        ptr.ref.lpVtbl,
        pfVisible,
      );

  int Advise(
    Pointer<COMObject> pCallback,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
        pdwCookie,
      );

  int Unadvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}

/// @nodoc
const CLSID_AppVisibility = '{7E5FE3D9-985F-4908-91F9-EE19F9FD1514}';

/// {@category com}
class AppVisibility extends IAppVisibility {
  AppVisibility(Pointer<COMObject> ptr) : super(ptr);

  factory AppVisibility.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AppVisibility);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAppVisibility);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AppVisibility(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
