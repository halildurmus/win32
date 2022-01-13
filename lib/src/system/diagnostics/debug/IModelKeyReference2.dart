// IModelKeyReference2.dart

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

import '../../../system/diagnostics/debug/IModelKeyReference.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IModelKeyReference2 = '{80E2F7C5-7159-4E92-887E-7E0347E88406}';

/// {@category Interface}
/// {@category com}
class IModelKeyReference2 extends IModelKeyReference {
  // vtable begins at 10, is 1 entries long.
  IModelKeyReference2(Pointer<COMObject> ptr) : super(ptr);

  int OverrideContextObject(
    Pointer<COMObject> newContextObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newContextObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newContextObject,
          )>()(
        ptr.ref.lpVtbl,
        newContextObject,
      );
}
