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
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'ispdatakey.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpDataKey = Guid.fromComponents(
  0x14056581,
  0xe16c,
  0x11d2,
  Uint8List.fromList(const [0xbb, 0x90, 0x0, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0]),
);

/// {@category com}
class ISpDataKey extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISpDataKey] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpDataKey] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpDataKey(super.ptr) : _vtable = ptr.value.cast<ISpDataKeyVtbl>().ref;

  /// Creates a new instance of [ISpDataKey] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpDataKey] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpDataKey.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final ISpDataKeyVtbl _vtable;
  late final _SetDataFn =
      _vtable.SetData.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<Uint8>)
      >();
  late final _GetDataFn =
      _vtable.GetData.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<Uint32>, Pointer<Uint8>)
      >();
  late final _SetStringValueFn = _vtable
      .SetStringValue.asFunction<int Function(VTablePointer, PCWSTR, PCWSTR)>();
  late final _GetStringValueFn =
      _vtable.GetStringValue.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<PWSTR>)
      >();
  late final _SetDWORDFn =
      _vtable.SetDWORD.asFunction<int Function(VTablePointer, PCWSTR, int)>();
  late final _GetDWORDFn =
      _vtable.GetDWORD.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<Uint32>)
      >();
  late final _OpenKeyFn =
      _vtable.OpenKey.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _CreateKeyFn =
      _vtable.CreateKey.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _DeleteKeyFn =
      _vtable.DeleteKey.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _DeleteValueFn =
      _vtable.DeleteValue.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _EnumKeysFn = _vtable
      .EnumKeys.asFunction<int Function(VTablePointer, int, Pointer<PWSTR>)>();
  late final _EnumValuesFn =
      _vtable.EnumValues.asFunction<
        int Function(VTablePointer, int, Pointer<PWSTR>)
      >();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setData(PCWSTR pszValueName, int cbData, Pointer<Uint8> pData) {
    final hr$ = HRESULT(_SetDataFn(ptr, pszValueName, cbData, pData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getData(
    PCWSTR pszValueName,
    Pointer<Uint32> pcbData,
    Pointer<Uint8> pData,
  ) {
    final hr$ = HRESULT(_GetDataFn(ptr, pszValueName, pcbData, pData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setStringValue(PCWSTR? pszValueName, PCWSTR pszValue) {
    final hr$ = HRESULT(
      _SetStringValueFn(ptr, pszValueName ?? nullptr, pszValue),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  PWSTR getStringValue(PCWSTR? pszValueName) {
    final ppszValue = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(
      _GetStringValueFn(ptr, pszValueName ?? nullptr, ppszValue),
    );
    if (hr$.isError) {
      free(ppszValue);
      throw WindowsException(hr$);
    }
    final result$ = ppszValue.value;
    free(ppszValue);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setDWORD(PCWSTR pszValueName, int dwValue) {
    final hr$ = HRESULT(_SetDWORDFn(ptr, pszValueName, dwValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getDWORD(PCWSTR pszValueName, Pointer<Uint32> pdwValue) {
    final hr$ = HRESULT(_GetDWORDFn(ptr, pszValueName, pdwValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  ISpDataKey? openKey(PCWSTR pszSubKeyName) {
    final ppSubKey = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_OpenKeyFn(ptr, pszSubKeyName, ppSubKey));
    if (hr$.isError) {
      free(ppSubKey);
      throw WindowsException(hr$);
    }
    final result$ = ppSubKey.value;
    free(ppSubKey);
    if (result$.isNull) return null;
    return ISpDataKey(result$);
  }

  /// Throws a [WindowsException] on failure.
  ISpDataKey? createKey(PCWSTR pszSubKey) {
    final ppSubKey = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateKeyFn(ptr, pszSubKey, ppSubKey));
    if (hr$.isError) {
      free(ppSubKey);
      throw WindowsException(hr$);
    }
    final result$ = ppSubKey.value;
    free(ppSubKey);
    if (result$.isNull) return null;
    return ISpDataKey(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void deleteKey(PCWSTR pszSubKey) {
    final hr$ = HRESULT(_DeleteKeyFn(ptr, pszSubKey));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void deleteValue(PCWSTR pszValueName) {
    final hr$ = HRESULT(_DeleteValueFn(ptr, pszValueName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  PWSTR enumKeys(int index) {
    final ppszSubKeyName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_EnumKeysFn(ptr, index, ppszSubKeyName));
    if (hr$.isError) {
      free(ppszSubKeyName);
      throw WindowsException(hr$);
    }
    final result$ = ppszSubKeyName.value;
    free(ppszSubKeyName);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  PWSTR enumValues(int index) {
    final ppszValueName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_EnumValuesFn(ptr, index, ppszValueName));
    if (hr$.isError) {
      free(ppszValueName);
      throw WindowsException(hr$);
    }
    final result$ = ppszValueName.value;
    free(ppszValueName);
    return result$;
  }

  @override
  String toString() => 'ISpDataKey(ptr: $ptr)';
}

/// @nodoc
base class ISpDataKeyVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszValueName,
        Uint32 cbData,
        Pointer<Uint8> pData,
      )
    >
  >
  SetData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszValueName,
        Pointer<Uint32> pcbData,
        Pointer<Uint8> pData,
      )
    >
  >
  GetData;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszValueName, PCWSTR pszValue)
    >
  >
  SetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszValueName,
        Pointer<PWSTR> ppszValue,
      )
    >
  >
  GetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszValueName, Uint32 dwValue)
    >
  >
  SetDWORD;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszValueName,
        Pointer<Uint32> pdwValue,
      )
    >
  >
  GetDWORD;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszSubKeyName,
        Pointer<VTablePointer> ppSubKey,
      )
    >
  >
  OpenKey;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszSubKey,
        Pointer<VTablePointer> ppSubKey,
      )
    >
  >
  CreateKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszSubKey)>
  >
  DeleteKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszValueName)>
  >
  DeleteValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<PWSTR> ppszSubKeyName,
      )
    >
  >
  EnumKeys;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        Pointer<PWSTR> ppszValueName,
      )
    >
  >
  EnumValues;
}

@internal
final class ISpDataKeyCompanion extends ComCompanion<ISpDataKey> {
  const ISpDataKeyCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpDataKey Function(VTablePointer) get fromPointer => ISpDataKey.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpDataKey;
}
