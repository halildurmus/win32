// IXSLTemplate.dart

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
import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/IXSLProcessor.dart';

/// @nodoc
const IID_IXSLTemplate = '{2933BF93-7B36-11D2-B20E-00C04F983E60}';

/// {@category Interface}
/// {@category com}
class IXSLTemplate extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IXSLTemplate(Pointer<COMObject> ptr) : super(ptr);

  int putref_stylesheet(
    Pointer<COMObject> stylesheet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stylesheet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stylesheet,
          )>()(
        ptr.ref.lpVtbl,
        stylesheet,
      );

  Pointer<COMObject> get stylesheet {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> stylesheet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> stylesheet,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int createProcessor(
    Pointer<Pointer<COMObject>> ppProcessor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProcessor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProcessor,
          )>()(
        ptr.ref.lpVtbl,
        ppProcessor,
      );
}
