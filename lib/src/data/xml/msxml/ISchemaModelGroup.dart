// ISchemaModelGroup.dart

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

import '../../../data/xml/msxml/ISchemaParticle.dart';
import '../../../data/xml/msxml/ISchemaItemCollection.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISchemaModelGroup = '{50EA08BB-DD1B-4664-9A50-C2F40F4BD79A}';

/// {@category Interface}
/// {@category com}
class ISchemaModelGroup extends ISchemaParticle {
  // vtable begins at 16, is 1 entries long.
  ISchemaModelGroup(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get particles {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> particles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> particles,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
