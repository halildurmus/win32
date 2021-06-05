// IAppxFactory.dart

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
const CLSID_AppxFactory = '{5842A140-FF9F-4166-8F5C-62F5B7B0C781}';

/// @nodoc
const IID_IAppxFactory = '{BEB94909-E451-438B-B5A7-D79E767B75D8}';

typedef _CreatePackageWriter_Native = Int32 Function(
    Pointer obj,
    Pointer outputStream,
    Pointer<APPX_PACKAGE_SETTINGS> settings,
    Pointer<Pointer> packageWriter);
typedef _CreatePackageWriter_Dart = int Function(
    Pointer obj,
    Pointer outputStream,
    Pointer<APPX_PACKAGE_SETTINGS> settings,
    Pointer<Pointer> packageWriter);

typedef _CreatePackageReader_Native = Int32 Function(
    Pointer obj, Pointer inputStream, Pointer<Pointer> packageReader);
typedef _CreatePackageReader_Dart = int Function(
    Pointer obj, Pointer inputStream, Pointer<Pointer> packageReader);

typedef _CreateManifestReader_Native = Int32 Function(
    Pointer obj, Pointer inputStream, Pointer<Pointer> manifestReader);
typedef _CreateManifestReader_Dart = int Function(
    Pointer obj, Pointer inputStream, Pointer<Pointer> manifestReader);

typedef _CreateBlockMapReader_Native = Int32 Function(
    Pointer obj, Pointer inputStream, Pointer<Pointer> blockMapReader);
typedef _CreateBlockMapReader_Dart = int Function(
    Pointer obj, Pointer inputStream, Pointer<Pointer> blockMapReader);

typedef _CreateValidatedBlockMapReader_Native = Int32 Function(
    Pointer obj,
    Pointer blockMapStream,
    Pointer<Utf16> signatureFileName,
    Pointer<Pointer> blockMapReader);
typedef _CreateValidatedBlockMapReader_Dart = int Function(
    Pointer obj,
    Pointer blockMapStream,
    Pointer<Utf16> signatureFileName,
    Pointer<Pointer> blockMapReader);

/// {@category Interface}
/// {@category com}
class IAppxFactory extends IUnknown {
  // vtable begins at 3, ends at 7

  IAppxFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreatePackageWriter(
          Pointer outputStream,
          Pointer<APPX_PACKAGE_SETTINGS> settings,
          Pointer<Pointer> packageWriter) =>
      Pointer<NativeFunction<_CreatePackageWriter_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_CreatePackageWriter_Dart>()(
          ptr.ref.lpVtbl, outputStream, settings, packageWriter);

  int CreatePackageReader(
          Pointer inputStream, Pointer<Pointer> packageReader) =>
      Pointer<NativeFunction<_CreatePackageReader_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_CreatePackageReader_Dart>()(
          ptr.ref.lpVtbl, inputStream, packageReader);

  int CreateManifestReader(
          Pointer inputStream, Pointer<Pointer> manifestReader) =>
      Pointer<NativeFunction<_CreateManifestReader_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_CreateManifestReader_Dart>()(
          ptr.ref.lpVtbl, inputStream, manifestReader);

  int CreateBlockMapReader(
          Pointer inputStream, Pointer<Pointer> blockMapReader) =>
      Pointer<NativeFunction<_CreateBlockMapReader_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_CreateBlockMapReader_Dart>()(
          ptr.ref.lpVtbl, inputStream, blockMapReader);

  int CreateValidatedBlockMapReader(Pointer blockMapStream,
          Pointer<Utf16> signatureFileName, Pointer<Pointer> blockMapReader) =>
      Pointer<
                      NativeFunction<
                          _CreateValidatedBlockMapReader_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
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
