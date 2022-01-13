// ICredentialProviderCredential2.dart

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

import '../../ui/shell/ICredentialProviderCredential.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICredentialProviderCredential2 =
    '{FD672C54-40EA-4D6E-9B49-CFB1A7507BD7}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderCredential2 extends ICredentialProviderCredential {
  // vtable begins at 20, is 1 entries long.
  ICredentialProviderCredential2(Pointer<COMObject> ptr) : super(ptr);

  int GetUserSid(
    Pointer<Pointer<Utf16>> sid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> sid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> sid,
          )>()(
        ptr.ref.lpVtbl,
        sid,
      );
}
