// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../extensions/comobject_pointer.dart';
import '../../extensions/hstring_array.dart';
import '../../extensions/int_array.dart';
import '../../types.dart';
import '../../utils.dart';
import '../../winrt_helpers.dart';

class VectorHelper<T> {
  const VectorHelper(
    this.creator,
    this.enumCreator,
    this.intType,
    this.getManyCallback,
    this.length, {
    this.allocator = calloc,
  });

  final Allocator allocator;
  final T Function(Pointer<COMObject>)? creator;
  final T Function(int)? enumCreator;
  final Type? intType;
  final void Function(int, int, Pointer<NativeType>) getManyCallback;
  final int length;

  List<T> toList({bool unmodifiable = false}) {
    final List<T> list;
    if (isSameType<T, int>()) {
      list = _toList_int() as List<T>;
    } else if (isSameType<T, String>()) {
      list = _toList_String() as List<T>;
    } else if (isSubtypeOfWinRTEnum<T>()) {
      list = _toList_enum();
    } else {
      list = _toList_COMObject();
    }

    return unmodifiable ? List.unmodifiable(list) : list;
  }

  List<String> _toList_String() {
    final pArray = calloc<HSTRING>(length);

    try {
      getManyCallback(0, length, pArray);
      return pArray.toList(length: length);
    } finally {
      free(pArray);
    }
  }

  List<T> _toList_COMObject() {
    final pArray = allocator<COMObject>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(creator!, length: length);
  }

  List<T> _toList_enum() {
    switch (intType) {
      case Uint32:
        return _toList_enum_Uint32();
      default:
        return _toList_enum_Int32();
    }
  }

  List<T> _toList_enum_Int32() {
    final pArray = allocator<Int32>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length).map((e) => enumCreator!(e)).toList();
  }

  List<T> _toList_enum_Uint32() {
    final pArray = allocator<Uint32>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length).map((e) => enumCreator!(e)).toList();
  }

  List<int> _toList_int() {
    switch (intType) {
      case Int16:
        return _toList_int_Int16();
      case Int64:
        return _toList_int_Int64();
      case Uint8:
        return _toList_int_Uint8();
      case Uint16:
        return _toList_int_Uint16();
      case Uint32:
        return _toList_int_Uint32();
      case Uint64:
        return _toList_int_Uint64();
      default:
        return _toList_int_Int32();
    }
  }

  List<int> _toList_int_Int16() {
    final pArray = allocator<Int16>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length);
  }

  List<int> _toList_int_Int32() {
    final pArray = allocator<Int32>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length);
  }

  List<int> _toList_int_Int64() {
    final pArray = allocator<Int64>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length);
  }

  List<int> _toList_int_Uint8() {
    final pArray = allocator<Uint8>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length);
  }

  List<int> _toList_int_Uint16() {
    final pArray = allocator<Uint16>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length);
  }

  List<int> _toList_int_Uint32() {
    final pArray = allocator<Uint32>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length);
  }

  List<int> _toList_int_Uint64() {
    final pArray = allocator<Uint64>(length);
    getManyCallback(0, length, pArray);
    return pArray.toList(length: length);
  }
}

typedef GetMany_Int16_Native = Pointer<
    NativeFunction<
        HRESULT Function(
            Pointer, Uint32, Uint32, Pointer<Int16>, Pointer<Uint32>)>>;
typedef GetMany_Int32_Native = Pointer<
    NativeFunction<
        HRESULT Function(
            Pointer, Uint32, Uint32, Pointer<Int32>, Pointer<Uint32>)>>;
typedef GetMany_Int64_Native = Pointer<
    NativeFunction<
        HRESULT Function(
            Pointer, Uint32, Uint32, Pointer<Int64>, Pointer<Uint32>)>>;
typedef GetMany_Uint8_Native = Pointer<
    NativeFunction<
        HRESULT Function(
            Pointer, Uint32, Uint32, Pointer<Uint8>, Pointer<Uint32>)>>;
typedef GetMany_Uint16_Native = Pointer<
    NativeFunction<
        HRESULT Function(
            Pointer, Uint32, Uint32, Pointer<Uint16>, Pointer<Uint32>)>>;
typedef GetMany_Uint32_Native = Pointer<
    NativeFunction<
        HRESULT Function(
            Pointer, Uint32, Uint32, Pointer<Uint32>, Pointer<Uint32>)>>;
typedef GetMany_Uint64_Native = Pointer<
    NativeFunction<
        HRESULT Function(
            Pointer, Uint32, Uint32, Pointer<Uint64>, Pointer<Uint32>)>>;

typedef GetMany_Int16_Dart = int Function(
    Pointer, int, int, Pointer<Int16>, Pointer<Uint32>);
typedef GetMany_Int32_Dart = int Function(
    Pointer, int, int, Pointer<Int32>, Pointer<Uint32>);
typedef GetMany_Int64_Dart = int Function(
    Pointer, int, int, Pointer<Int64>, Pointer<Uint32>);
typedef GetMany_Uint8_Dart = int Function(
    Pointer, int, int, Pointer<Uint8>, Pointer<Uint32>);
typedef GetMany_Uint16_Dart = int Function(
    Pointer, int, int, Pointer<Uint16>, Pointer<Uint32>);
typedef GetMany_Uint32_Dart = int Function(
    Pointer, int, int, Pointer<Uint32>, Pointer<Uint32>);
typedef GetMany_Uint64_Dart = int Function(
    Pointer, int, int, Pointer<Uint64>, Pointer<Uint32>);
