// IBackgroundCopyServerCertificateValidationCallback.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyServerCertificateValidationCallback =
    '{4CEC0D02-DEF7-4158-813A-C32A46945FF7}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyServerCertificateValidationCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBackgroundCopyServerCertificateValidationCallback(Pointer<COMObject> ptr)
      : super(ptr);

  int ValidateServerCertificate(
    Pointer<COMObject> job,
    Pointer<COMObject> file,
    int certLength,
    Pointer<Uint8> certData,
    int certEncodingType,
    int certStoreLength,
    Pointer<Uint8> certStoreData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> job,
            Pointer<COMObject> file,
            Uint32 certLength,
            Pointer<Uint8> certData,
            Uint32 certEncodingType,
            Uint32 certStoreLength,
            Pointer<Uint8> certStoreData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> job,
            Pointer<COMObject> file,
            int certLength,
            Pointer<Uint8> certData,
            int certEncodingType,
            int certStoreLength,
            Pointer<Uint8> certStoreData,
          )>()(
        ptr.ref.lpVtbl,
        job,
        file,
        certLength,
        certData,
        certEncodingType,
        certStoreLength,
        certStoreData,
      );
}
