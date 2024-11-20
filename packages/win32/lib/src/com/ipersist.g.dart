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
final IID_IPersist = Guid.fromComponents(
  0x10c,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Provides the CLSID of an object that can be stored persistently in the
/// system.
///
/// Allows the object to specify which object handler to use in the client
/// process, as it is used in the default implementation of marshaling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ipersist>.
///
/// {@category com}
class IPersist extends IUnknown implements ComInterface {
  /// Creates a new instance of [IPersist] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IPersist] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPersist(super.ptr) : _vtable = ptr.value.cast<IPersistVtbl>().ref;

  /// Creates a new instance of [IPersist] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPersist] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPersist.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IPersistVtbl _vtable;
  late final _GetClassIDFn = _vtable
      .GetClassID.asFunction<int Function(VTablePointer, Pointer<GUID>)>();

  /// Retrieves the class identifier (CLSID) of the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ipersist-getclassid>.
  Pointer<GUID> getClassID() {
    final pClassID = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetClassIDFn(ptr, pClassID));
    if (hr$.isError) {
      free(pClassID);
      throw WindowsException(hr$);
    }
    return pClassID;
  }

  @override
  String toString() => 'IPersist(ptr: $ptr)';
}

/// @nodoc
base class IPersistVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pClassID)>
  >
  GetClassID;
}

@internal
final class IPersistCompanion extends ComCompanion<IPersist> {
  const IPersistCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPersist Function(VTablePointer) get fromPointer => IPersist.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPersist;
}
