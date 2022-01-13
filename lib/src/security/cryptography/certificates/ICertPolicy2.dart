// ICertPolicy2.dart

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

import '../../../security/cryptography/certificates/ICertPolicy.dart';
import '../../../security/cryptography/certificates/ICertManageModule.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertPolicy2 = '{3DB4910E-8001-4BF1-AA1B-F43A808317A0}';

/// {@category Interface}
/// {@category com}
class ICertPolicy2 extends ICertPolicy {
  // vtable begins at 11, is 1 entries long.
  ICertPolicy2(Pointer<COMObject> ptr) : super(ptr);

  int GetManageModule(
    Pointer<Pointer<COMObject>> ppManageModule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
