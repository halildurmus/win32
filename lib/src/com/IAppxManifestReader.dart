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

  int GetPackageId(Pointer<Pointer> packageId) =>
      Pointer<NativeFunction<_GetPackageId_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetPackageId_Dart>()(ptr.ref.lpVtbl, packageId);

  int GetProperties(Pointer<Pointer> packageProperties) =>
      Pointer<NativeFunction<_GetProperties_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetProperties_Dart>()(ptr.ref.lpVtbl, packageProperties);

  int GetPackageDependencies(Pointer<Pointer> dependencies) =>
      Pointer<NativeFunction<_GetPackageDependencies_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetPackageDependencies_Dart>()(
          ptr.ref.lpVtbl, dependencies);

  int GetCapabilities(Pointer<Uint32> capabilities) =>
      Pointer<NativeFunction<_GetCapabilities_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetCapabilities_Dart>()(ptr.ref.lpVtbl, capabilities);

  int GetResources(Pointer<Pointer> resources) =>
      Pointer<NativeFunction<_GetResources_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetResources_Dart>()(ptr.ref.lpVtbl, resources);

  int GetDeviceCapabilities(Pointer<Pointer> deviceCapabilities) =>
      Pointer<NativeFunction<_GetDeviceCapabilities_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_GetDeviceCapabilities_Dart>()(
          ptr.ref.lpVtbl, deviceCapabilities);

  int GetPrerequisite(Pointer<Utf16> name, Pointer<Uint64> value) =>
      Pointer<NativeFunction<_GetPrerequisite_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_GetPrerequisite_Dart>()(ptr.ref.lpVtbl, name, value);

  int GetApplications(Pointer<Pointer> applications) =>
      Pointer<NativeFunction<_GetApplications_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_GetApplications_Dart>()(ptr.ref.lpVtbl, applications);

  int GetStream(Pointer<Pointer> manifestStream) =>
      Pointer<NativeFunction<_GetStream_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_GetStream_Dart>()(ptr.ref.lpVtbl, manifestStream);
}
