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
final IID_IAudioClock2 = Guid.fromComponents(
  0x6f49ff73,
  0x6727,
  0x49ac,
  Uint8List.fromList(const [0xa0, 0x8, 0xd9, 0x8c, 0xf5, 0xe7, 0x0, 0x48]),
);

/// Used to get the current device position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclock2>.
///
/// {@category com}
class IAudioClock2 extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioClock2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioClock2] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioClock2(super.ptr) : _vtable = ptr.value.cast<IAudioClock2Vtbl>().ref;

  /// Creates a new instance of [IAudioClock2] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioClock2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioClock2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioClock2Vtbl _vtable;
  late final _GetDevicePositionFn =
      _vtable.GetDevicePosition.asFunction<
        int Function(VTablePointer, Pointer<Uint64>, Pointer<Uint64>)
      >();

  /// Gets the current device position, in frames, directly from the hardware.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclock2-getdeviceposition>.
  @pragma('vm:prefer-inline')
  void getDevicePosition(
    Pointer<Uint64> devicePosition,
    Pointer<Uint64>? qPCPosition,
  ) {
    final hr$ = HRESULT(
      _GetDevicePositionFn(ptr, devicePosition, qPCPosition ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioClock2(ptr: $ptr)';
}

/// @nodoc
base class IAudioClock2Vtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint64> devicePosition,
        Pointer<Uint64> qPCPosition,
      )
    >
  >
  GetDevicePosition;
}

@internal
final class IAudioClock2Companion extends ComCompanion<IAudioClock2> {
  const IAudioClock2Companion();

  @pragma('vm:prefer-inline')
  @override
  IAudioClock2 Function(VTablePointer) get fromPointer => IAudioClock2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioClock2;
}
