// IAppxEncryptionFactory2.dart

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
import '../../../storage/packaging/appx/IAppxEncryptedPackageWriter.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxEncryptionFactory2 = '{C1B11EEE-C4BA-4AB2-A55D-D015FE8FF64F}';

/// {@category Interface}
/// {@category com}
class IAppxEncryptionFactory2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxEncryptionFactory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateEncryptedPackageWriter(
    Pointer<COMObject> outputStream,
    Pointer<COMObject> manifestStream,
    Pointer<COMObject> contentGroupMapStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Pointer<COMObject> manifestStream,
            Pointer<COMObject> contentGroupMapStream,
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
            Pointer<COMObject> contentGroupMapStream,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS> settings,
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
}
