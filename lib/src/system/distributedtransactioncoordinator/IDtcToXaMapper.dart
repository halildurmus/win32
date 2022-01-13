// IDtcToXaMapper.dart

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

/// @nodoc
const IID_IDtcToXaMapper = '{64FFABE0-7CE9-11D0-8CE6-00C04FDC877E}';

/// {@category Interface}
/// {@category com}
class IDtcToXaMapper extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDtcToXaMapper(Pointer<COMObject> ptr) : super(ptr);

  int RequestNewResourceManager(
    Pointer<Utf8> pszDSN,
    Pointer<Utf8> pszClientDllName,
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
            Pointer<Utf8> pszClientDllName,
            Pointer<Uint32> pdwRMCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszDSN,
            Pointer<Utf8> pszClientDllName,
            Pointer<Uint32> pdwRMCookie,
          )>()(
        ptr.ref.lpVtbl,
        pszDSN,
        pszClientDllName,
        pdwRMCookie,
      );

  int TranslateTridToXid(
    Pointer<Uint32> pdwITransaction,
    int dwRMCookie,
    Pointer<xid_t> pXid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwITransaction,
            Uint32 dwRMCookie,
            Pointer<xid_t> pXid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwITransaction,
            int dwRMCookie,
            Pointer<xid_t> pXid,
          )>()(
        ptr.ref.lpVtbl,
        pdwITransaction,
        dwRMCookie,
        pXid,
      );

  int EnlistResourceManager(
    int dwRMCookie,
    Pointer<Uint32> pdwITransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRMCookie,
            Pointer<Uint32> pdwITransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRMCookie,
            Pointer<Uint32> pdwITransaction,
          )>()(
        ptr.ref.lpVtbl,
        dwRMCookie,
        pdwITransaction,
      );

  int ReleaseResourceManager(
    int dwRMCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRMCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRMCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwRMCookie,
      );
}
