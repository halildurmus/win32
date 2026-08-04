import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import 'bstr.dart';
import 'com/idispatch.g.dart';
import 'com/istorage.g.dart';
import 'com/istream.g.dart';
import 'com/iunknown.g.dart';
import 'enums.g.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'guid.dart';
import 'macros.dart';
import 'pstr.dart';
import 'pwstr.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/ole32.g.dart';

/// A Dart wrapper around the COM [PROPVARIANT] structure.
///
/// `PROPVARIANT` is a tagged union used extensively in COM and Automation APIs
/// to transport values whose type is determined at runtime.
///
/// This wrapper provides:
/// - Safe allocation and cleanup
/// - Dart-friendly accessors
/// - Type-checked reads via the generic parameter [T]
/// - Strongly-typed factory constructors for common PROPVARIANT kinds
///
/// Memory for the underlying [PROPVARIANT] is allocated natively. Any contained
/// resources (e.g., `BSTR`, interface pointers) are owned by the [PROPVARIANT].
/// Call [free] when the [PropVariant] is no longer needed to avoid leaks.
///
/// The generic parameter [T] represents the **expected Dart view** of the
/// stored value. It is not used to determine the underlying PROPVARIANT type.
/// Instead, it is validated at read time.
///
/// A mismatch between the actual `vt` and [T] results in a [StateError].
///
/// {@category com}
extension type const PropVariant<T extends Object?>._(Pointer<PROPVARIANT> _)
    implements Pointer<PROPVARIANT> {
  /// Creates a new empty [PropVariant].
  ///
  /// The constructed [VARIANT] has its `vt` set to [VT_EMPTY].
  @pragma('vm:prefer-inline')
  factory PropVariant() => PropVariant._(adaptiveCalloc());

  /// Creates a new [PropVariant] initialized with the provided [value].
  ///
  /// Supported input types:
  /// - `null` → [VT_NULL]
  /// - [bool] → [VT_BOOL]
  /// - [int] → [VT_I4]
  /// - [double] → [VT_R4]
  /// - [String] → [VT_BSTR]
  /// - [IDispatch] → [VT_DISPATCH]
  /// - [IUnknown] → [VT_UNKNOWN]
  factory PropVariant.from(T value) => PropVariant<T>()..value = value;

  /// Creates a [PropVariant] from an existing [PROPVARIANT] pointer.
  factory PropVariant.fromPointer(Pointer<PROPVARIANT> ptr) {
    if (ptr.isNull) throw ArgumentError.value(ptr, 'ptr', 'Cannot be null.');
    return PropVariant<T>._(ptr);
  }

  /// Creates a [PropVariant] holding a [VARIANT_BOOL] value.
  @pragma('vm:prefer-inline')
  // ignore: avoid_positional_boolean_parameters
  static PropVariantBool bool$(bool value) => PropVariantBool(value);

  /// Creates a [PropVariant] holding a [BSTR] value.
  @pragma('vm:prefer-inline')
  static PropVariantBSTR bstr(String value) => PropVariantBSTR(value);

  /// Creates a [PropVariant] holding a [Double] value.
  @pragma('vm:prefer-inline')
  static PropVariantDouble double$(double value) => PropVariantDouble(value);

  /// Creates a [PropVariant] holding a [Float] value.
  @pragma('vm:prefer-inline')
  static PropVariantFloat float(double value) => PropVariantFloat(value);

  /// Creates a [PropVariant] holding an [Int8] value.
  @pragma('vm:prefer-inline')
  static PropVariantInt8 int8(int value) => PropVariantInt8(value);

  /// Creates a [PropVariant] holding an [Int16] value.
  @pragma('vm:prefer-inline')
  static PropVariantInt16 int16(int value) => PropVariantInt16(value);

  /// Creates a [PropVariant] holding an [Int32] value.
  @pragma('vm:prefer-inline')
  static PropVariantInt32 int32(int value) => PropVariantInt32(value);

  /// Creates a [PropVariant] holding an [IDispatch] value.
  @pragma('vm:prefer-inline')
  static PropVariantDispatch dispatch(IDispatch value) =>
      PropVariantDispatch(value);

  /// Creates a [PropVariant] holding a reference to an [IDispatch] value.
  @pragma('vm:prefer-inline')
  static PropVariantDispatchByRef dispatchByRef(
    Pointer<VTablePointer> pointer,
  ) => PropVariantDispatchByRef(pointer);

  /// Creates a [PropVariant] holding an [IUnknown] value.
  @pragma('vm:prefer-inline')
  static PropVariantUnknown unknown(IUnknown value) =>
      PropVariantUnknown(value);

  /// Creates a [PropVariant] holding a reference to an [IUnknown] value.
  @pragma('vm:prefer-inline')
  static PropVariantUnknownByRef unknownByRef(Pointer<VTablePointer> pointer) =>
      PropVariantUnknownByRef(pointer);

  /// Creates a [PropVariant] holding a [Uint8] value.
  @pragma('vm:prefer-inline')
  static PropVariantUint8 uint8(int value) => PropVariantUint8(value);

  /// Creates a [PropVariant] holding a [Uint16] value.
  @pragma('vm:prefer-inline')
  static PropVariantUint16 uint16(int value) => PropVariantUint16(value);

  /// Creates a [PropVariant] holding a [Uint32] value.
  @pragma('vm:prefer-inline')
  static PropVariantUint32 uint32(int value) => PropVariantUint32(value);

  /// Creates a deep copy of this [PropVariant].
  ///
  /// The returned instance owns its own [PROPVARIANT] and can be modified or
  /// freed independently of the original.
  PropVariant<T> copy() {
    final dest = adaptiveCalloc<PROPVARIANT>();
    PropVariantCopy(dest, this);
    return PropVariant._(dest);
  }

  /// Releases all resources held by this [PropVariant] and frees its memory.
  void free() {
    PropVariantClear(this);
    adaptiveCalloc.free(this);
  }

  /// Whether this [PROPVARIANT] is empty ([VT_EMPTY]).
  @pragma('vm:prefer-inline')
  bool get isEmpty => vt == VT_EMPTY;

  /// Whether this [PROPVARIANT] represents a COM `null` ([VT_NULL]).
  @pragma('vm:prefer-inline')
  bool get isNull => vt == VT_NULL;

  /// Gets or sets the Dart value represented by this [PROPVARIANT].
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
      VT_UI1 => bVal,
      VT_UI2 => uiVal,
      VT_UI4 => uintVal,
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
    PropVariantClear(this);
    ZeroMemory(this, sizeOf<PROPVARIANT>());

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
          'Unsupported PROPVARIANT value type.',
        );
    }
  }

  /// Attempts to read the value stored in this [PROPVARIANT] as type [R].
  ///
  /// This method is non-throwing and returns `null` if:
  /// - the [PROPVARIANT] is [VT_EMPTY] or [VT_NULL]
  /// - the stored value's type does not match [R]
  ///
  /// This is intended for defensive or exploratory access to loosely typed
  /// PROPVARIANT values.
  ///
  /// Example:
  /// ```dart
  /// final propVariant = PropVariant.from('Hello, World!');
  /// final str = propVariant.tryGet<String>();
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
      VT_UI1 => bVal,
      VT_UI2 => uiVal,
      VT_UI4 => uintVal,
      VT_R4 => fltVal,
      VT_R8 => dblVal,
      VT_DISPATCH => pdispVal,
      VT_UNKNOWN => punkVal,
      _ => null,
    };

    return result is R ? result : null;
  }

  /// Provides access to the underlying [PROPVARIANT] structure.
  @pragma('vm:prefer-inline')
  PROPVARIANT get ref => _.ref;
  @pragma('vm:prefer-inline')
  set ref(PROPVARIANT value) => _.ref = value;

  /// The `vt` field of the [PROPVARIANT], representing the type of data stored.
  @pragma('vm:prefer-inline')
  VARENUM get vt => ref.vt;
  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => ref.vt = value;

  @pragma('vm:prefer-inline')
  CHAR get cVal => ref.cVal;
  @pragma('vm:prefer-inline')
  set cVal(CHAR value) => ref.cVal = value;

  @pragma('vm:prefer-inline')
  int get bVal => ref.bVal;
  @pragma('vm:prefer-inline')
  set bVal(int value) => ref.bVal = value;

  @pragma('vm:prefer-inline')
  int get iVal => ref.iVal;
  @pragma('vm:prefer-inline')
  set iVal(int value) => ref.iVal = value;

  @pragma('vm:prefer-inline')
  int get uiVal => ref.uiVal;
  @pragma('vm:prefer-inline')
  set uiVal(int value) => ref.uiVal = value;

  @pragma('vm:prefer-inline')
  int get lVal => ref.lVal;
  @pragma('vm:prefer-inline')
  set lVal(int value) => ref.lVal = value;

  @pragma('vm:prefer-inline')
  int get ulVal => ref.ulVal;
  @pragma('vm:prefer-inline')
  set ulVal(int value) => ref.ulVal = value;

  @pragma('vm:prefer-inline')
  int get intVal => ref.intVal;
  @pragma('vm:prefer-inline')
  set intVal(int value) => ref.intVal = value;

  @pragma('vm:prefer-inline')
  int get uintVal => ref.uintVal;
  @pragma('vm:prefer-inline')
  set uintVal(int value) => ref.uintVal = value;

  @pragma('vm:prefer-inline')
  int get hVal => ref.hVal;
  @pragma('vm:prefer-inline')
  set hVal(int value) => ref.hVal = value;

  @pragma('vm:prefer-inline')
  int get uhVal => ref.uhVal;
  @pragma('vm:prefer-inline')
  set uhVal(int value) => ref.uhVal = value;

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
  FILETIME get filetime => ref.filetime;
  @pragma('vm:prefer-inline')
  set filetime(FILETIME value) => ref.filetime = value;

  @pragma('vm:prefer-inline')
  Pointer<GUID> get puuid => ref.puuid;
  @pragma('vm:prefer-inline')
  set puuid(Pointer<GUID> value) => ref.puuid = value;

  @pragma('vm:prefer-inline')
  Pointer<CLIPDATA> get pclipdata => ref.pclipdata;
  @pragma('vm:prefer-inline')
  set pclipdata(Pointer<CLIPDATA> value) => ref.pclipdata = value;

  @pragma('vm:prefer-inline')
  BSTR get bstrVal => BSTR(ref.bstrVal);
  @pragma('vm:prefer-inline')
  set bstrVal(BSTR value) => ref.bstrVal = value;

  @pragma('vm:prefer-inline')
  BSTRBLOB get bstrblobVal => ref.bstrblobVal;
  @pragma('vm:prefer-inline')
  set bstrblobVal(BSTRBLOB value) => ref.bstrblobVal = value;

  @pragma('vm:prefer-inline')
  BLOB get blob => ref.blob;
  @pragma('vm:prefer-inline')
  set blob(BLOB value) => ref.blob = value;

  @pragma('vm:prefer-inline')
  PSTR get pszVal => ref.pszVal;
  @pragma('vm:prefer-inline')
  set pszVal(PSTR value) => ref.pszVal = value;

  @pragma('vm:prefer-inline')
  PWSTR get pwszVal => ref.pwszVal;
  @pragma('vm:prefer-inline')
  set pwszVal(PWSTR value) => ref.pwszVal = value;

  @pragma('vm:prefer-inline')
  IUnknown? get punkVal => ref.punkVal;
  @pragma('vm:prefer-inline')
  set punkVal(IUnknown? value) => ref.punkVal = value;

  @pragma('vm:prefer-inline')
  IDispatch? get pdispVal => ref.pdispVal;
  @pragma('vm:prefer-inline')
  set pdispVal(IDispatch? value) => ref.pdispVal = value;

  @pragma('vm:prefer-inline')
  IStream? get pStream => ref.pStream;
  @pragma('vm:prefer-inline')
  set pStream(IStream? value) => ref.pStream = value;

  @pragma('vm:prefer-inline')
  IStorage? get pStorage => ref.pStorage;
  @pragma('vm:prefer-inline')
  set pStorage(IStorage? value) => ref.pStorage = value;

  @pragma('vm:prefer-inline')
  Pointer<VERSIONEDSTREAM> get pVersionedStream => ref.pVersionedStream;
  @pragma('vm:prefer-inline')
  set pVersionedStream(Pointer<VERSIONEDSTREAM> value) =>
      ref.pVersionedStream = value;

  @pragma('vm:prefer-inline')
  Pointer<SAFEARRAY> get parray => ref.parray;
  @pragma('vm:prefer-inline')
  set parray(Pointer<SAFEARRAY> value) => ref.parray = value;

  @pragma('vm:prefer-inline')
  CAC get cac => ref.cac;
  @pragma('vm:prefer-inline')
  set cac(CAC value) => ref.cac = value;

  @pragma('vm:prefer-inline')
  CAUB get caub => ref.caub;
  @pragma('vm:prefer-inline')
  set caub(CAUB value) => ref.caub = value;

  @pragma('vm:prefer-inline')
  CAI get cai => ref.cai;
  @pragma('vm:prefer-inline')
  set cai(CAI value) => ref.cai = value;

  @pragma('vm:prefer-inline')
  CAUI get caui => ref.caui;
  @pragma('vm:prefer-inline')
  set caui(CAUI value) => ref.caui = value;

  @pragma('vm:prefer-inline')
  CAL get cal => ref.cal;
  @pragma('vm:prefer-inline')
  set cal(CAL value) => ref.cal = value;

  @pragma('vm:prefer-inline')
  CAUL get caul => ref.caul;
  @pragma('vm:prefer-inline')
  set caul(CAUL value) => ref.caul = value;

  @pragma('vm:prefer-inline')
  CAH get cah => ref.cah;
  @pragma('vm:prefer-inline')
  set cah(CAH value) => ref.cah = value;

  @pragma('vm:prefer-inline')
  CAUH get cauh => ref.cauh;
  @pragma('vm:prefer-inline')
  set cauh(CAUH value) => ref.cauh = value;

  @pragma('vm:prefer-inline')
  CAFLT get caflt => ref.caflt;
  @pragma('vm:prefer-inline')
  set caflt(CAFLT value) => ref.caflt = value;

  @pragma('vm:prefer-inline')
  CADBL get cadbl => ref.cadbl;
  @pragma('vm:prefer-inline')
  set cadbl(CADBL value) => ref.cadbl = value;

  @pragma('vm:prefer-inline')
  CABOOL get cabool => ref.cabool;
  @pragma('vm:prefer-inline')
  set cabool(CABOOL value) => ref.cabool = value;

  @pragma('vm:prefer-inline')
  CASCODE get cascode => ref.cascode;
  @pragma('vm:prefer-inline')
  set cascode(CASCODE value) => ref.cascode = value;

  @pragma('vm:prefer-inline')
  CACY get cacy => ref.cacy;
  @pragma('vm:prefer-inline')
  set cacy(CACY value) => ref.cacy = value;

  @pragma('vm:prefer-inline')
  CADATE get cadate => ref.cadate;
  @pragma('vm:prefer-inline')
  set cadate(CADATE value) => ref.cadate = value;

  @pragma('vm:prefer-inline')
  CAFILETIME get cafiletime => ref.cafiletime;
  @pragma('vm:prefer-inline')
  set cafiletime(CAFILETIME value) => ref.cafiletime = value;

  @pragma('vm:prefer-inline')
  CACLSID get cauuid => ref.cauuid;
  @pragma('vm:prefer-inline')
  set cauuid(CACLSID value) => ref.cauuid = value;

  @pragma('vm:prefer-inline')
  CACLIPDATA get caclipdata => ref.caclipdata;
  @pragma('vm:prefer-inline')
  set caclipdata(CACLIPDATA value) => ref.caclipdata = value;

  @pragma('vm:prefer-inline')
  CABSTR get cabstr => ref.cabstr;
  @pragma('vm:prefer-inline')
  set cabstr(CABSTR value) => ref.cabstr = value;

  @pragma('vm:prefer-inline')
  CABSTRBLOB get cabstrblob => ref.cabstrblob;
  @pragma('vm:prefer-inline')
  set cabstrblob(CABSTRBLOB value) => ref.cabstrblob = value;

  @pragma('vm:prefer-inline')
  CALPSTR get calpstr => ref.calpstr;
  @pragma('vm:prefer-inline')
  set calpstr(CALPSTR value) => ref.calpstr = value;

  @pragma('vm:prefer-inline')
  CALPWSTR get calpwstr => ref.calpwstr;
  @pragma('vm:prefer-inline')
  set calpwstr(CALPWSTR value) => ref.calpwstr = value;

  @pragma('vm:prefer-inline')
  CAPROPVARIANT get capropvar => ref.capropvar;
  @pragma('vm:prefer-inline')
  set capropvar(CAPROPVARIANT value) => ref.capropvar = value;

  @pragma('vm:prefer-inline')
  PSTR get pcVal => ref.pcVal;
  @pragma('vm:prefer-inline')
  set pcVal(PSTR value) => ref.pcVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint8> get pbVal => ref.pbVal;
  @pragma('vm:prefer-inline')
  set pbVal(Pointer<Uint8> value) => ref.pbVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int16> get piVal => ref.piVal;
  @pragma('vm:prefer-inline')
  set piVal(Pointer<Int16> value) => ref.piVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint16> get puiVal => ref.puiVal;
  @pragma('vm:prefer-inline')
  set puiVal(Pointer<Uint16> value) => ref.puiVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get plVal => ref.plVal;
  @pragma('vm:prefer-inline')
  set plVal(Pointer<Int32> value) => ref.plVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get pulVal => ref.pulVal;
  @pragma('vm:prefer-inline')
  set pulVal(Pointer<Uint32> value) => ref.pulVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get pintVal => ref.pintVal;
  @pragma('vm:prefer-inline')
  set pintVal(Pointer<Int32> value) => ref.pintVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get puintVal => ref.puintVal;
  @pragma('vm:prefer-inline')
  set puintVal(Pointer<Uint32> value) => ref.puintVal = value;

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
  Pointer<DECIMAL> get pdecVal => ref.pdecVal;
  @pragma('vm:prefer-inline')
  set pdecVal(Pointer<DECIMAL> value) => ref.pdecVal = value;

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
  Pointer<PROPVARIANT> get pvarVal => ref.pvarVal;
  @pragma('vm:prefer-inline')
  set pvarVal(Pointer<PROPVARIANT> value) => ref.pvarVal = value;

  @pragma('vm:prefer-inline')
  DECIMAL get decVal => ref.decVal;
  @pragma('vm:prefer-inline')
  set decVal(DECIMAL value) => ref.decVal = value;
}

/// Represents a [PropVariant] holding a [VARIANT_BOOL] value.
///
/// {@category com}
extension type PropVariantBool.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<bool> {
  /// Creates a [PropVariant] holding a [VARIANT_BOOL] value.
  // ignore: avoid_positional_boolean_parameters
  factory PropVariantBool(bool value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BOOL
      ..boolVal = value;
    return PropVariantBool.fromPointer(propVariant);
  }

  /// Gets or sets the [VARIANT_BOOL] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  bool get value => boolVal;
  @pragma('vm:prefer-inline')
  set value(bool value) => boolVal = value;
}

/// Represents a [PropVariant] holding a [BSTR] value.
///
/// {@category com}
extension type PropVariantBSTR.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<String?> {
  /// Creates a [PropVariant] holding a [BSTR] value.
  factory PropVariantBSTR(String value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BSTR
      ..bstrVal = value.toBstr();
    return PropVariantBSTR.fromPointer(propVariant);
  }

  /// Gets or sets the [BSTR] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  String? get value => bstrVal.isNull ? null : bstrVal.toDartString();
  @pragma('vm:prefer-inline')
  set value(String? value) {
    PropVariantClear(this); // Clear previous BSTR.
    vt = VT_BSTR;
    bstrVal = BSTR(value?.toBstr() ?? nullptr);
  }
}

/// Represents a [PropVariant] holding a [Double] value.
///
/// {@category com}
extension type PropVariantDouble.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<double> {
  /// Creates a [PropVariant] holding a [Double] value.
  factory PropVariantDouble(double value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_R8
      ..dblVal = value;
    return PropVariantDouble.fromPointer(propVariant);
  }

  /// Gets or sets the [Double] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  double get value => dblVal;
  @pragma('vm:prefer-inline')
  set value(double value) => dblVal = value;
}

/// Represents a [PropVariant] holding a [Float] value.
///
/// {@category com}
extension type PropVariantFloat.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<double> {
  /// Creates a [PropVariant] holding a [Float] value.
  factory PropVariantFloat(double value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_R4
      ..fltVal = value;
    return PropVariantFloat.fromPointer(propVariant);
  }

  /// Gets or sets the [Float] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  double get value => fltVal;
  @pragma('vm:prefer-inline')
  set value(double value) => fltVal = value;
}

/// Represents a [PropVariant] holding an [Int8] value.
///
/// {@category com}
extension type PropVariantInt8.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<int> {
  /// Creates a [PropVariant] holding an [Int8] value.
  factory PropVariantInt8(int value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_I1
      ..cVal = CHAR(value);
    return PropVariantInt8.fromPointer(propVariant);
  }

  /// Gets or sets the [Int8] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  int get value => cVal;
  @pragma('vm:prefer-inline')
  set value(int value) => cVal = CHAR(value);
}

/// Represents a [PropVariant] holding an [Int16] value.
///
/// {@category com}
extension type PropVariantInt16.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<int> {
  /// Creates a [PropVariant] holding an [Int16] value.
  factory PropVariantInt16(int value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_I2
      ..iVal = value;
    return PropVariantInt16.fromPointer(propVariant);
  }

  /// Gets or sets the [Int16] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  int get value => iVal;
  @pragma('vm:prefer-inline')
  set value(int value) => iVal = value;
}

/// Represents a [PropVariant] holding an [Int32] value.
///
/// {@category com}
extension type PropVariantInt32.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<int> {
  /// Creates a [PropVariant] holding an [Int32] value.
  factory PropVariantInt32(int value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_I4
      ..intVal = value;
    return PropVariantInt32.fromPointer(propVariant);
  }

  /// Gets or sets the [Int32] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  int get value => intVal;
  @pragma('vm:prefer-inline')
  set value(int value) => intVal = value;
}

/// Represents a [PropVariant] holding an [IDispatch] value.
///
/// {@category com}
extension type PropVariantDispatch.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<IDispatch?> {
  /// Creates a [PropVariant] holding an [IDispatch] value.
  factory PropVariantDispatch(IDispatch value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_DISPATCH
      ..pdispVal = value;
    return PropVariantDispatch.fromPointer(propVariant);
  }

  /// Gets or sets the [IDispatch] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  IDispatch? get value => pdispVal;
  @pragma('vm:prefer-inline')
  set value(IDispatch? value) {
    PropVariantClear(this); // Clear previous IDispatch.
    vt = VT_DISPATCH;
    pdispVal = value;
  }
}

/// Represents a [PropVariant] holding a reference to [IDispatch] value.
///
/// {@category com}
extension type PropVariantDispatchByRef.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<Pointer<VTablePointer>> {
  /// Creates a [PropVariant] holding a reference to [IDispatch] value.
  factory PropVariantDispatchByRef(Pointer<VTablePointer> value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BYREF | VT_DISPATCH
      ..ppdispVal = value;
    return PropVariantDispatchByRef.fromPointer(propVariant);
  }

  /// The reference to [IDispatch] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppdispVal;
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppdispVal = value;
}

/// Represents a [PropVariant] holding an [IUnknown] value.
///
/// {@category com}
extension type PropVariantUnknown.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<IUnknown?> {
  /// Creates a [PropVariant] holding an [IUnknown] value.
  factory PropVariantUnknown(IUnknown value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UNKNOWN
      ..punkVal = value;
    return PropVariantUnknown.fromPointer(propVariant);
  }

  /// Gets or sets the [IUnknown] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  IUnknown? get value => punkVal;
  @pragma('vm:prefer-inline')
  set value(IUnknown? value) {
    PropVariantClear(this); // Clear previous IUnknown.
    vt = VT_UNKNOWN;
    punkVal = value;
  }
}

/// Represents a [PropVariant] holding a reference to [IUnknown] value.
///
/// {@category com}
extension type PropVariantUnknownByRef.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<Pointer<VTablePointer>> {
  /// Creates a [PropVariant] holding a reference to [IUnknown] value.
  factory PropVariantUnknownByRef(Pointer<VTablePointer> value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BYREF | VT_UNKNOWN
      ..ppunkVal = value;
    return PropVariantUnknownByRef.fromPointer(propVariant);
  }

  /// The reference to [IUnknown] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppunkVal;
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppunkVal = value;
}

/// Represents a [PropVariant] holding a [Uint8] value.
///
/// {@category com}
extension type PropVariantUint8.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<int> {
  /// Creates a [PropVariant] holding a [Uint8] value.
  factory PropVariantUint8(int value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UI1
      ..bVal = value;
    return PropVariantUint8.fromPointer(propVariant);
  }

  /// Gets or sets the [Uint8] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  int get value => bVal;
  @pragma('vm:prefer-inline')
  set value(int value) => bVal = value;
}

/// Represents a [PropVariant] holding a [Uint16] value.
///
/// {@category com}
extension type PropVariantUint16.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<int> {
  /// Creates a [PropVariant] holding a [Uint16] value.
  factory PropVariantUint16(int value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UI2
      ..uiVal = value;
    return PropVariantUint16.fromPointer(propVariant);
  }

  /// Gets or sets the [Uint16] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  int get value => uiVal;
  @pragma('vm:prefer-inline')
  set value(int value) => uiVal = value;
}

/// Represents a [PropVariant] holding a [Uint32] value.
///
/// {@category com}
extension type PropVariantUint32.fromPointer(Pointer<PROPVARIANT> _)
    implements PropVariant<int> {
  /// Creates a [PropVariant] holding a [Uint32] value.
  factory PropVariantUint32(int value) {
    final propVariant = adaptiveCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UI4
      ..uintVal = value;
    return PropVariantUint32.fromPointer(propVariant);
  }

  /// Gets or sets the [Uint32] value stored in the [PROPVARIANT].
  @pragma('vm:prefer-inline')
  int get value => uintVal;
  @pragma('vm:prefer-inline')
  set value(int value) => uintVal = value;
}
