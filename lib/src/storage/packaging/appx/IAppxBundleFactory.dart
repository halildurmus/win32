// IAppxBundleFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/IStream.dart';
import '../../../storage/packaging/appx/IAppxBundleWriter.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxBundleReader.dart';
import '../../../storage/packaging/appx/IAppxBundleManifestReader.dart';

/// @nodoc
const IID_IAppxBundleFactory = '{BBA65864-965F-4A5F-855F-F074BDBF3A7B}';

/// {@category Interface}
/// {@category com}
class IAppxBundleFactory extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxBundleFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateBundleWriter(
    Pointer<COMObject> outputStream,
    int bundleVersion,
    Pointer<Pointer<COMObject>> bundleWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Uint64 bundleVersion,
            Pointer<Pointer<COMObject>> bundleWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> outputStream,
            int bundleVersion,
            Pointer<Pointer<COMObject>> bundleWriter,
          )>()(
        ptr.ref.lpVtbl,
        outputStream,
        bundleVersion,
        bundleWriter,
      );

  int CreateBundleReader(
    Pointer<COMObject> inputStream,
    Pointer<Pointer<COMObject>> bundleReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> bundleReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> bundleReader,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        bundleReader,
      );

  int CreateBundleManifestReader(
    Pointer<COMObject> inputStream,
    Pointer<Pointer<COMObject>> manifestReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> manifestReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<Pointer<COMObject>> manifestReader,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        manifestReader,
      );
}

/// @nodoc
const CLSID_AppxBundleFactory = '{378E0446-5384-43B7-8877-E7DBDD883446}';

/// {@category com}
class AppxBundleFactory extends IAppxBundleFactory {
  AppxBundleFactory(Pointer<COMObject> ptr) : super(ptr);

  factory AppxBundleFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AppxBundleFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAppxBundleFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AppxBundleFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
