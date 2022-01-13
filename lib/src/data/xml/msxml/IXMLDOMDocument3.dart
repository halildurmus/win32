// IXMLDOMDocument3.dart

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

import '../../../data/xml/msxml/IXMLDOMDocument2.dart';
import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../data/xml/msxml/IXMLDOMParseError.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXMLDOMDocument3 = '{2933BF96-7B36-11D2-B20E-00C04F983E60}';

/// {@category Interface}
/// {@category com}
class IXMLDOMDocument3 extends IXMLDOMDocument2 {
  // vtable begins at 82, is 2 entries long.
  IXMLDOMDocument3(Pointer<COMObject> ptr) : super(ptr);

  int validateNode(
    Pointer<COMObject> node,
    Pointer<Pointer<COMObject>> errorObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> node,
            Pointer<Pointer<COMObject>> errorObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> node,
            Pointer<Pointer<COMObject>> errorObj,
          )>()(
        ptr.ref.lpVtbl,
        node,
        errorObj,
      );

  int importNode(
    Pointer<COMObject> node,
    int deep,
    Pointer<Pointer<COMObject>> clone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> node,
            Int16 deep,
            Pointer<Pointer<COMObject>> clone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> node,
            int deep,
            Pointer<Pointer<COMObject>> clone,
          )>()(
        ptr.ref.lpVtbl,
        node,
        deep,
        clone,
      );
}
