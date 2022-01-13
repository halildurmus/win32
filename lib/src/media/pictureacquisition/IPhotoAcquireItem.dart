// IPhotoAcquireItem.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IStream.dart';
import '../../media/pictureacquisition/IPhotoAcquireItem.dart';

/// @nodoc
const IID_IPhotoAcquireItem = '{00F21C97-28BF-4C02-B842-5E4E90139A30}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquireItem extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IPhotoAcquireItem(Pointer<COMObject> ptr) : super(ptr);

  int GetItemName(
    Pointer<Pointer<Utf16>> pbstrItemName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrItemName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrItemName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrItemName,
      );

  int GetThumbnail(
    SIZE sizeThumbnail,
    Pointer<IntPtr> phbmpThumbnail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            SIZE sizeThumbnail,
            Pointer<IntPtr> phbmpThumbnail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            SIZE sizeThumbnail,
            Pointer<IntPtr> phbmpThumbnail,
          )>()(
        ptr.ref.lpVtbl,
        sizeThumbnail,
        phbmpThumbnail,
      );

  int GetProperty(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pv,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pv,
      );

  int SetProperty(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pv,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pv,
      );

  int GetStream(
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        ppStream,
      );

  int CanDelete(
    Pointer<Int32> pfCanDelete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCanDelete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCanDelete,
          )>()(
        ptr.ref.lpVtbl,
        pfCanDelete,
      );

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetSubItemCount(
    Pointer<Uint32> pnCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnCount,
          )>()(
        ptr.ref.lpVtbl,
        pnCount,
      );

  int GetSubItemAt(
    int nItemIndex,
    Pointer<Pointer<COMObject>> ppPhotoAcquireItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nItemIndex,
            Pointer<Pointer<COMObject>> ppPhotoAcquireItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nItemIndex,
            Pointer<Pointer<COMObject>> ppPhotoAcquireItem,
          )>()(
        ptr.ref.lpVtbl,
        nItemIndex,
        ppPhotoAcquireItem,
      );
}
