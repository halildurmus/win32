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
import 'iappxmanifestmainpackagedependenciesenumerator.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestReader5 = Guid.fromComponents(
  0x8d7ae132,
  0xa690,
  0x4c00,
  Uint8List.fromList(const [0xb7, 0x5a, 0x6a, 0xae, 0x1f, 0xea, 0xac, 0x80]),
);

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader5>.
///
/// {@category com}
class IAppxManifestReader5 extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestReader5] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestReader5]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestReader5(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestReader5Vtbl>().ref;

  /// Creates a new instance of [IAppxManifestReader5] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestReader5] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestReader5.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestReader5Vtbl _vtable;
  late final _GetMainPackageDependenciesFn =
      _vtable.GetMainPackageDependencies.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Gets a main package dependencies enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader5-getmainpackagedependencies>.
  IAppxManifestMainPackageDependenciesEnumerator? getMainPackageDependencies() {
    final mainPackageDependencies = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetMainPackageDependenciesFn(ptr, mainPackageDependencies),
    );
    if (hr$.isError) {
      free(mainPackageDependencies);
      throw WindowsException(hr$);
    }
    final result$ = mainPackageDependencies.value;
    free(mainPackageDependencies);
    if (result$.isNull) return null;
    return IAppxManifestMainPackageDependenciesEnumerator(result$);
  }

  @override
  String toString() => 'IAppxManifestReader5(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestReader5Vtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> mainPackageDependencies,
      )
    >
  >
  GetMainPackageDependencies;
}

@internal
final class IAppxManifestReader5Companion
    extends ComCompanion<IAppxManifestReader5> {
  const IAppxManifestReader5Companion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestReader5 Function(VTablePointer) get fromPointer =>
      IAppxManifestReader5.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestReader5;
}
