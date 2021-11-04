// IAppxFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';

import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_AppxFactory = '{5842A140-FF9F-4166-8F5C-62F5B7B0C781}';

/// @nodoc
const IID_IAppxFactory = '{BEB94909-E451-438B-B5A7-D79E767B75D8}';

typedef _CreatePackageWriter_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> outputStream,
    Pointer<APPX_PACKAGE_SETTINGS> settings,
    Pointer<Pointer<COMObject>> packageWriter);
typedef _CreatePackageWriter_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> outputStream,
    Pointer<APPX_PACKAGE_SETTINGS> settings,
    Pointer<Pointer<COMObject>> packageWriter);

typedef _CreatePackageReader_Native = Int32 Function(Pointer obj,
    Pointer<COMObject> inputStream, Pointer<Pointer<COMObject>> packageReader);
typedef _CreatePackageReader_Dart = int Function(Pointer obj,
    Pointer<COMObject> inputStream, Pointer<Pointer<COMObject>> packageReader);

typedef _CreateManifestReader_Native = Int32 Function(Pointer obj,
    Pointer<COMObject> inputStream, Pointer<Pointer<COMObject>> manifestReader);
typedef _CreateManifestReader_Dart = int Function(Pointer obj,
    Pointer<COMObject> inputStream, Pointer<Pointer<COMObject>> manifestReader);

typedef _CreateBlockMapReader_Native = Int32 Function(Pointer obj,
    Pointer<COMObject> inputStream, Pointer<Pointer<COMObject>> blockMapReader);
typedef _CreateBlockMapReader_Dart = int Function(Pointer obj,
    Pointer<COMObject> inputStream, Pointer<Pointer<COMObject>> blockMapReader);

typedef _CreateValidatedBlockMapReader_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> blockMapStream,
    Pointer<Utf16> signatureFileName,
    Pointer<Pointer<COMObject>> blockMapReader);
typedef _CreateValidatedBlockMapReader_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> blockMapStream,
    Pointer<Utf16> signatureFileName,
    Pointer<Pointer<COMObject>> blockMapReader);

/// {@category Interface}
/// {@category com}
class IAppxFactory extends IUnknown {
  // vtable begins at 3, ends at 7

  IAppxFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreatePackageWriter(
          Pointer<COMObject> outputStream,
          Pointer<APPX_PACKAGE_SETTINGS> settings,
          Pointer<Pointer<COMObject>> packageWriter) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_CreatePackageWriter_Native>>>()
              .value
              .asFunction<_CreatePackageWriter_Dart>()(
          ptr.ref.lpVtbl, outputStream, settings, packageWriter);

  int CreatePackageReader(Pointer<COMObject> inputStream,
          Pointer<Pointer<COMObject>> packageReader) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_CreatePackageReader_Native>>>()
              .value
              .asFunction<_CreatePackageReader_Dart>()(
          ptr.ref.lpVtbl, inputStream, packageReader);

  int CreateManifestReader(Pointer<COMObject> inputStream,
          Pointer<Pointer<COMObject>> manifestReader) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_CreateManifestReader_Native>>>()
              .value
              .asFunction<_CreateManifestReader_Dart>()(
          ptr.ref.lpVtbl, inputStream, manifestReader);

  int CreateBlockMapReader(Pointer<COMObject> inputStream,
          Pointer<Pointer<COMObject>> blockMapReader) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_CreateBlockMapReader_Native>>>()
              .value
              .asFunction<_CreateBlockMapReader_Dart>()(
          ptr.ref.lpVtbl, inputStream, blockMapReader);

  int CreateValidatedBlockMapReader(
          Pointer<COMObject> blockMapStream,
          Pointer<Utf16> signatureFileName,
          Pointer<Pointer<COMObject>> blockMapReader) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<
                  Pointer<NativeFunction<_CreateValidatedBlockMapReader_Native>>>()
              .value
              .asFunction<_CreateValidatedBlockMapReader_Dart>()(
          ptr.ref.lpVtbl, blockMapStream, signatureFileName, blockMapReader);
}

/// {@category com}
class AppxFactory extends IAppxFactory {
  AppxFactory(Pointer<COMObject> ptr) : super(ptr);

  factory AppxFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AppxFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAppxFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AppxFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
