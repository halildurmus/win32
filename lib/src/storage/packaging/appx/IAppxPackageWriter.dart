// IAppxPackageWriter.dart

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
const IID_IAppxPackageWriter = '{9099E33B-246F-41E4-881A-008EB613F858}';

/// {@category Interface}
/// {@category com}
class IAppxPackageWriter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxPackageWriter(Pointer<COMObject> ptr) : super(ptr);

  int AddPayloadFile(
    Pointer<Utf16> fileName,
    Pointer<Utf16> contentType,
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
            Pointer<Utf16> contentType,
            Int32 compressionOption,
            Pointer<COMObject> inputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<Utf16> contentType,
            int compressionOption,
            Pointer<COMObject> inputStream,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        contentType,
        compressionOption,
        inputStream,
      );

  int Close(
    Pointer<COMObject> manifest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> manifest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> manifest,
          )>()(
        ptr.ref.lpVtbl,
        manifest,
      );
}
