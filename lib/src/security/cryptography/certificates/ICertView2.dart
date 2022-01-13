// ICertView2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../security/cryptography/certificates/ICertView.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertView2 = '{D594B282-8851-4B61-9C66-3EDADF848863}';

/// {@category Interface}
/// {@category com}
class ICertView2 extends ICertView {
  // vtable begins at 15, is 1 entries long.
  ICertView2(Pointer<COMObject> ptr) : super(ptr);

  int SetTable(
    int Table,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Table,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Table,
          )>()(
        ptr.ref.lpVtbl,
        Table,
      );
}
