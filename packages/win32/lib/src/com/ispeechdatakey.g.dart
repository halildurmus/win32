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
import '../variant.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'ispeechdatakey.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechDataKey = Guid.fromComponents(
  0xce17c09b,
  0x4efa,
  0x44d5,
  Uint8List.fromList(const [0xa4, 0xc9, 0x59, 0xd9, 0x58, 0x5a, 0xb0, 0xcd]),
);

/// {@category com}
class ISpeechDataKey extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechDataKey] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechDataKey]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpeechDataKey(super.ptr)
    : _vtable = ptr.value.cast<ISpeechDataKeyVtbl>().ref;

  /// Creates a new instance of [ISpeechDataKey] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpeechDataKey] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechDataKey.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpeechDataKeyVtbl _vtable;
  late final _SetBinaryValueFn = _vtable
      .SetBinaryValue.asFunction<int Function(VTablePointer, BSTR, VARIANT)>();
  late final _GetBinaryValueFn =
      _vtable.GetBinaryValue.asFunction<
        int Function(VTablePointer, BSTR, Pointer<VARIANT>)
      >();
  late final _SetStringValueFn = _vtable
      .SetStringValue.asFunction<int Function(VTablePointer, BSTR, BSTR)>();
  late final _GetStringValueFn =
      _vtable.GetStringValue.asFunction<
        int Function(VTablePointer, BSTR, Pointer<BSTR>)
      >();
  late final _SetLongValueFn =
      _vtable.SetLongValue.asFunction<int Function(VTablePointer, BSTR, int)>();
  late final _GetLongValueFn =
      _vtable.GetLongValue.asFunction<
        int Function(VTablePointer, BSTR, Pointer<Int32>)
      >();
  late final _OpenKeyFn =
      _vtable.OpenKey.asFunction<
        int Function(VTablePointer, BSTR, Pointer<VTablePointer>)
      >();
  late final _CreateKeyFn =
      _vtable.CreateKey.asFunction<
        int Function(VTablePointer, BSTR, Pointer<VTablePointer>)
      >();
  late final _DeleteKeyFn =
      _vtable.DeleteKey.asFunction<int Function(VTablePointer, BSTR)>();
  late final _DeleteValueFn =
      _vtable.DeleteValue.asFunction<int Function(VTablePointer, BSTR)>();
  late final _EnumKeysFn = _vtable
      .EnumKeys.asFunction<int Function(VTablePointer, int, Pointer<BSTR>)>();
  late final _EnumValuesFn = _vtable
      .EnumValues.asFunction<int Function(VTablePointer, int, Pointer<BSTR>)>();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setBinaryValue(BSTR valueName, VARIANT value) {
    final hr$ = HRESULT(_SetBinaryValueFn(ptr, valueName, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  Pointer<VARIANT> getBinaryValue(BSTR valueName) {
    final value = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_GetBinaryValueFn(ptr, valueName, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    return value;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setStringValue(BSTR valueName, BSTR value) {
    final hr$ = HRESULT(_SetStringValueFn(ptr, valueName, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR getStringValue(BSTR valueName) {
    final value = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetStringValueFn(ptr, valueName, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setLongValue(BSTR valueName, int value) {
    final hr$ = HRESULT(_SetLongValueFn(ptr, valueName, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  int getLongValue(BSTR valueName) {
    final value = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetLongValueFn(ptr, valueName, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  ISpeechDataKey? openKey(BSTR subKeyName) {
    final subKey = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_OpenKeyFn(ptr, subKeyName, subKey));
    if (hr$.isError) {
      free(subKey);
      throw WindowsException(hr$);
    }
    final result$ = subKey.value;
    free(subKey);
    if (result$.isNull) return null;
    return ISpeechDataKey(result$);
  }

  /// Throws a [WindowsException] on failure.
  ISpeechDataKey? createKey(BSTR subKeyName) {
    final subKey = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateKeyFn(ptr, subKeyName, subKey));
    if (hr$.isError) {
      free(subKey);
      throw WindowsException(hr$);
    }
    final result$ = subKey.value;
    free(subKey);
    if (result$.isNull) return null;
    return ISpeechDataKey(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void deleteKey(BSTR subKeyName) {
    final hr$ = HRESULT(_DeleteKeyFn(ptr, subKeyName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void deleteValue(BSTR valueName) {
    final hr$ = HRESULT(_DeleteValueFn(ptr, valueName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  BSTR enumKeys(int index) {
    final subKeyName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_EnumKeysFn(ptr, index, subKeyName));
    if (hr$.isError) {
      free(subKeyName);
      throw WindowsException(hr$);
    }
    final result$ = subKeyName.value;
    free(subKeyName);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  BSTR enumValues(int index) {
    final valueName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_EnumValuesFn(ptr, index, valueName));
    if (hr$.isError) {
      free(valueName);
      throw WindowsException(hr$);
    }
    final result$ = valueName.value;
    free(valueName);
    return result$;
  }

  @override
  String toString() => 'ISpeechDataKey(ptr: $ptr)';
}

/// @nodoc
base class ISpeechDataKeyVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, BSTR valueName, VARIANT value)
    >
  >
  SetBinaryValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR valueName,
        Pointer<VARIANT> value,
      )
    >
  >
  GetBinaryValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, BSTR valueName, BSTR value)
    >
  >
  SetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, BSTR valueName, Pointer<BSTR> value)
    >
  >
  GetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, BSTR valueName, Int32 value)
    >
  >
  SetLongValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, BSTR valueName, Pointer<Int32> value)
    >
  >
  GetLongValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR subKeyName,
        Pointer<VTablePointer> subKey,
      )
    >
  >
  OpenKey;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR subKeyName,
        Pointer<VTablePointer> subKey,
      )
    >
  >
  CreateKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR subKeyName)>
  >
  DeleteKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR valueName)>
  >
  DeleteValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 index, Pointer<BSTR> subKeyName)
    >
  >
  EnumKeys;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 index, Pointer<BSTR> valueName)
    >
  >
  EnumValues;
}

@internal
final class ISpeechDataKeyCompanion extends ComCompanion<ISpeechDataKey> {
  const ISpeechDataKeyCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechDataKey Function(VTablePointer) get fromPointer => ISpeechDataKey.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpeechDataKey;
}
