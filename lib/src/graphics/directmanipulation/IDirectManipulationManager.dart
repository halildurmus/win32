// IDirectManipulationManager.dart

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
import '../../graphics/directmanipulation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../graphics/directmanipulation/IDirectManipulationFrameInfoProvider.dart';

/// @nodoc
const IID_IDirectManipulationManager = '{FBF5D3B4-70C7-4163-9322-5A6F660D6FBC}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationManager extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDirectManipulationManager(Pointer<COMObject> ptr) : super(ptr);

  int Activate(
    int window,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr window,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int window,
          )>()(
        ptr.ref.lpVtbl,
        window,
      );

  int Deactivate(
    int window,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr window,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int window,
          )>()(
        ptr.ref.lpVtbl,
        window,
      );

  int RegisterHitTestTarget(
    int window,
    int hitTestWindow,
    int type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr window,
            IntPtr hitTestWindow,
            Int32 type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int window,
            int hitTestWindow,
            int type,
          )>()(
        ptr.ref.lpVtbl,
        window,
        hitTestWindow,
        type,
      );

  int ProcessInput(
    Pointer<MSG> message,
    Pointer<Int32> handled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> message,
            Pointer<Int32> handled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> message,
            Pointer<Int32> handled,
          )>()(
        ptr.ref.lpVtbl,
        message,
        handled,
      );

  int GetUpdateManager(
    Pointer<GUID> riid,
    Pointer<Pointer> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        object,
      );

  int CreateViewport(
    Pointer<COMObject> frameInfo,
    int window,
    Pointer<GUID> riid,
    Pointer<Pointer> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> frameInfo,
            IntPtr window,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> frameInfo,
            int window,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>()(
        ptr.ref.lpVtbl,
        frameInfo,
        window,
        riid,
        object,
      );

  int CreateContent(
    Pointer<COMObject> frameInfo,
    Pointer<GUID> clsid,
    Pointer<GUID> riid,
    Pointer<Pointer> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> frameInfo,
            Pointer<GUID> clsid,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> frameInfo,
            Pointer<GUID> clsid,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>()(
        ptr.ref.lpVtbl,
        frameInfo,
        clsid,
        riid,
        object,
      );
}

/// @nodoc
const CLSID_DirectManipulationManager =
    '{54E211B6-3650-4F75-8334-FA359598E1C5}';

/// {@category com}
class DirectManipulationManager extends IDirectManipulationManager {
  DirectManipulationManager(Pointer<COMObject> ptr) : super(ptr);

  factory DirectManipulationManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DirectManipulationManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDirectManipulationManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DirectManipulationManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
