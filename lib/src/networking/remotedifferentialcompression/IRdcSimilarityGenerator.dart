// IRdcSimilarityGenerator.dart

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
const IID_IRdcSimilarityGenerator = '{96236A80-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcSimilarityGenerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRdcSimilarityGenerator(Pointer<COMObject> ptr) : super(ptr);

  int EnableSimilarity() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Results(
    Pointer<SimilarityData> similarityData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SimilarityData> similarityData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SimilarityData> similarityData,
          )>()(
        ptr.ref.lpVtbl,
        similarityData,
      );
}

/// @nodoc
const CLSID_RdcSimilarityGenerator = '{96236A92-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcSimilarityGenerator extends IRdcSimilarityGenerator {
  RdcSimilarityGenerator(Pointer<COMObject> ptr) : super(ptr);

  factory RdcSimilarityGenerator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RdcSimilarityGenerator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRdcSimilarityGenerator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcSimilarityGenerator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
