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
import '../enums.g.dart';
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
final IID_IAppxManifestPackageId = Guid.fromComponents(
  0x283ce2d7,
  0x7153,
  0x4a91,
  Uint8List.fromList(const [0x96, 0x49, 0x7a, 0xf, 0x72, 0x40, 0x94, 0x5f]),
);

/// Provides access to the package identity.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestpackageid>.
///
/// {@category com}
class IAppxManifestPackageId extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestPackageId] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestPackageId]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestPackageId(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestPackageIdVtbl>().ref;

  /// Creates a new instance of [IAppxManifestPackageId] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestPackageId] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestPackageId.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestPackageIdVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetArchitectureFn =
      _vtable.GetArchitecture.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _GetPublisherFn = _vtable
      .GetPublisher.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetVersionFn = _vtable
      .GetVersion.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();
  late final _GetResourceIdFn = _vtable
      .GetResourceId.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _ComparePublisherFn =
      _vtable.ComparePublisher.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<BOOL>)
      >();
  late final _GetPackageFullNameFn =
      _vtable.GetPackageFullName.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();
  late final _GetPackageFamilyNameFn =
      _vtable.GetPackageFamilyName.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();

  /// Gets the name of the package as defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getname>.
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

  /// Gets the processor architecture as defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getarchitecture>.
  APPX_PACKAGE_ARCHITECTURE getArchitecture() {
    final architecture = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetArchitectureFn(ptr, architecture));
    if (hr$.isError) {
      free(architecture);
      throw WindowsException(hr$);
    }
    final result$ = architecture.value;
    free(architecture);
    return APPX_PACKAGE_ARCHITECTURE(result$);
  }

  /// Gets the name of the package publisher as defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getpublisher>.
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

  /// Gets the version of the package as defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getversion>.
  int getVersion() {
    final packageVersion = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetVersionFn(ptr, packageVersion));
    if (hr$.isError) {
      free(packageVersion);
      throw WindowsException(hr$);
    }
    final result$ = packageVersion.value;
    free(packageVersion);
    return result$;
  }

  /// Gets the package resource identifier as defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getresourceid>.
  PWSTR getResourceId() {
    final resourceId = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetResourceIdFn(ptr, resourceId));
    if (hr$.isError) {
      free(resourceId);
      throw WindowsException(hr$);
    }
    final result$ = resourceId.value;
    free(resourceId);
    return result$;
  }

  /// Compares the specified publisher with the publisher defined in the
  /// manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-comparepublisher>.
  bool comparePublisher(PCWSTR other) {
    final isSame = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_ComparePublisherFn(ptr, other, isSame));
    if (hr$.isError) {
      free(isSame);
      throw WindowsException(hr$);
    }
    final result$ = isSame.value;
    free(isSame);
    return result$ != FALSE;
  }

  /// Gets the package full name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getpackagefullname>.
  PWSTR getPackageFullName() {
    final packageFullName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetPackageFullNameFn(ptr, packageFullName));
    if (hr$.isError) {
      free(packageFullName);
      throw WindowsException(hr$);
    }
    final result$ = packageFullName.value;
    free(packageFullName);
    return result$;
  }

  /// Gets the package family name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getpackagefamilyname>.
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
  String toString() => 'IAppxManifestPackageId(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestPackageIdVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> name)>
  >
  GetName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> architecture)
    >
  >
  GetArchitecture;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> publisher)
    >
  >
  GetPublisher;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> packageVersion)
    >
  >
  GetVersion;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> resourceId)
    >
  >
  GetResourceId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR other, Pointer<BOOL> isSame)
    >
  >
  ComparePublisher;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> packageFullName)
    >
  >
  GetPackageFullName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> packageFamilyName)
    >
  >
  GetPackageFamilyName;
}

@internal
final class IAppxManifestPackageIdCompanion
    extends ComCompanion<IAppxManifestPackageId> {
  const IAppxManifestPackageIdCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestPackageId Function(VTablePointer) get fromPointer =>
      IAppxManifestPackageId.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestPackageId;
}
