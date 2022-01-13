// IIdentityStoreEx.dart

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
const IID_IIdentityStoreEx = '{F9F9EB98-8F7F-4E38-9577-6980114CE32B}';

/// {@category Interface}
/// {@category com}
class IIdentityStoreEx extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IIdentityStoreEx(Pointer<COMObject> ptr) : super(ptr);

  int CreateConnectedIdentity(
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

  int DeleteConnectedIdentity(
    Pointer<Utf16> ConnectedName,
    Pointer<GUID> ProviderGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
