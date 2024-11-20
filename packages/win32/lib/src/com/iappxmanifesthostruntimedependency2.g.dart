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
final IID_IAppxManifestHostRuntimeDependency2 = Guid.fromComponents(
  0xc26f23a8,
  0xee10,
  0x4ad6,
  Uint8List.fromList(const [0xb8, 0x98, 0x2b, 0x4d, 0x7a, 0xeb, 0xfe, 0x6a]),
);

/// {@category com}
class IAppxManifestHostRuntimeDependency2 extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestHostRuntimeDependency2] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestHostRuntimeDependency2] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestHostRuntimeDependency2(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestHostRuntimeDependency2Vtbl>().ref;

  /// Creates a new instance of [IAppxManifestHostRuntimeDependency2] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestHostRuntimeDependency2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestHostRuntimeDependency2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestHostRuntimeDependency2Vtbl _vtable;
  late final _GetPackageFamilyNameFn =
      _vtable.GetPackageFamilyName.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();

  /// Throws a [WindowsException] on failure.
  PWSTR getPackageFamilyName() {
    final packageFamilyName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetPackageFamilyNameFn(ptr, packageFamilyName));
    if (hr$.isError) {
      free(packageFamilyName);
      throw WindowsException(hr$);
    }
    final result$ = packageFamilyName.value;
    free(packageFamilyName);
    return result$;
  }

  @override
  String toString() => 'IAppxManifestHostRuntimeDependency2(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestHostRuntimeDependency2Vtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> packageFamilyName)
    >
  >
  GetPackageFamilyName;
}

@internal
final class IAppxManifestHostRuntimeDependency2Companion
    extends ComCompanion<IAppxManifestHostRuntimeDependency2> {
  const IAppxManifestHostRuntimeDependency2Companion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestHostRuntimeDependency2 Function(VTablePointer) get fromPointer =>
      IAppxManifestHostRuntimeDependency2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestHostRuntimeDependency2;
}
