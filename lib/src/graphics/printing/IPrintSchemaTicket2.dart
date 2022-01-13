// IPrintSchemaTicket2.dart

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

import '../../graphics/printing/IPrintSchemaTicket.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/IPrintSchemaParameterInitializer.dart';

/// @nodoc
const IID_IPrintSchemaTicket2 = '{2EC1F844-766A-47A1-91F4-2EEB6190F80C}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaTicket2 extends IPrintSchemaTicket {
  // vtable begins at 18, is 1 entries long.
  IPrintSchemaTicket2(Pointer<COMObject> ptr) : super(ptr);

  int GetParameterInitializer(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrNamespaceUri,
    Pointer<Pointer<COMObject>> ppParameterInitializer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppParameterInitializer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppParameterInitializer,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrNamespaceUri,
        ppParameterInitializer,
      );
}
