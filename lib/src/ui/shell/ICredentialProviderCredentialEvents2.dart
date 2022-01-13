// ICredentialProviderCredentialEvents2.dart

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

import '../../ui/shell/ICredentialProviderCredentialEvents.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/ICredentialProviderCredential.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ICredentialProviderCredentialEvents2 =
    '{B53C00B6-9922-4B78-B1F4-DDFE774DC39B}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderCredentialEvents2
    extends ICredentialProviderCredentialEvents {
  // vtable begins at 13, is 3 entries long.
  ICredentialProviderCredentialEvents2(Pointer<COMObject> ptr) : super(ptr);

  int BeginFieldUpdates() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int EndFieldUpdates() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int SetFieldOptions(
    Pointer<COMObject> credential,
    int fieldID,
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> credential,
            Uint32 fieldID,
            Int32 options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> credential,
            int fieldID,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        credential,
        fieldID,
        options,
      );
}
