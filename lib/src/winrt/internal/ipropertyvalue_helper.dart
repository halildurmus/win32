// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to get the appropriate value stored in the IPropertyValue.

import 'dart:ffi';

import '../../com/iinspectable.dart';
import '../../winrt_helpers.dart';
import '../foundation/enums.g.dart';
import '../foundation/ipropertyvalue.dart';
import 'map_helpers.dart';

extension IPropertyValueHelper on IPropertyValue {
  /// Gets the type that is represented as an [IPropertyValue].
  Object? get value {
    if (ptr.ref.lpVtbl == nullptr) return null;

    // If the object does not implement the IPropertyValue interface, return it
    // as an `IInspectable` object.
    if (!iids.contains(IID_IPropertyValue)) return IInspectable(ptr);

    switch (this.type) {
      case PropertyType.boolean:
        return getBoolean();
      case PropertyType.booleanArray:
        return boolListFromArray(getBooleanArray);
      case PropertyType.char16:
        return getChar16();
      case PropertyType.char16Array:
        return char16ListFromArray(getChar16Array);
      case PropertyType.dateTime:
        return getDateTime();
      case PropertyType.dateTimeArray:
        return dateTimeListFromArray(getDateTimeArray);
      case PropertyType.double_:
        return getDouble();
      case PropertyType.doubleArray:
        return doubleListFromArray(getDoubleArray);
      case PropertyType.guid:
        return getGuid();
      case PropertyType.guidArray:
        return guidListFromArray(getGuidArray);
      case PropertyType.inspectableArray:
        return inspectableListFromArray(getInspectableArray);
      case PropertyType.int16:
        return getInt16();
      case PropertyType.int16Array:
        return int16ListFromArray(getInt16Array);
      case PropertyType.int32:
        return getInt32();
      case PropertyType.int32Array:
        return int32ListFromArray(getInt32Array);
      case PropertyType.int64:
        return getInt64();
      case PropertyType.int64Array:
        return int64ListFromArray(getInt64Array);
      case PropertyType.point:
        return getPoint();
      case PropertyType.pointArray:
        return pointListFromArray(getPointArray);
      case PropertyType.rect:
        return getRect();
      case PropertyType.rectArray:
        return rectListFromArray(getRectArray);
      case PropertyType.single:
        return getSingle();
      case PropertyType.singleArray:
        return singleListFromArray(getSingleArray);
      case PropertyType.size:
        return getSize();
      case PropertyType.sizeArray:
        return sizeListFromArray(getSizeArray);
      case PropertyType.string:
        return getString();
      case PropertyType.stringArray:
        return stringListFromArray(getStringArray);
      case PropertyType.timeSpan:
        return getTimeSpan();
      case PropertyType.timeSpanArray:
        return durationListFromArray(getTimeSpanArray);
      case PropertyType.uInt16:
        return getUInt16();
      case PropertyType.uInt16Array:
        return uint16ListFromArray(getUInt16Array);
      case PropertyType.uInt32:
        return getUInt32();
      case PropertyType.uInt32Array:
        return uint32ListFromArray(getUInt32Array);
      case PropertyType.uInt64:
        return getUInt64();
      case PropertyType.uInt64Array:
        return uint64ListFromArray(getUInt64Array);
      case PropertyType.uInt8:
        return getUInt8();
      case PropertyType.uInt8Array:
        return uint8ListFromArray(getUInt8Array);
      default:
        throw UnsupportedError('Unsupported type: ${this.type}');
    }
  }
}
