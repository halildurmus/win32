// IWiaVideo.dart

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
import '../../devices/imageacquisition/structs.g.dart';

/// @nodoc
const IID_IWiaVideo = '{D52920AA-DB88-41F0-946C-E00DC0A19CFA}';

/// {@category Interface}
/// {@category com}
class IWiaVideo extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IWiaVideo(Pointer<COMObject> ptr) : super(ptr);

  int get PreviewVisible {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbPreviewVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbPreviewVisible,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PreviewVisible(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 bPreviewVisible,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bPreviewVisible,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get ImagesDirectory {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrImageDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrImageDirectory,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ImagesDirectory(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrImageDirectory,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrImageDirectory,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int CreateVideoByWiaDevID(
    Pointer<Utf16> bstrWiaDeviceID,
    int hwndParent,
    int bStretchToFitParent,
    int bAutoBeginPlayback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWiaDeviceID,
            IntPtr hwndParent,
            Int32 bStretchToFitParent,
            Int32 bAutoBeginPlayback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWiaDeviceID,
            int hwndParent,
            int bStretchToFitParent,
            int bAutoBeginPlayback,
          )>()(
        ptr.ref.lpVtbl,
        bstrWiaDeviceID,
        hwndParent,
        bStretchToFitParent,
        bAutoBeginPlayback,
      );

  int CreateVideoByDevNum(
    int uiDeviceNumber,
    int hwndParent,
    int bStretchToFitParent,
    int bAutoBeginPlayback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiDeviceNumber,
            IntPtr hwndParent,
            Int32 bStretchToFitParent,
            Int32 bAutoBeginPlayback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiDeviceNumber,
            int hwndParent,
            int bStretchToFitParent,
            int bAutoBeginPlayback,
          )>()(
        ptr.ref.lpVtbl,
        uiDeviceNumber,
        hwndParent,
        bStretchToFitParent,
        bAutoBeginPlayback,
      );

  int CreateVideoByName(
    Pointer<Utf16> bstrFriendlyName,
    int hwndParent,
    int bStretchToFitParent,
    int bAutoBeginPlayback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFriendlyName,
            IntPtr hwndParent,
            Int32 bStretchToFitParent,
            Int32 bAutoBeginPlayback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFriendlyName,
            int hwndParent,
            int bStretchToFitParent,
            int bAutoBeginPlayback,
          )>()(
        ptr.ref.lpVtbl,
        bstrFriendlyName,
        hwndParent,
        bStretchToFitParent,
        bAutoBeginPlayback,
      );

  int DestroyVideo() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int Play() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int Pause() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int TakePicture(
    Pointer<Pointer<Utf16>> pbstrNewImageFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNewImageFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNewImageFilename,
          )>()(
        ptr.ref.lpVtbl,
        pbstrNewImageFilename,
      );

  int ResizeVideo(
    int bStretchToFitParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bStretchToFitParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bStretchToFitParent,
          )>()(
        ptr.ref.lpVtbl,
        bStretchToFitParent,
      );

  int GetCurrentState(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );
}

/// @nodoc
const CLSID_WiaVideo = '{3908C3CD-4478-4536-AF2F-10C25D4EF89A}';

/// {@category com}
class WiaVideo extends IWiaVideo {
  WiaVideo(Pointer<COMObject> ptr) : super(ptr);

  factory WiaVideo.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WiaVideo);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWiaVideo);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WiaVideo(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
