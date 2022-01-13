// AsyncIIdentityStoreEx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/com/IUnknown.dart';
import '../../../../foundation/structs.g.dart';

/// @nodoc
const IID_AsyncIIdentityStoreEx = '{FCA3AF9A-8A07-4EAE-8632-EC3DE658A36A}';

/// {@category Interface}
/// {@category com}
class AsyncIIdentityStoreEx extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  AsyncIIdentityStoreEx(Pointer<COMObject> ptr) : super(ptr);

  int Begin_CreateConnectedIdentity(
    Pointer<Utf16> LocalName,
    Pointer<Utf16> ConnectedName,
    Pointer<GUID> ProviderGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> LocalName,
            Pointer<Utf16> ConnectedName,
            Pointer<GUID> ProviderGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> LocalName,
            Pointer<Utf16> ConnectedName,
            Pointer<GUID> ProviderGUID,
          )>()(
        ptr.ref.lpVtbl,
        LocalName,
        ConnectedName,
        ProviderGUID,
      );

  int Finish_CreateConnectedIdentity() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Begin_DeleteConnectedIdentity(
    Pointer<Utf16> ConnectedName,
    Pointer<GUID> ProviderGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ConnectedName,
            Pointer<GUID> ProviderGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ConnectedName,
            Pointer<GUID> ProviderGUID,
          )>()(
        ptr.ref.lpVtbl,
        ConnectedName,
        ProviderGUID,
      );

  int Finish_DeleteConnectedIdentity() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
