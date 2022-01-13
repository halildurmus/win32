// IPhotoProgressDialog.dart

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
import '../../media/pictureacquisition/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../media/pictureacquisition/IPhotoProgressActionCB.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IPhotoProgressDialog = '{00F246F9-0750-4F08-9381-2CD8E906A4AE}';

/// {@category Interface}
/// {@category com}
class IPhotoProgressDialog extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IPhotoProgressDialog(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    int hwndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
      );

  int GetWindow(
    Pointer<IntPtr> phwndProgressDialog,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwndProgressDialog,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwndProgressDialog,
          )>()(
        ptr.ref.lpVtbl,
        phwndProgressDialog,
      );

  int Destroy() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetTitle(
    Pointer<Utf16> pszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>()(
        ptr.ref.lpVtbl,
        pszTitle,
      );

  int ShowCheckbox(
    int nCheckboxId,
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCheckboxId,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCheckboxId,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        nCheckboxId,
        fShow,
      );

  int SetCheckboxText(
    int nCheckboxId,
    Pointer<Utf16> pszCheckboxText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCheckboxId,
            Pointer<Utf16> pszCheckboxText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCheckboxId,
            Pointer<Utf16> pszCheckboxText,
          )>()(
        ptr.ref.lpVtbl,
        nCheckboxId,
        pszCheckboxText,
      );

  int SetCheckboxCheck(
    int nCheckboxId,
    int fChecked,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCheckboxId,
            Int32 fChecked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCheckboxId,
            int fChecked,
          )>()(
        ptr.ref.lpVtbl,
        nCheckboxId,
        fChecked,
      );

  int SetCheckboxTooltip(
    int nCheckboxId,
    Pointer<Utf16> pszCheckboxTooltipText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCheckboxId,
            Pointer<Utf16> pszCheckboxTooltipText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCheckboxId,
            Pointer<Utf16> pszCheckboxTooltipText,
          )>()(
        ptr.ref.lpVtbl,
        nCheckboxId,
        pszCheckboxTooltipText,
      );

  int IsCheckboxChecked(
    int nCheckboxId,
    Pointer<Int32> pfChecked,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCheckboxId,
            Pointer<Int32> pfChecked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCheckboxId,
            Pointer<Int32> pfChecked,
          )>()(
        ptr.ref.lpVtbl,
        nCheckboxId,
        pfChecked,
      );

  int SetCaption(
    Pointer<Utf16> pszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>()(
        ptr.ref.lpVtbl,
        pszTitle,
      );

  int SetImage(
    int nImageType,
    int hIcon,
    int hBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nImageType,
            IntPtr hIcon,
            IntPtr hBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nImageType,
            int hIcon,
            int hBitmap,
          )>()(
        ptr.ref.lpVtbl,
        nImageType,
        hIcon,
        hBitmap,
      );

  int SetPercentComplete(
    int nPercent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nPercent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nPercent,
          )>()(
        ptr.ref.lpVtbl,
        nPercent,
      );

  int SetProgressText(
    Pointer<Utf16> pszProgressText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszProgressText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszProgressText,
          )>()(
        ptr.ref.lpVtbl,
        pszProgressText,
      );

  int SetActionLinkCallback(
    Pointer<COMObject> pPhotoProgressActionCB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhotoProgressActionCB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhotoProgressActionCB,
          )>()(
        ptr.ref.lpVtbl,
        pPhotoProgressActionCB,
      );

  int SetActionLinkText(
    Pointer<Utf16> pszCaption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCaption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCaption,
          )>()(
        ptr.ref.lpVtbl,
        pszCaption,
      );

  int ShowActionLink(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );

  int IsCancelled(
    Pointer<Int32> pfCancelled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCancelled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCancelled,
          )>()(
        ptr.ref.lpVtbl,
        pfCancelled,
      );

  int GetUserInput(
    Pointer<GUID> riidType,
    Pointer<COMObject> pUnknown,
    Pointer<PROPVARIANT> pPropVarResult,
    Pointer<PROPVARIANT> pPropVarDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riidType,
            Pointer<COMObject> pUnknown,
            Pointer<PROPVARIANT> pPropVarResult,
            Pointer<PROPVARIANT> pPropVarDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riidType,
            Pointer<COMObject> pUnknown,
            Pointer<PROPVARIANT> pPropVarResult,
            Pointer<PROPVARIANT> pPropVarDefault,
          )>()(
        ptr.ref.lpVtbl,
        riidType,
        pUnknown,
        pPropVarResult,
        pPropVarDefault,
      );
}

/// @nodoc
const CLSID_PhotoProgressDialog = '{00F24CA0-748F-4E8A-894F-0E0357C6799F}';

/// {@category com}
class PhotoProgressDialog extends IPhotoProgressDialog {
  PhotoProgressDialog(Pointer<COMObject> ptr) : super(ptr);

  factory PhotoProgressDialog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PhotoProgressDialog);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPhotoProgressDialog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PhotoProgressDialog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
