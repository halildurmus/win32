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
final IID_IAppxManifestHostRuntimeDependency = GUID.fromComponents(
  0x3455d234,
  0x8414,
  0x410d,
  .fromList(const [0x95, 0xc7, 0x7b, 0x35, 0x25, 0x5b, 0x83, 0x91]),
);

/// {@category com}
class IAppxManifestHostRuntimeDependency extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestHostRuntimeDependency] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestHostRuntimeDependency] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IAppxManifestHostRuntimeDependency(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestHostRuntimeDependencyVtbl>().ref;

  /// Creates a new instance of [IAppxManifestHostRuntimeDependency] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestHostRuntimeDependency] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestHostRuntimeDependency.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestHostRuntimeDependencyVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetPublisherFn =
      _vtable.GetPublisher.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetMinVersionFn = _vtable
      .GetMinVersion.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();

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
  PWSTR getPublisher() {
    final publisher = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetPublisherFn(ptr, publisher));
    if (hr$.isError) {
      free(publisher);
      throw WindowsException(hr$);
    }
    final result$ = publisher.value;
    free(publisher);
    return .new(result$);
  }

  /// Throws a [WindowsException] on failure.
  int getMinVersion() {
    final minVersion = adaptiveCalloc<Uint64>();
    final hr$ = HRESULT(_GetMinVersionFn(ptr, minVersion));
    if (hr$.isError) {
      free(minVersion);
      throw WindowsException(hr$);
    }
    final result$ = minVersion.value;
    free(minVersion);
    return result$;
  }

  @override
  String toString() => 'IAppxManifestHostRuntimeDependency(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestHostRuntimeDependencyVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> name)
    >
  >
  GetName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> publisher)
    >
  >
  GetPublisher;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> minVersion)
    >
  >
  GetMinVersion;
}

@internal
final class IAppxManifestHostRuntimeDependencyCompanion
    extends ComCompanion<IAppxManifestHostRuntimeDependency> {
  const IAppxManifestHostRuntimeDependencyCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestHostRuntimeDependency Function(VTablePointer) get fromPointer =>
      IAppxManifestHostRuntimeDependency.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestHostRuntimeDependency;
}
