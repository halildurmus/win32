// IAzBizRuleContext.dart

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
const IID_IAzBizRuleContext = '{E192F17D-D59F-455E-A152-940316CD77B2}';

/// {@category Interface}
/// {@category com}
class IAzBizRuleContext extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IAzBizRuleContext(Pointer<COMObject> ptr) : super(ptr);

  set BusinessRuleResult(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 bResult,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bResult,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set BusinessRuleString(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrBusinessRuleString,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrBusinessRuleString,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get BusinessRuleString {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBusinessRuleString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBusinessRuleString,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetParameter(
    Pointer<Utf16> bstrParameterName,
    Pointer<VARIANT> pvarParameterValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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
}

/// @nodoc
const CLSID_AzBizRuleContext = '{5C2DC96F-8D51-434B-B33C-379BCCAE77C3}';

/// {@category com}
class AzBizRuleContext extends IAzBizRuleContext {
  AzBizRuleContext(Pointer<COMObject> ptr) : super(ptr);

  factory AzBizRuleContext.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AzBizRuleContext);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAzBizRuleContext);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AzBizRuleContext(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
