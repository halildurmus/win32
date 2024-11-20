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
final IID_IShellService = Guid.fromComponents(
  0x5836fb00,
  0x8187,
  0x11cf,
  Uint8List.fromList(const [0xa1, 0x2b, 0x0, 0xaa, 0x0, 0x4a, 0xe8, 0x37]),
);

/// Exposes one method that declares ownership when a service component
/// implementing a certain interface is shared among multiple clients, such as
/// Windows Internet Explorer and Windows Explorer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shdeprecated/nn-shdeprecated-ishellservice>.
///
/// {@category com}
class IShellService extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellService] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellService]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellService(super.ptr) : _vtable = ptr.value.cast<IShellServiceVtbl>().ref;

  /// Creates a new instance of [IShellService] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellService] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellService.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IShellServiceVtbl _vtable;
  late final _SetOwnerFn =
      _vtable.SetOwner.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Declares an owner reference to the service object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shdeprecated/nf-shdeprecated-ishellservice-setowner>.
  @pragma('vm:prefer-inline')
  void setOwner(IUnknown? punkOwner) {
    final hr$ = HRESULT(_SetOwnerFn(ptr, punkOwner?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IShellService(ptr: $ptr)';
}

/// @nodoc
base class IShellServiceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer punkOwner)>
  >
  SetOwner;
}

@internal
final class IShellServiceCompanion extends ComCompanion<IShellService> {
  const IShellServiceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellService Function(VTablePointer) get fromPointer => IShellService.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellService;
}
