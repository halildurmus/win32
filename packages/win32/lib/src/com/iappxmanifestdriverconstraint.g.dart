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
final IID_IAppxManifestDriverConstraint = GUID.fromComponents(
  0xc031bee4,
  0xbbcc,
  0x48ea,
  Uint8List.fromList(const [0xa2, 0x37, 0xc3, 0x40, 0x45, 0xc8, 0xa, 0x7]),
);

/// {@category com}
class IAppxManifestDriverConstraint extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestDriverConstraint] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestDriverConstraint] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IAppxManifestDriverConstraint(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestDriverConstraintVtbl>().ref;

  /// Creates a new instance of [IAppxManifestDriverConstraint] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestDriverConstraint] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestDriverConstraint.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestDriverConstraintVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetMinVersionFn = _vtable
      .GetMinVersion.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();
  late final _GetMinDateFn =
      _vtable.GetMinDate.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();

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
    return PWSTR(result$);
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

  /// Throws a [WindowsException] on failure.
  PWSTR getMinDate() {
    final minDate = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetMinDateFn(ptr, minDate));
    if (hr$.isError) {
      free(minDate);
      throw WindowsException(hr$);
    }
    final result$ = minDate.value;
    free(minDate);
    return PWSTR(result$);
  }

  @override
  String toString() => 'IAppxManifestDriverConstraint(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestDriverConstraintVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> name)
    >
  >
  GetName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> minVersion)
    >
  >
  GetMinVersion;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> minDate)
    >
  >
  GetMinDate;
}

@internal
final class IAppxManifestDriverConstraintCompanion
    extends ComCompanion<IAppxManifestDriverConstraint> {
  const IAppxManifestDriverConstraintCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestDriverConstraint Function(VTablePointer) get fromPointer =>
      IAppxManifestDriverConstraint.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestDriverConstraint;
}
