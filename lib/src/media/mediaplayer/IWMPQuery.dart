// IWMPQuery.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPQuery = '{A00918F3-A6B0-4BFB-9189-FD834C7BC5A5}';

/// {@category Interface}
/// {@category com}
class IWMPQuery extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IWMPQuery(Pointer<COMObject> ptr) : super(ptr);

  int addCondition(
    Pointer<Utf16> bstrAttribute,
    Pointer<Utf16> bstrOperator,
    Pointer<Utf16> bstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrOperator,
            Pointer<Utf16> bstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrOperator,
            Pointer<Utf16> bstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribute,
        bstrOperator,
        bstrValue,
      );

  int beginNextGroup() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
