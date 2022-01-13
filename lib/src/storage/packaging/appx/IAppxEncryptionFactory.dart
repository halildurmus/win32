// IAppxEncryptionFactory.dart

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
import '../../../storage/packaging/appx/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/appx/IAppxEncryptedPackageWriter.dart';
import '../../../storage/packaging/appx/IAppxPackageReader.dart';
import '../../../storage/packaging/appx/IAppxEncryptedBundleWriter.dart';
import '../../../storage/packaging/appx/IAppxBundleReader.dart';

/// @nodoc
const IID_IAppxEncryptionFactory = '{80E8E04D-8C88-44AE-A011-7CADF6FB2E72}';

/// {@category Interface}
/// {@category com}
class IAppxEncryptionFactory extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IAppxEncryptionFactory(Pointer<COMObject> ptr) : super(ptr);

  int EncryptPackage(
    Pointer<COMObject> inputStream,
    Pointer<COMObject> outputStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        outputStream,
        settings,
        keyInfo,
        exemptedFiles,
      );

  int DecryptPackage(
    Pointer<COMObject> inputStream,
    Pointer<COMObject> outputStream,
    Pointer<APPX_KEY_INFO> keyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        outputStream,
        keyInfo,
      );

  int CreateEncryptedPackageWriter(
    Pointer<COMObject> outputStream,
    Pointer<COMObject> manifestStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Pointer<COMObject> manifestStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
            Pointer<Pointer<COMObject>> packageWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Pointer<COMObject> manifestStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
            Pointer<Pointer<COMObject>> packageWriter,
          )>()(
        ptr.ref.lpVtbl,
        outputStream,
        manifestStream,
        settings,
        keyInfo,
        exemptedFiles,
        packageWriter,
      );

  int CreateEncryptedPackageReader(
    Pointer<COMObject> inputStream,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<Pointer<COMObject>> packageReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<Pointer<COMObject>> packageReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<Pointer<COMObject>> packageReader,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        keyInfo,
        packageReader,
      );

  int EncryptBundle(
    Pointer<COMObject> inputStream,
    Pointer<COMObject> outputStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        outputStream,
        settings,
        keyInfo,
        exemptedFiles,
      );

  int DecryptBundle(
    Pointer<COMObject> inputStream,
    Pointer<COMObject> outputStream,
    Pointer<APPX_KEY_INFO> keyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        outputStream,
        keyInfo,
      );

  int CreateEncryptedBundleWriter(
    Pointer<COMObject> outputStream,
    int bundleVersion,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
    Pointer<Pointer<COMObject>> bundleWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Uint64 bundleVersion,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
            Pointer<Pointer<COMObject>> bundleWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> outputStream,
            int bundleVersion,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
            Pointer<Pointer<COMObject>> bundleWriter,
          )>()(
        ptr.ref.lpVtbl,
        outputStream,
        bundleVersion,
        settings,
        keyInfo,
        exemptedFiles,
        bundleWriter,
      );

  int CreateEncryptedBundleReader(
    Pointer<COMObject> inputStream,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<Pointer<COMObject>> bundleReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<Pointer<COMObject>> bundleReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<Pointer<COMObject>> bundleReader,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        keyInfo,
        bundleReader,
      );
}

/// @nodoc
const CLSID_AppxEncryptionFactory = '{DC664FDD-D868-46EE-8780-8D196CB739F7}';

/// {@category com}
class AppxEncryptionFactory extends IAppxEncryptionFactory {
  AppxEncryptionFactory(Pointer<COMObject> ptr) : super(ptr);

  factory AppxEncryptionFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AppxEncryptionFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAppxEncryptionFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AppxEncryptionFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
