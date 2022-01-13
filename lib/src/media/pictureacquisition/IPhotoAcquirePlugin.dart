// IPhotoAcquirePlugin.dart

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
import '../../media/pictureacquisition/IPhotoAcquireSource.dart';
import '../../media/pictureacquisition/IPhotoAcquireProgressCB.dart';
import '../../foundation/structs.g.dart';
import '../../media/pictureacquisition/IPhotoAcquireItem.dart';
import '../../system/com/IStream.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_IPhotoAcquirePlugin = '{00F2DCEB-ECB8-4F77-8E47-E7A987C83DD0}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquirePlugin extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IPhotoAcquirePlugin(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pPhotoAcquireSource,
    Pointer<COMObject> pPhotoAcquireProgressCB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
            Pointer<COMObject> pPhotoAcquireProgressCB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
            Pointer<COMObject> pPhotoAcquireProgressCB,
          )>()(
        ptr.ref.lpVtbl,
        pPhotoAcquireSource,
        pPhotoAcquireProgressCB,
      );

  int ProcessItem(
    int dwAcquireStage,
    Pointer<COMObject> pPhotoAcquireItem,
    Pointer<COMObject> pOriginalItemStream,
    Pointer<Utf16> pszFinalFilename,
    Pointer<COMObject> pPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAcquireStage,
            Pointer<COMObject> pPhotoAcquireItem,
            Pointer<COMObject> pOriginalItemStream,
            Pointer<Utf16> pszFinalFilename,
            Pointer<COMObject> pPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAcquireStage,
            Pointer<COMObject> pPhotoAcquireItem,
            Pointer<COMObject> pOriginalItemStream,
            Pointer<Utf16> pszFinalFilename,
            Pointer<COMObject> pPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        dwAcquireStage,
        pPhotoAcquireItem,
        pOriginalItemStream,
        pszFinalFilename,
        pPropertyStore,
      );

  int TransferComplete(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );

  int DisplayConfigureDialog(
    int hWndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
      );
}
