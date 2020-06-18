// IPropertyValue.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/winrt/winrt_constants.dart';

import 'package:win32/src/generated/IInspectable.dart';

const IID_IPropertyValue = '{4BD682DD-7554-40E9-9A9B-82654EDE7E62}';

typedef get_Type_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef get_Type_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef get_IsNumericScalar_Native = Int32 Function(
    Pointer obj, Pointer<Uint8> value);
typedef get_IsNumericScalar_Dart = int Function(
    Pointer obj, Pointer<Uint8> value);

typedef GetUInt8_Native = Int32 Function(Pointer obj, Pointer<Uint8> value);
typedef GetUInt8_Dart = int Function(Pointer obj, Pointer<Uint8> value);

typedef GetInt16_Native = Int32 Function(Pointer obj, Pointer<Int16> value);
typedef GetInt16_Dart = int Function(Pointer obj, Pointer<Int16> value);

typedef GetUInt16_Native = Int32 Function(Pointer obj, Pointer<Uint16> value);
typedef GetUInt16_Dart = int Function(Pointer obj, Pointer<Uint16> value);

typedef GetInt32_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef GetInt32_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef GetUInt32_Native = Int32 Function(Pointer obj, Pointer<Uint32> value);
typedef GetUInt32_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef GetInt64_Native = Int32 Function(Pointer obj, Pointer<Int64> value);
typedef GetInt64_Dart = int Function(Pointer obj, Pointer<Int64> value);

typedef GetUInt64_Native = Int32 Function(Pointer obj, Pointer<Uint64> value);
typedef GetUInt64_Dart = int Function(Pointer obj, Pointer<Uint64> value);

typedef GetSingle_Native = Int32 Function(Pointer obj, Pointer<Float> value);
typedef GetSingle_Dart = int Function(Pointer obj, Pointer<Float> value);

typedef GetDouble_Native = Int32 Function(Pointer obj, Pointer<Double> value);
typedef GetDouble_Dart = int Function(Pointer obj, Pointer<Double> value);

typedef GetChar16_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);
typedef GetChar16_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);

typedef GetBoolean_Native = Int32 Function(Pointer obj, Pointer<Uint8> value);
typedef GetBoolean_Dart = int Function(Pointer obj, Pointer<Uint8> value);

typedef GetString_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef GetString_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef GetGuid_Native = Int32 Function(Pointer obj, Pointer<GUID> value);
typedef GetGuid_Dart = int Function(Pointer obj, Pointer<GUID> value);

typedef GetDateTime_Native = Int32 Function(Pointer obj, Pointer<Int64> value);
typedef GetDateTime_Dart = int Function(Pointer obj, Pointer<Int64> value);

typedef GetTimeSpan_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef GetTimeSpan_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef GetPoint_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef GetPoint_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef GetSize_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef GetSize_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef GetRect_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef GetRect_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef GetUInt8Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetUInt8Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetInt16Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetInt16Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetUInt16Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetUInt16Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetInt32Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetInt32Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetUInt32Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetUInt32Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetInt64Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetInt64Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetUInt64Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetUInt64Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetSingleArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetSingleArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetDoubleArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetDoubleArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetChar16Array_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetChar16Array_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetBooleanArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetBooleanArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetStringArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetStringArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetInspectableArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetInspectableArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetGuidArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetGuidArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetDateTimeArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetDateTimeArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetTimeSpanArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetTimeSpanArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetPointArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetPointArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetSizeArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetSizeArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

typedef GetRectArray_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);
typedef GetRectArray_Dart = int Function(
    Pointer obj, Pointer<Uint32> __valueSize, Pointer<IntPtr> value);

class IPropertyValue extends IInspectable {
  // vtable begins at 6, ends at 44

  @override
  Pointer<COMObject> ptr;

  IPropertyValue(this.ptr) : super(ptr);

  int get Type {
    final retValuePtr = allocate<IntPtr>();

    final hr = Pointer<NativeFunction<get_Type_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<get_Type_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get IsNumericScalar {
    final retValuePtr = allocate<Uint8>();

    final hr = Pointer<NativeFunction<get_IsNumericScalar_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<get_IsNumericScalar_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int GetUInt8(Pointer<Uint8> value) =>
      Pointer<NativeFunction<GetUInt8_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<GetUInt8_Dart>()(ptr.ref.lpVtbl, value);

  int GetInt16(Pointer<Int16> value) =>
      Pointer<NativeFunction<GetInt16_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<GetInt16_Dart>()(ptr.ref.lpVtbl, value);

  int GetUInt16(Pointer<Uint16> value) =>
      Pointer<NativeFunction<GetUInt16_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<GetUInt16_Dart>()(ptr.ref.lpVtbl, value);

  int GetInt32(Pointer<Int32> value) =>
      Pointer<NativeFunction<GetInt32_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<GetInt32_Dart>()(ptr.ref.lpVtbl, value);

  int GetUInt32(Pointer<Uint32> value) =>
      Pointer<NativeFunction<GetUInt32_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<GetUInt32_Dart>()(ptr.ref.lpVtbl, value);

  int GetInt64(Pointer<Int64> value) =>
      Pointer<NativeFunction<GetInt64_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<GetInt64_Dart>()(ptr.ref.lpVtbl, value);

  int GetUInt64(Pointer<Uint64> value) =>
      Pointer<NativeFunction<GetUInt64_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<GetUInt64_Dart>()(ptr.ref.lpVtbl, value);

  int GetSingle(Pointer<Float> value) =>
      Pointer<NativeFunction<GetSingle_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<GetSingle_Dart>()(ptr.ref.lpVtbl, value);

  int GetDouble(Pointer<Double> value) =>
      Pointer<NativeFunction<GetDouble_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<GetDouble_Dart>()(ptr.ref.lpVtbl, value);

  int GetChar16(Pointer<Pointer<Utf16>> value) =>
      Pointer<NativeFunction<GetChar16_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<GetChar16_Dart>()(ptr.ref.lpVtbl, value);

  int GetBoolean(Pointer<Uint8> value) =>
      Pointer<NativeFunction<GetBoolean_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<GetBoolean_Dart>()(ptr.ref.lpVtbl, value);

  int GetString(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<GetString_Dart>()(ptr.ref.lpVtbl, value);

  int GetGuid(Pointer<GUID> value) =>
      Pointer<NativeFunction<GetGuid_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<GetGuid_Dart>()(ptr.ref.lpVtbl, value);

  int GetDateTime(Pointer<Int64> value) =>
      Pointer<NativeFunction<GetDateTime_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<GetDateTime_Dart>()(ptr.ref.lpVtbl, value);

  int GetTimeSpan(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetTimeSpan_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(22).value)
          .asFunction<GetTimeSpan_Dart>()(ptr.ref.lpVtbl, value);

  int GetPoint(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetPoint_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(23).value)
          .asFunction<GetPoint_Dart>()(ptr.ref.lpVtbl, value);

  int GetSize(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetSize_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(24).value)
          .asFunction<GetSize_Dart>()(ptr.ref.lpVtbl, value);

  int GetRect(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetRect_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(25).value)
          .asFunction<GetRect_Dart>()(ptr.ref.lpVtbl, value);

  int GetUInt8Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetUInt8Array_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(26).value)
          .asFunction<GetUInt8Array_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetInt16Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetInt16Array_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<GetInt16Array_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetUInt16Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetUInt16Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(28).value)
              .asFunction<GetUInt16Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetInt32Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetInt32Array_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(29).value)
          .asFunction<GetInt32Array_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetUInt32Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetUInt32Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(30).value)
              .asFunction<GetUInt32Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetInt64Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetInt64Array_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(31).value)
          .asFunction<GetInt64Array_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetUInt64Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetUInt64Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(32).value)
              .asFunction<GetUInt64Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetSingleArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetSingleArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(33).value)
              .asFunction<GetSingleArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetDoubleArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetDoubleArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(34).value)
              .asFunction<GetDoubleArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetChar16Array(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetChar16Array_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(35).value)
              .asFunction<GetChar16Array_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetBooleanArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetBooleanArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(36).value)
              .asFunction<GetBooleanArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetStringArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetStringArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(37).value)
              .asFunction<GetStringArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetInspectableArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetInspectableArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(38).value)
              .asFunction<GetInspectableArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetGuidArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetGuidArray_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(39).value)
          .asFunction<GetGuidArray_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetDateTimeArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetDateTimeArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(40).value)
              .asFunction<GetDateTimeArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetTimeSpanArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetTimeSpanArray_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(41).value)
              .asFunction<GetTimeSpanArray_Dart>()(
          ptr.ref.lpVtbl, __valueSize, value);

  int GetPointArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetPointArray_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(42).value)
          .asFunction<GetPointArray_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetSizeArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetSizeArray_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(43).value)
          .asFunction<GetSizeArray_Dart>()(ptr.ref.lpVtbl, __valueSize, value);

  int GetRectArray(Pointer<Uint32> __valueSize, Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetRectArray_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(44).value)
          .asFunction<GetRectArray_Dart>()(ptr.ref.lpVtbl, __valueSize, value);
}
