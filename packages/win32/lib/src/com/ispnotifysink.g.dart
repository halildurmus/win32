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
final IID_ISpNotifySink = Guid.fromComponents(
  0x259684dc,
  0x37c3,
  0x11d2,
  Uint8List.fromList(const [0x96, 0x3, 0x0, 0xc0, 0x4f, 0x8e, 0xe6, 0x28]),
);

/// {@category com}
class ISpNotifySink extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISpNotifySink] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpNotifySink]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpNotifySink(super.ptr) : _vtable = ptr.value.cast<ISpNotifySinkVtbl>().ref;

  /// Creates a new instance of [ISpNotifySink] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpNotifySink] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpNotifySink.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpNotifySinkVtbl _vtable;
  late final _NotifyFn =
      _vtable.Notify.asFunction<int Function(VTablePointer)>();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void notify() {
    final hr$ = HRESULT(_NotifyFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpNotifySink(ptr: $ptr)';
}

/// @nodoc
base class ISpNotifySinkVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Notify;
}

@internal
final class ISpNotifySinkCompanion extends ComCompanion<ISpNotifySink> {
  const ISpNotifySinkCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpNotifySink Function(VTablePointer) get fromPointer => ISpNotifySink.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpNotifySink;
}
