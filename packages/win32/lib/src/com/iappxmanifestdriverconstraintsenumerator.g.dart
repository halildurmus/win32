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
import 'iappxmanifestdriverconstraint.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestDriverConstraintsEnumerator = Guid.fromComponents(
  0xd402b2d1,
  0xf600,
  0x49e0,
  Uint8List.fromList(const [0x95, 0xe6, 0x97, 0x5d, 0x8d, 0xa1, 0x3d, 0x89]),
);

/// {@category com}
class IAppxManifestDriverConstraintsEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestDriverConstraintsEnumerator] from
  /// a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestDriverConstraintsEnumerator] interface. The [ptr] must not
  /// be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestDriverConstraintsEnumerator(super.ptr)
    : _vtable = ptr.value
          .cast<IAppxManifestDriverConstraintsEnumeratorVtbl>()
          .ref;

  /// Creates a new instance of [IAppxManifestDriverConstraintsEnumerator] from
  /// an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestDriverConstraintsEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestDriverConstraintsEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestDriverConstraintsEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Throws a [WindowsException] on failure.
  IAppxManifestDriverConstraint? getCurrent() {
    final driverConstraint = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, driverConstraint));
    if (hr$.isError) {
      free(driverConstraint);
      throw WindowsException(hr$);
    }
    final result$ = driverConstraint.value;
    free(driverConstraint);
    if (result$.isNull) return null;
    return IAppxManifestDriverConstraint(result$);
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
  String toString() => 'IAppxManifestDriverConstraintsEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestDriverConstraintsEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> driverConstraint,
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
final class IAppxManifestDriverConstraintsEnumeratorCompanion
    extends ComCompanion<IAppxManifestDriverConstraintsEnumerator> {
  const IAppxManifestDriverConstraintsEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestDriverConstraintsEnumerator Function(VTablePointer)
  get fromPointer => IAppxManifestDriverConstraintsEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestDriverConstraintsEnumerator;
}
