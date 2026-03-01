// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iappxmanifestdriverconstraintsenumerator.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestDriverDependency = GUID.fromComponents(
  0x1210cb94,
  0x5a92,
  0x4602,
  .fromList(const [0xbe, 0x24, 0x79, 0xf3, 0x18, 0xaf, 0x4a, 0xf9]),
);

/// {@category com}
class IAppxManifestDriverDependency extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestDriverDependency] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestDriverDependency] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IAppxManifestDriverDependency(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestDriverDependencyVtbl>().ref;

  /// Creates a new instance of [IAppxManifestDriverDependency] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestDriverDependency] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestDriverDependency.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestDriverDependencyVtbl _vtable;
  late final _GetDriverConstraintsFn =
      _vtable.GetDriverConstraints.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Throws a [WindowsException] on failure.
  IAppxManifestDriverConstraintsEnumerator? getDriverConstraints() {
    final driverConstraints = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetDriverConstraintsFn(ptr, driverConstraints));
    if (hr$.isError) {
      free(driverConstraints);
      throw WindowsException(hr$);
    }
    final result$ = driverConstraints.value;
    free(driverConstraints);
    if (result$.isNull) return null;
    return .new(result$);
  }

  @override
  String toString() => 'IAppxManifestDriverDependency(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestDriverDependencyVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> driverConstraints,
      )
    >
  >
  GetDriverConstraints;
}

@internal
final class IAppxManifestDriverDependencyCompanion
    extends ComCompanion<IAppxManifestDriverDependency> {
  const IAppxManifestDriverDependencyCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestDriverDependency Function(VTablePointer) get fromPointer =>
      IAppxManifestDriverDependency.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestDriverDependency;
}
