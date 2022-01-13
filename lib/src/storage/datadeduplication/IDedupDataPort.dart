// IDedupDataPort.dart

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
import '../../storage/datadeduplication/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IDedupDataPort = '{7963D734-40A9-4EA3-BBF6-5A89D26F7AE8}';

/// {@category Interface}
/// {@category com}
class IDedupDataPort extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IDedupDataPort(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<Int32> pStatus,
    Pointer<Uint32> pDataHeadroomMb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStatus,
            Pointer<Uint32> pDataHeadroomMb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStatus,
            Pointer<Uint32> pDataHeadroomMb,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
        pDataHeadroomMb,
      );

  int LookupChunks(
    int Count,
    Pointer<DedupHash> pHashes,
    Pointer<GUID> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<DedupHash> pHashes,
            Pointer<GUID> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<DedupHash> pHashes,
            Pointer<GUID> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        pHashes,
        pRequestId,
      );

  int InsertChunks(
    int ChunkCount,
    Pointer<DedupChunk> pChunkMetadata,
    int DataByteCount,
    Pointer<Uint8> pChunkData,
    Pointer<GUID> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ChunkCount,
            Pointer<DedupChunk> pChunkMetadata,
            Uint32 DataByteCount,
            Pointer<Uint8> pChunkData,
            Pointer<GUID> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ChunkCount,
            Pointer<DedupChunk> pChunkMetadata,
            int DataByteCount,
            Pointer<Uint8> pChunkData,
            Pointer<GUID> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        ChunkCount,
        pChunkMetadata,
        DataByteCount,
        pChunkData,
        pRequestId,
      );

  int InsertChunksWithStream(
    int ChunkCount,
    Pointer<DedupChunk> pChunkMetadata,
    int DataByteCount,
    Pointer<COMObject> pChunkDataStream,
    Pointer<GUID> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ChunkCount,
            Pointer<DedupChunk> pChunkMetadata,
            Uint32 DataByteCount,
            Pointer<COMObject> pChunkDataStream,
            Pointer<GUID> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ChunkCount,
            Pointer<DedupChunk> pChunkMetadata,
            int DataByteCount,
            Pointer<COMObject> pChunkDataStream,
            Pointer<GUID> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        ChunkCount,
        pChunkMetadata,
        DataByteCount,
        pChunkDataStream,
        pRequestId,
      );

  int CommitStreams(
    int StreamCount,
    Pointer<DedupStream> pStreams,
    int EntryCount,
    Pointer<DedupStreamEntry> pEntries,
    Pointer<GUID> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamCount,
            Pointer<DedupStream> pStreams,
            Uint32 EntryCount,
            Pointer<DedupStreamEntry> pEntries,
            Pointer<GUID> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamCount,
            Pointer<DedupStream> pStreams,
            int EntryCount,
            Pointer<DedupStreamEntry> pEntries,
            Pointer<GUID> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        StreamCount,
        pStreams,
        EntryCount,
        pEntries,
        pRequestId,
      );

  int CommitStreamsWithStream(
    int StreamCount,
    Pointer<DedupStream> pStreams,
    int EntryCount,
    Pointer<COMObject> pEntriesStream,
    Pointer<GUID> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamCount,
            Pointer<DedupStream> pStreams,
            Uint32 EntryCount,
            Pointer<COMObject> pEntriesStream,
            Pointer<GUID> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamCount,
            Pointer<DedupStream> pStreams,
            int EntryCount,
            Pointer<COMObject> pEntriesStream,
            Pointer<GUID> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        StreamCount,
        pStreams,
        EntryCount,
        pEntriesStream,
        pRequestId,
      );

  int GetStreams(
    int StreamCount,
    Pointer<Pointer<Utf16>> pStreamPaths,
    Pointer<GUID> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamCount,
            Pointer<Pointer<Utf16>> pStreamPaths,
            Pointer<GUID> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamCount,
            Pointer<Pointer<Utf16>> pStreamPaths,
            Pointer<GUID> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        StreamCount,
        pStreamPaths,
        pRequestId,
      );

  int GetStreamsResults(
    GUID RequestId,
    int MaxWaitMs,
    int StreamEntryIndex,
    Pointer<Uint32> pStreamCount,
    Pointer<Pointer<DedupStream>> ppStreams,
    Pointer<Uint32> pEntryCount,
    Pointer<Pointer<DedupStreamEntry>> ppEntries,
    Pointer<Int32> pStatus,
    Pointer<Pointer<Int32>> ppItemResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID RequestId,
            Uint32 MaxWaitMs,
            Uint32 StreamEntryIndex,
            Pointer<Uint32> pStreamCount,
            Pointer<Pointer<DedupStream>> ppStreams,
            Pointer<Uint32> pEntryCount,
            Pointer<Pointer<DedupStreamEntry>> ppEntries,
            Pointer<Int32> pStatus,
            Pointer<Pointer<Int32>> ppItemResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID RequestId,
            int MaxWaitMs,
            int StreamEntryIndex,
            Pointer<Uint32> pStreamCount,
            Pointer<Pointer<DedupStream>> ppStreams,
            Pointer<Uint32> pEntryCount,
            Pointer<Pointer<DedupStreamEntry>> ppEntries,
            Pointer<Int32> pStatus,
            Pointer<Pointer<Int32>> ppItemResults,
          )>()(
        ptr.ref.lpVtbl,
        RequestId,
        MaxWaitMs,
        StreamEntryIndex,
        pStreamCount,
        ppStreams,
        pEntryCount,
        ppEntries,
        pStatus,
        ppItemResults,
      );

  int GetChunks(
    int Count,
    Pointer<DedupHash> pHashes,
    Pointer<GUID> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<DedupHash> pHashes,
            Pointer<GUID> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<DedupHash> pHashes,
            Pointer<GUID> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        pHashes,
        pRequestId,
      );

  int GetChunksResults(
    GUID RequestId,
    int MaxWaitMs,
    int ChunkIndex,
    Pointer<Uint32> pChunkCount,
    Pointer<Pointer<DedupChunk>> ppChunkMetadata,
    Pointer<Uint32> pDataByteCount,
    Pointer<Pointer<Uint8>> ppChunkData,
    Pointer<Int32> pStatus,
    Pointer<Pointer<Int32>> ppItemResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID RequestId,
            Uint32 MaxWaitMs,
            Uint32 ChunkIndex,
            Pointer<Uint32> pChunkCount,
            Pointer<Pointer<DedupChunk>> ppChunkMetadata,
            Pointer<Uint32> pDataByteCount,
            Pointer<Pointer<Uint8>> ppChunkData,
            Pointer<Int32> pStatus,
            Pointer<Pointer<Int32>> ppItemResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID RequestId,
            int MaxWaitMs,
            int ChunkIndex,
            Pointer<Uint32> pChunkCount,
            Pointer<Pointer<DedupChunk>> ppChunkMetadata,
            Pointer<Uint32> pDataByteCount,
            Pointer<Pointer<Uint8>> ppChunkData,
            Pointer<Int32> pStatus,
            Pointer<Pointer<Int32>> ppItemResults,
          )>()(
        ptr.ref.lpVtbl,
        RequestId,
        MaxWaitMs,
        ChunkIndex,
        pChunkCount,
        ppChunkMetadata,
        pDataByteCount,
        ppChunkData,
        pStatus,
        ppItemResults,
      );

  int GetRequestStatus(
    GUID RequestId,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID RequestId,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID RequestId,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        RequestId,
        pStatus,
      );

  int GetRequestResults(
    GUID RequestId,
    int MaxWaitMs,
    Pointer<Int32> pBatchResult,
    Pointer<Uint32> pBatchCount,
    Pointer<Int32> pStatus,
    Pointer<Pointer<Int32>> ppItemResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID RequestId,
            Uint32 MaxWaitMs,
            Pointer<Int32> pBatchResult,
            Pointer<Uint32> pBatchCount,
            Pointer<Int32> pStatus,
            Pointer<Pointer<Int32>> ppItemResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID RequestId,
            int MaxWaitMs,
            Pointer<Int32> pBatchResult,
            Pointer<Uint32> pBatchCount,
            Pointer<Int32> pStatus,
            Pointer<Pointer<Int32>> ppItemResults,
          )>()(
        ptr.ref.lpVtbl,
        RequestId,
        MaxWaitMs,
        pBatchResult,
        pBatchCount,
        pStatus,
        ppItemResults,
      );
}

/// @nodoc
const CLSID_DedupDataPort = '{8F107207-1829-48B2-A64B-E61F8E0D9ACB}';

/// {@category com}
class DedupDataPort extends IDedupDataPort {
  DedupDataPort(Pointer<COMObject> ptr) : super(ptr);

  factory DedupDataPort.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DedupDataPort);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDedupDataPort);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DedupDataPort(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
