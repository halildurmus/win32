// IPropertyValue.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_IPropertyValue = '{4BD682DD-7554-40E9-9A9B-82654EDE7E62}';

typedef _get_Type_Native = Int32 Function(Pointer obj, Pointer<Uint32> value);
typedef _get_Type_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _get_IsNumericScalar_Native = Int32 Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> value);
typedef _get_IsNumericScalar_Dart = int Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> value);

typedef _GetUInt8_Native = Int32 Function(Pointer obj, Pointer<Uint8> result);
typedef _GetUInt8_Dart = int Function(Pointer obj, Pointer<Uint8> result);

typedef _GetInt16_Native = Int32 Function(Pointer obj, Pointer<Int16> result);
typedef _GetInt16_Dart = int Function(Pointer obj, Pointer<Int16> result);

typedef _GetUInt16_Native = Int32 Function(Pointer obj, Pointer<Uint16> result);
typedef _GetUInt16_Dart = int Function(Pointer obj, Pointer<Uint16> result);

typedef _GetInt32_Native = Int32 Function(Pointer obj, Pointer<Int32> result);
typedef _GetInt32_Dart = int Function(Pointer obj, Pointer<Int32> result);

typedef _GetUInt32_Native = Int32 Function(Pointer obj, Pointer<Uint32> result);
typedef _GetUInt32_Dart = int Function(Pointer obj, Pointer<Uint32> result);

typedef _GetInt64_Native = Int32 Function(Pointer obj, Pointer<Int64> result);
typedef _GetInt64_Dart = int Function(Pointer obj, Pointer<Int64> result);

typedef _GetUInt64_Native = Int32 Function(Pointer obj, Pointer<Uint64> result);
typedef _GetUInt64_Dart = int Function(Pointer obj, Pointer<Uint64> result);

typedef _GetSingle_Native = Int32 Function(Pointer obj, Pointer<Float> result);
typedef _GetSingle_Dart = int Function(Pointer obj, Pointer<Float> result);

typedef _GetDouble_Native = Int32 Function(Pointer obj, Pointer<Double> result);
typedef _GetDouble_Dart = int Function(Pointer obj, Pointer<Double> result);

typedef _GetChar16_Native = Int32 Function(Pointer obj, Pointer<Uint8> result);
typedef _GetChar16_Dart = int Function(Pointer obj, Pointer<Uint8> result);

typedef _GetBoolean_Native = Int32 Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> result);
typedef _GetBoolean_Dart = int Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> result);

typedef _GetString_Native = Int32 Function(Pointer obj, Pointer<IntPtr> result);
typedef _GetString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef _GetGuid_Native = Int32 Function(Pointer obj, Pointer<GUID> result);
typedef _GetGuid_Dart = int Function(Pointer obj, Pointer<GUID> result);

typedef _GetDateTime_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> result);
typedef _GetDateTime_Dart = int Function(Pointer obj, Pointer<Uint32> result);

typedef _GetTimeSpan_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> result);
typedef _GetTimeSpan_Dart = int Function(Pointer obj, Pointer<Uint32> result);

typedef _GetPoint_Native = Int32 Function(Pointer obj, Pointer<Uint32> result);
typedef _GetPoint_Dart = int Function(Pointer obj, Pointer<Uint32> result);

typedef _GetSize_Native = Int32 Function(Pointer obj, Pointer<Uint32> result);
typedef _GetSize_Dart = int Function(Pointer obj, Pointer<Uint32> result);

typedef _GetRect_Native = Int32 Function(Pointer obj, Pointer<Uint32> result);
typedef _GetRect_Dart = int Function(Pointer obj, Pointer<Uint32> result);

typedef _GetUInt8Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint8> value);
typedef _GetUInt8Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint8> value);

typedef _GetInt16Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Int16> value);
typedef _GetInt16Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Int16> value);

typedef _GetUInt16Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint16> value);
typedef _GetUInt16Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint16> value);

typedef _GetInt32Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Int32> value);
typedef _GetInt32Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Int32> value);

typedef _GetUInt32Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);
typedef _GetUInt32Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);

typedef _GetInt64Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Int64> value);
typedef _GetInt64Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Int64> value);

typedef _GetUInt64Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint64> value);
typedef _GetUInt64Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint64> value);

typedef _GetSingleArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Float> value);
typedef _GetSingleArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Float> value);

typedef _GetDoubleArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Double> value);
typedef _GetDoubleArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Double> value);

typedef _GetChar16Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint8> value);
typedef _GetChar16Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint8> value);

typedef _GetBooleanArray_Native = Int32 Function(Pointer obj,
    Pointer<Uint32> __valueSize, Pointer< /* Boolean */ Uint8> value);
typedef _GetBooleanArray_Dart = int Function(Pointer obj,
    Pointer<Uint32> __valueSize, Pointer< /* Boolean */ Uint8> value);

typedef _GetStringArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef _GetStringArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef _GetInspectableArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<COMObject> value);
typedef _GetInspectableArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<COMObject> value);

typedef _GetGuidArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<GUID> value);
typedef _GetGuidArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<GUID> value);

typedef _GetDateTimeArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);
typedef _GetDateTimeArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);

typedef _GetTimeSpanArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);
typedef _GetTimeSpanArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);

typedef _GetPointArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);
typedef _GetPointArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);

typedef _GetSizeArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);
typedef _GetSizeArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);

typedef _GetRectArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);
typedef _GetRectArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<Uint32> value);

/// {@category Interface}
/// {@category winrt}
class IPropertyValue extends IInspectable {
  // vtable begins at 6, ends at 44

  IPropertyValue(Pointer<COMObject> ptr) : super(ptr);

  int get Type {
    final retValuePtr = calloc<Uint32>();

    final hr = Pointer<NativeFunction<_get_Type_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<_get_Type_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  bool get IsNumericScalar {
    final retValuePtr = calloc< /* Boolean */ Uint8>();

    final hr = Pointer<NativeFunction<_get_IsNumericScalar_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<_get_IsNumericScalar_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue == 0;
  }

  int GetUInt8(Pointer<Uint8> result) =>
      Pointer<NativeFunction<_GetUInt8_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetUInt8_Dart>()(ptr.ref.lpVtbl, result);

  int GetInt16(Pointer<Int16> result) =>
      Pointer<NativeFunction<_GetInt16_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_GetInt16_Dart>()(ptr.ref.lpVtbl, result);

  int GetUInt16(Pointer<Uint16> result) =>
      Pointer<NativeFunction<_GetUInt16_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_GetUInt16_Dart>()(ptr.ref.lpVtbl, result);

  int GetInt32(Pointer<Int32> result) =>
      Pointer<NativeFunction<_GetInt32_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_GetInt32_Dart>()(ptr.ref.lpVtbl, result);

  int GetUInt32(Pointer<Uint32> result) =>
      Pointer<NativeFunction<_GetUInt32_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_GetUInt32_Dart>()(ptr.ref.lpVtbl, result);

  int GetInt64(Pointer<Int64> result) =>
      Pointer<NativeFunction<_GetInt64_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_GetInt64_Dart>()(ptr.ref.lpVtbl, result);

  int GetUInt64(Pointer<Uint64> result) =>
      Pointer<NativeFunction<_GetUInt64_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<_GetUInt64_Dart>()(ptr.ref.lpVtbl, result);

  int GetSingle(Pointer<Float> result) =>
      Pointer<NativeFunction<_GetSingle_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<_GetSingle_Dart>()(ptr.ref.lpVtbl, result);

  int GetDouble(Pointer<Double> result) =>
      Pointer<NativeFunction<_GetDouble_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<_GetDouble_Dart>()(ptr.ref.lpVtbl, result);

  int GetChar16(Pointer<Uint8> result) =>
      Pointer<NativeFunction<_GetChar16_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_GetChar16_Dart>()(ptr.ref.lpVtbl, result);

  int GetBoolean(Pointer< /* Boolean */ Uint8> result) =>
      Pointer<NativeFunction<_GetBoolean_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<_GetBoolean_Dart>()(ptr.ref.lpVtbl, result);

  int GetString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<_GetString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<_GetString_Dart>()(ptr.ref.lpVtbl, result);

  int GetGuid(Pointer<GUID> result) =>
      Pointer<NativeFunction<_GetGuid_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<_GetGuid_Dart>()(ptr.ref.lpVtbl, result);

  int GetDateTime(Pointer<Uint32> result) =>
      Pointer<NativeFunction<_GetDateTime_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<_GetDateTime_Dart>()(ptr.ref.lpVtbl, result);

  int GetTimeSpan(Pointer<Uint32> result) =>
      Pointer<NativeFunction<_GetTimeSpan_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(22).value)
          .asFunction<_GetTimeSpan_Dart>()(ptr.ref.lpVtbl, result);

  int GetPoint(Pointer<Uint32> result) =>
      Pointer<NativeFunction<_GetPoint_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(23).value)
          .asFunction<_GetPoint_Dart>()(ptr.ref.lpVtbl, result);

  int GetSize(Pointer<Uint32> result) =>
      Pointer<NativeFunction<_GetSize_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(24).value)
          .asFunction<_GetSize_Dart>()(ptr.ref.lpVtbl, result);

  int GetRect(Pointer<Uint32> result) =>
      Pointer<NativeFunction<_GetRect_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(25).value)
          .asFunction<_GetRect_Dart>()(ptr.ref.lpVtbl, result);

  int GetUInt8Array(Pointer<Uint32> __valueSize, Pointer<Uint8> value) =>
      Pointer<NativeFunction<_GetUInt8Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(26).value)
              .asFunction<_GetUInt8Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetInt16Array(Pointer<Uint32> __valueSize, Pointer<Int16> value) =>
      Pointer<NativeFunction<_GetInt16Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(27).value)
              .asFunction<_GetInt16Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetUInt16Array(Pointer<Uint32> __valueSize, Pointer<Uint16> value) =>
      Pointer<NativeFunction<_GetUInt16Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(28).value)
              .asFunction<_GetUInt16Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetInt32Array(Pointer<Uint32> __valueSize, Pointer<Int32> value) =>
      Pointer<NativeFunction<_GetInt32Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(29).value)
              .asFunction<_GetInt32Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetUInt32Array(Pointer<Uint32> __valueSize, Pointer<Uint32> value) =>
      Pointer<NativeFunction<_GetUInt32Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(30).value)
              .asFunction<_GetUInt32Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetInt64Array(Pointer<Uint32> __valueSize, Pointer<Int64> value) =>
      Pointer<NativeFunction<_GetInt64Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(31).value)
              .asFunction<_GetInt64Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetUInt64Array(Pointer<Uint32> __valueSize, Pointer<Uint64> value) =>
      Pointer<NativeFunction<_GetUInt64Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(32).value)
              .asFunction<_GetUInt64Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetSingleArray(Pointer<Uint32> __valueSize, Pointer<Float> value) =>
      Pointer<NativeFunction<_GetSingleArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(33).value)
              .asFunction<_GetSingleArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetDoubleArray(Pointer<Uint32> __valueSize, Pointer<Double> value) =>
      Pointer<NativeFunction<_GetDoubleArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(34).value)
              .asFunction<_GetDoubleArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetChar16Array(Pointer<Uint32> __valueSize, Pointer<Uint8> value) =>
      Pointer<NativeFunction<_GetChar16Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(35).value)
              .asFunction<_GetChar16Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetBooleanArray(
          Pointer<Uint32> __valueSize, Pointer< /* Boolean */ Uint8> value) =>
      Pointer<NativeFunction<_GetBooleanArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(36).value)
              .asFunction<_GetBooleanArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetStringArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<_GetStringArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(37).value)
              .asFunction<_GetStringArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetInspectableArray(
          Pointer<Uint32> __valueSize, Pointer<COMObject> value) =>
      Pointer<NativeFunction<_GetInspectableArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(38).value)
              .asFunction<_GetInspectableArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetGuidArray(Pointer<Uint32> __valueSize, Pointer<GUID> value) =>
      Pointer<NativeFunction<_GetGuidArray_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(39).value)
          .asFunction<_GetGuidArray_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetDateTimeArray(Pointer<Uint32> __valueSize, Pointer<Uint32> value) =>
      Pointer<NativeFunction<_GetDateTimeArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(40).value)
              .asFunction<_GetDateTimeArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetTimeSpanArray(Pointer<Uint32> __valueSize, Pointer<Uint32> value) =>
      Pointer<NativeFunction<_GetTimeSpanArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(41).value)
              .asFunction<_GetTimeSpanArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetPointArray(Pointer<Uint32> __valueSize, Pointer<Uint32> value) =>
      Pointer<NativeFunction<_GetPointArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(42).value)
              .asFunction<_GetPointArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetSizeArray(Pointer<Uint32> __valueSize, Pointer<Uint32> value) =>
      Pointer<NativeFunction<_GetSizeArray_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(43).value)
          .asFunction<_GetSizeArray_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetRectArray(Pointer<Uint32> __valueSize, Pointer<Uint32> value) =>
      Pointer<NativeFunction<_GetRectArray_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(44).value)
          .asFunction<_GetRectArray_Dart>()(ptr.ref.lpVtbl, __valueSize, value);
}
