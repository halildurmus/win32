// IDirectManipulationUpdateManager.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/directmanipulation/IDirectManipulationUpdateHandler.dart';
import '../../graphics/directmanipulation/IDirectManipulationFrameInfoProvider.dart';

/// @nodoc
const IID_IDirectManipulationUpdateManager =
    '{B0AE62FD-BE34-46E7-9CAA-D361FACBB9CC}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationUpdateManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirectManipulationUpdateManager(Pointer<COMObject> ptr) : super(ptr);

  int RegisterWaitHandleCallback(
    int handle,
    Pointer<COMObject> eventHandler,
    Pointer<Uint32> cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr handle,
            Pointer<COMObject> eventHandler,
            Pointer<Uint32> cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int handle,
            Pointer<COMObject> eventHandler,
            Pointer<Uint32> cookie,
          )>()(
        ptr.ref.lpVtbl,
        handle,
        eventHandler,
        cookie,
      );

  int UnregisterWaitHandleCallback(
    int cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cookie,
          )>()(
        ptr.ref.lpVtbl,
        cookie,
      );

  int Update(
    Pointer<COMObject> frameInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> frameInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> frameInfo,
          )>()(
        ptr.ref.lpVtbl,
        frameInfo,
      );
}

/// @nodoc
const CLSID_DirectManipulationUpdateManager =
    '{9FC1BFD5-1835-441A-B3B1-B6CC74B727D0}';

/// {@category com}
class DirectManipulationUpdateManager extends IDirectManipulationUpdateManager {
  DirectManipulationUpdateManager(Pointer<COMObject> ptr) : super(ptr);

  factory DirectManipulationUpdateManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_DirectManipulationUpdateManager);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IDirectManipulationUpdateManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DirectManipulationUpdateManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
