// ISimilarityTraitsTable.dart

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
import '../../networking/remotedifferentialcompression/ISimilarityTableDumpState.dart';

/// @nodoc
const IID_ISimilarityTraitsTable = '{96236A7E-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class ISimilarityTraitsTable extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISimilarityTraitsTable(Pointer<COMObject> ptr) : super(ptr);

  int CreateTable(
    Pointer<Utf16> path,
    int truncate,
    Pointer<Uint8> securityDescriptor,
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
            Pointer<Int32> isNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int truncate,
            Pointer<Uint8> securityDescriptor,
            Pointer<Int32> isNew,
          )>()(
        ptr.ref.lpVtbl,
        path,
        truncate,
        securityDescriptor,
        isNew,
      );

  int CreateTableIndirect(
    Pointer<COMObject> mapping,
    int truncate,
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
            Int32 truncate,
            Pointer<Int32> isNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> mapping,
            int truncate,
            Pointer<Int32> isNew,
          )>()(
        ptr.ref.lpVtbl,
        mapping,
        truncate,
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
    Pointer<SimilarityData> data,
    int fileIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SimilarityData> data,
            Uint32 fileIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SimilarityData> data,
            int fileIndex,
          )>()(
        ptr.ref.lpVtbl,
        data,
        fileIndex,
      );

  int FindSimilarFileIndex(
    Pointer<SimilarityData> similarityData,
    int numberOfMatchesRequired,
    Pointer<FindSimilarFileIndexResults> findSimilarFileIndexResults,
    int resultsSize,
    Pointer<Uint32> resultsUsed,
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
            Pointer<FindSimilarFileIndexResults> findSimilarFileIndexResults,
            Uint32 resultsSize,
            Pointer<Uint32> resultsUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SimilarityData> similarityData,
            int numberOfMatchesRequired,
            Pointer<FindSimilarFileIndexResults> findSimilarFileIndexResults,
            int resultsSize,
            Pointer<Uint32> resultsUsed,
          )>()(
        ptr.ref.lpVtbl,
        similarityData,
        numberOfMatchesRequired,
        findSimilarFileIndexResults,
        resultsSize,
        resultsUsed,
      );

  int BeginDump(
    Pointer<Pointer<COMObject>> similarityTableDumpState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> similarityTableDumpState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> similarityTableDumpState,
          )>()(
        ptr.ref.lpVtbl,
        similarityTableDumpState,
      );

  int GetLastIndex(
    Pointer<Uint32> fileIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> fileIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> fileIndex,
          )>()(
        ptr.ref.lpVtbl,
        fileIndex,
      );
}

/// @nodoc
const CLSID_SimilarityTraitsTable = '{96236A8F-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class SimilarityTraitsTable extends ISimilarityTraitsTable {
  SimilarityTraitsTable(Pointer<COMObject> ptr) : super(ptr);

  factory SimilarityTraitsTable.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SimilarityTraitsTable);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISimilarityTraitsTable);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SimilarityTraitsTable(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
