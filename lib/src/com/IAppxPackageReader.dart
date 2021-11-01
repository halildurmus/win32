// IAppxPackageReader.dart

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
const IID_IAppxPackageReader = '{B5C49650-99BC-481C-9A34-3D53A4106708}';

typedef _GetBlockMap_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> blockMapReader);
typedef _GetBlockMap_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> blockMapReader);

typedef _GetFootprintFile_Native = Int32 Function(
    Pointer obj, Int32 type, Pointer<Pointer<COMObject>> file);
typedef _GetFootprintFile_Dart = int Function(
    Pointer obj, int type, Pointer<Pointer<COMObject>> file);

typedef _GetPayloadFile_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> fileName, Pointer<Pointer<COMObject>> file);
typedef _GetPayloadFile_Dart = int Function(
    Pointer obj, Pointer<Utf16> fileName, Pointer<Pointer<COMObject>> file);

typedef _GetPayloadFiles_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> filesEnumerator);
typedef _GetPayloadFiles_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> filesEnumerator);

typedef _GetManifest_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> manifestReader);
typedef _GetManifest_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> manifestReader);

/// {@category Interface}
/// {@category com}
class IAppxPackageReader extends IUnknown {
  // vtable begins at 3, ends at 7

  IAppxPackageReader(Pointer<COMObject> ptr) : super(ptr);

  int GetBlockMap(Pointer<Pointer<COMObject>> blockMapReader) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_GetBlockMap_Native>>>()
          .value
          .asFunction<_GetBlockMap_Dart>()(ptr.ref.lpVtbl, blockMapReader);

  int GetFootprintFile(int type, Pointer<Pointer<COMObject>> file) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<Pointer<NativeFunction<_GetFootprintFile_Native>>>()
          .value
          .asFunction<_GetFootprintFile_Dart>()(ptr.ref.lpVtbl, type, file);

  int GetPayloadFile(
          Pointer<Utf16> fileName, Pointer<Pointer<COMObject>> file) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_GetPayloadFile_Native>>>()
          .value
          .asFunction<_GetPayloadFile_Dart>()(ptr.ref.lpVtbl, fileName, file);

  int GetPayloadFiles(Pointer<Pointer<COMObject>> filesEnumerator) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_GetPayloadFiles_Native>>>()
          .value
          .asFunction<_GetPayloadFiles_Dart>()(ptr.ref.lpVtbl, filesEnumerator);

  int GetManifest(Pointer<Pointer<COMObject>> manifestReader) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_GetManifest_Native>>>()
          .value
          .asFunction<_GetManifest_Dart>()(ptr.ref.lpVtbl, manifestReader);
}
