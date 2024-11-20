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
final IID_IAppxManifestReader6 = Guid.fromComponents(
  0x34deaca4,
  0xd3c0,
  0x4e3e,
  Uint8List.fromList(const [0xb3, 0x12, 0xe4, 0x26, 0x25, 0xe3, 0x80, 0x7e]),
);

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader6>.
///
/// {@category com}
class IAppxManifestReader6 extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestReader6] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestReader6]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestReader6(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestReader6Vtbl>().ref;

  /// Creates a new instance of [IAppxManifestReader6] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestReader6] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestReader6.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestReader6Vtbl _vtable;
  late final _GetIsNonQualifiedResourcePackageFn =
      _vtable.GetIsNonQualifiedResourcePackage.asFunction<
        int Function(VTablePointer, Pointer<BOOL>)
      >();

  /// Queries whether an app package is a non-qualified resource package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader6-getisnonqualifiedresourcepackage>.
  bool getIsNonQualifiedResourcePackage() {
    final isNonQualifiedResourcePackage = loggingCalloc<BOOL>();
    final hr$ = HRESULT(
      _GetIsNonQualifiedResourcePackageFn(ptr, isNonQualifiedResourcePackage),
    );
    if (hr$.isError) {
      free(isNonQualifiedResourcePackage);
      throw WindowsException(hr$);
    }
    final result$ = isNonQualifiedResourcePackage.value;
    free(isNonQualifiedResourcePackage);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IAppxManifestReader6(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestReader6Vtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<BOOL> isNonQualifiedResourcePackage,
      )
    >
  >
  GetIsNonQualifiedResourcePackage;
}

@internal
final class IAppxManifestReader6Companion
    extends ComCompanion<IAppxManifestReader6> {
  const IAppxManifestReader6Companion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestReader6 Function(VTablePointer) get fromPointer =>
      IAppxManifestReader6.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestReader6;
}
