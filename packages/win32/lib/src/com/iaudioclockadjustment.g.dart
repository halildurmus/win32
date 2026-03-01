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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioClockAdjustment = GUID.fromComponents(
  0xf6e4c0a0,
  0x46d9,
  0x4fb8,
  .fromList(const [0xbe, 0x21, 0x57, 0xa3, 0xef, 0x2b, 0x62, 0x6c]),
);

/// Used to adjust the sample rate of a stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclockadjustment>.
///
/// {@category com}
class IAudioClockAdjustment extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioClockAdjustment] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioClockAdjustment]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IAudioClockAdjustment(super.ptr)
    : _vtable = ptr.value.cast<IAudioClockAdjustmentVtbl>().ref;

  /// Creates a new instance of [IAudioClockAdjustment] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAudioClockAdjustment] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioClockAdjustment.from(IUnknown interface) =>
      interface.queryInterface();

  final IAudioClockAdjustmentVtbl _vtable;
  late final _SetSampleRateFn =
      _vtable.SetSampleRate.asFunction<int Function(VTablePointer, double)>();

  /// Sets the sample rate of a stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclockadjustment-setsamplerate>.
  @pragma('vm:prefer-inline')
  void setSampleRate(double flSampleRate) {
    final hr$ = HRESULT(_SetSampleRateFn(ptr, flSampleRate));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioClockAdjustment(ptr: $ptr)';
}

/// @nodoc
base class IAudioClockAdjustmentVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float flSampleRate)>
  >
  SetSampleRate;
}

@internal
final class IAudioClockAdjustmentCompanion
    extends ComCompanion<IAudioClockAdjustment> {
  const IAudioClockAdjustmentCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioClockAdjustment Function(VTablePointer) get fromPointer =>
      IAudioClockAdjustment.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAudioClockAdjustment;
}
