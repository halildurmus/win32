// IAppxBlockMapFile.dart

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
import '../../../storage/packaging/appx/IAppxBlockMapBlocksEnumerator.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IAppxBlockMapFile = '{277672AC-4F63-42C1-8ABC-BEAE3600EB59}';

/// {@category Interface}
/// {@category com}
class IAppxBlockMapFile extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAppxBlockMapFile(Pointer<COMObject> ptr) : super(ptr);

  int GetBlocks(
    Pointer<Pointer<COMObject>> blocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> blocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> blocks,
          )>()(
        ptr.ref.lpVtbl,
        blocks,
      );

  int GetLocalFileHeaderSize(
    Pointer<Uint32> lfhSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lfhSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lfhSize,
          )>()(
        ptr.ref.lpVtbl,
        lfhSize,
      );

  int GetName(
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int GetUncompressedSize(
    Pointer<Uint64> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );

  int ValidateFileHash(
    Pointer<COMObject> fileStream,
    Pointer<Int32> isValid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fileStream,
            Pointer<Int32> isValid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fileStream,
            Pointer<Int32> isValid,
          )>()(
        ptr.ref.lpVtbl,
        fileStream,
        isValid,
      );
}
