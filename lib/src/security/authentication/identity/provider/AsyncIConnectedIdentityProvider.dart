// AsyncIConnectedIdentityProvider.dart

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
const IID_AsyncIConnectedIdentityProvider =
    '{9CE55141-BCE9-4E15-824D-43D79F512F93}';

/// {@category Interface}
/// {@category com}
class AsyncIConnectedIdentityProvider extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  AsyncIConnectedIdentityProvider(Pointer<COMObject> ptr) : super(ptr);

  int Begin_ConnectIdentity(
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

  int Finish_ConnectIdentity() => ptr.ref.lpVtbl.value
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

  int Begin_DisconnectIdentity() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Finish_DisconnectIdentity() => ptr.ref.lpVtbl.value
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

  int Begin_IsConnected() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Finish_IsConnected(
    Pointer<Int32> Connected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Begin_GetUrl(
    int Identifier,
    Pointer<COMObject> Context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Identifier,
            Pointer<COMObject> Context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Identifier,
            Pointer<COMObject> Context,
          )>()(
        ptr.ref.lpVtbl,
        Identifier,
        Context,
      );

  int Finish_GetUrl(
    Pointer<VARIANT> PostData,
    Pointer<Pointer<Utf16>> Url,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> PostData,
            Pointer<Pointer<Utf16>> Url,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> PostData,
            Pointer<Pointer<Utf16>> Url,
          )>()(
        ptr.ref.lpVtbl,
        PostData,
        Url,
      );

  int Begin_GetAccountState() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int Finish_GetAccountState(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
