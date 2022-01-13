// IDedupReadFileCallback.dart

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
import '../../foundation/structs.g.dart';
import '../../storage/datadeduplication/structs.g.dart';

/// @nodoc
const IID_IDedupReadFileCallback = '{7BACC67A-2F1D-42D0-897E-6FF62DD533BB}';

/// {@category Interface}
/// {@category com}
class IDedupReadFileCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDedupReadFileCallback(Pointer<COMObject> ptr) : super(ptr);

  int ReadBackupFile(
    Pointer<Utf16> FileFullPath,
    int FileOffset,
    int SizeToRead,
    Pointer<Uint8> FileBuffer,
    Pointer<Uint32> ReturnedSize,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileFullPath,
            Int64 FileOffset,
            Uint32 SizeToRead,
            Pointer<Uint8> FileBuffer,
            Pointer<Uint32> ReturnedSize,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileFullPath,
            int FileOffset,
            int SizeToRead,
            Pointer<Uint8> FileBuffer,
            Pointer<Uint32> ReturnedSize,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        FileFullPath,
        FileOffset,
        SizeToRead,
        FileBuffer,
        ReturnedSize,
        Flags,
      );

  int OrderContainersRestore(
    int NumberOfContainers,
    Pointer<Pointer<Utf16>> ContainerPaths,
    Pointer<Uint32> ReadPlanEntries,
    Pointer<Pointer<DEDUP_CONTAINER_EXTENT>> ReadPlan,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumberOfContainers,
            Pointer<Pointer<Utf16>> ContainerPaths,
            Pointer<Uint32> ReadPlanEntries,
            Pointer<Pointer<DEDUP_CONTAINER_EXTENT>> ReadPlan,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumberOfContainers,
            Pointer<Pointer<Utf16>> ContainerPaths,
            Pointer<Uint32> ReadPlanEntries,
            Pointer<Pointer<DEDUP_CONTAINER_EXTENT>> ReadPlan,
          )>()(
        ptr.ref.lpVtbl,
        NumberOfContainers,
        ContainerPaths,
        ReadPlanEntries,
        ReadPlan,
      );

  int PreviewContainerRead(
    Pointer<Utf16> FileFullPath,
    int NumberOfReads,
    Pointer<DDP_FILE_EXTENT> ReadOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileFullPath,
            Uint32 NumberOfReads,
            Pointer<DDP_FILE_EXTENT> ReadOffsets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileFullPath,
            int NumberOfReads,
            Pointer<DDP_FILE_EXTENT> ReadOffsets,
          )>()(
        ptr.ref.lpVtbl,
        FileFullPath,
        NumberOfReads,
        ReadOffsets,
      );
}
