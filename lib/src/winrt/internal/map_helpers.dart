// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../../com/iinspectable.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../types.dart';
import '../../utils.dart';
import '../../winrt_helpers.dart';
import '../devices/sensors/enums.g.dart';
import '../foundation/collections/ikeyvaluepair.dart';
import '../foundation/propertyvalue.dart';
import '../foundation/structs.g.dart';
import 'comobject_pointer.dart';
import 'hstring_array.dart';
import 'int_array.dart';

class MapHelper {
  static Map<K, V> toMap<K, V>(
    int Function(int, Pointer<NativeType>) getManyCallback, {
    IKeyValuePair<K, V> Function(Pointer<COMObject>)? creator,
    int length = 1,
  }) {
    final pArray = calloc<COMObject>(length);
    getManyCallback(length, pArray);
    final keyValuePairs = pArray.toList<IKeyValuePair<K, V>>(
        creator ?? IKeyValuePair.fromRawPointer,
        length: length);
    final map = Map.fromEntries(
        keyValuePairs.map((kvp) => MapEntry(kvp.key, kvp.value)));

    return Map.unmodifiable(map);
  }
}

/// Determines whether [K] and [V] key-value pair is supported.
///
/// Supported key-value pairs are: `IKeyValuePair<int, IInspectable?>`,
/// `IKeyValuePair<GUID, IInspectable?>`, `IKeyValuePair<GUID, Object?>`,
/// `IKeyValuePair<PedometerStepKind, IInspectable?>`,
/// `IKeyValuePair<Object, Object?>`,
/// `IKeyValuePair<String, Object?>`, `IKeyValuePair<String, String?>`,
/// `IKeyValuePair<String, IInspectable?>`, `IKeyValuePair<String, WinRTEnum?>`.
///
/// ```dart
/// isSupportedKeyValuePair<GUID, SpatialSurfaceInfo?>(); // true
/// isSupportedKeyValuePair<String, Object?>(); // true
/// ```
bool isSupportedKeyValuePair<K, V>() {
  // e.g. IKeyValuePair<int, IBuffer>
  if (isSameType<K, int>() && isSubtypeOfInspectable<V>()) {
    return true;
  }

  // e.g. IKeyValuePair<GUID, SpatialSurfaceInfo>, IKeyValuePair<GUID, Object?>
  if (isSameType<K, GUID>() &&
      (isSubtypeOfInspectable<V>() || isSimilarType<V, Object>())) {
    return true;
  }

  // e.g. IKeyValuePair<PedometerStepKind, PedometerReading>
  if (isSameType<K, PedometerStepKind>() && isSubtypeOfInspectable<V>()) {
    return true;
  }

  // e.g. IKeyValuePair<Object, Object?>
  if (isSameType<K, Object>() && isSimilarType<V, Object>()) {
    return true;
  }

  // e.g. IKeyValuePair<String, Object?>, IKeyValuePair<String, String?>,
  // IKeyValuePair<String, IJsonValue?>, IKeyValuePair<String, ChatMessageStatus?>
  if (isSameType<K, String>() &&
      (isSimilarType<V, Object?>() ||
          isSimilarType<V, String?>() ||
          isSubtypeOfInspectable<V>() ||
          isSubtypeOfWinRTEnum<V>())) {
    return true;
  }

  return false;
}

List<bool> boolListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Bool>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Bool>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> char16ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint16>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint16>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<DateTime> dateTimeListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    final values = pValue.value.toList(length: pValueSize.value);
    return values
        .map(
          (value) => DateTime.utc(1601, 01, 01)
              .add(Duration(microseconds: value ~/ 10)),
        )
        .toList();
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<double> doubleListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Double>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Double>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<GUID> guidListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<GUID>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<GUID>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
  }
}

List<IInspectable> inspectableListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<COMObject>>)
        getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<COMObject>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(IInspectable.new, length: pValueSize.value);
  } finally {
    free(pValueSize);
  }
}

List<int> int16ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Int16>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Int16>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> int32ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Int32>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Int32>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> int64ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Int64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Int64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<Point> pointListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Point>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Point>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
  }
}

List<Rect> rectListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Rect>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Rect>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
  }
}

List<double> singleListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Float>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Float>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<Size> sizeListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Size>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Size>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
  }
}

List<String> stringListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<HSTRING>>)
        getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<HSTRING>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<Duration> durationListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    final values = pValue.value.toList(length: pValueSize.value);
    return values.map((value) => Duration(microseconds: value ~/ 10)).toList();
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> uint16ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint16>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint16>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> uint32ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint32>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint32>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> uint64ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> uint8ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint8>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint8>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

/// Boxes [value] so that it can be passed to the WinRT APIs that take
/// `IPropertyValue` interface as a parameter.
///
/// This is mostly used when working with `IMap` and `IMapView` types.
Pointer<COMObject> boxValue(Object? value) {
  if (value == null) return PropertyValue.createEmpty();

  // There is no need to box IInspectable objects since .createInspectable()
  // returns the object provided without modification.
  // See https://docs.microsoft.com/en-us/uwp/api/windows.foundation.PropertyValue.createinspectable
  if (value is IInspectable) return value.ptr;

  if (value is bool) return PropertyValue.createBoolean(value);
  if (value is DateTime) return PropertyValue.createDateTime(value);
  if (value is double) return PropertyValue.createDouble(value);
  if (value is Duration) return PropertyValue.createTimeSpan(value);
  if (value is GUID) return PropertyValue.createGuid(value);
  if (value is int) return PropertyValue.createInt64(value);
  if (value is Point) return PropertyValue.createPoint(value);
  if (value is Rect) return PropertyValue.createRect(value);
  if (value is Size) return PropertyValue.createSize(value);
  if (value is String) return PropertyValue.createString(value);

  if (value is List<bool>) return _boxBoolList(value);
  if (value is List<DateTime>) return _boxDateTimeList(value);
  if (value is List<double>) return _boxDoubleList(value);
  if (value is List<Duration>) return _boxDurationList(value);
  if (value is List<GUID>) return _boxGuidList(value);
  if (value is List<IInspectable>) return _boxInspectableList(value);
  if (value is List<int>) return _boxIntList(value);
  if (value is List<Point>) return _boxPointList(value);
  if (value is List<Rect>) return _boxRectList(value);
  if (value is List<Size>) return _boxSizeList(value);
  if (value is List<String>) return _boxStringList(value);

  throw ArgumentError.value(value, 'value', 'Unsupported value');
}

Pointer<COMObject> _boxBoolList(List<bool> list) {
  final pArray = calloc<Bool>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i);
  }

  try {
    return PropertyValue.createBooleanArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxDateTimeList(List<DateTime> list) {
  final pArray = calloc<Uint64>(list.length);
  for (var i = 0; i < list.length; i++) {
    final dateTimeValue = list
            .elementAt(i)
            .difference(DateTime.utc(1601, 01, 01))
            .inMicroseconds *
        10;
    pArray[i] = dateTimeValue;
  }

  try {
    return PropertyValue.createDateTimeArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxDoubleList(List<double> list) {
  final pArray = calloc<Double>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i);
  }

  try {
    return PropertyValue.createDoubleArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxDurationList(List<Duration> list) {
  final pArray = calloc<Uint64>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i).inMicroseconds * 10;
  }

  try {
    return PropertyValue.createTimeSpanArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxGuidList(List<GUID> list) {
  final pArray = calloc<GUID>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray.elementAt(i).ref.setGUID(list.elementAt(i).toString());
  }

  try {
    return PropertyValue.createGuidArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxPointList(List<Point> list) {
  final pArray = calloc<Point>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i);
  }

  try {
    return PropertyValue.createPointArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxRectList(List<Rect> list) {
  final pArray = calloc<Rect>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i);
  }

  try {
    return PropertyValue.createRectArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxSizeList(List<Size> list) {
  final pArray = calloc<Size>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i);
  }

  try {
    return PropertyValue.createSizeArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxIntList(List<int> list) {
  final pArray = calloc<Int64>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i);
  }

  try {
    return PropertyValue.createInt64Array(list.length, pArray);
  } finally {
    free(pArray);
  }
}

Pointer<COMObject> _boxStringList(List<String> list) {
  final handles = <int>[];
  final pArray = calloc<HSTRING>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = convertToHString(list.elementAt(i));
    handles.add(pArray[i]);
  }

  try {
    return PropertyValue.createStringArray(list.length, pArray);
  } finally {
    free(pArray);
    handles.forEach(WindowsDeleteString);
  }
}

Pointer<COMObject> _boxInspectableList(List<IInspectable> list) {
  final pArray = calloc<COMObject>(list.length);
  for (var i = 0; i < list.length; i++) {
    pArray[i] = list.elementAt(i).ptr.ref;
  }

  try {
    return PropertyValue.createInspectableArray(list.length, pArray);
  } finally {
    free(pArray);
  }
}
