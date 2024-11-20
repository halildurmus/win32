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
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioClock = Guid.fromComponents(
  0xcd63314f,
  0x3fba,
  0x4a1b,
  Uint8List.fromList(const [0x81, 0x2c, 0xef, 0x96, 0x35, 0x87, 0x28, 0xe7]),
);

/// Enables a client to monitor a stream's data rate and the current position in
/// the stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclock>.
///
/// {@category com}
class IAudioClock extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioClock] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioClock] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioClock(super.ptr) : _vtable = ptr.value.cast<IAudioClockVtbl>().ref;

  /// Creates a new instance of [IAudioClock] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioClock] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioClock.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioClockVtbl _vtable;
  late final _GetFrequencyFn = _vtable
      .GetFrequency.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();
  late final _GetPositionFn =
      _vtable.GetPosition.asFunction<
        int Function(VTablePointer, Pointer<Uint64>, Pointer<Uint64>)
      >();
  late final _GetCharacteristicsFn =
      _vtable.GetCharacteristics.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();

  /// Gets the device frequency.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclock-getfrequency>.
  int getFrequency() {
    final pu64Frequency = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetFrequencyFn(ptr, pu64Frequency));
    if (hr$.isError) {
      free(pu64Frequency);
      throw WindowsException(hr$);
    }
    final result$ = pu64Frequency.value;
    free(pu64Frequency);
    return result$;
  }

  /// Gets the current device position.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclock-getposition>.
  @pragma('vm:prefer-inline')
  void getPosition(
    Pointer<Uint64> pu64Position,
    Pointer<Uint64>? pu64QPCPosition,
  ) {
    final hr$ = HRESULT(
      _GetPositionFn(ptr, pu64Position, pu64QPCPosition ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Reserved for future use.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclock-getcharacteristics>.
  int getCharacteristics() {
    final pdwCharacteristics = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCharacteristicsFn(ptr, pdwCharacteristics));
    if (hr$.isError) {
      free(pdwCharacteristics);
      throw WindowsException(hr$);
    }
    final result$ = pdwCharacteristics.value;
    free(pdwCharacteristics);
    return result$;
  }

  @override
  String toString() => 'IAudioClock(ptr: $ptr)';
}

/// @nodoc
base class IAudioClockVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> pu64Frequency)
    >
  >
  GetFrequency;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint64> pu64Position,
        Pointer<Uint64> pu64QPCPosition,
      )
    >
  >
  GetPosition;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwCharacteristics)
    >
  >
  GetCharacteristics;
}

@internal
final class IAudioClockCompanion extends ComCompanion<IAudioClock> {
  const IAudioClockCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioClock Function(VTablePointer) get fromPointer => IAudioClock.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioClock;
}
