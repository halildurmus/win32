// IIdentityAuthentication.dart

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
const IID_IIdentityAuthentication = '{5E7EF254-979F-43B5-B74E-06E4EB7DF0F9}';

/// {@category Interface}
/// {@category com}
class IIdentityAuthentication extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IIdentityAuthentication(Pointer<COMObject> ptr) : super(ptr);

  int SetIdentityCredential(
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

  int ValidateIdentityCredential(
    Pointer<Uint8> CredBuffer,
    int CredBufferLength,
    Pointer<Pointer<COMObject>> ppIdentityProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
