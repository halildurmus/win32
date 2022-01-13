// ICredentialProviderCredentialWithFieldOptions.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICredentialProviderCredentialWithFieldOptions =
    '{DBC6FB30-C843-49E3-A645-573E6F39446A}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderCredentialWithFieldOptions extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICredentialProviderCredentialWithFieldOptions(Pointer<COMObject> ptr)
      : super(ptr);

  int GetFieldOptions(
    int fieldID,
    Pointer<Int32> options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fieldID,
            Pointer<Int32> options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fieldID,
            Pointer<Int32> options,
          )>()(
        ptr.ref.lpVtbl,
        fieldID,
        options,
      );
}
