// IAppxManifestPackageId.dart

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
const IID_IAppxManifestPackageId = '{283CE2D7-7153-4A91-9649-7A0F7240945F}';

typedef _GetName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> name);
typedef _GetName_Dart = int Function(Pointer obj, Pointer<Pointer<Utf16>> name);

typedef _GetArchitecture_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> architecture);
typedef _GetArchitecture_Dart = int Function(
    Pointer obj, Pointer<Uint32> architecture);

typedef _GetPublisher_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> publisher);
typedef _GetPublisher_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> publisher);

typedef _GetVersion_Native = Int32 Function(
    Pointer obj, Pointer<Uint64> packageVersion);
typedef _GetVersion_Dart = int Function(
    Pointer obj, Pointer<Uint64> packageVersion);

typedef _GetResourceId_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> resourceId);
typedef _GetResourceId_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> resourceId);

typedef _ComparePublisher_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> other, Pointer<Int32> isSame);
typedef _ComparePublisher_Dart = int Function(
    Pointer obj, Pointer<Utf16> other, Pointer<Int32> isSame);

typedef _GetPackageFullName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> packageFullName);
typedef _GetPackageFullName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> packageFullName);

typedef _GetPackageFamilyName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> packageFamilyName);
typedef _GetPackageFamilyName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> packageFamilyName);

/// {@category Interface}
/// {@category com}
class IAppxManifestPackageId extends IUnknown {
  // vtable begins at 3, ends at 10

  IAppxManifestPackageId(Pointer<COMObject> ptr) : super(ptr);

  int GetName(Pointer<Pointer<Utf16>> name) =>
      Pointer<NativeFunction<_GetName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetName_Dart>()(ptr.ref.lpVtbl, name);

  int GetArchitecture(Pointer<Uint32> architecture) =>
      Pointer<NativeFunction<_GetArchitecture_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetArchitecture_Dart>()(ptr.ref.lpVtbl, architecture);

  int GetPublisher(Pointer<Pointer<Utf16>> publisher) =>
      Pointer<NativeFunction<_GetPublisher_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetPublisher_Dart>()(ptr.ref.lpVtbl, publisher);

  int GetVersion(Pointer<Uint64> packageVersion) =>
      Pointer<NativeFunction<_GetVersion_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetVersion_Dart>()(ptr.ref.lpVtbl, packageVersion);

  int GetResourceId(Pointer<Pointer<Utf16>> resourceId) =>
      Pointer<NativeFunction<_GetResourceId_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetResourceId_Dart>()(ptr.ref.lpVtbl, resourceId);

  int ComparePublisher(Pointer<Utf16> other, Pointer<Int32> isSame) =>
      Pointer<NativeFunction<_ComparePublisher_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_ComparePublisher_Dart>()(ptr.ref.lpVtbl, other, isSame);

  int GetPackageFullName(Pointer<Pointer<Utf16>> packageFullName) =>
      Pointer<NativeFunction<_GetPackageFullName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_GetPackageFullName_Dart>()(
          ptr.ref.lpVtbl, packageFullName);

  int GetPackageFamilyName(Pointer<Pointer<Utf16>> packageFamilyName) =>
      Pointer<NativeFunction<_GetPackageFamilyName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_GetPackageFamilyName_Dart>()(
          ptr.ref.lpVtbl, packageFamilyName);
}
