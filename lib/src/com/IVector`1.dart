// IVector.dart

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api-ms-win-core-winrt-string-l1-1-0.dart';
import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../winrt/winrt_helpers.dart';
import 'IInspectable.dart';
import 'IVectorView`1.dart';

/// @nodoc
const IID_IVector = '{913337E9-11A1-4345-A3A2-4E7F956E222D}';

/// {@category Interface}
/// {@category winrt}
class IVector extends IInspectable {
  // vtable begins at 6, is 12 entries long.
  IVector(Pointer<COMObject> ptr) : super(ptr);

  String GetAt(int index) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            Pointer<HSTRING>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            Pointer<HSTRING>,
          )>()(ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  int get Size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Pointer<Uint32>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32>,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  IVectorView get GetView {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject>,
        )>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return IVectorView(retValuePtr);
  }

  bool IndexOf(String value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            HSTRING,
            Pointer<Uint32>,
            Pointer<Bool>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            Pointer<Uint32>,
            Pointer<Bool>,
          )>()(ptr.ref.lpVtbl, hValue, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
      WindowsDeleteString(hValue);
    }
  }

  void SetAt(int index, String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            HSTRING,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            int,
          )>()(
        ptr.ref.lpVtbl,
        index,
        hValue,
      );

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  void InsertAt(int index, String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            HSTRING,
          )>>>()
          .value
          .asFunction<int Function(Pointer, int, int)>()(
        ptr.ref.lpVtbl,
        index,
        hValue,
      );

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  void RemoveAt(int index) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Uint32,
        )>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(
      ptr.ref.lpVtbl,
      index,
    );

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void Append(String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            HSTRING,
          )>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hValue);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  void RemoveAtEnd() {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void Clear() {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int GetMany(int startIndex, Pointer<HSTRING> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            Uint32,
            Pointer<HSTRING>,
            Pointer<Uint32>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            int,
            Pointer<HSTRING>,
            Pointer<Uint32>,
          )>()(ptr.ref.lpVtbl, startIndex, Size, items, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  void ReplaceAll(List<String> items) {
    final handles = <int>[];
    final pArray = calloc<HSTRING>(sizeOf<HSTRING>() * items.length);
    for (var i = 0; i < items.length; i++) {
      pArray[i] = convertToHString(items.elementAt(i));
      handles.add(pArray[i]);
    }

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
            Pointer,
            Uint32,
            Pointer<HSTRING>,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int,
            Pointer<HSTRING>,
          )>()(ptr.ref.lpVtbl, items.length, pArray);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(pArray);
      for (final handle in handles) {
        WindowsDeleteString(handle);
      }
    }
  }
}
