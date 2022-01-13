// IAppxEncryptionFactory3.dart

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
import '../../../storage/packaging/appx/IAppxEncryptedBundleWriter.dart';

/// @nodoc
const IID_IAppxEncryptionFactory3 = '{09EDCA37-CD64-47D6-B7E8-1CB11D4F7E05}';

/// {@category Interface}
/// {@category com}
class IAppxEncryptionFactory3 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAppxEncryptionFactory3(Pointer<COMObject> ptr) : super(ptr);

  int EncryptPackage(
    Pointer<COMObject> inputStream,
    Pointer<COMObject> outputStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
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
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
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

  int CreateEncryptedPackageWriter(
    Pointer<COMObject> outputStream,
    Pointer<COMObject> manifestStream,
    Pointer<COMObject> contentGroupMapStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Pointer<COMObject> manifestStream,
            Pointer<COMObject> contentGroupMapStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
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
            Pointer<COMObject> contentGroupMapStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
            Pointer<Pointer<COMObject>> packageWriter,
          )>()(
        ptr.ref.lpVtbl,
        outputStream,
        manifestStream,
        contentGroupMapStream,
        settings,
        keyInfo,
        exemptedFiles,
        packageWriter,
      );

  int EncryptBundle(
    Pointer<COMObject> inputStream,
    Pointer<COMObject> outputStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
            Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputStream,
            Pointer<COMObject> outputStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
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

  int CreateEncryptedBundleWriter(
    Pointer<COMObject> outputStream,
    int bundleVersion,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
    Pointer<Pointer<COMObject>> bundleWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Uint64 bundleVersion,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
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
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
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
}
