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

/// @nodoc
const IID_IAppxPackageReader = '{B5C49650-99BC-481C-9A34-3D53A4106708}';

typedef _GetBlockMap_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> blockMapReader);
typedef _GetBlockMap_Dart = int Function(
    Pointer obj, Pointer<Pointer> blockMapReader);

typedef _GetFootprintFile_Native = Int32 Function(
    Pointer obj, Uint32 type, Pointer<Pointer> file);
typedef _GetFootprintFile_Dart = int Function(
    Pointer obj, int type, Pointer<Pointer> file);

typedef _GetPayloadFile_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> fileName, Pointer<Pointer> file);
typedef _GetPayloadFile_Dart = int Function(
    Pointer obj, Pointer<Utf16> fileName, Pointer<Pointer> file);

typedef _GetPayloadFiles_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> filesEnumerator);
typedef _GetPayloadFiles_Dart = int Function(
    Pointer obj, Pointer<Pointer> filesEnumerator);

typedef _GetManifest_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> manifestReader);
typedef _GetManifest_Dart = int Function(
    Pointer obj, Pointer<Pointer> manifestReader);

/// {@category Interface}
/// {@category com}
class IAppxPackageReader extends IUnknown {
  // vtable begins at 3, ends at 7

  IAppxPackageReader(Pointer<COMObject> ptr) : super(ptr);

  int GetBlockMap(Pointer<Pointer> blockMapReader) =>
      Pointer<NativeFunction<_GetBlockMap_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetBlockMap_Dart>()(ptr.ref.lpVtbl, blockMapReader);

  int GetFootprintFile(int type, Pointer<Pointer> file) =>
      Pointer<NativeFunction<_GetFootprintFile_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetFootprintFile_Dart>()(ptr.ref.lpVtbl, type, file);

  int GetPayloadFile(Pointer<Utf16> fileName, Pointer<Pointer> file) =>
      Pointer<NativeFunction<_GetPayloadFile_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetPayloadFile_Dart>()(ptr.ref.lpVtbl, fileName, file);

  int GetPayloadFiles(Pointer<Pointer> filesEnumerator) =>
      Pointer<NativeFunction<_GetPayloadFiles_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetPayloadFiles_Dart>()(ptr.ref.lpVtbl, filesEnumerator);

  int GetManifest(Pointer<Pointer> manifestReader) =>
      Pointer<NativeFunction<_GetManifest_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetManifest_Dart>()(ptr.ref.lpVtbl, manifestReader);
}
