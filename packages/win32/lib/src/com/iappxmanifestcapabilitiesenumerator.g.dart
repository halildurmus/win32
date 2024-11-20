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
final IID_IAppxManifestCapabilitiesEnumerator = Guid.fromComponents(
  0x11d22258,
  0xf470,
  0x42c1,
  Uint8List.fromList(const [0xb2, 0x91, 0x83, 0x61, 0xc5, 0x43, 0x7e, 0x41]),
);

/// {@category com}
class IAppxManifestCapabilitiesEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestCapabilitiesEnumerator] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestCapabilitiesEnumerator] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestCapabilitiesEnumerator(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestCapabilitiesEnumeratorVtbl>().ref;

  /// Creates a new instance of [IAppxManifestCapabilitiesEnumerator] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestCapabilitiesEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestCapabilitiesEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestCapabilitiesEnumeratorVtbl _vtable;
  late final _GetCurrentFn = _vtable
      .GetCurrent.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Throws a [WindowsException] on failure.
  PWSTR getCurrent() {
    final capability = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, capability));
    if (hr$.isError) {
      free(capability);
      throw WindowsException(hr$);
    }
    final result$ = capability.value;
    free(capability);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  bool getHasCurrent() {
    final hasCurrent = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_GetHasCurrentFn(ptr, hasCurrent));
    if (hr$.isError) {
      free(hasCurrent);
      throw WindowsException(hr$);
    }
    final result$ = hasCurrent.value;
    free(hasCurrent);
    return result$ != FALSE;
  }

  /// Throws a [WindowsException] on failure.
  bool moveNext() {
    final hasNext = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_MoveNextFn(ptr, hasNext));
    if (hr$.isError) {
      free(hasNext);
      throw WindowsException(hr$);
    }
    final result$ = hasNext.value;
    free(hasNext);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IAppxManifestCapabilitiesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestCapabilitiesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> capability)
    >
  >
  GetCurrent;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BOOL> hasCurrent)
    >
  >
  GetHasCurrent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> hasNext)>
  >
  MoveNext;
}

@internal
final class IAppxManifestCapabilitiesEnumeratorCompanion
    extends ComCompanion<IAppxManifestCapabilitiesEnumerator> {
  const IAppxManifestCapabilitiesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestCapabilitiesEnumerator Function(VTablePointer) get fromPointer =>
      IAppxManifestCapabilitiesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestCapabilitiesEnumerator;
}
