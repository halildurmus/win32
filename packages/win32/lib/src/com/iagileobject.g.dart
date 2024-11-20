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
final IID_IAgileObject = Guid.fromComponents(
  0x94ea2b94,
  0xe9cc,
  0x49e0,
  Uint8List.fromList(const [0xc0, 0xff, 0xee, 0x64, 0xca, 0x8f, 0x5b, 0x90]),
);

/// Marks an interface as agile across apartments.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/nn-objidlbase-iagileobject>.
///
/// {@category com}
class IAgileObject extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAgileObject] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAgileObject] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAgileObject(super.ptr);

  /// Creates a new instance of [IAgileObject] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAgileObject] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAgileObject.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  @override
  String toString() => 'IAgileObject(ptr: $ptr)';
}

/// @nodoc
base class IAgileObjectVtbl extends Struct {
  external IUnknownVtbl base$;
}

@internal
final class IAgileObjectCompanion extends ComCompanion<IAgileObject> {
  const IAgileObjectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAgileObject Function(VTablePointer) get fromPointer => IAgileObject.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAgileObject;
}
