// IMPEG2StreamIdMap.dart

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
import '../../media/directshow/IEnumStreamIdMap.dart';

/// @nodoc
const IID_IMPEG2StreamIdMap = '{D0E04C47-25B8-4369-925A-362A01D95444}';

/// {@category Interface}
/// {@category com}
class IMPEG2StreamIdMap extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMPEG2StreamIdMap(Pointer<COMObject> ptr) : super(ptr);

  int MapStreamId(
    int ulStreamId,
    int MediaSampleContent,
    int ulSubstreamFilterValue,
    int iDataOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStreamId,
            Uint32 MediaSampleContent,
            Uint32 ulSubstreamFilterValue,
            Int32 iDataOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStreamId,
            int MediaSampleContent,
            int ulSubstreamFilterValue,
            int iDataOffset,
          )>()(
        ptr.ref.lpVtbl,
        ulStreamId,
        MediaSampleContent,
        ulSubstreamFilterValue,
        iDataOffset,
      );

  int UnmapStreamId(
    int culStreamId,
    Pointer<Uint32> pulStreamId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 culStreamId,
            Pointer<Uint32> pulStreamId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int culStreamId,
            Pointer<Uint32> pulStreamId,
          )>()(
        ptr.ref.lpVtbl,
        culStreamId,
        pulStreamId,
      );

  int EnumStreamIdMap(
    Pointer<Pointer<COMObject>> ppIEnumStreamIdMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumStreamIdMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumStreamIdMap,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumStreamIdMap,
      );
}
