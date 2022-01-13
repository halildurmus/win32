// IAppxEncryptionFactory4.dart

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

/// @nodoc
const IID_IAppxEncryptionFactory4 = '{A879611F-12FD-41FE-85D5-06AE779BBAF5}';

/// {@category Interface}
/// {@category com}
class IAppxEncryptionFactory4 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxEncryptionFactory4(Pointer<COMObject> ptr) : super(ptr);

  int EncryptPackage(
    Pointer<COMObject> inputStream,
    Pointer<COMObject> outputStream,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
    Pointer<APPX_ENCRYPTED_EXEMPTIONS> exemptedFiles,
    int memoryLimit,
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
            Uint64 memoryLimit,
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
            int memoryLimit,
          )>()(
        ptr.ref.lpVtbl,
        inputStream,
        outputStream,
        settings,
        keyInfo,
        exemptedFiles,
        memoryLimit,
      );
}
