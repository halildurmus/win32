// IAzBizRuleParameters.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IAzBizRuleParameters = '{FC17685F-E25D-4DCD-BAE1-276EC9533CB5}';

/// {@category Interface}
/// {@category com}
class IAzBizRuleParameters extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IAzBizRuleParameters(Pointer<COMObject> ptr) : super(ptr);

  int AddParameter(
    Pointer<Utf16> bstrParameterName,
    VARIANT varParameterValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrParameterName,
            VARIANT varParameterValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrParameterName,
            VARIANT varParameterValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrParameterName,
        varParameterValue,
      );

  int AddParameters(
    VARIANT varParameterNames,
    VARIANT varParameterValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varParameterNames,
            VARIANT varParameterValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varParameterNames,
            VARIANT varParameterValues,
          )>()(
        ptr.ref.lpVtbl,
        varParameterNames,
        varParameterValues,
      );

  int GetParameterValue(
    Pointer<Utf16> bstrParameterName,
    Pointer<VARIANT> pvarParameterValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrParameterName,
            Pointer<VARIANT> pvarParameterValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrParameterName,
            Pointer<VARIANT> pvarParameterValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrParameterName,
        pvarParameterValue,
      );

  int Remove(
    Pointer<Utf16> varParameterName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> varParameterName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> varParameterName,
          )>()(
        ptr.ref.lpVtbl,
        varParameterName,
      );

  int RemoveAll() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int get Count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
