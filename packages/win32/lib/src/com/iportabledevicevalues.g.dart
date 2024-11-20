// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../propertykey.dart';
import '../propvariant.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iportabledevicekeycollection.g.dart';
import 'iportabledevicepropvariantcollection.g.dart';
import 'iportabledevicevalues.g.dart';
import 'iportabledevicevaluescollection.g.dart';
import 'ipropertystore.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IPortableDeviceValues = Guid.fromComponents(
  0x6848f6f2,
  0x3155,
  0x4f86,
  Uint8List.fromList(const [0xb6, 0xf5, 0x26, 0x3e, 0xee, 0xab, 0x31, 0x43]),
);

/// Holds a collection of PROPERTYKEY/PROPVARIANT pairs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues>.
///
/// {@category com}
class IPortableDeviceValues extends IUnknown implements ComInterface {
  /// Creates a new instance of [IPortableDeviceValues] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IPortableDeviceValues]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPortableDeviceValues(super.ptr)
    : _vtable = ptr.value.cast<IPortableDeviceValuesVtbl>().ref;

  /// Creates a new instance of [IPortableDeviceValues] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPortableDeviceValues] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPortableDeviceValues.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPortableDeviceValuesVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetAtFn =
      _vtable.GetAt.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<PROPERTYKEY>,
          Pointer<PROPVARIANT>,
        )
      >();
  late final _SetValueFn =
      _vtable.SetValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPVARIANT>)
      >();
  late final _GetValueFn =
      _vtable.GetValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPVARIANT>)
      >();
  late final _SetStringValueFn =
      _vtable.SetStringValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, PCWSTR)
      >();
  late final _GetStringValueFn =
      _vtable.GetStringValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PWSTR>)
      >();
  late final _SetUnsignedIntegerValueFn =
      _vtable.SetUnsignedIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, int)
      >();
  late final _GetUnsignedIntegerValueFn =
      _vtable.GetUnsignedIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Uint32>)
      >();
  late final _SetSignedIntegerValueFn =
      _vtable.SetSignedIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, int)
      >();
  late final _GetSignedIntegerValueFn =
      _vtable.GetSignedIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Int32>)
      >();
  late final _SetUnsignedLargeIntegerValueFn =
      _vtable.SetUnsignedLargeIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, int)
      >();
  late final _GetUnsignedLargeIntegerValueFn =
      _vtable.GetUnsignedLargeIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Uint64>)
      >();
  late final _SetSignedLargeIntegerValueFn =
      _vtable.SetSignedLargeIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, int)
      >();
  late final _GetSignedLargeIntegerValueFn =
      _vtable.GetSignedLargeIntegerValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Int64>)
      >();
  late final _SetFloatValueFn =
      _vtable.SetFloatValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, double)
      >();
  late final _GetFloatValueFn =
      _vtable.GetFloatValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Float>)
      >();
  late final _SetErrorValueFn =
      _vtable.SetErrorValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, int)
      >();
  late final _GetErrorValueFn =
      _vtable.GetErrorValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Int32>)
      >();
  late final _SetKeyValueFn =
      _vtable.SetKeyValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPERTYKEY>)
      >();
  late final _GetKeyValueFn =
      _vtable.GetKeyValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPERTYKEY>)
      >();
  late final _SetBoolValueFn =
      _vtable.SetBoolValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, int)
      >();
  late final _GetBoolValueFn =
      _vtable.GetBoolValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<BOOL>)
      >();
  late final _SetIUnknownValueFn =
      _vtable.SetIUnknownValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, VTablePointer)
      >();
  late final _GetIUnknownValueFn =
      _vtable.GetIUnknownValue.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<VTablePointer>,
        )
      >();
  late final _SetGuidValueFn =
      _vtable.SetGuidValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<GUID>)
      >();
  late final _GetGuidValueFn =
      _vtable.GetGuidValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<GUID>)
      >();
  late final _SetBufferValueFn =
      _vtable.SetBufferValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Uint8>, int)
      >();
  late final _GetBufferValueFn =
      _vtable.GetBufferValue.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<Pointer<Uint8>>,
          Pointer<Uint32>,
        )
      >();
  late final _SetIPortableDeviceValuesValueFn =
      _vtable.SetIPortableDeviceValuesValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, VTablePointer)
      >();
  late final _GetIPortableDeviceValuesValueFn =
      _vtable.GetIPortableDeviceValuesValue.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<VTablePointer>,
        )
      >();
  late final _SetIPortableDevicePropVariantCollectionValueFn =
      _vtable.SetIPortableDevicePropVariantCollectionValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, VTablePointer)
      >();
  late final _GetIPortableDevicePropVariantCollectionValueFn =
      _vtable.GetIPortableDevicePropVariantCollectionValue.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<VTablePointer>,
        )
      >();
  late final _SetIPortableDeviceKeyCollectionValueFn =
      _vtable.SetIPortableDeviceKeyCollectionValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, VTablePointer)
      >();
  late final _GetIPortableDeviceKeyCollectionValueFn =
      _vtable.GetIPortableDeviceKeyCollectionValue.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<VTablePointer>,
        )
      >();
  late final _SetIPortableDeviceValuesCollectionValueFn =
      _vtable.SetIPortableDeviceValuesCollectionValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, VTablePointer)
      >();
  late final _GetIPortableDeviceValuesCollectionValueFn =
      _vtable.GetIPortableDeviceValuesCollectionValue.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<VTablePointer>,
        )
      >();
  late final _RemoveValueFn =
      _vtable.RemoveValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>)
      >();
  late final _CopyValuesFromPropertyStoreFn =
      _vtable.CopyValuesFromPropertyStore.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _CopyValuesToPropertyStoreFn =
      _vtable.CopyValuesToPropertyStore.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _ClearFn = _vtable.Clear.asFunction<int Function(VTablePointer)>();

  /// IPortableDeviceValues::GetCount method - The GetCount method retrieves the
  /// number of items in the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getcount>.
  @pragma('vm:prefer-inline')
  void getCount(Pointer<Uint32> pcelt) {
    final hr$ = HRESULT(_GetCountFn(ptr, pcelt));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a value from the collection using the supplied zero-based index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getat>.
  @pragma('vm:prefer-inline')
  void getAt(
    int index,
    Pointer<PROPERTYKEY> pKey,
    Pointer<PROPVARIANT> pValue,
  ) {
    final hr$ = HRESULT(_GetAtFn(ptr, index, pKey, pValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a new PROPVARIANT value or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setvalue>.
  @pragma('vm:prefer-inline')
  void setValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pValue) {
    final hr$ = HRESULT(_SetValueFn(ptr, key, pValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a PROPVARIANT value specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getvalue>.
  Pointer<PROPVARIANT> getValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<PROPVARIANT>();
    final hr$ = HRESULT(_GetValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    return pValue;
  }

  /// Adds a new string value (type VT_LPWSTR) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setstringvalue>.
  @pragma('vm:prefer-inline')
  void setStringValue(Pointer<PROPERTYKEY> key, PCWSTR value) {
    final hr$ = HRESULT(_SetStringValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a string value (type VT_LPWSTR) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getstringvalue>.
  PWSTR getStringValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetStringValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    final result$ = pValue.value;
    free(pValue);
    return result$;
  }

  /// Adds a new ULONG value (type VT_UI4) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setunsignedintegervalue>.
  @pragma('vm:prefer-inline')
  void setUnsignedIntegerValue(Pointer<PROPERTYKEY> key, int value) {
    final hr$ = HRESULT(_SetUnsignedIntegerValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a ULONG value (type VT_UI4) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getunsignedintegervalue>.
  int getUnsignedIntegerValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetUnsignedIntegerValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    final result$ = pValue.value;
    free(pValue);
    return result$;
  }

  /// Adds a new LONG value (type VT_I4) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setsignedintegervalue>.
  @pragma('vm:prefer-inline')
  void setSignedIntegerValue(Pointer<PROPERTYKEY> key, int value) {
    final hr$ = HRESULT(_SetSignedIntegerValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a LONG value (type VT_I4) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getsignedintegervalue>.
  int getSignedIntegerValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetSignedIntegerValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    final result$ = pValue.value;
    free(pValue);
    return result$;
  }

  /// Adds a new ULONGLONG value (type VT_UI8) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setunsignedlargeintegervalue>.
  @pragma('vm:prefer-inline')
  void setUnsignedLargeIntegerValue(Pointer<PROPERTYKEY> key, int value) {
    final hr$ = HRESULT(_SetUnsignedLargeIntegerValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a ULONGLONG value (type VT_UI8) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getunsignedlargeintegervalue>.
  int getUnsignedLargeIntegerValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetUnsignedLargeIntegerValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    final result$ = pValue.value;
    free(pValue);
    return result$;
  }

  /// Adds a new LONGLONG value (type VT_I8) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setsignedlargeintegervalue>.
  @pragma('vm:prefer-inline')
  void setSignedLargeIntegerValue(Pointer<PROPERTYKEY> key, int value) {
    final hr$ = HRESULT(_SetSignedLargeIntegerValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a LONGLONG value (type VT_I8) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getsignedlargeintegervalue>.
  int getSignedLargeIntegerValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<Int64>();
    final hr$ = HRESULT(_GetSignedLargeIntegerValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    final result$ = pValue.value;
    free(pValue);
    return result$;
  }

  /// Adds a new FLOAT value (type VT_R4) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setfloatvalue>.
  @pragma('vm:prefer-inline')
  void setFloatValue(Pointer<PROPERTYKEY> key, double value) {
    final hr$ = HRESULT(_SetFloatValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a FLOAT value (type VT_R4) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getfloatvalue>.
  double getFloatValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<Float>();
    final hr$ = HRESULT(_GetFloatValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    final result$ = pValue.value;
    free(pValue);
    return result$;
  }

  /// Adds a new HRESULT value (type VT_ERROR) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-seterrorvalue>.
  @pragma('vm:prefer-inline')
  void setErrorValue(Pointer<PROPERTYKEY> key, HRESULT value) {
    final hr$ = HRESULT(_SetErrorValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an HRESULT value (type VT_ERROR) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-geterrorvalue>.
  HRESULT getErrorValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetErrorValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    return HRESULT(pValue.value);
  }

  /// Adds a new REFPROPERTYKEY value (type VT_UNKNOWN) or overwrites an
  /// existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setkeyvalue>.
  @pragma('vm:prefer-inline')
  void setKeyValue(Pointer<PROPERTYKEY> key, Pointer<PROPERTYKEY> value) {
    final hr$ = HRESULT(_SetKeyValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a PROPERTYKEY value specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getkeyvalue>.
  Pointer<PROPERTYKEY> getKeyValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<PROPERTYKEY>();
    final hr$ = HRESULT(_GetKeyValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    return pValue;
  }

  /// Adds a new Boolean value (type VT_BOOL) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setboolvalue>.
  @pragma('vm:prefer-inline')
  void setBoolValue(Pointer<PROPERTYKEY> key, bool value) {
    final hr$ = HRESULT(_SetBoolValueFn(ptr, key, value ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a Boolean value (type VT_BOOL) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getboolvalue>.
  bool getBoolValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_GetBoolValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    final result$ = pValue.value;
    free(pValue);
    return result$ != FALSE;
  }

  /// Adds a new IUnknown value (type VT_UNKNOWN) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setiunknownvalue>.
  @pragma('vm:prefer-inline')
  void setIUnknownValue(Pointer<PROPERTYKEY> key, IUnknown? pValue) {
    final hr$ = HRESULT(_SetIUnknownValueFn(ptr, key, pValue?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an IUnknown interface value (type VT_UNKNOWN) specified by a
  /// key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getiunknownvalue>.
  IUnknown? getIUnknownValue(Pointer<PROPERTYKEY> key) {
    final ppValue = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetIUnknownValueFn(ptr, key, ppValue));
    if (hr$.isError) {
      free(ppValue);
      throw WindowsException(hr$);
    }
    final result$ = ppValue.value;
    free(ppValue);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Adds a new GUID value (type VT_CLSID) or overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setguidvalue>.
  @pragma('vm:prefer-inline')
  void setGuidValue(Pointer<PROPERTYKEY> key, Pointer<GUID> value) {
    final hr$ = HRESULT(_SetGuidValueFn(ptr, key, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a GUID value (type VT_CLSID) specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getguidvalue>.
  Pointer<GUID> getGuidValue(Pointer<PROPERTYKEY> key) {
    final pValue = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetGuidValueFn(ptr, key, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    return pValue;
  }

  /// Adds a new BYTE\* value (type VT_VECTOR \| VT_UI1) or overwrites an
  /// existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setbuffervalue>.
  @pragma('vm:prefer-inline')
  void setBufferValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Uint8> pValue,
    int cbValue,
  ) {
    final hr$ = HRESULT(_SetBufferValueFn(ptr, key, pValue, cbValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a byte array value (type VT_VECTOR \| VT_UI1) specified by a
  /// key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getbuffervalue>.
  @pragma('vm:prefer-inline')
  void getBufferValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<Uint8>> ppValue,
    Pointer<Uint32> pcbValue,
  ) {
    final hr$ = HRESULT(_GetBufferValueFn(ptr, key, ppValue, pcbValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a new IPortableDeviceValues value (type VT_UNKNOWN) or overwrites an
  /// existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setiportabledevicevaluesvalue>.
  @pragma('vm:prefer-inline')
  void setIPortableDeviceValuesValue(
    Pointer<PROPERTYKEY> key,
    IPortableDeviceValues? pValue,
  ) {
    final hr$ = HRESULT(
      _SetIPortableDeviceValuesValueFn(ptr, key, pValue?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an IPortableDeviceValues value (type VT_UNKNOWN) specified by a
  /// key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getiportabledevicevaluesvalue>.
  IPortableDeviceValues? getIPortableDeviceValuesValue(
    Pointer<PROPERTYKEY> key,
  ) {
    final ppValue = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetIPortableDeviceValuesValueFn(ptr, key, ppValue));
    if (hr$.isError) {
      free(ppValue);
      throw WindowsException(hr$);
    }
    final result$ = ppValue.value;
    free(ppValue);
    if (result$.isNull) return null;
    return IPortableDeviceValues(result$);
  }

  /// Adds a new IPortableDevicePropVariantCollection value (type VT_UNKNOWN) or
  /// overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setiportabledevicepropvariantcollectionvalue>.
  @pragma('vm:prefer-inline')
  void setIPortableDevicePropVariantCollectionValue(
    Pointer<PROPERTYKEY> key,
    IPortableDevicePropVariantCollection? pValue,
  ) {
    final hr$ = HRESULT(
      _SetIPortableDevicePropVariantCollectionValueFn(
        ptr,
        key,
        pValue?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an IPortableDevicePropVariantCollection value (type VT_UNKNOWN)
  /// specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getiportabledevicepropvariantcollectionvalue>.
  IPortableDevicePropVariantCollection?
  getIPortableDevicePropVariantCollectionValue(Pointer<PROPERTYKEY> key) {
    final ppValue = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetIPortableDevicePropVariantCollectionValueFn(ptr, key, ppValue),
    );
    if (hr$.isError) {
      free(ppValue);
      throw WindowsException(hr$);
    }
    final result$ = ppValue.value;
    free(ppValue);
    if (result$.isNull) return null;
    return IPortableDevicePropVariantCollection(result$);
  }

  /// Adds a new SetIPortableDeviceKeyCollectionValue value (type VT_UNKNOWN) or
  /// overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setiportabledevicekeycollectionvalue>.
  @pragma('vm:prefer-inline')
  void setIPortableDeviceKeyCollectionValue(
    Pointer<PROPERTYKEY> key,
    IPortableDeviceKeyCollection? pValue,
  ) {
    final hr$ = HRESULT(
      _SetIPortableDeviceKeyCollectionValueFn(ptr, key, pValue?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an IPortableDeviceKeyCollection value (type VT_UNKNOWN)
  /// specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getiportabledevicekeycollectionvalue>.
  IPortableDeviceKeyCollection? getIPortableDeviceKeyCollectionValue(
    Pointer<PROPERTYKEY> key,
  ) {
    final ppValue = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetIPortableDeviceKeyCollectionValueFn(ptr, key, ppValue),
    );
    if (hr$.isError) {
      free(ppValue);
      throw WindowsException(hr$);
    }
    final result$ = ppValue.value;
    free(ppValue);
    if (result$.isNull) return null;
    return IPortableDeviceKeyCollection(result$);
  }

  /// Adds a new IPortableDeviceValuesCollection value (type VT_UNKNOWN) or
  /// overwrites an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-setiportabledevicevaluescollectionvalue>.
  @pragma('vm:prefer-inline')
  void setIPortableDeviceValuesCollectionValue(
    Pointer<PROPERTYKEY> key,
    IPortableDeviceValuesCollection? pValue,
  ) {
    final hr$ = HRESULT(
      _SetIPortableDeviceValuesCollectionValueFn(
        ptr,
        key,
        pValue?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an IPortableDeviceValuesCollection value (type VT_UNKNOWN)
  /// specified by a key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-getiportabledevicevaluescollectionvalue>.
  IPortableDeviceValuesCollection? getIPortableDeviceValuesCollectionValue(
    Pointer<PROPERTYKEY> key,
  ) {
    final ppValue = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetIPortableDeviceValuesCollectionValueFn(ptr, key, ppValue),
    );
    if (hr$.isError) {
      free(ppValue);
      throw WindowsException(hr$);
    }
    final result$ = ppValue.value;
    free(ppValue);
    if (result$.isNull) return null;
    return IPortableDeviceValuesCollection(result$);
  }

  /// Removes an item from the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-removevalue>.
  @pragma('vm:prefer-inline')
  void removeValue(Pointer<PROPERTYKEY> key) {
    final hr$ = HRESULT(_RemoveValueFn(ptr, key));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies the contents of an IPropertyStore into the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-copyvaluesfrompropertystore>.
  @pragma('vm:prefer-inline')
  void copyValuesFromPropertyStore(IPropertyStore? pStore) {
    final hr$ = HRESULT(
      _CopyValuesFromPropertyStoreFn(ptr, pStore?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies all the values from a collection into an IPropertyStore interface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-copyvaluestopropertystore>.
  @pragma('vm:prefer-inline')
  void copyValuesToPropertyStore(IPropertyStore? pStore) {
    final hr$ = HRESULT(
      _CopyValuesToPropertyStoreFn(ptr, pStore?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDeviceValues::Clear method - The Clear method deletes all items
  /// from the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevalues-clear>.
  @pragma('vm:prefer-inline')
  void clear() {
    final hr$ = HRESULT(_ClearFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IPortableDeviceValues(ptr: $ptr)';
}

/// @nodoc
base class IPortableDeviceValuesVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pcelt)>
  >
  GetCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<PROPERTYKEY> pKey,
        Pointer<PROPVARIANT> pValue,
      )
    >
  >
  GetAt;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPVARIANT> pValue,
      )
    >
  >
  SetValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPVARIANT> pValue,
      )
    >
  >
  GetValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        PCWSTR value,
      )
    >
  >
  SetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PWSTR> pValue,
      )
    >
  >
  GetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Uint32 value,
      )
    >
  >
  SetUnsignedIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Uint32> pValue,
      )
    >
  >
  GetUnsignedIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPERTYKEY> key, Int32 value)
    >
  >
  SetSignedIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Int32> pValue,
      )
    >
  >
  GetSignedIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Uint64 value,
      )
    >
  >
  SetUnsignedLargeIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Uint64> pValue,
      )
    >
  >
  GetUnsignedLargeIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPERTYKEY> key, Int64 value)
    >
  >
  SetSignedLargeIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Int64> pValue,
      )
    >
  >
  GetSignedLargeIntegerValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPERTYKEY> key, Float value)
    >
  >
  SetFloatValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Float> pValue,
      )
    >
  >
  GetFloatValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPERTYKEY> key, Int32 value)
    >
  >
  SetErrorValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Int32> pValue,
      )
    >
  >
  GetErrorValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPERTYKEY> value,
      )
    >
  >
  SetKeyValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPERTYKEY> pValue,
      )
    >
  >
  GetKeyValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPERTYKEY> key, BOOL value)
    >
  >
  SetBoolValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<BOOL> pValue,
      )
    >
  >
  GetBoolValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        VTablePointer pValue,
      )
    >
  >
  SetIUnknownValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<VTablePointer> ppValue,
      )
    >
  >
  GetIUnknownValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<GUID> value,
      )
    >
  >
  SetGuidValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<GUID> pValue,
      )
    >
  >
  GetGuidValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Uint8> pValue,
        Uint32 cbValue,
      )
    >
  >
  SetBufferValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Pointer<Uint8>> ppValue,
        Pointer<Uint32> pcbValue,
      )
    >
  >
  GetBufferValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        VTablePointer pValue,
      )
    >
  >
  SetIPortableDeviceValuesValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<VTablePointer> ppValue,
      )
    >
  >
  GetIPortableDeviceValuesValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        VTablePointer pValue,
      )
    >
  >
  SetIPortableDevicePropVariantCollectionValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<VTablePointer> ppValue,
      )
    >
  >
  GetIPortableDevicePropVariantCollectionValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        VTablePointer pValue,
      )
    >
  >
  SetIPortableDeviceKeyCollectionValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<VTablePointer> ppValue,
      )
    >
  >
  GetIPortableDeviceKeyCollectionValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        VTablePointer pValue,
      )
    >
  >
  SetIPortableDeviceValuesCollectionValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<VTablePointer> ppValue,
      )
    >
  >
  GetIPortableDeviceValuesCollectionValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPERTYKEY> key)
    >
  >
  RemoveValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pStore)>
  >
  CopyValuesFromPropertyStore;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pStore)>
  >
  CopyValuesToPropertyStore;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Clear;
}

@internal
final class IPortableDeviceValuesCompanion
    extends ComCompanion<IPortableDeviceValues> {
  const IPortableDeviceValuesCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPortableDeviceValues Function(VTablePointer) get fromPointer =>
      IPortableDeviceValues.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPortableDeviceValues;
}
