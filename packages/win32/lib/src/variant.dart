import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '_internal/win32.dart';
import 'allocator.dart';
import 'com/idispatch.g.dart';
import 'com/iunknown.g.dart';
import 'enums.g.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'macros.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/oleaut32.g.dart';

/// A wrapper for the [VARIANT] structure, used in COM APIs.
///
/// This class simplifies working with [VARIANT]s by providing automatic memory
/// management and convenient Dart-friendly operations.
///
/// This class uses a [NativeFinalizer] to automatically free the memory
/// allocated for the structure when the object is GCed. This ensures that the
/// unmanaged memory allocated for the structure is automatically freed when the
/// object is GCed.
///
/// If you need full control over the object's lifecycle, you can opt out of
/// automatic finalization by using the [detach] method. This is especially
/// useful in scenarios where ownership of the object is transferred to another
/// part of your application or when explicit lifecycle management is required.
///
/// {@category com}
final class Variant<T extends Object?> implements Finalizable {
  /// Creates a new empty [Variant].
  ///
  /// The constructed [VARIANT] will have the [VT_EMPTY] type.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  @pragma('vm:prefer-inline')
  factory Variant() => Variant._fromPointer(loggingCalloc<VARIANT>());

  /// Creates a new [Variant] initialized with the provided [value].
  ///
  /// The [value] must be one of the supported types: `null`, [bool], [double],
  /// [IDispatch], [IUnknown], [int], or [String].
  ///
  /// Throws an [ArgumentError] if [value] is an unsupported type.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory Variant.from(T value) => Variant<T>()..value = value;

  Variant._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<VARIANT>(),
    );
  }

  /// Creates a [Variant] from an existing pointer to a [VARIANT] structure.
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [VARIANT] when the object is GCed.
  factory Variant.fromPointer(Pointer<VARIANT> ptr) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return Variant._fromPointer(ptr);
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

  static final _finalizer = NativeFinalizer(freeVARIANTAddress.cast());

  /// A pointer to the underlying [VARIANT] structure.
  ///
  /// This can be used for advanced scenarios where low-level access to the
  /// structure is required.
  final Pointer<VARIANT> ptr;

  /// Creates a new Variant that is a copy of the current Variant.
  ///
  /// This method duplicates the underlying [VARIANT] structure, ensuring the
  /// new instance is independent of the original.
  ///
  /// The cloned Variant can safely be modified or freed without affecting
  /// the original.
  Variant<T> clone() {
    final pvargDest = loggingCalloc<VARIANT>();
    VariantCopy(pvargDest, ptr);
    return Variant._fromPointer(pvargDest);
  }

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [VARIANT] structure.
  /// After calling this method, the [NativeFinalizer] will no longer
  /// free the memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and releases
  /// the resources associated with the [VARIANT] structure.
  /// After calling this method, the [ptr] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    VariantClear(ptr);
    loggingCalloc.free(ptr);
  }

  /// Whether this [VARIANT] is empty (i.e., [vt] is set to [VT_EMPTY]).
  @pragma('vm:prefer-inline')
  bool get isEmpty => vt == VT_EMPTY;

  /// Whether this [VARIANT] is null (i.e., [vt] is set to [VT_NULL]).
  @pragma('vm:prefer-inline')
  bool get isNull => vt == VT_NULL;

  /// Gets or sets the value stored in this [VARIANT].
  ///
  /// When reading the value, the [vt] field is used to determine the type of
  /// the value, which is then cast to the generic type [T].
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
  /// Throws a [StateError] if the actual type does not match [T].
  ///
  /// When setting the value, the [vt] field is set based on the type of the
  /// value passed in.
  ///
  /// Supported input types include:
  /// - `null` for [VT_NULL]
  /// - [bool] for [VT_BOOL]
  /// - [String] for [VT_BSTR]
  /// - [IDispatch] for [VT_DISPATCH]
  /// - [IUnknown] for [VT_UNKNOWN]
  /// - [double] for 32-bit floating-point type ([VT_R4])
  /// - [int] for 32-bit signed integer type ([VT_I4])
  ///
  /// Throws an [ArgumentError] if the value is not supported.
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
      if (result == null) {
        throw StateError('Expected type $T but got null for vt $vt.');
      }

      throw StateError(
        'Expected type $T but got ${result.runtimeType} for vt $vt.',
      );
    }

    return result;
  }

  set value(T value) {
    VariantClear(ptr); // Clear previous value to avoid memory leaks.
    ZeroMemory(ptr, sizeOf<VARIANT>());

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
        bstrVal = value.toBSTR();
      default:
        throw ArgumentError.value(
          value,
          'value',
          'Unsupported type ${value.runtimeType}. '
              'Supported types are null, bool, double, IDispatch, IUnknown, '
              'int, and String.',
        );
    }
  }

  /// Provides access to the underlying [VARIANT] structure.
  @pragma('vm:prefer-inline')
  VARIANT get ref => ptr.ref;
  @pragma('vm:prefer-inline')
  set ref(VARIANT value) => ptr.ref = value;

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
  Pointer<VARIANT_BOOL> get pboolVal => ref.pboolVal;
  @pragma('vm:prefer-inline')
  set pboolVal(Pointer<VARIANT_BOOL> value) => ref.pboolVal = value;

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
  Pointer<BSTR> get pbstrVal => ref.pbstrVal;
  @pragma('vm:prefer-inline')
  set pbstrVal(Pointer<BSTR> value) => ref.pbstrVal = value;

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
  int get cVal => ref.cVal;
  @pragma('vm:prefer-inline')
  set cVal(int value) => ref.cVal = value;

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

  @override
  String toString() => 'Variant<$T>(vt: $vt, value: $value)';
}

/// Represents a [Variant] holding a [VARIANT_BOOL] value.
///
/// {@category com}
final class VariantBool extends Variant<bool> {
  /// Creates a [Variant] holding a [VARIANT_BOOL] value.
  // ignore: avoid_positional_boolean_parameters
  factory VariantBool(bool value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BOOL
      ..boolVal = value;
    return VariantBool.fromPointer(variant);
  }

  /// Creates a [VariantBool] from an existing pointer to a [VARIANT] structure.
  VariantBool.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [VARIANT_BOOL] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  bool get value => boolVal;
  @override
  @pragma('vm:prefer-inline')
  set value(bool value) => boolVal = value;
}

/// Represents a [Variant] holding a [BSTR] value.
///
/// {@category com}
final class VariantBSTR extends Variant<String?> {
  /// Creates a [Variant] holding a [BSTR] value.
  factory VariantBSTR(String value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BSTR
      ..bstrVal = value.toBSTR();
    return VariantBSTR.fromPointer(variant);
  }

  /// Creates a [VariantBSTR] from an existing pointer to a [VARIANT] structure.
  VariantBSTR.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [BSTR] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  String? get value => bstrVal.isNull ? null : bstrVal.toDartString();
  @override
  @pragma('vm:prefer-inline')
  set value(String? value) {
    VariantClear(ptr); // Clear previous BSTR.
    vt = VT_BSTR;
    bstrVal = value?.toBSTR() ?? nullptr;
  }
}

/// Represents a [Variant] holding a [Double] value.
///
/// {@category com}
final class VariantDouble extends Variant<double> {
  /// Creates a [Variant] holding a [Double] value.
  factory VariantDouble(double value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_R8
      ..dblVal = value;
    return VariantDouble.fromPointer(variant);
  }

  /// Creates a [VariantDouble] from an existing pointer to a [VARIANT]
  /// structure.
  VariantDouble.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Double] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  double get value => dblVal;
  @override
  @pragma('vm:prefer-inline')
  set value(double value) => dblVal = value;
}

/// Represents a [Variant] holding a [Float] value.
///
/// {@category com}
final class VariantFloat extends Variant<double> {
  /// Creates a [Variant] holding a [Float] value.
  factory VariantFloat(double value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_R4
      ..fltVal = value;
    return VariantFloat.fromPointer(variant);
  }

  /// Creates a [VariantFloat] from an existing pointer to a [VARIANT]
  /// structure.
  VariantFloat.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Float] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  double get value => fltVal;
  @override
  @pragma('vm:prefer-inline')
  set value(double value) => fltVal = value;
}

/// Represents a [Variant] holding an [Int8] value.
///
/// {@category com}
final class VariantInt8 extends Variant<int> {
  /// Creates a [Variant] holding an [Int8] value.
  factory VariantInt8(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I1
      ..cVal = value;
    return VariantInt8.fromPointer(variant);
  }

  /// Creates a [VariantInt8] from an existing pointer to a [VARIANT] structure.
  VariantInt8.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Int8] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => cVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => cVal = value;
}

/// Represents a [Variant] holding an [Int16] value.
///
/// {@category com}
final class VariantInt16 extends Variant<int> {
  /// Creates a [Variant] holding an [Int16] value.
  factory VariantInt16(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I2
      ..iVal = value;
    return VariantInt16.fromPointer(variant);
  }

  /// Creates a [VariantInt16] from an existing pointer to a [VARIANT]
  /// structure.
  VariantInt16.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Int16] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => iVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => iVal = value;
}

/// Represents a [Variant] holding an [Int32] value.
///
/// {@category com}
final class VariantInt32 extends Variant<int> {
  /// Creates a [Variant] holding an [Int32] value.
  factory VariantInt32(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I4
      ..intVal = value;
    return VariantInt32.fromPointer(variant);
  }

  /// Creates a [VariantInt32] from an existing pointer to a [VARIANT]
  /// structure.
  VariantInt32.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Int32] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => intVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => intVal = value;
}

/// Represents a [Variant] holding an [Int64] value.
///
/// {@category com}
final class VariantInt64 extends Variant<int> {
  /// Creates a [Variant] holding an [Int64] value.
  factory VariantInt64(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_I8
      ..llVal = value;
    return VariantInt64.fromPointer(variant);
  }

  /// Creates a [VariantInt64] from an existing pointer to a [VARIANT]
  /// structure.
  VariantInt64.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Int64] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => llVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => llVal = value;
}

/// Represents a [Variant] holding an [IDispatch] value.
///
/// {@category com}
final class VariantDispatch extends Variant<IDispatch?> {
  /// Creates a [Variant] holding an [IDispatch] value.
  factory VariantDispatch(IDispatch value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_DISPATCH
      ..pdispVal = value;
    return VariantDispatch.fromPointer(variant);
  }

  /// Creates a [VariantDispatch] from an existing pointer to a [VARIANT]
  /// structure.
  VariantDispatch.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [IDispatch] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  IDispatch? get value => pdispVal;
  @override
  @pragma('vm:prefer-inline')
  set value(IDispatch? value) {
    VariantClear(ptr); // Clear previous IDispatch.
    vt = VT_DISPATCH;
    pdispVal = value;
  }
}

/// Represents a [Variant] holding a reference to an [IDispatch] value.
///
/// {@category com}
final class VariantDispatchByRef extends Variant<Pointer<VTablePointer>> {
  /// Creates a [Variant] holding a reference to an [IDispatch] value.
  factory VariantDispatchByRef(Pointer<VTablePointer> value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BYREF | VT_DISPATCH
      ..ppdispVal = value;
    return VariantDispatchByRef.fromPointer(variant);
  }

  /// Creates a [VariantDispatchByRef] from an existing pointer to a [VARIANT]
  /// structure.
  VariantDispatchByRef.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the reference to [IDispatch] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppdispVal;
  @override
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppdispVal = value;
}

/// Represents a [Variant] holding an [IUnknown] value.
///
/// {@category com}
final class VariantUnknown extends Variant<IUnknown?> {
  /// Creates a [Variant] holding an [IUnknown] value.
  factory VariantUnknown(IUnknown value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UNKNOWN
      ..punkVal = value;
    return VariantUnknown.fromPointer(variant);
  }

  /// Creates a [VariantUnknown] from an existing pointer to a [VARIANT]
  /// structure.
  VariantUnknown.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [IUnknown] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  IUnknown? get value => punkVal;
  @override
  @pragma('vm:prefer-inline')
  set value(IUnknown? value) {
    VariantClear(ptr); // Clear previous IUnknown.
    vt = VT_UNKNOWN;
    punkVal = value;
  }
}

/// Represents a [Variant] holding a reference to an [IUnknown] value.
///
/// {@category com}
final class VariantUnknownByRef extends Variant<Pointer<VTablePointer>> {
  /// Creates a [Variant] holding a reference to an [IUnknown] value.
  factory VariantUnknownByRef(Pointer<VTablePointer> value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_BYREF | VT_UNKNOWN
      ..ppunkVal = value;
    return VariantUnknownByRef.fromPointer(variant);
  }

  /// Creates a [VariantUnknownByRef] from an existing pointer to a [VARIANT]
  /// structure.
  VariantUnknownByRef.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the reference to [IUnknown] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppunkVal;
  @override
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppunkVal = value;
}

/// Represents a [Variant] holding a [Uint8] value.
///
/// {@category com}
final class VariantUint8 extends Variant<int> {
  /// Creates a [Variant] holding a [Uint8] value.
  factory VariantUint8(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI1
      ..bVal = value;
    return VariantUint8.fromPointer(variant);
  }

  /// Creates a [VariantUint8] from an existing pointer to a [VARIANT]
  /// structure.
  VariantUint8.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Uint8] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => bVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => bVal = value;
}

/// Represents a [Variant] holding a [Uint16] value.
///
/// {@category com}
final class VariantUint16 extends Variant<int> {
  /// Creates a [Variant] holding a [Uint16] value.
  factory VariantUint16(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI2
      ..uiVal = value;
    return VariantUint16.fromPointer(variant);
  }

  /// Creates a [VariantUint16] from an existing pointer to a [VARIANT]
  /// structure.
  VariantUint16.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Uint16] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => uiVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => uiVal = value;
}

/// Represents a [Variant] holding a [Uint32] value.
///
/// {@category com}
final class VariantUint32 extends Variant<int> {
  /// Creates a [Variant] holding a [Uint32] value.
  factory VariantUint32(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI4
      ..uintVal = value;
    return VariantUint32.fromPointer(variant);
  }

  /// Creates a [VariantUint32] from an existing pointer to a [VARIANT]
  /// structure.
  VariantUint32.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Uint32] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => uintVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => uintVal = value;
}

/// Represents a [Variant] holding a [Uint64] value.
///
/// {@category com}
final class VariantUint64 extends Variant<int> {
  /// Creates a [Variant] holding a [Uint64] value.
  factory VariantUint64(int value) {
    final variant = loggingCalloc<VARIANT>();
    variant.ref
      ..vt = VT_UI8
      ..ullVal = value;
    return VariantUint64.fromPointer(variant);
  }

  /// Creates a [VariantUint64] from an existing pointer to a [VARIANT]
  /// structure.
  VariantUint64.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Uint64] value stored in the [VARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => ullVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => ullVal = value;
}
