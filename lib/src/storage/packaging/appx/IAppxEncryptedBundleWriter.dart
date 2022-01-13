// IAppxEncryptedBundleWriter.dart

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
const IID_IAppxEncryptedBundleWriter = '{80B0902F-7BF0-4117-B8C6-4279EF81EE77}';

/// {@category Interface}
/// {@category com}
class IAppxEncryptedBundleWriter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxEncryptedBundleWriter(Pointer<COMObject> ptr) : super(ptr);

  int AddPayloadPackageEncrypted(
    Pointer<Utf16> fileName,
    Pointer<COMObject> packageStream,
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
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<COMObject> packageStream,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        packageStream,
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
