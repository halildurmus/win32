// IPhotoAcquireProgressCB.dart

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
import '../../media/pictureacquisition/IPhotoAcquireSource.dart';
import '../../media/pictureacquisition/IPhotoAcquireItem.dart';
import '../../media/pictureacquisition/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IPhotoAcquireProgressCB = '{00F2CE1E-935E-4248-892C-130F32C45CB4}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquireProgressCB extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  IPhotoAcquireProgressCB(Pointer<COMObject> ptr) : super(ptr);

  int Cancelled(
    Pointer<Int32> pfCancelled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int StartEnumeration(
    Pointer<COMObject> pPhotoAcquireSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
          )>()(
        ptr.ref.lpVtbl,
        pPhotoAcquireSource,
      );

  int FoundItem(
    Pointer<COMObject> pPhotoAcquireItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireItem,
          )>()(
        ptr.ref.lpVtbl,
        pPhotoAcquireItem,
      );

  int EndEnumeration(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int StartTransfer(
    Pointer<COMObject> pPhotoAcquireSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
          )>()(
        ptr.ref.lpVtbl,
        pPhotoAcquireSource,
      );

  int StartItemTransfer(
    int nItemIndex,
    Pointer<COMObject> pPhotoAcquireItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
          )>()(
        ptr.ref.lpVtbl,
        nItemIndex,
        pPhotoAcquireItem,
      );

  int DirectoryCreated(
    Pointer<Utf16> pszDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDirectory,
          )>()(
        ptr.ref.lpVtbl,
        pszDirectory,
      );

  int UpdateTransferPercent(
    int fOverall,
    int nPercent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fOverall,
            Uint32 nPercent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fOverall,
            int nPercent,
          )>()(
        ptr.ref.lpVtbl,
        fOverall,
        nPercent,
      );

  int EndItemTransfer(
    int nItemIndex,
    Pointer<COMObject> pPhotoAcquireItem,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        nItemIndex,
        pPhotoAcquireItem,
        hr,
      );

  int EndTransfer(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int StartDelete(
    Pointer<COMObject> pPhotoAcquireSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
          )>()(
        ptr.ref.lpVtbl,
        pPhotoAcquireSource,
      );

  int StartItemDelete(
    int nItemIndex,
    Pointer<COMObject> pPhotoAcquireItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
          )>()(
        ptr.ref.lpVtbl,
        nItemIndex,
        pPhotoAcquireItem,
      );

  int UpdateDeletePercent(
    int nPercent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nPercent,
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

  int EndItemDelete(
    int nItemIndex,
    Pointer<COMObject> pPhotoAcquireItem,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nItemIndex,
            Pointer<COMObject> pPhotoAcquireItem,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        nItemIndex,
        pPhotoAcquireItem,
        hr,
      );

  int EndDelete(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int EndSession(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetDeleteAfterAcquire(
    Pointer<Int32> pfDeleteAfterAcquire,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfDeleteAfterAcquire,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfDeleteAfterAcquire,
          )>()(
        ptr.ref.lpVtbl,
        pfDeleteAfterAcquire,
      );

  int ErrorAdvise(
    int hr,
    Pointer<Utf16> pszErrorMessage,
    int nMessageType,
    Pointer<Int32> pnErrorAdviseResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
            Pointer<Utf16> pszErrorMessage,
            Int32 nMessageType,
            Pointer<Int32> pnErrorAdviseResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            Pointer<Utf16> pszErrorMessage,
            int nMessageType,
            Pointer<Int32> pnErrorAdviseResult,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        pszErrorMessage,
        nMessageType,
        pnErrorAdviseResult,
      );

  int GetUserInput(
    Pointer<GUID> riidType,
    Pointer<COMObject> pUnknown,
    Pointer<PROPVARIANT> pPropVarResult,
    Pointer<PROPVARIANT> pPropVarDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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
