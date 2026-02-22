import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import 'bstr.dart';
import 'com/idispatch.g.dart';
import 'com/iunknown.g.dart';
import 'enums.g.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'macros.dart';
import 'pstr.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/oleaut32.g.dart';

/// A Dart wrapper around the COM [VARIANT] structure.
///
/// `VARIANT` is a tagged union used extensively in COM and Automation APIs to
/// transport values whose type is determined at runtime.
///
/// This wrapper provides:
/// - Safe allocation and cleanup
/// - Dart-friendly accessors
/// - Type-checked reads via the generic parameter [T]
/// - Strongly-typed factory constructors for common VARIANT kinds
///
/// Memory for the underlying [VARIANT] is allocated natively. Any contained
/// resources (e.g., `BSTR`, interface pointers) are owned by the [VARIANT].
/// Call [free] when the [Variant] is no longer needed to avoid leaks.
///
/// The generic parameter [T] represents the **expected Dart view** of the
/// stored value. It is not used to determine the underlying VARIANT type.
/// Instead, it is validated at read time.
///
/// A mismatch between the actual `vt` and [T] results in a [StateError].
///
/// {@category com}
extension type const Variant<T extends Object?>._(Pointer<VARIANT> _)
    implements Pointer<VARIANT> {
  /// Creates a new empty [Variant].
  ///
  /// The constructed [VARIANT] has its `vt` set to [VT_EMPTY].
  @pragma('vm:prefer-inline')
  factory Variant() => Variant._(adaptiveCalloc());

  /// Creates a new [Variant] initialized with the provided [value].
  ///
  /// Supported input types:
  /// - `null` → [VT_NULL]
  /// - [bool] → [VT_BOOL]
  /// - [int] → [VT_I4]
  /// - [double] → [VT_R4]
  /// - [String] → [VT_BSTR]
  /// - [IDispatch] → [VT_DISPATCH]
  /// - [IUnknown] → [VT_UNKNOWN]
  factory Variant.from(T value) => Variant<T>()..value = value;

  /// Creates a [Variant] from an existing [VARIANT] pointer.
  factory Variant.fromPointer(Pointer<VARIANT> ptr) {
    if (ptr.isNull) throw ArgumentError.value(ptr, 'ptr', 'Cannot be null.');
    return Variant<T>._(ptr);
  }

  /// Creates a [Variant] holding a [VARIANT_BOOL] value.
  @pragma('vm:prefer-inline')
  // ignore: avoid_positional_boolean_parameters
  static VariantBool bool$(bool value) => VariantBool(value);

  /// Creates a [Variant] holding a [BSTR] value.
  @pragma('vm:prefer-inline')
  static VariantBSTR bstr(String value) => VariantBSTR(value);

  /// Creates a [Variant] holding a [Double] value.
  @pragma('vm:prefer-inline')
  static VariantDouble double$(double value) => VariantDouble(value);

  /// Creates a [Variant] holding a [Float] value.
  @pragma('vm:prefer-inline')
  static VariantFloat float(double value) => VariantFloat(value);

  /// Creates a [Variant] holding an [Int8] value.
  @pragma('vm:prefer-inline')
  static VariantInt8 int8(int value) => VariantInt8(value);

  /// Creates a [Variant] holding an [Int16] value.
  @pragma('vm:prefer-inline')
  static VariantInt16 int16(int value) => VariantInt16(value);

  /// Creates a [Variant] holding an [Int32] value.
  @pragma('vm:prefer-inline')
  static VariantInt32 int32(int value) => VariantInt32(value);

  /// Creates a [Variant] holding an [Int64] value.
  @pragma('vm:prefer-inline')
  static VariantInt64 int64(int value) => VariantInt64(value);

  /// Creates a [Variant] holding an [IDispatch] value.
  @pragma('vm:prefer-inline')
  static VariantDispatch dispatch(IDispatch value) => VariantDispatch(value);

  /// Creates a [Variant] holding a reference to an [IDispatch] value.
  @pragma('vm:prefer-inline')
  static VariantDispatchByRef dispatchByRef(Pointer<VTablePointer> value) =>
      VariantDispatchByRef(value);

  /// Creates a [Variant] holding an [IUnknown] value.
  @pragma('vm:prefer-inline')
  static VariantUnknown unknown(IUnknown value) => VariantUnknown(value);

  /// Creates a [Variant] holding a reference to an [IUnknown] value.
  @pragma('vm:prefer-inline')
  static VariantUnknownByRef unknownByRef(Pointer<VTablePointer> value) =>
      VariantUnknownByRef(value);

  /// Creates a [Variant] holding a [Uint8] value.
  @pragma('vm:prefer-inline')
  static VariantUint8 uint8(int value) => VariantUint8(value);

  /// Creates a [Variant] holding a [Uint16] value.
  @pragma('vm:prefer-inline')
  static VariantUint16 uint16(int value) => VariantUint16(value);

  /// Creates a [Variant] holding a [Uint32] value.
  @pragma('vm:prefer-inline')
  static VariantUint32 uint32(int value) => VariantUint32(value);

  /// Creates a [Variant] holding a [Uint64] value.
  @pragma('vm:prefer-inline')
  static VariantUint64 uint64(int value) => VariantUint64(value);

  /// Creates a deep copy of this [Variant].
  ///
  /// The returned instance owns its own [VARIANT] and can be modified or freed
  /// independently of the original.
  Variant<T> copy() {
    final dest = adaptiveCalloc<VARIANT>();
    VariantCopy(dest, this);
    return Variant._(dest);
  }

  /// Releases all resources held by this [Variant] and frees its memory.
  void free() {
    VariantClear(this);
    adaptiveCalloc.free(this);
  }

  /// Whether this [VARIANT] is empty ([VT_EMPTY]).
  @pragma('vm:prefer-inline')
  bool get isEmpty => vt == VT_EMPTY;

  /// Whether this [VARIANT] represents a COM `null` ([VT_NULL]).
  @pragma('vm:prefer-inline')
  bool get isNull => vt == VT_NULL;

  /// Gets or sets the Dart value represented by this [VARIANT].
  ///
  /// When reading, the current `vt` field determines how the value is decoded.
  /// The decoded value must be assignable to [T].
  ///
  /// Supported return types include:
  /// - `null` for [VT_EMPTY] and [VT_NULL]
  /// - [bool] for [VT_BOOL]
  /// - [String] for [VT_BSTR]
  /// - [IDispatch] for [VT_DISPATCH]
  /// - [IUnknown] for [VT_UNKNOWN]
  /// - [double] for floating-point types ([VT_R4], [VT_R8])
  /// - [int] for integer types ([VT_I4], [VT_I8], etc.)
  ///
  /// When writing, the existing value is cleared before assigning the new one.
  ///
  /// Supported input types include:
  /// - `null` for [VT_NULL]
  /// - [bool] for [VT_BOOL]
  /// - [String] for [VT_BSTR]
  /// - [IDispatch] for [VT_DISPATCH]
  /// - [IUnknown] for [VT_UNKNOWN]
  /// - [double] for 32-bit floating-point type ([VT_R4])
  /// - [int] for 32-bit signed integer type ([VT_I4])
  T get value {
    final result = switch (vt) {
      VT_EMPTY || VT_NULL => null,
      VT_BOOL => boolVal,
      VT_BSTR => bstrVal.isNull ? null : bstrVal.toDartString(),
      VT_I1 => cVal,
      VT_I2 => iVal,
      VT_I4 => intVal,
      VT_I8 => llVal,
      VT_UI1 => bVal,
      VT_UI2 => uiVal,
      VT_UI4 => uintVal,
      VT_UI8 => ullVal,
      VT_R4 => fltVal,
      VT_R8 => dblVal,
      VT_DISPATCH => pdispVal,
      VT_UNKNOWN => punkVal,
      _ => this,
    };

    if (result is! T) {
      throw StateError(
        'Expected $T but got ${result?.runtimeType} for vt $vt.',
      );
    }

    return result;
  }

  set value(T value) {
    VariantClear(this);
    ZeroMemory(this, sizeOf<VARIANT>());

    if (value == null) {
      vt = VT_NULL;
      return;
    }

    switch (value) {
      case bool _:
        vt = VT_BOOL;
        boolVal = value;
      case double _:
        vt = VT_R4;
        dblVal = value;
      case IDispatch _:
        vt = VT_DISPATCH;
        pdispVal = value;
      case IUnknown _:
        vt = VT_UNKNOWN;
        punkVal = value;
      case int _:
        vt = VT_I4;
        intVal = value;
      case String _:
        vt = VT_BSTR;
        bstrVal = value.toBstr();
      default:
        throw ArgumentError.value(
          value,
          'value',
          'Unsupported VARIANT value type.',
        );
    }
  }

  /// Attempts to read the value stored in this [VARIANT] as type [R].
  ///
  /// This method is non-throwing and returns `null` if:
  /// - the [VARIANT] is [VT_EMPTY] or [VT_NULL]
  /// - the stored value's type does not match [R]
  ///
  /// This is intended for defensive or exploratory access to loosely typed
  /// VARIANT values.
  ///
  /// Example:
  /// ```dart
  /// final variant = Variant.from('Hello, World!');
  /// final str = variant.tryGet<String>();
  /// if (str != null) {
  ///   print(str);
  /// }
  /// ```
  R? tryGet<R extends Object?>() {
    final result = switch (vt) {
      VT_EMPTY || VT_NULL => null,
      VT_BOOL => boolVal,
      VT_BSTR => bstrVal.isNull ? null : bstrVal.toDartString(),
      VT_I1 => cVal,
      VT_I2 => iVal,
      VT_I4 => intVal,
      VT_I8 => llVal,
      VT_UI1 => bVal,
      VT_UI2 => uiVal,
      VT_UI4 => uintVal,
      VT_UI8 => ullVal,
      VT_R4 => fltVal,
      VT_R8 => dblVal,
      VT_DISPATCH => pdispVal,
      VT_UNKNOWN => punkVal,
      _ => null,
    };

    return result is R ? result : null;
  }

  /// Provides access to the underlying [VARIANT] structure.
  @pragma('vm:prefer-inline')
  VARIANT get ref => _.ref;
  @pragma('vm:prefer-inline')
  set ref(VARIANT value) => _.ref = value;

  /// The `vt` field of the [VARIANT], representing the type of data stored.
  @pragma('vm:prefer-inline')
  VARENUM get vt => ref.vt;
  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => ref.vt = value;

  @pragma('vm:prefer-inline')
  int get llVal => ref.llVal;
  @pragma('vm:prefer-inline')
  set llVal(int value) => ref.llVal = value;

  @pragma('vm:prefer-inline')
  int get lVal => ref.lVal;
  @pragma('vm:prefer-inline')
  set lVal(int value) => ref.lVal = value;

  @pragma('vm:prefer-inline')
  int get bVal => ref.bVal;
  @pragma('vm:prefer-inline')
  set bVal(int value) => ref.bVal = value;

  @pragma('vm:prefer-inline')
  int get iVal => ref.iVal;
  @pragma('vm:prefer-inline')
  set iVal(int value) => ref.iVal = value;

  @pragma('vm:prefer-inline')
  double get fltVal => ref.fltVal;
  @pragma('vm:prefer-inline')
  set fltVal(double value) => ref.fltVal = value;

  @pragma('vm:prefer-inline')
  double get dblVal => ref.dblVal;
  @pragma('vm:prefer-inline')
  set dblVal(double value) => ref.dblVal = value;

  @pragma('vm:prefer-inline')
  bool get boolVal => ref.boolVal;
  @pragma('vm:prefer-inline')
  set boolVal(bool value) => ref.boolVal = value;

  @pragma('vm:prefer-inline')
  int get scode => ref.scode;
  @pragma('vm:prefer-inline')
  set scode(int value) => ref.scode = value;

  @pragma('vm:prefer-inline')
  CY get cyVal => ref.cyVal;
  @pragma('vm:prefer-inline')
  set cyVal(CY value) => ref.cyVal = value;

  @pragma('vm:prefer-inline')
  double get date => ref.date;
  @pragma('vm:prefer-inline')
  set date(double value) => ref.date = value;

  @pragma('vm:prefer-inline')
  BSTR get bstrVal => ref.bstrVal;
  @pragma('vm:prefer-inline')
  set bstrVal(BSTR value) => ref.bstrVal = value;

  @pragma('vm:prefer-inline')
  IUnknown? get punkVal => ref.punkVal;
  @pragma('vm:prefer-inline')
  set punkVal(IUnknown? value) => ref.punkVal = value;

  @pragma('vm:prefer-inline')
  IDispatch? get pdispVal => ref.pdispVal;
  @pragma('vm:prefer-inline')
  set pdispVal(IDispatch? value) => ref.pdispVal = value;

  @pragma('vm:prefer-inline')
  Pointer<SAFEARRAY> get parray => ref.parray;
  @pragma('vm:prefer-inline')
  set parray(Pointer<SAFEARRAY> value) => ref.parray = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint8> get pbVal => ref.pbVal;
  @pragma('vm:prefer-inline')
  set pbVal(Pointer<Uint8> value) => ref.pbVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int16> get piVal => ref.piVal;
  @pragma('vm:prefer-inline')
  set piVal(Pointer<Int16> value) => ref.piVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get plVal => ref.plVal;
  @pragma('vm:prefer-inline')
  set plVal(Pointer<Int32> value) => ref.plVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int64> get pllVal => ref.pllVal;
  @pragma('vm:prefer-inline')
  set pllVal(Pointer<Int64> value) => ref.pllVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Float> get pfltVal => ref.pfltVal;
  @pragma('vm:prefer-inline')
  set pfltVal(Pointer<Float> value) => ref.pfltVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Double> get pdblVal => ref.pdblVal;
  @pragma('vm:prefer-inline')
  set pdblVal(Pointer<Double> value) => ref.pdblVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int16> get pboolVal => ref.pboolVal;
  @pragma('vm:prefer-inline')
  set pboolVal(Pointer<Int16> value) => ref.pboolVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get pscode => ref.pscode;
  @pragma('vm:prefer-inline')
  set pscode(Pointer<Int32> value) => ref.pscode = value;

  @pragma('vm:prefer-inline')
  Pointer<CY> get pcyVal => ref.pcyVal;
  @pragma('vm:prefer-inline')
  set pcyVal(Pointer<CY> value) => ref.pcyVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Double> get pdate => ref.pdate;
  @pragma('vm:prefer-inline')
  set pdate(Pointer<Double> value) => ref.pdate = value;

  @pragma('vm:prefer-inline')
  Pointer<Pointer<Utf16>> get pbstrVal => ref.pbstrVal;
  @pragma('vm:prefer-inline')
  set pbstrVal(Pointer<Pointer<Utf16>> value) => ref.pbstrVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get ppunkVal => ref.ppunkVal;
  @pragma('vm:prefer-inline')
  set ppunkVal(Pointer<VTablePointer> value) => ref.ppunkVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get ppdispVal => ref.ppdispVal;
  @pragma('vm:prefer-inline')
  set ppdispVal(Pointer<VTablePointer> value) => ref.ppdispVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Pointer<SAFEARRAY>> get pparray => ref.pparray;
  @pragma('vm:prefer-inline')
  set pparray(Pointer<Pointer<SAFEARRAY>> value) => ref.pparray = value;

  @pragma('vm:prefer-inline')
  Pointer<VARIANT> get pvarVal => ref.pvarVal;
  @pragma('vm:prefer-inline')
  set pvarVal(Pointer<VARIANT> value) => ref.pvarVal = value;

  @pragma('vm:prefer-inline')
  Pointer get byref => ref.byref;
  @pragma('vm:prefer-inline')
  set byref(Pointer value) => ref.byref = value;

  @pragma('vm:prefer-inline')
  CHAR get cVal => ref.cVal;
  @pragma('vm:prefer-inline')
  set cVal(CHAR value) => ref.cVal = value;

  @pragma('vm:prefer-inline')
  int get uiVal => ref.uiVal;
  @pragma('vm:prefer-inline')
  set uiVal(int value) => ref.uiVal = value;

  @pragma('vm:prefer-inline')
  int get ulVal => ref.ulVal;
  @pragma('vm:prefer-inline')
  set ulVal(int value) => ref.ulVal = value;

  @pragma('vm:prefer-inline')
  int get ullVal => ref.ullVal;
  @pragma('vm:prefer-inline')
  set ullVal(int value) => ref.ullVal = value;

  @pragma('vm:prefer-inline')
  int get intVal => ref.intVal;
  @pragma('vm:prefer-inline')
  set intVal(int value) => ref.intVal = value;

  @pragma('vm:prefer-inline')
  int get uintVal => ref.uintVal;
  @pragma('vm:prefer-inline')
  set uintVal(int value) => ref.uintVal = value;

  @pragma('vm:prefer-inline')
  Pointer<DECIMAL> get pdecVal => ref.pdecVal;
  @pragma('vm:prefer-inline')
  set pdecVal(Pointer<DECIMAL> value) => ref.pdecVal = value;

  @pragma('vm:prefer-inline')
  PSTR get pcVal => ref.pcVal;
  @pragma('vm:prefer-inline')
  set pcVal(PSTR value) => ref.pcVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint16> get puiVal => ref.puiVal;
  @pragma('vm:prefer-inline')
  set puiVal(Pointer<Uint16> value) => ref.puiVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get pulVal => ref.pulVal;
  @pragma('vm:prefer-inline')
  set pulVal(Pointer<Uint32> value) => ref.pulVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint64> get pullVal => ref.pullVal;
  @pragma('vm:prefer-inline')
  set pullVal(Pointer<Uint64> value) => ref.pullVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get pintVal => ref.pintVal;
  @pragma('vm:prefer-inline')
  set pintVal(Pointer<Int32> value) => ref.pintVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get puintVal => ref.puintVal;
  @pragma('vm:prefer-inline')
  set puintVal(Pointer<Uint32> value) => ref.puintVal = value;

  @pragma('vm:prefer-inline')
  DECIMAL get decVal => ref.Anonymous.decVal;
  @pragma('vm:prefer-inline')
  set decVal(DECIMAL value) => ref.Anonymous.decVal = value;
}

/// Represents a [Variant] holding a [VARIANT_BOOL] value.
///
/// {@category com}
extension type const VariantBool.fromPointer(Pointer<VARIANT> _)
    implements Variant<bool> {
  /// Creates a [Variant] holding a [VARIANT_BOOL] value.
  // ignore: avoid_positional_boolean_parameters
  factory VariantBool(bool value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BOOL
      ..boolVal = value;
    return VariantBool.fromPointer(variant);
  }

  /// Gets or sets the [VARIANT_BOOL] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  bool get value => boolVal;
  @pragma('vm:prefer-inline')
  set value(bool value) => boolVal = value;
}

/// Represents a [Variant] holding a [BSTR] value.
///
/// {@category com}
extension type const VariantBSTR.fromPointer(Pointer<VARIANT> _)
    implements Variant<String?> {
  /// Creates a [Variant] holding a [BSTR] value.
  factory VariantBSTR(String value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BSTR
      ..bstrVal = value.toBstr();
    return VariantBSTR.fromPointer(variant);
  }

  /// Gets or sets the [BSTR] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  String? get value => bstrVal.isNull ? null : bstrVal.toDartString();
  @pragma('vm:prefer-inline')
  set value(String? value) {
    VariantClear(this); // Clear previous BSTR.
    vt = VT_BSTR;
    bstrVal = BSTR(value?.toBstr() ?? nullptr);
  }
}

/// Represents a [Variant] holding a [Double] value.
///
/// {@category com}
extension type const VariantDouble.fromPointer(Pointer<VARIANT> _)
    implements Variant<double> {
  /// Creates a [Variant] holding a [Double] value.
  factory VariantDouble(double value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_R8
      ..dblVal = value;
    return VariantDouble.fromPointer(variant);
  }

  /// Gets or sets the [Double] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  double get value => dblVal;
  @pragma('vm:prefer-inline')
  set value(double value) => dblVal = value;
}

/// Represents a [Variant] holding a [Float] value.
///
/// {@category com}
extension type const VariantFloat.fromPointer(Pointer<VARIANT> _)
    implements Variant<double> {
  /// Creates a [Variant] holding a [Float] value.
  factory VariantFloat(double value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_R4
      ..fltVal = value;
    return VariantFloat.fromPointer(variant);
  }

  /// Gets or sets the [Float] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  double get value => fltVal;
  @pragma('vm:prefer-inline')
  set value(double value) => fltVal = value;
}

/// Represents a [Variant] holding an [Int8] value.
///
/// {@category com}
extension type const VariantInt8.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding an [Int8] value.
  factory VariantInt8(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I1
      ..cVal = CHAR(value);
    return VariantInt8.fromPointer(variant);
  }

  /// Gets or sets the [Int8] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => cVal;
  @pragma('vm:prefer-inline')
  set value(int value) => cVal = CHAR(value);
}

/// Represents a [Variant] holding an [Int16] value.
///
/// {@category com}
extension type const VariantInt16.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding an [Int16] value.
  factory VariantInt16(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I2
      ..iVal = value;
    return VariantInt16.fromPointer(variant);
  }

  /// Gets or sets the [Int16] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => iVal;
  @pragma('vm:prefer-inline')
  set value(int value) => iVal = value;
}

/// Represents a [Variant] holding an [Int32] value.
///
/// {@category com}
extension type const VariantInt32.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding an [Int32] value.
  factory VariantInt32(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I4
      ..intVal = value;
    return VariantInt32.fromPointer(variant);
  }

  /// Gets or sets the [Int32] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => intVal;
  @pragma('vm:prefer-inline')
  set value(int value) => intVal = value;
}

/// Represents a [Variant] holding an [Int64] value.
///
/// {@category com}
extension type const VariantInt64.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding an [Int64] value.
  factory VariantInt64(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I8
      ..llVal = value;
    return VariantInt64.fromPointer(variant);
  }

  /// Gets or sets the [Int64] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => llVal;
  @pragma('vm:prefer-inline')
  set value(int value) => llVal = value;
}

/// Represents a [Variant] holding an [IDispatch] value.
///
/// {@category com}
extension type const VariantDispatch.fromPointer(Pointer<VARIANT> _)
    implements Variant<IDispatch?> {
  /// Creates a [Variant] holding an [IDispatch] value.
  factory VariantDispatch(IDispatch value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_DISPATCH
      ..pdispVal = value;
    return VariantDispatch.fromPointer(variant);
  }

  /// Gets or sets the [IDispatch] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  IDispatch? get value => pdispVal;
  @pragma('vm:prefer-inline')
  set value(IDispatch? value) {
    VariantClear(this); // Clear previous IDispatch.
    vt = VT_DISPATCH;
    pdispVal = value;
  }
}

/// Represents a [Variant] holding a reference to an [IDispatch] value.
///
/// {@category com}
extension type const VariantDispatchByRef.fromPointer(Pointer<VARIANT> _)
    implements Variant<Pointer<VTablePointer>> {
  /// Creates a [Variant] holding a reference to an [IDispatch] value.
  factory VariantDispatchByRef(Pointer<VTablePointer> value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BYREF | VT_DISPATCH
      ..ppdispVal = value;
    return VariantDispatchByRef.fromPointer(variant);
  }

  /// Gets or sets the reference to [IDispatch] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppdispVal;
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppdispVal = value;
}

/// Represents a [Variant] holding an [IUnknown] value.
///
/// {@category com}
extension type const VariantUnknown.fromPointer(Pointer<VARIANT> _)
    implements Variant<IUnknown?> {
  /// Creates a [Variant] holding an [IUnknown] value.
  factory VariantUnknown(IUnknown value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UNKNOWN
      ..punkVal = value;
    return VariantUnknown.fromPointer(variant);
  }

  /// Gets or sets the [IUnknown] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  IUnknown? get value => punkVal;
  @pragma('vm:prefer-inline')
  set value(IUnknown? value) {
    VariantClear(this); // Clear previous IUnknown.
    vt = VT_UNKNOWN;
    punkVal = value;
  }
}

/// Represents a [Variant] holding a reference to an [IUnknown] value.
///
/// {@category com}
extension type const VariantUnknownByRef.fromPointer(Pointer<VARIANT> _)
    implements Variant<Pointer<VTablePointer>> {
  /// Creates a [Variant] holding a reference to an [IUnknown] value.
  factory VariantUnknownByRef(Pointer<VTablePointer> value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BYREF | VT_UNKNOWN
      ..ppunkVal = value;
    return VariantUnknownByRef.fromPointer(variant);
  }

  /// Gets or sets the reference to [IUnknown] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppunkVal;
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppunkVal = value;
}

/// Represents a [Variant] holding a [Uint8] value.
///
/// {@category com}
extension type const VariantUint8.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding a [Uint8] value.
  factory VariantUint8(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI1
      ..bVal = value;
    return VariantUint8.fromPointer(variant);
  }

  /// Gets or sets the [Uint8] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => bVal;
  @pragma('vm:prefer-inline')
  set value(int value) => bVal = value;
}

/// Represents a [Variant] holding a [Uint16] value.
///
/// {@category com}
extension type const VariantUint16.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding a [Uint16] value.
  factory VariantUint16(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI2
      ..uiVal = value;
    return VariantUint16.fromPointer(variant);
  }

  /// Gets or sets the [Uint16] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => uiVal;
  @pragma('vm:prefer-inline')
  set value(int value) => uiVal = value;
}

/// Represents a [Variant] holding a [Uint32] value.
///
/// {@category com}
extension type const VariantUint32.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding a [Uint32] value.
  factory VariantUint32(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI4
      ..uintVal = value;
    return VariantUint32.fromPointer(variant);
  }

  /// Gets or sets the [Uint32] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => uintVal;
  @pragma('vm:prefer-inline')
  set value(int value) => uintVal = value;
}

/// Represents a [Variant] holding a [Uint64] value.
///
/// {@category com}
extension type const VariantUint64.fromPointer(Pointer<VARIANT> _)
    implements Variant<int> {
  /// Creates a [Variant] holding a [Uint64] value.
  factory VariantUint64(int value) {
    final variant = adaptiveCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI8
      ..ullVal = value;
    return VariantUint64.fromPointer(variant);
  }

  /// Gets or sets the [Uint64] value stored in the [VARIANT].
  @pragma('vm:prefer-inline')
  int get value => ullVal;
  @pragma('vm:prefer-inline')
  set value(int value) => ullVal = value;
}
