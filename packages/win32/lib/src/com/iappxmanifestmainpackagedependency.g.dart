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
final IID_IAppxManifestMainPackageDependency = Guid.fromComponents(
  0x5d0611c,
  0xbc29,
  0x46d5,
  Uint8List.fromList(const [0x97, 0xe2, 0x84, 0xb9, 0xc7, 0x9b, 0xd8, 0xae]),
);

/// Provides access to attribute values of the main package dependency.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestmainpackagedependency>.
///
/// {@category com}
class IAppxManifestMainPackageDependency extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestMainPackageDependency] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestMainPackageDependency] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestMainPackageDependency(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestMainPackageDependencyVtbl>().ref;

  /// Creates a new instance of [IAppxManifestMainPackageDependency] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestMainPackageDependency] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestMainPackageDependency.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestMainPackageDependencyVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetPublisherFn = _vtable
      .GetPublisher.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetPackageFamilyNameFn =
      _vtable.GetPackageFamilyName.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();

  /// Gets the name of the main package dependency from the AppxManifest.xml.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestmainpackagedependency-getname>.
  PWSTR getName() {
    final name = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetNameFn(ptr, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return result$;
  }

  /// Gets the publisher of the main package dependency from the
  /// AppxManifest.xml.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestmainpackagedependency-getpublisher>.
  PWSTR getPublisher() {
    final publisher = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetPublisherFn(ptr, publisher));
    if (hr$.isError) {
      free(publisher);
      throw WindowsException(hr$);
    }
    final result$ = publisher.value;
    free(publisher);
    return result$;
  }

  /// Gets the package family name of the main package dependency from the
  /// AppxManifest.xml.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestmainpackagedependency-getpackagefamilyname>.
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
  String toString() => 'IAppxManifestMainPackageDependency(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestMainPackageDependencyVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> name)>
  >
  GetName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> publisher)
    >
  >
  GetPublisher;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> packageFamilyName)
    >
  >
  GetPackageFamilyName;
}

@internal
final class IAppxManifestMainPackageDependencyCompanion
    extends ComCompanion<IAppxManifestMainPackageDependency> {
  const IAppxManifestMainPackageDependencyCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestMainPackageDependency Function(VTablePointer) get fromPointer =>
      IAppxManifestMainPackageDependency.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestMainPackageDependency;
}
