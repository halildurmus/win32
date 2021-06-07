// IAppxManifestReader7.dart

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
const IID_IAppxManifestReader7 = '{8EFE6F27-0CE0-4988-B32D-738EB63DB3B7}';

typedef _GetDriverDependencies_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> driverDependencies);
typedef _GetDriverDependencies_Dart = int Function(
    Pointer obj, Pointer<Pointer> driverDependencies);

typedef _GetOSPackageDependencies_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> osPackageDependencies);
typedef _GetOSPackageDependencies_Dart = int Function(
    Pointer obj, Pointer<Pointer> osPackageDependencies);

typedef _GetHostRuntimeDependencies_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> hostRuntimeDependencies);
typedef _GetHostRuntimeDependencies_Dart = int Function(
    Pointer obj, Pointer<Pointer> hostRuntimeDependencies);

/// {@category Interface}
/// {@category com}
class IAppxManifestReader7 extends IUnknown {
  // vtable begins at 3, ends at 5

  IAppxManifestReader7(Pointer<COMObject> ptr) : super(ptr);

  int GetDriverDependencies(Pointer<Pointer> driverDependencies) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_GetDriverDependencies_Native>>>()
              .value
              .asFunction<_GetDriverDependencies_Dart>()(
          ptr.ref.lpVtbl, driverDependencies);

  int GetOSPackageDependencies(Pointer<Pointer> osPackageDependencies) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_GetOSPackageDependencies_Native>>>()
              .value
              .asFunction<_GetOSPackageDependencies_Dart>()(
          ptr.ref.lpVtbl, osPackageDependencies);

  int GetHostRuntimeDependencies(Pointer<Pointer> hostRuntimeDependencies) => ptr
          .ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_GetHostRuntimeDependencies_Native>>>()
          .value
          .asFunction<_GetHostRuntimeDependencies_Dart>()(
      ptr.ref.lpVtbl, hostRuntimeDependencies);
}
