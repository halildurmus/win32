// IAppxEncryptedPackageWriter.dart

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
import '../../../storage/packaging/appx/structs.g.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IAppxEncryptedPackageWriter =
    '{F43D0B0B-1379-40E2-9B29-682EA2BF42AF}';

/// {@category Interface}
/// {@category com}
class IAppxEncryptedPackageWriter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxEncryptedPackageWriter(Pointer<COMObject> ptr) : super(ptr);

  int AddPayloadFileEncrypted(
    Pointer<Utf16> fileName,
    int compressionOption,
    Pointer<COMObject> inputStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Int32 compressionOption,
            Pointer<COMObject> inputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            int compressionOption,
            Pointer<COMObject> inputStream,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        compressionOption,
        inputStream,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
