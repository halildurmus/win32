// ITfFnGetSAPIObject.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../ui/textservices/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnGetSAPIObject = '{5C0AB7EA-167D-4F59-BFB5-4693755E90CA}';

/// {@category Interface}
/// {@category com}
class ITfFnGetSAPIObject extends ITfFunction {
  // vtable begins at 4, is 1 entries long.
  ITfFnGetSAPIObject(Pointer<COMObject> ptr) : super(ptr);

  int Get(
    int sObj,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 sObj,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sObj,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        sObj,
        ppunk,
      );
}
