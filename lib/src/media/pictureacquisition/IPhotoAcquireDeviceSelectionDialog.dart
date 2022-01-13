// IPhotoAcquireDeviceSelectionDialog.dart

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

/// @nodoc
const IID_IPhotoAcquireDeviceSelectionDialog =
    '{00F28837-55DD-4F37-AAF5-6855A9640467}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquireDeviceSelectionDialog extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPhotoAcquireDeviceSelectionDialog(Pointer<COMObject> ptr) : super(ptr);

  int SetTitle(
    Pointer<Utf16> pszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetSubmitButtonText(
    Pointer<Utf16> pszSubmitButtonText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubmitButtonText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubmitButtonText,
          )>()(
        ptr.ref.lpVtbl,
        pszSubmitButtonText,
      );

  int DoModal(
    int hWndParent,
    int dwDeviceFlags,
    Pointer<Pointer<Utf16>> pbstrDeviceId,
    Pointer<Int32> pnDeviceType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
            Uint32 dwDeviceFlags,
            Pointer<Pointer<Utf16>> pbstrDeviceId,
            Pointer<Int32> pnDeviceType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
            int dwDeviceFlags,
            Pointer<Pointer<Utf16>> pbstrDeviceId,
            Pointer<Int32> pnDeviceType,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
        dwDeviceFlags,
        pbstrDeviceId,
        pnDeviceType,
      );
}

/// @nodoc
const CLSID_PhotoAcquireDeviceSelectionDialog =
    '{00F29A34-B8A1-482C-BCF8-3AC7B0FE8F62}';

/// {@category com}
class PhotoAcquireDeviceSelectionDialog
    extends IPhotoAcquireDeviceSelectionDialog {
  PhotoAcquireDeviceSelectionDialog(Pointer<COMObject> ptr) : super(ptr);

  factory PhotoAcquireDeviceSelectionDialog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_PhotoAcquireDeviceSelectionDialog);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IPhotoAcquireDeviceSelectionDialog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PhotoAcquireDeviceSelectionDialog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
