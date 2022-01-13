// IForgottenKnowledge.dart

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

import '../../system/windowssync/ISyncKnowledge.dart';
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IForgottenKnowledge = '{456E0F96-6036-452B-9F9D-BCC4B4A85DB2}';

/// {@category Interface}
/// {@category com}
class IForgottenKnowledge extends ISyncKnowledge {
  // vtable begins at 27, is 1 entries long.
  IForgottenKnowledge(Pointer<COMObject> ptr) : super(ptr);

  int ForgetToVersion(
    Pointer<COMObject> pKnowledge,
    Pointer<SYNC_VERSION> pVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
            Pointer<SYNC_VERSION> pVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
            Pointer<SYNC_VERSION> pVersion,
          )>()(
        ptr.ref.lpVtbl,
        pKnowledge,
        pVersion,
      );
}
