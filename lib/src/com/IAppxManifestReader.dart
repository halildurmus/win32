// IAppxManifestReader.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IAppxManifestReader = '{4E1BD148-55A0-4480-A3D1-15544710637C}';

typedef _GetPackageId_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> packageId);
typedef _GetPackageId_Dart = int Function(
    Pointer obj, Pointer<Pointer> packageId);

typedef _GetProperties_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> packageProperties);
typedef _GetProperties_Dart = int Function(
    Pointer obj, Pointer<Pointer> packageProperties);

typedef _GetPackageDependencies_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> dependencies);
typedef _GetPackageDependencies_Dart = int Function(
    Pointer obj, Pointer<Pointer> dependencies);

typedef _GetCapabilities_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> capabilities);
typedef _GetCapabilities_Dart = int Function(
    Pointer obj, Pointer<Uint32> capabilities);

typedef _GetResources_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> resources);
typedef _GetResources_Dart = int Function(
    Pointer obj, Pointer<Pointer> resources);

typedef _GetDeviceCapabilities_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> deviceCapabilities);
typedef _GetDeviceCapabilities_Dart = int Function(
    Pointer obj, Pointer<Pointer> deviceCapabilities);

typedef _GetPrerequisite_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Uint64> value);
typedef _GetPrerequisite_Dart = int Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Uint64> value);

typedef _GetApplications_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> applications);
typedef _GetApplications_Dart = int Function(
    Pointer obj, Pointer<Pointer> applications);

typedef _GetStream_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> manifestStream);
typedef _GetStream_Dart = int Function(
    Pointer obj, Pointer<Pointer> manifestStream);

/// {@category Interface}
/// {@category com}
class IAppxManifestReader extends IUnknown {
  // vtable begins at 3, ends at 11

  IAppxManifestReader(Pointer<COMObject> ptr) : super(ptr);

  int GetPackageId(Pointer<Pointer> packageId) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetPackageId_Native>>>()
      .value
      .asFunction<_GetPackageId_Dart>()(ptr.ref.lpVtbl, packageId);

  int GetProperties(Pointer<Pointer> packageProperties) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetProperties_Native>>>()
      .value
      .asFunction<_GetProperties_Dart>()(ptr.ref.lpVtbl, packageProperties);

  int GetPackageDependencies(Pointer<Pointer> dependencies) => ptr
      .ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_GetPackageDependencies_Native>>>()
      .value
      .asFunction<_GetPackageDependencies_Dart>()(ptr.ref.lpVtbl, dependencies);

  int GetCapabilities(Pointer<Uint32> capabilities) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_GetCapabilities_Native>>>()
      .value
      .asFunction<_GetCapabilities_Dart>()(ptr.ref.lpVtbl, capabilities);

  int GetResources(Pointer<Pointer> resources) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetResources_Native>>>()
      .value
      .asFunction<_GetResources_Dart>()(ptr.ref.lpVtbl, resources);

  int GetDeviceCapabilities(Pointer<Pointer> deviceCapabilities) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_GetDeviceCapabilities_Native>>>()
              .value
              .asFunction<_GetDeviceCapabilities_Dart>()(
          ptr.ref.lpVtbl, deviceCapabilities);

  int GetPrerequisite(Pointer<Utf16> name, Pointer<Uint64> value) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<Pointer<NativeFunction<_GetPrerequisite_Native>>>()
          .value
          .asFunction<_GetPrerequisite_Dart>()(ptr.ref.lpVtbl, name, value);

  int GetApplications(Pointer<Pointer> applications) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_GetApplications_Native>>>()
      .value
      .asFunction<_GetApplications_Dart>()(ptr.ref.lpVtbl, applications);

  int GetStream(Pointer<Pointer> manifestStream) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_GetStream_Native>>>()
      .value
      .asFunction<_GetStream_Dart>()(ptr.ref.lpVtbl, manifestStream);
}
