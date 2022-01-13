// ISyncMgrSynchronizeCallback.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISyncMgrSynchronizeCallback =
    '{6295DF41-35EE-11D1-8707-00C04FD93327}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSynchronizeCallback extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ISyncMgrSynchronizeCallback(Pointer<COMObject> ptr) : super(ptr);

  int ShowPropertiesCompleted(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int PrepareForSyncCompleted(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SynchronizeCompleted(
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

  int ShowErrorCompleted(
    int hr,
    int cItems,
    Pointer<GUID> pItemIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
            Uint32 cItems,
            Pointer<GUID> pItemIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            int cItems,
            Pointer<GUID> pItemIDs,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        cItems,
        pItemIDs,
      );

  int EnableModeless(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int Progress(
    Pointer<GUID> ItemID,
    Pointer<SYNCMGRPROGRESSITEM> pSyncProgressItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ItemID,
            Pointer<SYNCMGRPROGRESSITEM> pSyncProgressItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ItemID,
            Pointer<SYNCMGRPROGRESSITEM> pSyncProgressItem,
          )>()(
        ptr.ref.lpVtbl,
        ItemID,
        pSyncProgressItem,
      );

  int LogError(
    int dwErrorLevel,
    Pointer<Utf16> pszErrorText,
    Pointer<SYNCMGRLOGERRORINFO> pSyncLogError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwErrorLevel,
            Pointer<Utf16> pszErrorText,
            Pointer<SYNCMGRLOGERRORINFO> pSyncLogError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwErrorLevel,
            Pointer<Utf16> pszErrorText,
            Pointer<SYNCMGRLOGERRORINFO> pSyncLogError,
          )>()(
        ptr.ref.lpVtbl,
        dwErrorLevel,
        pszErrorText,
        pSyncLogError,
      );

  int DeleteLogError(
    Pointer<GUID> ErrorID,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ErrorID,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ErrorID,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        ErrorID,
        dwReserved,
      );

  int EstablishConnection(
    Pointer<Utf16> pwszConnection,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszConnection,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszConnection,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwszConnection,
        dwReserved,
      );
}
