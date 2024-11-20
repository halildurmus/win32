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
import 'iappxmanifestdriverdependency.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestDriverDependenciesEnumerator = Guid.fromComponents(
  0xfe039db2,
  0x467f,
  0x4755,
  Uint8List.fromList(const [0x84, 0x4, 0x8f, 0x5e, 0xb6, 0x86, 0x5b, 0x33]),
);

/// {@category com}
class IAppxManifestDriverDependenciesEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestDriverDependenciesEnumerator] from
  /// a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestDriverDependenciesEnumerator] interface. The [ptr] must not
  /// be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestDriverDependenciesEnumerator(super.ptr)
    : _vtable = ptr.value
          .cast<IAppxManifestDriverDependenciesEnumeratorVtbl>()
          .ref;

  /// Creates a new instance of [IAppxManifestDriverDependenciesEnumerator] from
  /// an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestDriverDependenciesEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestDriverDependenciesEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestDriverDependenciesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Throws a [WindowsException] on failure.
  IAppxManifestDriverDependency? getCurrent() {
    final driverDependency = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, driverDependency));
    if (hr$.isError) {
      free(driverDependency);
      throw WindowsException(hr$);
    }
    final result$ = driverDependency.value;
    free(driverDependency);
    if (result$.isNull) return null;
    return IAppxManifestDriverDependency(result$);
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
  String toString() => 'IAppxManifestDriverDependenciesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestDriverDependenciesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> driverDependency,
      )
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
final class IAppxManifestDriverDependenciesEnumeratorCompanion
    extends ComCompanion<IAppxManifestDriverDependenciesEnumerator> {
  const IAppxManifestDriverDependenciesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestDriverDependenciesEnumerator Function(VTablePointer)
  get fromPointer => IAppxManifestDriverDependenciesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestDriverDependenciesEnumerator;
}
