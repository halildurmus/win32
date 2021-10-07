// IAppxManifestApplication.dart

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
const IID_IAppxManifestApplication = '{5DA89BF4-3773-46BE-B650-7E744863B7E8}';

typedef _GetStringValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Pointer<Utf16>> value);
typedef _GetStringValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Pointer<Utf16>> value);

typedef _GetAppUserModelId_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> appUserModelId);
typedef _GetAppUserModelId_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> appUserModelId);

/// {@category Interface}
/// {@category com}
class IAppxManifestApplication extends IUnknown {
  // vtable begins at 3, ends at 4

  IAppxManifestApplication(Pointer<COMObject> ptr) : super(ptr);

  int GetStringValue(Pointer<Utf16> name, Pointer<Pointer<Utf16>> value) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_GetStringValue_Native>>>()
          .value
          .asFunction<_GetStringValue_Dart>()(ptr.ref.lpVtbl, name, value);

  int GetAppUserModelId(Pointer<Pointer<Utf16>> appUserModelId) => ptr
      .ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetAppUserModelId_Native>>>()
      .value
      .asFunction<_GetAppUserModelId_Dart>()(ptr.ref.lpVtbl, appUserModelId);
}
