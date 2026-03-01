// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'ispeechwaveformatex.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechAudioFormat = GUID.fromComponents(
  0xe6e9c590,
  0x3e18,
  0x40e3,
  .fromList(const [0x82, 0x99, 0x6, 0x1f, 0x98, 0xbd, 0xe7, 0xc7]),
);

/// {@category com}
class ISpeechAudioFormat extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechAudioFormat] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechAudioFormat]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ISpeechAudioFormat(super.ptr)
    : _vtable = ptr.value.cast<ISpeechAudioFormatVtbl>().ref;

  /// Creates a new instance of [ISpeechAudioFormat] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ISpeechAudioFormat] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechAudioFormat.from(IUnknown interface) =>
      interface.queryInterface();

  final ISpeechAudioFormatVtbl _vtable;
  late final _get_TypeFn = _vtable.get_Type
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_TypeFn = _vtable.put_Type
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_GuidFn = _vtable.get_Guid
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _put_GuidFn = _vtable.put_Guid
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _GetWaveFormatExFn =
      _vtable.GetWaveFormatEx.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SetWaveFormatExFn = _vtable
      .SetWaveFormatEx.asFunction<int Function(VTablePointer, VTablePointer)>();

  SpeechAudioFormatType get type {
    final audioFormat = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_TypeFn(ptr, audioFormat));
    if (hr$.isError) {
      free(audioFormat);
      throw WindowsException(hr$);
    }
    final result$ = audioFormat.value;
    free(audioFormat);
    return .new(result$);
  }

  set type(SpeechAudioFormatType audioFormat) {
    final hr$ = HRESULT(_put_TypeFn(ptr, audioFormat));
    if (hr$.isError) throw WindowsException(hr$);
  }

  BSTR get guid {
    final guid = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_GuidFn(ptr, guid));
    if (hr$.isError) {
      free(guid);
      throw WindowsException(hr$);
    }
    final result$ = guid.value;
    free(guid);
    return .new(result$);
  }

  set guid(BSTR guid) {
    final hr$ = HRESULT(_put_GuidFn(ptr, guid));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  ISpeechWaveFormatEx? getWaveFormatEx() {
    final speechWaveFormatEx = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetWaveFormatExFn(ptr, speechWaveFormatEx));
    if (hr$.isError) {
      free(speechWaveFormatEx);
      throw WindowsException(hr$);
    }
    final result$ = speechWaveFormatEx.value;
    free(speechWaveFormatEx);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setWaveFormatEx(ISpeechWaveFormatEx? speechWaveFormatEx) {
    final hr$ = HRESULT(
      _SetWaveFormatExFn(ptr, speechWaveFormatEx?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpeechAudioFormat(ptr: $ptr)';
}

/// @nodoc
base class ISpeechAudioFormatVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> audioFormat)
    >
  >
  get_Type;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 audioFormat)>
  >
  put_Type;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> guid)
    >
  >
  get_Guid;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Utf16> guid)>
  >
  put_Guid;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> speechWaveFormatEx,
      )
    >
  >
  GetWaveFormatEx;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer speechWaveFormatEx)
    >
  >
  SetWaveFormatEx;
}

@internal
final class ISpeechAudioFormatCompanion
    extends ComCompanion<ISpeechAudioFormat> {
  const ISpeechAudioFormatCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechAudioFormat Function(VTablePointer) get fromPointer =>
      ISpeechAudioFormat.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ISpeechAudioFormat;
}
