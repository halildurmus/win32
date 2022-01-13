// IPrintSchemaCapabilities2.dart

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

import '../../graphics/printing/IPrintSchemaCapabilities.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/IPrintSchemaParameterDefinition.dart';

/// @nodoc
const IID_IPrintSchemaCapabilities2 = '{B58845F4-9970-4D87-A636-169FB82ED642}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaCapabilities2 extends IPrintSchemaCapabilities {
  // vtable begins at 17, is 1 entries long.
  IPrintSchemaCapabilities2(Pointer<COMObject> ptr) : super(ptr);

  int GetParameterDefinition(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrNamespaceUri,
    Pointer<Pointer<COMObject>> ppParameterDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppParameterDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppParameterDefinition,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrNamespaceUri,
        ppParameterDefinition,
      );
}
