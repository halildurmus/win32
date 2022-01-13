// IMFASFIndexer.dart

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
import '../../media/mediafoundation/IMFASFContentInfo.dart';
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/IMFMediaBuffer.dart';

/// @nodoc
const IID_IMFASFIndexer = '{53590F48-DC3B-4297-813F-787761AD7B3E}';

/// {@category Interface}
/// {@category com}
class IMFASFIndexer extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IMFASFIndexer(Pointer<COMObject> ptr) : super(ptr);

  int SetFlags(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int Initialize(
    Pointer<COMObject> pIContentInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>()(
        ptr.ref.lpVtbl,
        pIContentInfo,
      );

  int GetIndexPosition(
    Pointer<COMObject> pIContentInfo,
    Pointer<Uint64> pcbIndexOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
            Pointer<Uint64> pcbIndexOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
            Pointer<Uint64> pcbIndexOffset,
          )>()(
        ptr.ref.lpVtbl,
        pIContentInfo,
        pcbIndexOffset,
      );

  int SetIndexByteStreams(
    Pointer<Pointer<COMObject>> ppIByteStreams,
    int cByteStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIByteStreams,
            Uint32 cByteStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIByteStreams,
            int cByteStreams,
          )>()(
        ptr.ref.lpVtbl,
        ppIByteStreams,
        cByteStreams,
      );

  int GetIndexByteStreamCount(
    Pointer<Uint32> pcByteStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcByteStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcByteStreams,
          )>()(
        ptr.ref.lpVtbl,
        pcByteStreams,
      );

  int GetIndexStatus(
    Pointer<ASF_INDEX_IDENTIFIER> pIndexIdentifier,
    Pointer<Int32> pfIsIndexed,
    Pointer<Uint8> pbIndexDescriptor,
    Pointer<Uint32> pcbIndexDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ASF_INDEX_IDENTIFIER> pIndexIdentifier,
            Pointer<Int32> pfIsIndexed,
            Pointer<Uint8> pbIndexDescriptor,
            Pointer<Uint32> pcbIndexDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ASF_INDEX_IDENTIFIER> pIndexIdentifier,
            Pointer<Int32> pfIsIndexed,
            Pointer<Uint8> pbIndexDescriptor,
            Pointer<Uint32> pcbIndexDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pIndexIdentifier,
        pfIsIndexed,
        pbIndexDescriptor,
        pcbIndexDescriptor,
      );

  int SetIndexStatus(
    Pointer<Uint8> pbIndexDescriptor,
    int cbIndexDescriptor,
    int fGenerateIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbIndexDescriptor,
            Uint32 cbIndexDescriptor,
            Int32 fGenerateIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbIndexDescriptor,
            int cbIndexDescriptor,
            int fGenerateIndex,
          )>()(
        ptr.ref.lpVtbl,
        pbIndexDescriptor,
        cbIndexDescriptor,
        fGenerateIndex,
      );

  int GetSeekPositionForValue(
    Pointer<PROPVARIANT> pvarValue,
    Pointer<ASF_INDEX_IDENTIFIER> pIndexIdentifier,
    Pointer<Uint64> pcbOffsetWithinData,
    Pointer<Int64> phnsApproxTime,
    Pointer<Uint32> pdwPayloadNumberOfStreamWithinPacket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> pvarValue,
            Pointer<ASF_INDEX_IDENTIFIER> pIndexIdentifier,
            Pointer<Uint64> pcbOffsetWithinData,
            Pointer<Int64> phnsApproxTime,
            Pointer<Uint32> pdwPayloadNumberOfStreamWithinPacket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> pvarValue,
            Pointer<ASF_INDEX_IDENTIFIER> pIndexIdentifier,
            Pointer<Uint64> pcbOffsetWithinData,
            Pointer<Int64> phnsApproxTime,
            Pointer<Uint32> pdwPayloadNumberOfStreamWithinPacket,
          )>()(
        ptr.ref.lpVtbl,
        pvarValue,
        pIndexIdentifier,
        pcbOffsetWithinData,
        phnsApproxTime,
        pdwPayloadNumberOfStreamWithinPacket,
      );

  int GenerateIndexEntries(
    Pointer<COMObject> pIASFPacketSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIASFPacketSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIASFPacketSample,
          )>()(
        ptr.ref.lpVtbl,
        pIASFPacketSample,
      );

  int CommitIndex(
    Pointer<COMObject> pIContentInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIContentInfo,
          )>()(
        ptr.ref.lpVtbl,
        pIContentInfo,
      );

  int GetIndexWriteSpace(
    Pointer<Uint64> pcbIndexWriteSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcbIndexWriteSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcbIndexWriteSpace,
          )>()(
        ptr.ref.lpVtbl,
        pcbIndexWriteSpace,
      );

  int GetCompletedIndex(
    Pointer<COMObject> pIIndexBuffer,
    int cbOffsetWithinIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIIndexBuffer,
            Uint64 cbOffsetWithinIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIIndexBuffer,
            int cbOffsetWithinIndex,
          )>()(
        ptr.ref.lpVtbl,
        pIIndexBuffer,
        cbOffsetWithinIndex,
      );
}
