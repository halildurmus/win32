// propertyvalue.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../../combase.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../utils.dart';
import '../../types.dart';
import '../../winrt_callbacks.dart';
import '../../winrt_helpers.dart';

import '../../extensions/hstring_array.dart';

import 'ipropertyvaluestatics.dart';
import '../../guid.dart';
import '../../winrt/foundation/structs.g.dart';
import '../../com/iinspectable.dart';

/// {@category Class}
/// {@category winrt}
class PropertyValue extends IInspectable {
  PropertyValue.from(super.ptr);

  static const _className = 'Windows.Foundation.PropertyValue';

  // IPropertyValueStatics methods
  static Pointer<COMObject> CreateEmpty() {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateEmpty();
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt8(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateUInt8(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInt16(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateInt16(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt16(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateUInt16(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInt32(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateInt32(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt32(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateUInt32(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInt64(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateInt64(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt64(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateUInt64(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateSingle(double value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateSingle(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateDouble(double value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateDouble(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateChar16(int value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateChar16(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateBoolean(bool value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateBoolean(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateString(String value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateString(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInspectable(Pointer<COMObject> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateInspectable(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateGuid(GUID value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateGuid(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateDateTime(DateTime value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateDateTime(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateTimeSpan(Duration value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateTimeSpan(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreatePoint(Point value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreatePoint(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateSize(Size value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateSize(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateRect(Rect value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory).CreateRect(value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt8Array(
      int valueSize, Pointer<Uint8> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateUInt8Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInt16Array(
      int valueSize, Pointer<Int16> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateInt16Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt16Array(
      int valueSize, Pointer<Uint16> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateUInt16Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInt32Array(
      int valueSize, Pointer<Int32> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateInt32Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt32Array(
      int valueSize, Pointer<Uint32> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateUInt32Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInt64Array(
      int valueSize, Pointer<Int64> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateInt64Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateUInt64Array(
      int valueSize, Pointer<Uint64> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateUInt64Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateSingleArray(
      int valueSize, Pointer<Float> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateSingleArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateDoubleArray(
      int valueSize, Pointer<Double> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateDoubleArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateChar16Array(
      int valueSize, Pointer<Uint16> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateChar16Array(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateBooleanArray(
      int valueSize, Pointer<Bool> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateBooleanArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateStringArray(
      int valueSize, Pointer<IntPtr> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateStringArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateInspectableArray(
      int valueSize, Pointer<COMObject> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateInspectableArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateGuidArray(
      int valueSize, Pointer<GUID> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateGuidArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateDateTimeArray(
      int valueSize, Pointer<Uint64> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateDateTimeArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateTimeSpanArray(
      int valueSize, Pointer<Uint64> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateTimeSpanArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreatePointArray(
      int valueSize, Pointer<Point> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreatePointArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateSizeArray(
      int valueSize, Pointer<Size> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateSizeArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }

  static Pointer<COMObject> CreateRectArray(
      int valueSize, Pointer<Rect> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IPropertyValueStatics);

    try {
      return IPropertyValueStatics.from(activationFactory)
          .CreateRectArray(valueSize, value);
    } finally {
      free(activationFactory);
    }
  }
}
