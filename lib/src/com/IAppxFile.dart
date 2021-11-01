// IAppxFile.dart

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
const IID_IAppxFile = '{91DF827B-94FD-468F-827B-57F41B2F6F2E}';

typedef _GetCompressionOption_Native = Int32 Function(
    Pointer obj, Pointer<Int32> compressionOption);
typedef _GetCompressionOption_Dart = int Function(
    Pointer obj, Pointer<Int32> compressionOption);

typedef _GetContentType_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> contentType);
typedef _GetContentType_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> contentType);

typedef _GetName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> fileName);
typedef _GetName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> fileName);

typedef _GetSize_Native = Int32 Function(Pointer obj, Pointer<Uint64> size);
typedef _GetSize_Dart = int Function(Pointer obj, Pointer<Uint64> size);

typedef _GetStream_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> stream);
typedef _GetStream_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> stream);

/// {@category Interface}
/// {@category com}
class IAppxFile extends IUnknown {
  // vtable begins at 3, ends at 7

  IAppxFile(Pointer<COMObject> ptr) : super(ptr);

  int GetCompressionOption(Pointer<Int32> compressionOption) => ptr
          .ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_GetCompressionOption_Native>>>()
          .value
          .asFunction<_GetCompressionOption_Dart>()(
      ptr.ref.lpVtbl, compressionOption);

  int GetContentType(Pointer<Pointer<Utf16>> contentType) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<Pointer<NativeFunction<_GetContentType_Native>>>()
          .value
          .asFunction<_GetContentType_Dart>()(ptr.ref.lpVtbl, contentType);

  int GetName(Pointer<Pointer<Utf16>> fileName) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_GetName_Native>>>()
      .value
      .asFunction<_GetName_Dart>()(ptr.ref.lpVtbl, fileName);

  int GetSize(Pointer<Uint64> size) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_GetSize_Native>>>()
      .value
      .asFunction<_GetSize_Dart>()(ptr.ref.lpVtbl, size);

  int GetStream(Pointer<Pointer<COMObject>> stream) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetStream_Native>>>()
      .value
      .asFunction<_GetStream_Dart>()(ptr.ref.lpVtbl, stream);
}
