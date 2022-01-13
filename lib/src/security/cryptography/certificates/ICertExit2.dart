// ICertExit2.dart

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

import '../../../security/cryptography/certificates/ICertExit.dart';
import '../../../security/cryptography/certificates/ICertManageModule.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertExit2 = '{0ABF484B-D049-464D-A7ED-552E7529B0FF}';

/// {@category Interface}
/// {@category com}
class ICertExit2 extends ICertExit {
  // vtable begins at 10, is 1 entries long.
  ICertExit2(Pointer<COMObject> ptr) : super(ptr);

  int GetManageModule(
    Pointer<Pointer<COMObject>> ppManageModule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppManageModule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppManageModule,
          )>()(
        ptr.ref.lpVtbl,
        ppManageModule,
      );
}
