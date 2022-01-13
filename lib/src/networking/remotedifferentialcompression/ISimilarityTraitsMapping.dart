// ISimilarityTraitsMapping.dart

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
import '../../networking/remotedifferentialcompression/ISimilarityTraitsMappedView.dart';

/// @nodoc
const IID_ISimilarityTraitsMapping = '{96236A7D-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class ISimilarityTraitsMapping extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISimilarityTraitsMapping(Pointer<COMObject> ptr) : super(ptr);

  void CloseMapping() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetFileSize(
    int fileSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 fileSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fileSize,
          )>()(
        ptr.ref.lpVtbl,
        fileSize,
      );

  int GetFileSize(
    Pointer<Uint64> fileSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> fileSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> fileSize,
          )>()(
        ptr.ref.lpVtbl,
        fileSize,
      );

  int OpenMapping(
    int accessMode,
    int begin,
    int end,
    Pointer<Uint64> actualEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 accessMode,
            Uint64 begin,
            Uint64 end,
            Pointer<Uint64> actualEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int accessMode,
            int begin,
            int end,
            Pointer<Uint64> actualEnd,
          )>()(
        ptr.ref.lpVtbl,
        accessMode,
        begin,
        end,
        actualEnd,
      );

  int ResizeMapping(
    int accessMode,
    int begin,
    int end,
    Pointer<Uint64> actualEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 accessMode,
            Uint64 begin,
            Uint64 end,
            Pointer<Uint64> actualEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int accessMode,
            int begin,
            int end,
            Pointer<Uint64> actualEnd,
          )>()(
        ptr.ref.lpVtbl,
        accessMode,
        begin,
        end,
        actualEnd,
      );

  void GetPageSize(
    Pointer<Uint32> pageSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> pageSize,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> pageSize,
          )>()(
        ptr.ref.lpVtbl,
        pageSize,
      );

  int CreateView(
    int minimumMappedPages,
    int accessMode,
    Pointer<Pointer<COMObject>> mappedView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 minimumMappedPages,
            Int32 accessMode,
            Pointer<Pointer<COMObject>> mappedView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int minimumMappedPages,
            int accessMode,
            Pointer<Pointer<COMObject>> mappedView,
          )>()(
        ptr.ref.lpVtbl,
        minimumMappedPages,
        accessMode,
        mappedView,
      );
}

/// @nodoc
const CLSID_SimilarityTraitsMapping = '{96236A94-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class SimilarityTraitsMapping extends ISimilarityTraitsMapping {
  SimilarityTraitsMapping(Pointer<COMObject> ptr) : super(ptr);

  factory SimilarityTraitsMapping.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SimilarityTraitsMapping);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISimilarityTraitsMapping);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SimilarityTraitsMapping(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
