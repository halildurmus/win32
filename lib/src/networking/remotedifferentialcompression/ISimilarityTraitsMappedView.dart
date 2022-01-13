// ISimilarityTraitsMappedView.dart

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
const IID_ISimilarityTraitsMappedView =
    '{96236A7C-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class ISimilarityTraitsMappedView extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISimilarityTraitsMappedView(Pointer<COMObject> ptr) : super(ptr);

  int Flush() => ptr.ref.lpVtbl.value
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

  int Unmap() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Get(
    int index,
    int dirty,
    int numElements,
    Pointer<SimilarityMappedViewInfo> viewInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 index,
            Int32 dirty,
            Uint32 numElements,
            Pointer<SimilarityMappedViewInfo> viewInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            int dirty,
            int numElements,
            Pointer<SimilarityMappedViewInfo> viewInfo,
          )>()(
        ptr.ref.lpVtbl,
        index,
        dirty,
        numElements,
        viewInfo,
      );

  void GetView(
    Pointer<Pointer<Uint8>> mappedPageBegin,
    Pointer<Pointer<Uint8>> mappedPageEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<Uint8>> mappedPageBegin,
            Pointer<Pointer<Uint8>> mappedPageEnd,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<Uint8>> mappedPageBegin,
            Pointer<Pointer<Uint8>> mappedPageEnd,
          )>()(
        ptr.ref.lpVtbl,
        mappedPageBegin,
        mappedPageEnd,
      );
}

/// @nodoc
const CLSID_SimilarityTraitsMappedView =
    '{96236A95-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class SimilarityTraitsMappedView extends ISimilarityTraitsMappedView {
  SimilarityTraitsMappedView(Pointer<COMObject> ptr) : super(ptr);

  factory SimilarityTraitsMappedView.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SimilarityTraitsMappedView);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISimilarityTraitsMappedView);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SimilarityTraitsMappedView(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
