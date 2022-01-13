// IDirectManipulationViewport.dart

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
import '../../specialTypes.dart';
import '../../graphics/directmanipulation/IDirectManipulationContent.dart';
import '../../graphics/directmanipulation/IDirectManipulationViewportEventHandler.dart';

/// @nodoc
const IID_IDirectManipulationViewport =
    '{28B85A3D-60A0-48BD-9BA1-5CE8D9EA3A6D}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationViewport extends IUnknown {
  // vtable begins at 3, is 28 entries long.
  IDirectManipulationViewport(Pointer<COMObject> ptr) : super(ptr);

  int Enable() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Disable() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetContact(
    int pointerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pointerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pointerId,
          )>()(
        ptr.ref.lpVtbl,
        pointerId,
      );

  int ReleaseContact(
    int pointerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pointerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pointerId,
          )>()(
        ptr.ref.lpVtbl,
        pointerId,
      );

  int ReleaseAllContacts() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetStatus(
    Pointer<Int32> status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );

  int GetTag(
    Pointer<GUID> riid,
    Pointer<Pointer> object,
    Pointer<Uint32> id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
            Pointer<Uint32> id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
            Pointer<Uint32> id,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        object,
        id,
      );

  int SetTag(
    Pointer<COMObject> object,
    int id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Uint32 id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            int id,
          )>()(
        ptr.ref.lpVtbl,
        object,
        id,
      );

  int GetViewportRect(
    Pointer<RECT> viewport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> viewport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> viewport,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
      );

  int SetViewportRect(
    Pointer<RECT> viewport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> viewport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> viewport,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
      );

  int ZoomToRect(
    double left,
    double top,
    double right,
    double bottom,
    int animate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float left,
            Float top,
            Float right,
            Float bottom,
            Int32 animate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double left,
            double top,
            double right,
            double bottom,
            int animate,
          )>()(
        ptr.ref.lpVtbl,
        left,
        top,
        right,
        bottom,
        animate,
      );

  int SetViewportTransform(
    Pointer<Float> matrix,
    int pointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> matrix,
            Uint32 pointCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> matrix,
            int pointCount,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
        pointCount,
      );

  int SyncDisplayTransform(
    Pointer<Float> matrix,
    int pointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> matrix,
            Uint32 pointCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> matrix,
            int pointCount,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
        pointCount,
      );

  int GetPrimaryContent(
    Pointer<GUID> riid,
    Pointer<Pointer> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int AddContent(
    Pointer<COMObject> content,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> content,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> content,
          )>()(
        ptr.ref.lpVtbl,
        content,
      );

  int RemoveContent(
    Pointer<COMObject> content,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> content,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> content,
          )>()(
        ptr.ref.lpVtbl,
        content,
      );

  int SetViewportOptions(
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        options,
      );

  int AddConfiguration(
    int configuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 configuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int configuration,
          )>()(
        ptr.ref.lpVtbl,
        configuration,
      );

  int RemoveConfiguration(
    int configuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 configuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int configuration,
          )>()(
        ptr.ref.lpVtbl,
        configuration,
      );

  int ActivateConfiguration(
    int configuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 configuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int configuration,
          )>()(
        ptr.ref.lpVtbl,
        configuration,
      );

  int SetManualGesture(
    int configuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 configuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int configuration,
          )>()(
        ptr.ref.lpVtbl,
        configuration,
      );

  int SetChaining(
    int enabledTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enabledTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enabledTypes,
          )>()(
        ptr.ref.lpVtbl,
        enabledTypes,
      );

  int AddEventHandler(
    int window,
    Pointer<COMObject> eventHandler,
    Pointer<Uint32> cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr window,
            Pointer<COMObject> eventHandler,
            Pointer<Uint32> cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int window,
            Pointer<COMObject> eventHandler,
            Pointer<Uint32> cookie,
          )>()(
        ptr.ref.lpVtbl,
        window,
        eventHandler,
        cookie,
      );

  int RemoveEventHandler(
    int cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int SetInputMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );

  int SetUpdateMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Abandon() => ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

/// @nodoc
const CLSID_DirectManipulationViewport =
    '{34E211B6-3650-4F75-8334-FA359598E1C5}';

/// {@category com}
class DirectManipulationViewport extends IDirectManipulationViewport {
  DirectManipulationViewport(Pointer<COMObject> ptr) : super(ptr);

  factory DirectManipulationViewport.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DirectManipulationViewport);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDirectManipulationViewport);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DirectManipulationViewport(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
