// IAppxManifestPackageDependency.dart

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
const IID_IAppxManifestPackageDependency =
    '{E4946B59-733E-43F0-A724-3BDE4C1285A0}';

typedef _GetName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> name);
typedef _GetName_Dart = int Function(Pointer obj, Pointer<Pointer<Utf16>> name);

typedef _GetPublisher_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> publisher);
typedef _GetPublisher_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> publisher);

typedef _GetMinVersion_Native = Int32 Function(
    Pointer obj, Pointer<Uint64> minVersion);
typedef _GetMinVersion_Dart = int Function(
    Pointer obj, Pointer<Uint64> minVersion);

/// {@category Interface}
/// {@category com}
class IAppxManifestPackageDependency extends IUnknown {
  // vtable begins at 3, ends at 5

  IAppxManifestPackageDependency(Pointer<COMObject> ptr) : super(ptr);

  int GetName(Pointer<Pointer<Utf16>> name) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetName_Native>>>()
      .value
      .asFunction<_GetName_Dart>()(ptr.ref.lpVtbl, name);

  int GetPublisher(Pointer<Pointer<Utf16>> publisher) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetPublisher_Native>>>()
      .value
      .asFunction<_GetPublisher_Dart>()(ptr.ref.lpVtbl, publisher);

  int GetMinVersion(Pointer<Uint64> minVersion) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_GetMinVersion_Native>>>()
      .value
      .asFunction<_GetMinVersion_Dart>()(ptr.ref.lpVtbl, minVersion);
}
