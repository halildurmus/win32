// ICredentialProviderSetUserArray.dart

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
import '../../ui/shell/ICredentialProviderUserArray.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICredentialProviderSetUserArray =
    '{095C1484-1C0C-4388-9C6D-500E61BF84BD}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderSetUserArray extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICredentialProviderSetUserArray(Pointer<COMObject> ptr) : super(ptr);

  int SetUserArray(
    Pointer<COMObject> users,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> users,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> users,
          )>()(
        ptr.ref.lpVtbl,
        users,
      );
}
