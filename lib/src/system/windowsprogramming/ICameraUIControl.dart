// ICameraUIControl.dart

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
import '../../specialTypes.dart';
import '../../system/windowsprogramming/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowsprogramming/ICameraUIControlEventCallback.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_ICameraUIControl = '{B8733ADF-3D68-4B8F-BB08-E28A0BED0376}';

/// {@category Interface}
/// {@category com}
class ICameraUIControl extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ICameraUIControl(Pointer<COMObject> ptr) : super(ptr);

  int Show(
    Pointer<COMObject> pWindow,
    int mode,
    int selectionMode,
    int captureMode,
    int photoFormat,
    int videoFormat,
    int bHasCloseButton,
    Pointer<COMObject> pEventCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pWindow,
            Int32 mode,
            Int32 selectionMode,
            Int32 captureMode,
            Int32 photoFormat,
            Int32 videoFormat,
            Int32 bHasCloseButton,
            Pointer<COMObject> pEventCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pWindow,
            int mode,
            int selectionMode,
            int captureMode,
            int photoFormat,
            int videoFormat,
            int bHasCloseButton,
            Pointer<COMObject> pEventCallback,
          )>()(
        ptr.ref.lpVtbl,
        pWindow,
        mode,
        selectionMode,
        captureMode,
        photoFormat,
        videoFormat,
        bHasCloseButton,
        pEventCallback,
      );

  int Close() => ptr.ref.lpVtbl.value
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

  int Suspend(
    Pointer<Int32> pbDeferralRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbDeferralRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbDeferralRequired,
          )>()(
        ptr.ref.lpVtbl,
        pbDeferralRequired,
      );

  int Resume() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetCurrentViewType(
    Pointer<Int32> pViewType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pViewType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pViewType,
          )>()(
        ptr.ref.lpVtbl,
        pViewType,
      );

  int GetActiveItem(
    Pointer<Pointer<Utf16>> pbstrActiveItemPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrActiveItemPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrActiveItemPath,
          )>()(
        ptr.ref.lpVtbl,
        pbstrActiveItemPath,
      );

  int GetSelectedItems(
    Pointer<Pointer<SAFEARRAY>> ppSelectedItemPaths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> ppSelectedItemPaths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> ppSelectedItemPaths,
          )>()(
        ptr.ref.lpVtbl,
        ppSelectedItemPaths,
      );

  int RemoveCapturedItem(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );
}

/// @nodoc
const CLSID_CameraUIControl = '{16D5A2BE-B1C5-47B3-8EAE-CCBCF452C7E8}';

/// {@category com}
class CameraUIControl extends ICameraUIControl {
  CameraUIControl(Pointer<COMObject> ptr) : super(ptr);

  factory CameraUIControl.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_CameraUIControl);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICameraUIControl);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return CameraUIControl(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
