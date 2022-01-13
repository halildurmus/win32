// IXMLDOMSchemaCollection2.dart

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

import '../../../data/xml/msxml/IXMLDOMSchemaCollection.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/ISchema.dart';
import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../data/xml/msxml/ISchemaItem.dart';

/// @nodoc
const IID_IXMLDOMSchemaCollection2 = '{50EA08B0-DD1B-4664-9A50-C2F40F4BD79A}';

/// {@category Interface}
/// {@category com}
class IXMLDOMSchemaCollection2 extends IXMLDOMSchemaCollection {
  // vtable begins at 14, is 5 entries long.
  IXMLDOMSchemaCollection2(Pointer<COMObject> ptr) : super(ptr);

  int validate() => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  set validateOnLoad(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 validateOnLoad,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int validateOnLoad,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get validateOnLoad {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> validateOnLoad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> validateOnLoad,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getSchema(
    Pointer<Utf16> namespaceURI,
    Pointer<Pointer<COMObject>> schema,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> schema,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> schema,
          )>()(
        ptr.ref.lpVtbl,
        namespaceURI,
        schema,
      );

  int getDeclaration(
    Pointer<COMObject> node,
    Pointer<Pointer<COMObject>> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> node,
            Pointer<Pointer<COMObject>> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> node,
            Pointer<Pointer<COMObject>> item,
          )>()(
        ptr.ref.lpVtbl,
        node,
        item,
      );
}
