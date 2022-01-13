// IMXSchemaDeclHandler.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../data/xml/msxml/ISchemaElement.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IMXSchemaDeclHandler = '{FA4BB38C-FAF9-4CCA-9302-D1DD0FE520DB}';

/// {@category Interface}
/// {@category com}
class IMXSchemaDeclHandler extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IMXSchemaDeclHandler(Pointer<COMObject> ptr) : super(ptr);

  int schemaElementDecl(
    Pointer<COMObject> oSchemaElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oSchemaElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oSchemaElement,
          )>()(
        ptr.ref.lpVtbl,
        oSchemaElement,
      );
}
