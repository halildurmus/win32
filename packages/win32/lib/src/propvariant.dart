import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '_internal/win32.dart';
import 'allocator.dart';
import 'com/idispatch.g.dart';
import 'com/istorage.g.dart';
import 'com/istream.g.dart';
import 'com/iunknown.g.dart';
import 'enums.g.dart';
import 'extensions/pointer.dart';
import 'extensions/string.dart';
import 'guid.dart';
import 'macros.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/ole32.g.dart';

/// A wrapper for the [PROPVARIANT] structure, used in COM APIs.
///
/// This class simplifies working with [PROPVARIANT]s by providing automatic
/// memory management and convenient Dart-friendly operations.
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
final class PropVariant<T extends Object?> implements Finalizable {
  /// Creates a new empty [PropVariant].
  ///
  /// The constructed [PROPVARIANT] will have the [VT_EMPTY] type.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  @pragma('vm:prefer-inline')
  factory PropVariant() =>
      PropVariant._fromPointer(loggingCalloc<PROPVARIANT>());

  /// Creates a new [PropVariant] initialized with the provided [value].
  ///
  /// Gets or sets the [value] must be one of the supported types: `null`,
  /// [bool], [double], [IDispatch], [IUnknown], [int], or [String].
  ///
  /// Throws an [ArgumentError] if [value] is an unsupported type.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory PropVariant.from(T value) => PropVariant<T>()..value = value;

  PropVariant._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<PROPVARIANT>(),
    );
  }

  /// Creates a [PropVariant] from an existing pointer to a [PROPVARIANT]
  /// structure.
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [PROPVARIANT] when the object is
  /// GCed.
  factory PropVariant.fromPointer(Pointer<PROPVARIANT> ptr) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return PropVariant._fromPointer(ptr);
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

  static final _finalizer = NativeFinalizer(freePROPVARIANTAddress.cast());

  /// A pointer to the underlying [PROPVARIANT] structure.
  ///
  /// This can be used for advanced scenarios where low-level access to the
  /// structure is required.
  final Pointer<PROPVARIANT> ptr;

  /// Creates a new PropVariant that is a copy of the current PropVariant.
  ///
  /// This method duplicates the underlying [PROPVARIANT] structure, ensuring
  /// the new instance is independent of the original.
  ///
  /// The cloned PropVariant can safely be modified or freed without affecting
  /// the original.
  PropVariant<T> clone() {
    final pvarDest = loggingCalloc<PROPVARIANT>();
    PropVariantCopy(pvarDest, ptr);
    return PropVariant._fromPointer(pvarDest);
  }

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [PROPVARIANT]
  /// structure. After calling this method, the [NativeFinalizer] will no longer
  /// free the memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and releases
  /// the resources associated with the [PROPVARIANT] structure.
  /// After calling this method, the [ptr] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    PropVariantClear(ptr);
    loggingCalloc.free(ptr);
  }

  /// Whether this [PROPVARIANT] is empty (i.e., [vt] is set to [VT_EMPTY]).
  @pragma('vm:prefer-inline')
  bool get isEmpty => vt == VT_EMPTY;

  /// Whether this [PROPVARIANT] is null (i.e., [vt] is set to [VT_NULL]).
  @pragma('vm:prefer-inline')
  bool get isNull => vt == VT_NULL;

  /// Gets or sets the value stored in this [PROPVARIANT].
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
  /// - [int] for integer types ([VT_I4], [VT_UI4], etc.)
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
    PropVariantClear(ptr); // Clear previous value to avoid memory leaks.
    ZeroMemory(ptr, sizeOf<PROPVARIANT>());

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

  /// Provides access to the underlying [PROPVARIANT] structure.
  @pragma('vm:prefer-inline')
  PROPVARIANT get ref => ptr.ref;
  @pragma('vm:prefer-inline')
  set ref(PROPVARIANT value) => ptr.ref = value;

  /// The `vt` field of the [PROPVARIANT], representing the type of data stored.
  @pragma('vm:prefer-inline')
  VARENUM get vt => ref.vt;
  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => ref.vt = value;

  @pragma('vm:prefer-inline')
  int get cVal => ref.cVal;
  @pragma('vm:prefer-inline')
  set cVal(int value) => ref.cVal = value;

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
  BSTR get bstrVal => ref.bstrVal;
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
  Pointer<VARIANT_BOOL> get pboolVal => ref.pboolVal;
  @pragma('vm:prefer-inline')
  set pboolVal(Pointer<VARIANT_BOOL> value) => ref.pboolVal = value;

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
  Pointer<PROPVARIANT> get pvarVal => ref.pvarVal;
  @pragma('vm:prefer-inline')
  set pvarVal(Pointer<PROPVARIANT> value) => ref.pvarVal = value;

  @pragma('vm:prefer-inline')
  DECIMAL get decVal => ref.decVal;
  @pragma('vm:prefer-inline')
  set decVal(DECIMAL value) => ref.decVal = value;

  @override
  String toString() => 'PropVariant<$T>(vt: $vt, value: $value)';
}

/// Represents a [PropVariant] holding a [VARIANT_BOOL] value.
///
/// {@category com}
final class PropVariantBool extends PropVariant<bool> {
  /// Creates a [PropVariant] holding a [VARIANT_BOOL] value.
  // ignore: avoid_positional_boolean_parameters
  factory PropVariantBool(bool value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BOOL
      ..boolVal = value;
    return PropVariantBool.fromPointer(propVariant);
  }

  /// Creates a [PropVariantBool] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantBool.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [VARIANT_BOOL] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  bool get value => boolVal;
  @override
  @pragma('vm:prefer-inline')
  set value(bool value) => boolVal = value;
}

/// Represents a [PropVariant] holding a [BSTR] value.
///
/// {@category com}
final class PropVariantBSTR extends PropVariant<String?> {
  /// Creates a [PropVariant] holding a [BSTR] value.
  factory PropVariantBSTR(String value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BSTR
      ..bstrVal = value.toBSTR();
    return PropVariantBSTR.fromPointer(propVariant);
  }

  /// Creates a [PropVariantBSTR] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantBSTR.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [BSTR] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  String? get value => bstrVal.isNull ? null : bstrVal.toDartString();
  @override
  @pragma('vm:prefer-inline')
  set value(String? value) {
    PropVariantClear(ptr); // Clear previous BSTR.
    vt = VT_BSTR;
    bstrVal = value?.toBSTR() ?? nullptr;
  }
}

/// Represents a [PropVariant] holding a [Double] value.
///
/// {@category com}
final class PropVariantDouble extends PropVariant<double> {
  /// Creates a [PropVariant] holding a [Double] value.
  factory PropVariantDouble(double value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_R8
      ..dblVal = value;
    return PropVariantDouble.fromPointer(propVariant);
  }

  /// Creates a [PropVariantDouble] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantDouble.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Double] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  double get value => dblVal;
  @override
  @pragma('vm:prefer-inline')
  set value(double value) => dblVal = value;
}

/// Represents a [PropVariant] holding a [Float] value.
///
/// {@category com}
final class PropVariantFloat extends PropVariant<double> {
  /// Creates a [PropVariant] holding a [Float] value.
  factory PropVariantFloat(double value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_R4
      ..fltVal = value;
    return PropVariantFloat.fromPointer(propVariant);
  }

  /// Creates a [PropVariantFloat] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantFloat.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Float] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  double get value => fltVal;
  @override
  @pragma('vm:prefer-inline')
  set value(double value) => fltVal = value;
}

/// Represents a [PropVariant] holding an [Int8] value.
///
/// {@category com}
final class PropVariantInt8 extends PropVariant<int> {
  /// Creates a [PropVariant] holding an [Int8] value.
  factory PropVariantInt8(int value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_I1
      ..cVal = value;
    return PropVariantInt8.fromPointer(propVariant);
  }

  /// Creates a [PropVariantInt8] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantInt8.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Int8] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => cVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => cVal = value;
}

/// Represents a [PropVariant] holding an [Int16] value.
///
/// {@category com}
final class PropVariantInt16 extends PropVariant<int> {
  /// Creates a [PropVariant] holding an [Int16] value.
  factory PropVariantInt16(int value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_I2
      ..iVal = value;
    return PropVariantInt16.fromPointer(propVariant);
  }

  /// Creates a [PropVariantInt16] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantInt16.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Int16] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => iVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => iVal = value;
}

/// Represents a [PropVariant] holding an [Int32] value.
///
/// {@category com}
final class PropVariantInt32 extends PropVariant<int> {
  /// Creates a [PropVariant] holding an [Int32] value.
  factory PropVariantInt32(int value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_I4
      ..intVal = value;
    return PropVariantInt32.fromPointer(propVariant);
  }

  /// Creates a [PropVariantInt32] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantInt32.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Int32] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => intVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => intVal = value;
}

/// Represents a [PropVariant] holding an [IDispatch] value.
///
/// {@category com}
final class PropVariantDispatch extends PropVariant<IDispatch?> {
  /// Creates a [PropVariant] holding an [IDispatch] value.
  factory PropVariantDispatch(IDispatch value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_DISPATCH
      ..pdispVal = value;
    return PropVariantDispatch.fromPointer(propVariant);
  }

  /// Creates a [PropVariantDispatch] from an existing pointer to a
  /// [PROPVARIANT] structure.
  PropVariantDispatch.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [IDispatch] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  IDispatch? get value => pdispVal;
  @override
  @pragma('vm:prefer-inline')
  set value(IDispatch? value) {
    PropVariantClear(ptr); // Clear previous IDispatch.
    vt = VT_DISPATCH;
    pdispVal = value;
  }
}

/// Represents a [PropVariant] holding a reference to [IDispatch] value.
///
/// {@category com}
final class PropVariantDispatchByRef
    extends PropVariant<Pointer<VTablePointer>> {
  /// Creates a [PropVariant] holding a reference to [IDispatch] value.
  factory PropVariantDispatchByRef(Pointer<VTablePointer> value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BYREF | VT_DISPATCH
      ..ppdispVal = value;
    return PropVariantDispatchByRef.fromPointer(propVariant);
  }

  /// Creates a [PropVariantDispatchByRef] from an existing pointer to a
  /// [PROPVARIANT] structure.
  PropVariantDispatchByRef.fromPointer(super.ptr) : super._fromPointer();

  /// The reference to [IDispatch] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppdispVal;
  @override
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppdispVal = value;
}

/// Represents a [PropVariant] holding an [IUnknown] value.
///
/// {@category com}
final class PropVariantUnknown extends PropVariant<IUnknown?> {
  /// Creates a [PropVariant] holding an [IUnknown] value.
  factory PropVariantUnknown(IUnknown value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UNKNOWN
      ..punkVal = value;
    return PropVariantUnknown.fromPointer(propVariant);
  }

  /// Creates a [PropVariantUnknown] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantUnknown.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [IUnknown] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  IUnknown? get value => punkVal;
  @override
  @pragma('vm:prefer-inline')
  set value(IUnknown? value) {
    PropVariantClear(ptr); // Clear previous IUnknown.
    vt = VT_UNKNOWN;
    punkVal = value;
  }
}

/// Represents a [PropVariant] holding a reference to [IUnknown] value.
///
/// {@category com}
final class PropVariantUnknownByRef
    extends PropVariant<Pointer<VTablePointer>> {
  /// Creates a [PropVariant] holding a reference to [IUnknown] value.
  factory PropVariantUnknownByRef(Pointer<VTablePointer> value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_BYREF | VT_UNKNOWN
      ..ppunkVal = value;
    return PropVariantUnknownByRef.fromPointer(propVariant);
  }

  /// Creates a [PropVariantUnknownByRef] from an existing pointer to a
  /// [PROPVARIANT] structure.
  PropVariantUnknownByRef.fromPointer(super.ptr) : super._fromPointer();

  /// The reference to [IUnknown] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get value => ppunkVal;
  @override
  @pragma('vm:prefer-inline')
  set value(Pointer<VTablePointer> value) => ppunkVal = value;
}

/// Represents a [PropVariant] holding a [Uint8] value.
///
/// {@category com}
final class PropVariantUint8 extends PropVariant<int> {
  /// Creates a [PropVariant] holding a [Uint8] value.
  factory PropVariantUint8(int value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UI1
      ..bVal = value;
    return PropVariantUint8.fromPointer(propVariant);
  }

  /// Creates a [PropVariantUint8] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantUint8.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Uint8] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => bVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => bVal = value;
}

/// Represents a [PropVariant] holding a [Uint16] value.
///
/// {@category com}
final class PropVariantUint16 extends PropVariant<int> {
  /// Creates a [PropVariant] holding a [Uint16] value.
  factory PropVariantUint16(int value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UI2
      ..uiVal = value;
    return PropVariantUint16.fromPointer(propVariant);
  }

  /// Creates a [PropVariantUint16] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantUint16.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Uint16] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => uiVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => uiVal = value;
}

/// Represents a [PropVariant] holding a [Uint32] value.
///
/// {@category com}
final class PropVariantUint32 extends PropVariant<int> {
  /// Creates a [PropVariant] holding a [Uint32] value.
  factory PropVariantUint32(int value) {
    final propVariant = loggingCalloc<PROPVARIANT>();
    propVariant.ref
      ..vt = VT_UI4
      ..uintVal = value;
    return PropVariantUint32.fromPointer(propVariant);
  }

  /// Creates a [PropVariantUint32] from an existing pointer to a [PROPVARIANT]
  /// structure.
  PropVariantUint32.fromPointer(super.ptr) : super._fromPointer();

  /// Gets or sets the [Uint32] value stored in the [PROPVARIANT].
  @override
  @pragma('vm:prefer-inline')
  int get value => uintVal;
  @override
  @pragma('vm:prefer-inline')
  set value(int value) => uintVal = value;
}
