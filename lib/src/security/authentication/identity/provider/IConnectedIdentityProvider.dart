// IConnectedIdentityProvider.dart

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
import '../../../../security/authentication/identity/provider/structs.g.dart';
import '../../../../system/com/IBindCtx.dart';
import '../../../../specialTypes.dart';

/// @nodoc
const IID_IConnectedIdentityProvider = '{B7417B54-E08C-429B-96C8-678D1369ECB1}';

/// {@category Interface}
/// {@category com}
class IConnectedIdentityProvider extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IConnectedIdentityProvider(Pointer<COMObject> ptr) : super(ptr);

  int ConnectIdentity(
    Pointer<Uint8> AuthBuffer,
    int AuthBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> AuthBuffer,
            Uint32 AuthBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> AuthBuffer,
            int AuthBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        AuthBuffer,
        AuthBufferSize,
      );

  int DisconnectIdentity() => ptr.ref.lpVtbl.value
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

  int IsConnected(
    Pointer<Int32> Connected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Connected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Connected,
          )>()(
        ptr.ref.lpVtbl,
        Connected,
      );

  int GetUrl(
    int Identifier,
    Pointer<COMObject> Context,
    Pointer<VARIANT> PostData,
    Pointer<Pointer<Utf16>> Url,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Identifier,
            Pointer<COMObject> Context,
            Pointer<VARIANT> PostData,
            Pointer<Pointer<Utf16>> Url,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Identifier,
            Pointer<COMObject> Context,
            Pointer<VARIANT> PostData,
            Pointer<Pointer<Utf16>> Url,
          )>()(
        ptr.ref.lpVtbl,
        Identifier,
        Context,
        PostData,
        Url,
      );

  int GetAccountState(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );
}
