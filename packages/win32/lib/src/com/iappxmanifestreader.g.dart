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
import 'iappxmanifestapplicationsenumerator.g.dart';
import 'iappxmanifestdevicecapabilitiesenumerator.g.dart';
import 'iappxmanifestpackagedependenciesenumerator.g.dart';
import 'iappxmanifestpackageid.g.dart';
import 'iappxmanifestproperties.g.dart';
import 'iappxmanifestresourcesenumerator.g.dart';
import 'interface.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestReader = Guid.fromComponents(
  0x4e1bd148,
  0x55a0,
  0x4480,
  Uint8List.fromList(const [0xa3, 0xd1, 0x15, 0x54, 0x47, 0x10, 0x63, 0x7c]),
);

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader>.
///
/// {@category com}
class IAppxManifestReader extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestReader] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestReader]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestReader(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestReaderVtbl>().ref;

  /// Creates a new instance of [IAppxManifestReader] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestReader] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestReader.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestReaderVtbl _vtable;
  late final _GetPackageIdFn =
      _vtable.GetPackageId.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetPropertiesFn =
      _vtable.GetProperties.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetPackageDependenciesFn =
      _vtable.GetPackageDependencies.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCapabilitiesFn =
      _vtable.GetCapabilities.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _GetResourcesFn =
      _vtable.GetResources.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetDeviceCapabilitiesFn =
      _vtable.GetDeviceCapabilities.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetPrerequisiteFn =
      _vtable.GetPrerequisite.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<Uint64>)
      >();
  late final _GetApplicationsFn =
      _vtable.GetApplications.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetStreamFn =
      _vtable.GetStream.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Gets the package identifier defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getpackageid>.
  IAppxManifestPackageId? getPackageId() {
    final packageId = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetPackageIdFn(ptr, packageId));
    if (hr$.isError) {
      free(packageId);
      throw WindowsException(hr$);
    }
    final result$ = packageId.value;
    free(packageId);
    if (result$.isNull) return null;
    return IAppxManifestPackageId(result$);
  }

  /// Gets the properties of the package as defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getproperties>.
  IAppxManifestProperties? getProperties() {
    final packageProperties = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetPropertiesFn(ptr, packageProperties));
    if (hr$.isError) {
      free(packageProperties);
      throw WindowsException(hr$);
    }
    final result$ = packageProperties.value;
    free(packageProperties);
    if (result$.isNull) return null;
    return IAppxManifestProperties(result$);
  }

  /// Gets an enumerator that iterates through dependencies defined in the
  /// manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getpackagedependencies>.
  IAppxManifestPackageDependenciesEnumerator? getPackageDependencies() {
    final dependencies = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetPackageDependenciesFn(ptr, dependencies));
    if (hr$.isError) {
      free(dependencies);
      throw WindowsException(hr$);
    }
    final result$ = dependencies.value;
    free(dependencies);
    if (result$.isNull) return null;
    return IAppxManifestPackageDependenciesEnumerator(result$);
  }

  /// Gets the list of capabilities requested by the package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getcapabilities>.
  APPX_CAPABILITIES getCapabilities() {
    final capabilities = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetCapabilitiesFn(ptr, capabilities));
    if (hr$.isError) {
      free(capabilities);
      throw WindowsException(hr$);
    }
    final result$ = capabilities.value;
    free(capabilities);
    return APPX_CAPABILITIES(result$);
  }

  /// Gets an enumerator that iterates through the resources defined in the
  /// manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getresources>.
  IAppxManifestResourcesEnumerator? getResources() {
    final resources = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetResourcesFn(ptr, resources));
    if (hr$.isError) {
      free(resources);
      throw WindowsException(hr$);
    }
    final result$ = resources.value;
    free(resources);
    if (result$.isNull) return null;
    return IAppxManifestResourcesEnumerator(result$);
  }

  /// Gets an enumerator that iterates through the device capabilities defined
  /// in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getdevicecapabilities>.
  IAppxManifestDeviceCapabilitiesEnumerator? getDeviceCapabilities() {
    final deviceCapabilities = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetDeviceCapabilitiesFn(ptr, deviceCapabilities));
    if (hr$.isError) {
      free(deviceCapabilities);
      throw WindowsException(hr$);
    }
    final result$ = deviceCapabilities.value;
    free(deviceCapabilities);
    if (result$.isNull) return null;
    return IAppxManifestDeviceCapabilitiesEnumerator(result$);
  }

  /// Gets the specified prerequisite as defined in the package manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getprerequisite>.
  int getPrerequisite(PCWSTR name) {
    final value = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetPrerequisiteFn(ptr, name, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Gets an enumerator that iterates through the applications defined in the
  /// manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getapplications>.
  IAppxManifestApplicationsEnumerator? getApplications() {
    final applications = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetApplicationsFn(ptr, applications));
    if (hr$.isError) {
      free(applications);
      throw WindowsException(hr$);
    }
    final result$ = applications.value;
    free(applications);
    if (result$.isNull) return null;
    return IAppxManifestApplicationsEnumerator(result$);
  }

  /// Gets the raw XML parsed and read by the manifest reader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getstream>.
  IStream? getStream() {
    final manifestStream = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetStreamFn(ptr, manifestStream));
    if (hr$.isError) {
      free(manifestStream);
      throw WindowsException(hr$);
    }
    final result$ = manifestStream.value;
    free(manifestStream);
    if (result$.isNull) return null;
    return IStream(result$);
  }

  @override
  String toString() => 'IAppxManifestReader(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestReaderVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> packageId)
    >
  >
  GetPackageId;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> packageProperties,
      )
    >
  >
  GetProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> dependencies)
    >
  >
  GetPackageDependencies;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> capabilities)
    >
  >
  GetCapabilities;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> resources)
    >
  >
  GetResources;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> deviceCapabilities,
      )
    >
  >
  GetDeviceCapabilities;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR name, Pointer<Uint64> value)
    >
  >
  GetPrerequisite;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> applications)
    >
  >
  GetApplications;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> manifestStream)
    >
  >
  GetStream;
}

@internal
final class IAppxManifestReaderCompanion
    extends ComCompanion<IAppxManifestReader> {
  const IAppxManifestReaderCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestReader Function(VTablePointer) get fromPointer =>
      IAppxManifestReader.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestReader;
}
