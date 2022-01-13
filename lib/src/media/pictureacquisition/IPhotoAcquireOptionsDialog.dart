// IPhotoAcquireOptionsDialog.dart

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

/// @nodoc
const IID_IPhotoAcquireOptionsDialog = '{00F2B3EE-BF64-47EE-89F4-4DEDD79643F2}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquireOptionsDialog extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPhotoAcquireOptionsDialog(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszRegistryRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszRegistryRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszRegistryRoot,
          )>()(
        ptr.ref.lpVtbl,
        pszRegistryRoot,
      );

  int Create(
    int hWndParent,
    Pointer<IntPtr> phWndDialog,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
            Pointer<IntPtr> phWndDialog,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
            Pointer<IntPtr> phWndDialog,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
        phWndDialog,
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

  int DoModal(
    int hWndParent,
    Pointer<IntPtr> ppnReturnCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
            Pointer<IntPtr> ppnReturnCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
            Pointer<IntPtr> ppnReturnCode,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
        ppnReturnCode,
      );

  int SaveData() => ptr.ref.lpVtbl.value
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
}

/// @nodoc
const CLSID_PhotoAcquireOptionsDialog =
    '{00F210A1-62F0-438B-9F7E-9618D72A1831}';

/// {@category com}
class PhotoAcquireOptionsDialog extends IPhotoAcquireOptionsDialog {
  PhotoAcquireOptionsDialog(Pointer<COMObject> ptr) : super(ptr);

  factory PhotoAcquireOptionsDialog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PhotoAcquireOptionsDialog);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPhotoAcquireOptionsDialog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PhotoAcquireOptionsDialog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
