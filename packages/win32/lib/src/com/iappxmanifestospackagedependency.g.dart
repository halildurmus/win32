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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestOSPackageDependency = GUID.fromComponents(
  0x154995ee,
  0x54a6,
  0x4f14,
  .fromList(const [0xac, 0x97, 0xd8, 0xcf, 0x5, 0x19, 0x64, 0x4b]),
);

/// {@category com}
class IAppxManifestOSPackageDependency extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestOSPackageDependency] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestOSPackageDependency] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IAppxManifestOSPackageDependency(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestOSPackageDependencyVtbl>().ref;

  /// Creates a new instance of [IAppxManifestOSPackageDependency] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestOSPackageDependency] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestOSPackageDependency.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestOSPackageDependencyVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetVersionFn = _vtable
      .GetVersion.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();

  /// Throws a [WindowsException] on failure.
  PWSTR getName() {
    final name = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetNameFn(ptr, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  int getVersion() {
    final version = adaptiveCalloc<Uint64>();
    final hr$ = HRESULT(_GetVersionFn(ptr, version));
    if (hr$.isError) {
      free(version);
      throw WindowsException(hr$);
    }
    final result$ = version.value;
    free(version);
    return result$;
  }

  @override
  String toString() => 'IAppxManifestOSPackageDependency(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestOSPackageDependencyVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> name)
    >
  >
  GetName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint64> version)>
  >
  GetVersion;
}

@internal
final class IAppxManifestOSPackageDependencyCompanion
    extends ComCompanion<IAppxManifestOSPackageDependency> {
  const IAppxManifestOSPackageDependencyCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestOSPackageDependency Function(VTablePointer) get fromPointer =>
      IAppxManifestOSPackageDependency.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestOSPackageDependency;
}
