// IFindSimilarResults.dart

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

/// @nodoc
const IID_IFindSimilarResults = '{96236A81-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IFindSimilarResults extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFindSimilarResults(Pointer<COMObject> ptr) : super(ptr);

  int GetSize(
    Pointer<Uint32> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );

  int GetNextFileId(
    Pointer<Uint32> numTraitsMatched,
    Pointer<SimilarityFileId> similarityFileId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> numTraitsMatched,
            Pointer<SimilarityFileId> similarityFileId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> numTraitsMatched,
            Pointer<SimilarityFileId> similarityFileId,
          )>()(
        ptr.ref.lpVtbl,
        numTraitsMatched,
        similarityFileId,
      );
}

/// @nodoc
const CLSID_FindSimilarResults = '{96236A93-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class FindSimilarResults extends IFindSimilarResults {
  FindSimilarResults(Pointer<COMObject> ptr) : super(ptr);

  factory FindSimilarResults.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FindSimilarResults);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFindSimilarResults);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FindSimilarResults(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
