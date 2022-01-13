// IAppxEncryptedBundleWriter3.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IAppxEncryptedBundleWriter3 =
    '{0D34DEB3-5CAE-4DD3-977C-504932A51D31}';

/// {@category Interface}
/// {@category com}
class IAppxEncryptedBundleWriter3 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxEncryptedBundleWriter3(Pointer<COMObject> ptr) : super(ptr);

  int AddPayloadPackageEncrypted(
    Pointer<Utf16> fileName,
    Pointer<COMObject> packageStream,
    int isDefaultApplicablePackage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<COMObject> packageStream,
            Int32 isDefaultApplicablePackage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<COMObject> packageStream,
            int isDefaultApplicablePackage,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        packageStream,
        isDefaultApplicablePackage,
      );

  int AddExternalPackageReference(
    Pointer<Utf16> fileName,
    Pointer<COMObject> inputStream,
    int isDefaultApplicablePackage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<COMObject> inputStream,
            Int32 isDefaultApplicablePackage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<COMObject> inputStream,
            int isDefaultApplicablePackage,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        inputStream,
        isDefaultApplicablePackage,
      );
}
