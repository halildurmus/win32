// IDWriteRemoteFontFileStream.dart

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

import '../../graphics/directwrite/IDWriteFontFileStream.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteAsyncResult.dart';

/// @nodoc
const IID_IDWriteRemoteFontFileStream =
    '{4DB3757A-2C72-4ED9-B2B6-1ABABE1AFF9C}';

/// {@category Interface}
/// {@category com}
class IDWriteRemoteFontFileStream extends IDWriteFontFileStream {
  // vtable begins at 7, is 4 entries long.
  IDWriteRemoteFontFileStream(Pointer<COMObject> ptr) : super(ptr);

  int GetLocalFileSize(
    Pointer<Uint64> localFileSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> localFileSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> localFileSize,
          )>()(
        ptr.ref.lpVtbl,
        localFileSize,
      );

  int GetFileFragmentLocality(
    int fileOffset,
    int fragmentSize,
    Pointer<Int32> isLocal,
    Pointer<Uint64> partialSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 fileOffset,
            Uint64 fragmentSize,
            Pointer<Int32> isLocal,
            Pointer<Uint64> partialSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fileOffset,
            int fragmentSize,
            Pointer<Int32> isLocal,
            Pointer<Uint64> partialSize,
          )>()(
        ptr.ref.lpVtbl,
        fileOffset,
        fragmentSize,
        isLocal,
        partialSize,
      );

  int GetLocality() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int BeginDownload(
    Pointer<GUID> downloadOperationID,
    Pointer<DWRITE_FILE_FRAGMENT> fileFragments,
    int fragmentCount,
    Pointer<Pointer<COMObject>> asyncResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> downloadOperationID,
            Pointer<DWRITE_FILE_FRAGMENT> fileFragments,
            Uint32 fragmentCount,
            Pointer<Pointer<COMObject>> asyncResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> downloadOperationID,
            Pointer<DWRITE_FILE_FRAGMENT> fileFragments,
            int fragmentCount,
            Pointer<Pointer<COMObject>> asyncResult,
          )>()(
        ptr.ref.lpVtbl,
        downloadOperationID,
        fileFragments,
        fragmentCount,
        asyncResult,
      );
}
