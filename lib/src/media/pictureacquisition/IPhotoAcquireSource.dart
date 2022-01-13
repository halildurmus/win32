// IPhotoAcquireSource.dart

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
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../media/pictureacquisition/IPhotoAcquireProgressCB.dart';
import '../../media/pictureacquisition/IPhotoAcquireItem.dart';
import '../../media/pictureacquisition/IPhotoAcquireSettings.dart';

/// @nodoc
const IID_IPhotoAcquireSource = '{00F2C703-8613-4282-A53B-6EC59C5883AC}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquireSource extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IPhotoAcquireSource(Pointer<COMObject> ptr) : super(ptr);

  int GetFriendlyName(
    Pointer<Pointer<Utf16>> pbstrFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrFriendlyName,
      );

  int GetDeviceIcons(
    int nSize,
    Pointer<IntPtr> phLargeIcon,
    Pointer<IntPtr> phSmallIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nSize,
            Pointer<IntPtr> phLargeIcon,
            Pointer<IntPtr> phSmallIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nSize,
            Pointer<IntPtr> phLargeIcon,
            Pointer<IntPtr> phSmallIcon,
          )>()(
        ptr.ref.lpVtbl,
        nSize,
        phLargeIcon,
        phSmallIcon,
      );

  int InitializeItemList(
    int fForceEnumeration,
    Pointer<COMObject> pPhotoAcquireProgressCB,
    Pointer<Uint32> pnItemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fForceEnumeration,
            Pointer<COMObject> pPhotoAcquireProgressCB,
            Pointer<Uint32> pnItemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fForceEnumeration,
            Pointer<COMObject> pPhotoAcquireProgressCB,
            Pointer<Uint32> pnItemCount,
          )>()(
        ptr.ref.lpVtbl,
        fForceEnumeration,
        pPhotoAcquireProgressCB,
        pnItemCount,
      );

  int GetItemCount(
    Pointer<Uint32> pnItemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnItemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnItemCount,
          )>()(
        ptr.ref.lpVtbl,
        pnItemCount,
      );

  int GetItemAt(
    int nIndex,
    Pointer<Pointer<COMObject>> ppPhotoAcquireItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<COMObject>> ppPhotoAcquireItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<COMObject>> ppPhotoAcquireItem,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppPhotoAcquireItem,
      );

  int GetPhotoAcquireSettings(
    Pointer<Pointer<COMObject>> ppPhotoAcquireSettings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPhotoAcquireSettings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPhotoAcquireSettings,
          )>()(
        ptr.ref.lpVtbl,
        ppPhotoAcquireSettings,
      );

  int GetDeviceId(
    Pointer<Pointer<Utf16>> pbstrDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDeviceId,
      );

  int BindToObject(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );
}
