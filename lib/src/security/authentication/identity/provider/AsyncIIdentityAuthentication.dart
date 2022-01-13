// AsyncIIdentityAuthentication.dart

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
import '../../../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_AsyncIIdentityAuthentication =
    '{F9A2F918-FECA-4E9C-9633-61CBF13ED34D}';

/// {@category Interface}
/// {@category com}
class AsyncIIdentityAuthentication extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  AsyncIIdentityAuthentication(Pointer<COMObject> ptr) : super(ptr);

  int Begin_SetIdentityCredential(
    Pointer<Uint8> CredBuffer,
    int CredBufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> CredBuffer,
            Uint32 CredBufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> CredBuffer,
            int CredBufferLength,
          )>()(
        ptr.ref.lpVtbl,
        CredBuffer,
        CredBufferLength,
      );

  int Finish_SetIdentityCredential() => ptr.ref.lpVtbl.value
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

  int Begin_ValidateIdentityCredential(
    Pointer<Uint8> CredBuffer,
    int CredBufferLength,
    Pointer<Pointer<COMObject>> ppIdentityProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> CredBuffer,
            Uint32 CredBufferLength,
            Pointer<Pointer<COMObject>> ppIdentityProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> CredBuffer,
            int CredBufferLength,
            Pointer<Pointer<COMObject>> ppIdentityProperties,
          )>()(
        ptr.ref.lpVtbl,
        CredBuffer,
        CredBufferLength,
        ppIdentityProperties,
      );

  int Finish_ValidateIdentityCredential(
    Pointer<Pointer<COMObject>> ppIdentityProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIdentityProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIdentityProperties,
          )>()(
        ptr.ref.lpVtbl,
        ppIdentityProperties,
      );
}
