// IApplicationDesignModeSettings.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IApplicationDesignModeSettings =
    '{2A3DEE9A-E31D-46D6-8508-BCC597DB3557}';

/// {@category Interface}
/// {@category com}
class IApplicationDesignModeSettings extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IApplicationDesignModeSettings(Pointer<COMObject> ptr) : super(ptr);

  int SetNativeDisplaySize(
    SIZE nativeDisplaySizePixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            SIZE nativeDisplaySizePixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            SIZE nativeDisplaySizePixels,
          )>()(
        ptr.ref.lpVtbl,
        nativeDisplaySizePixels,
      );

  int SetScaleFactor(
    int scaleFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scaleFactor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scaleFactor,
          )>()(
        ptr.ref.lpVtbl,
        scaleFactor,
      );

  int SetApplicationViewState(
    int viewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 viewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewState,
          )>()(
        ptr.ref.lpVtbl,
        viewState,
      );

  int ComputeApplicationSize(
    Pointer<SIZE> applicationSizePixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> applicationSizePixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> applicationSizePixels,
          )>()(
        ptr.ref.lpVtbl,
        applicationSizePixels,
      );

  int IsApplicationViewStateSupported(
    int viewState,
    SIZE nativeDisplaySizePixels,
    int scaleFactor,
    Pointer<Int32> supported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 viewState,
            SIZE nativeDisplaySizePixels,
            Int32 scaleFactor,
            Pointer<Int32> supported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewState,
            SIZE nativeDisplaySizePixels,
            int scaleFactor,
            Pointer<Int32> supported,
          )>()(
        ptr.ref.lpVtbl,
        viewState,
        nativeDisplaySizePixels,
        scaleFactor,
        supported,
      );

  int TriggerEdgeGesture(
    int edgeGestureKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 edgeGestureKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int edgeGestureKind,
          )>()(
        ptr.ref.lpVtbl,
        edgeGestureKind,
      );
}

/// @nodoc
const CLSID_ApplicationDesignModeSettings =
    '{958A6FB5-DCB2-4FAF-AAFD-7FB054AD1A3B}';

/// {@category com}
class ApplicationDesignModeSettings extends IApplicationDesignModeSettings {
  ApplicationDesignModeSettings(Pointer<COMObject> ptr) : super(ptr);

  factory ApplicationDesignModeSettings.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_ApplicationDesignModeSettings);
    final iid = calloc<GUID>()..ref.setGUID(IID_IApplicationDesignModeSettings);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ApplicationDesignModeSettings(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
