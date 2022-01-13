// IXMLDOMImplementation.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXMLDOMImplementation = '{2933BF8F-7B36-11D2-B20E-00C04F983E60}';

/// {@category Interface}
/// {@category com}
class IXMLDOMImplementation extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IXMLDOMImplementation(Pointer<COMObject> ptr) : super(ptr);

  int hasFeature(
    Pointer<Utf16> feature,
    Pointer<Utf16> version,
    Pointer<Int16> hasFeature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> feature,
            Pointer<Utf16> version,
            Pointer<Int16> hasFeature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> feature,
            Pointer<Utf16> version,
            Pointer<Int16> hasFeature,
          )>()(
        ptr.ref.lpVtbl,
        feature,
        version,
        hasFeature,
      );
}
