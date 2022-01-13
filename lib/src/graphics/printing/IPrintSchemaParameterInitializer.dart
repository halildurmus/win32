// IPrintSchemaParameterInitializer.dart

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

import '../../graphics/printing/IPrintSchemaElement.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintSchemaParameterInitializer =
    '{52027082-0B74-4648-9564-828CC6CB656C}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaParameterInitializer extends IPrintSchemaElement {
  // vtable begins at 10, is 2 entries long.
  IPrintSchemaParameterInitializer(Pointer<COMObject> ptr) : super(ptr);

  int get_Value(
    Pointer<VARIANT> pVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>()(
        ptr.ref.lpVtbl,
        pVar,
      );

  int put_Value(
    Pointer<VARIANT> pVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>()(
        ptr.ref.lpVtbl,
        pVar,
      );
}
