// ISimilarity.dart

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
import '../../networking/remotedifferentialcompression/structs.g.dart';
import '../../networking/remotedifferentialcompression/ISimilarityTraitsMapping.dart';
import '../../networking/remotedifferentialcompression/IRdcFileWriter.dart';
import '../../networking/remotedifferentialcompression/IFindSimilarResults.dart';
import '../../networking/remotedifferentialcompression/ISimilarity.dart';
import '../../networking/remotedifferentialcompression/ISimilarityReportProgress.dart';

/// @nodoc
const IID_ISimilarity = '{96236A83-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class ISimilarity extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISimilarity(Pointer<COMObject> ptr) : super(ptr);

  int CreateTable(
    Pointer<Utf16> path,
    int truncate,
    Pointer<Uint8> securityDescriptor,
    int recordSize,
    Pointer<Int32> isNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 truncate,
            Pointer<Uint8> securityDescriptor,
            Uint32 recordSize,
            Pointer<Int32> isNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int truncate,
            Pointer<Uint8> securityDescriptor,
            int recordSize,
            Pointer<Int32> isNew,
          )>()(
        ptr.ref.lpVtbl,
        path,
        truncate,
        securityDescriptor,
        recordSize,
        isNew,
      );

  int CreateTableIndirect(
    Pointer<COMObject> mapping,
    Pointer<COMObject> fileIdFile,
    int truncate,
    int recordSize,
    Pointer<Int32> isNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> mapping,
            Pointer<COMObject> fileIdFile,
            Int32 truncate,
            Uint32 recordSize,
            Pointer<Int32> isNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mapping,
            Pointer<COMObject> fileIdFile,
            int truncate,
            int recordSize,
            Pointer<Int32> isNew,
          )>()(
        ptr.ref.lpVtbl,
        mapping,
        fileIdFile,
        truncate,
        recordSize,
        isNew,
      );

  int CloseTable(
    int isValid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isValid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isValid,
          )>()(
        ptr.ref.lpVtbl,
        isValid,
      );

  int Append(
    Pointer<SimilarityFileId> similarityFileId,
    Pointer<SimilarityData> similarityData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SimilarityFileId> similarityFileId,
            Pointer<SimilarityData> similarityData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SimilarityFileId> similarityFileId,
            Pointer<SimilarityData> similarityData,
          )>()(
        ptr.ref.lpVtbl,
        similarityFileId,
        similarityData,
      );

  int FindSimilarFileId(
    Pointer<SimilarityData> similarityData,
    int numberOfMatchesRequired,
    int resultsSize,
    Pointer<Pointer<COMObject>> findSimilarResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SimilarityData> similarityData,
            Uint16 numberOfMatchesRequired,
            Uint32 resultsSize,
            Pointer<Pointer<COMObject>> findSimilarResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SimilarityData> similarityData,
            int numberOfMatchesRequired,
            int resultsSize,
            Pointer<Pointer<COMObject>> findSimilarResults,
          )>()(
        ptr.ref.lpVtbl,
        similarityData,
        numberOfMatchesRequired,
        resultsSize,
        findSimilarResults,
      );

  int CopyAndSwap(
    Pointer<COMObject> newSimilarityTables,
    Pointer<COMObject> reportProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newSimilarityTables,
            Pointer<COMObject> reportProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newSimilarityTables,
            Pointer<COMObject> reportProgress,
          )>()(
        ptr.ref.lpVtbl,
        newSimilarityTables,
        reportProgress,
      );

  int GetRecordCount(
    Pointer<Uint32> recordCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> recordCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> recordCount,
          )>()(
        ptr.ref.lpVtbl,
        recordCount,
      );
}

/// @nodoc
const CLSID_Similarity = '{96236A91-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class Similarity extends ISimilarity {
  Similarity(Pointer<COMObject> ptr) : super(ptr);

  factory Similarity.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Similarity);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISimilarity);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Similarity(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
