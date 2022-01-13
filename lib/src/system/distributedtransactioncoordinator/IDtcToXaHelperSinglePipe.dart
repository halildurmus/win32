// IDtcToXaHelperSinglePipe.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../system/distributedtransactioncoordinator/ITransactionResourceAsync.dart';
import '../../system/distributedtransactioncoordinator/ITransactionEnlistmentAsync.dart';

/// @nodoc
const IID_IDtcToXaHelperSinglePipe = '{47ED4971-53B3-11D1-BBB9-00C04FD658F6}';

/// {@category Interface}
/// {@category com}
class IDtcToXaHelperSinglePipe extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDtcToXaHelperSinglePipe(Pointer<COMObject> ptr) : super(ptr);

  int XARMCreate(
    Pointer<Utf8> pszDSN,
    Pointer<Utf8> pszClientDll,
    Pointer<Uint32> pdwRMCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszDSN,
            Pointer<Utf8> pszClientDll,
            Pointer<Uint32> pdwRMCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszDSN,
            Pointer<Utf8> pszClientDll,
            Pointer<Uint32> pdwRMCookie,
          )>()(
        ptr.ref.lpVtbl,
        pszDSN,
        pszClientDll,
        pdwRMCookie,
      );

  int ConvertTridToXID(
    Pointer<Uint32> pdwITrans,
    int dwRMCookie,
    Pointer<xid_t> pxid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwITrans,
            Uint32 dwRMCookie,
            Pointer<xid_t> pxid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwITrans,
            int dwRMCookie,
            Pointer<xid_t> pxid,
          )>()(
        ptr.ref.lpVtbl,
        pdwITrans,
        dwRMCookie,
        pxid,
      );

  int EnlistWithRM(
    int dwRMCookie,
    Pointer<COMObject> i_pITransaction,
    Pointer<COMObject> i_pITransRes,
    Pointer<Pointer<COMObject>> o_ppITransEnslitment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRMCookie,
            Pointer<COMObject> i_pITransaction,
            Pointer<COMObject> i_pITransRes,
            Pointer<Pointer<COMObject>> o_ppITransEnslitment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRMCookie,
            Pointer<COMObject> i_pITransaction,
            Pointer<COMObject> i_pITransRes,
            Pointer<Pointer<COMObject>> o_ppITransEnslitment,
          )>()(
        ptr.ref.lpVtbl,
        dwRMCookie,
        i_pITransaction,
        i_pITransRes,
        o_ppITransEnslitment,
      );

  void ReleaseRMCookie(
    int i_dwRMCookie,
    int i_fNormal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 i_dwRMCookie,
            Int32 i_fNormal,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int i_dwRMCookie,
            int i_fNormal,
          )>()(
        ptr.ref.lpVtbl,
        i_dwRMCookie,
        i_fNormal,
      );
}
