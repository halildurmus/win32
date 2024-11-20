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
import 'ispnotifysource.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpEventSource = Guid.fromComponents(
  0xbe7a9cce,
  0x5f9e,
  0x11d2,
  Uint8List.fromList(const [0x96, 0xf, 0x0, 0xc0, 0x4f, 0x8e, 0xe6, 0x28]),
);

/// Provides the mechanism to filter and queue events.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms717848(v=vs.85)>.
///
/// {@category com}
class ISpEventSource extends ISpNotifySource implements ComInterface {
  /// Creates a new instance of [ISpEventSource] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpEventSource]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpEventSource(super.ptr)
    : _vtable = ptr.value.cast<ISpEventSourceVtbl>().ref;

  /// Creates a new instance of [ISpEventSource] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpEventSource] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpEventSource.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpEventSourceVtbl _vtable;
  late final _SetInterestFn =
      _vtable.SetInterest.asFunction<int Function(VTablePointer, int, int)>();
  late final _GetEventsFn =
      _vtable.GetEvents.asFunction<
        int Function(VTablePointer, int, Pointer<SPEVENT>, Pointer<Uint32>)
      >();
  late final _GetInfoFn =
      _vtable.GetInfo.asFunction<
        int Function(VTablePointer, Pointer<SPEVENTSOURCEINFO>)
      >();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setInterest(int ullEventInterest, int ullQueuedInterest) {
    final hr$ = HRESULT(
      _SetInterestFn(ptr, ullEventInterest, ullQueuedInterest),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getEvents(
    int ulCount,
    Pointer<SPEVENT> pEventArray,
    Pointer<Uint32> pulFetched,
  ) {
    final hr$ = HRESULT(_GetEventsFn(ptr, ulCount, pEventArray, pulFetched));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getInfo(Pointer<SPEVENTSOURCEINFO> pInfo) {
    final hr$ = HRESULT(_GetInfoFn(ptr, pInfo));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpEventSource(ptr: $ptr)';
}

/// @nodoc
base class ISpEventSourceVtbl extends Struct {
  external ISpNotifySourceVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint64 ullEventInterest,
        Uint64 ullQueuedInterest,
      )
    >
  >
  SetInterest;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ulCount,
        Pointer<SPEVENT> pEventArray,
        Pointer<Uint32> pulFetched,
      )
    >
  >
  GetEvents;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<SPEVENTSOURCEINFO> pInfo)
    >
  >
  GetInfo;
}

@internal
final class ISpEventSourceCompanion extends ComCompanion<ISpEventSource> {
  const ISpEventSourceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpEventSource Function(VTablePointer) get fromPointer => ISpEventSource.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpEventSource;
}
