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
import 'iappxmanifestdriverdependenciesenumerator.g.dart';
import 'iappxmanifesthostruntimedependenciesenumerator.g.dart';
import 'iappxmanifestospackagedependenciesenumerator.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestReader7 = GUID.fromComponents(
  0x8efe6f27,
  0xce0,
  0x4988,
  Uint8List.fromList(const [0xb3, 0x2d, 0x73, 0x8e, 0xb6, 0x3d, 0xb3, 0xb7]),
);

/// {@category com}
class IAppxManifestReader7 extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestReader7] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestReader7]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IAppxManifestReader7(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestReader7Vtbl>().ref;

  /// Creates a new instance of [IAppxManifestReader7] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestReader7] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestReader7.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestReader7Vtbl _vtable;
  late final _GetDriverDependenciesFn =
      _vtable.GetDriverDependencies.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetOSPackageDependenciesFn =
      _vtable.GetOSPackageDependencies.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHostRuntimeDependenciesFn =
      _vtable.GetHostRuntimeDependencies.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Throws a [WindowsException] on failure.
  IAppxManifestDriverDependenciesEnumerator? getDriverDependencies() {
    final driverDependencies = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetDriverDependenciesFn(ptr, driverDependencies));
    if (hr$.isError) {
      free(driverDependencies);
      throw WindowsException(hr$);
    }
    final result$ = driverDependencies.value;
    free(driverDependencies);
    if (result$.isNull) return null;
    return IAppxManifestDriverDependenciesEnumerator(result$);
  }

  /// Throws a [WindowsException] on failure.
  IAppxManifestOSPackageDependenciesEnumerator? getOSPackageDependencies() {
    final osPackageDependencies = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetOSPackageDependenciesFn(ptr, osPackageDependencies),
    );
    if (hr$.isError) {
      free(osPackageDependencies);
      throw WindowsException(hr$);
    }
    final result$ = osPackageDependencies.value;
    free(osPackageDependencies);
    if (result$.isNull) return null;
    return IAppxManifestOSPackageDependenciesEnumerator(result$);
  }

  /// Throws a [WindowsException] on failure.
  IAppxManifestHostRuntimeDependenciesEnumerator? getHostRuntimeDependencies() {
    final hostRuntimeDependencies = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetHostRuntimeDependenciesFn(ptr, hostRuntimeDependencies),
    );
    if (hr$.isError) {
      free(hostRuntimeDependencies);
      throw WindowsException(hr$);
    }
    final result$ = hostRuntimeDependencies.value;
    free(hostRuntimeDependencies);
    if (result$.isNull) return null;
    return IAppxManifestHostRuntimeDependenciesEnumerator(result$);
  }

  @override
  String toString() => 'IAppxManifestReader7(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestReader7Vtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> driverDependencies,
      )
    >
  >
  GetDriverDependencies;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> osPackageDependencies,
      )
    >
  >
  GetOSPackageDependencies;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> hostRuntimeDependencies,
      )
    >
  >
  GetHostRuntimeDependencies;
}

@internal
final class IAppxManifestReader7Companion
    extends ComCompanion<IAppxManifestReader7> {
  const IAppxManifestReader7Companion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestReader7 Function(VTablePointer) get fromPointer =>
      IAppxManifestReader7.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestReader7;
}
