// IStylusPlugin.dart

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
import '../../ui/tabletpc/IRealTimeStylus.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../ui/tabletpc/IInkTablet.dart';
import '../../ui/tabletpc/IStylusPlugin.dart';

/// @nodoc
const IID_IStylusPlugin = '{A81436D8-4757-4FD1-A185-133F97C6C545}';

/// {@category Interface}
/// {@category com}
class IStylusPlugin extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IStylusPlugin(Pointer<COMObject> ptr) : super(ptr);

  int RealTimeStylusEnabled(
    Pointer<COMObject> piRtsSrc,
    int cTcidCount,
    Pointer<Uint32> pTcids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Uint32 cTcidCount,
            Pointer<Uint32> pTcids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int cTcidCount,
            Pointer<Uint32> pTcids,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        cTcidCount,
        pTcids,
      );

  int RealTimeStylusDisabled(
    Pointer<COMObject> piRtsSrc,
    int cTcidCount,
    Pointer<Uint32> pTcids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Uint32 cTcidCount,
            Pointer<Uint32> pTcids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int cTcidCount,
            Pointer<Uint32> pTcids,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        cTcidCount,
        pTcids,
      );

  int StylusInRange(
    Pointer<COMObject> piRtsSrc,
    int tcid,
    int sid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Uint32 tcid,
            Uint32 sid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int tcid,
            int sid,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        tcid,
        sid,
      );

  int StylusOutOfRange(
    Pointer<COMObject> piRtsSrc,
    int tcid,
    int sid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Uint32 tcid,
            Uint32 sid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int tcid,
            int sid,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        tcid,
        sid,
      );

  int StylusDown(
    Pointer<COMObject> piRtsSrc,
    Pointer<StylusInfo> pStylusInfo,
    int cPropCountPerPkt,
    Pointer<Int32> pPacket,
    Pointer<Pointer<Int32>> ppInOutPkt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            Uint32 cPropCountPerPkt,
            Pointer<Int32> pPacket,
            Pointer<Pointer<Int32>> ppInOutPkt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            int cPropCountPerPkt,
            Pointer<Int32> pPacket,
            Pointer<Pointer<Int32>> ppInOutPkt,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        pStylusInfo,
        cPropCountPerPkt,
        pPacket,
        ppInOutPkt,
      );

  int StylusUp(
    Pointer<COMObject> piRtsSrc,
    Pointer<StylusInfo> pStylusInfo,
    int cPropCountPerPkt,
    Pointer<Int32> pPacket,
    Pointer<Pointer<Int32>> ppInOutPkt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            Uint32 cPropCountPerPkt,
            Pointer<Int32> pPacket,
            Pointer<Pointer<Int32>> ppInOutPkt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            int cPropCountPerPkt,
            Pointer<Int32> pPacket,
            Pointer<Pointer<Int32>> ppInOutPkt,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        pStylusInfo,
        cPropCountPerPkt,
        pPacket,
        ppInOutPkt,
      );

  int StylusButtonDown(
    Pointer<COMObject> piRtsSrc,
    int sid,
    Pointer<GUID> pGuidStylusButton,
    Pointer<POINT> pStylusPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Uint32 sid,
            Pointer<GUID> pGuidStylusButton,
            Pointer<POINT> pStylusPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int sid,
            Pointer<GUID> pGuidStylusButton,
            Pointer<POINT> pStylusPos,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        sid,
        pGuidStylusButton,
        pStylusPos,
      );

  int StylusButtonUp(
    Pointer<COMObject> piRtsSrc,
    int sid,
    Pointer<GUID> pGuidStylusButton,
    Pointer<POINT> pStylusPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Uint32 sid,
            Pointer<GUID> pGuidStylusButton,
            Pointer<POINT> pStylusPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int sid,
            Pointer<GUID> pGuidStylusButton,
            Pointer<POINT> pStylusPos,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        sid,
        pGuidStylusButton,
        pStylusPos,
      );

  int InAirPackets(
    Pointer<COMObject> piRtsSrc,
    Pointer<StylusInfo> pStylusInfo,
    int cPktCount,
    int cPktBuffLength,
    Pointer<Int32> pPackets,
    Pointer<Uint32> pcInOutPkts,
    Pointer<Pointer<Int32>> ppInOutPkts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            Uint32 cPktCount,
            Uint32 cPktBuffLength,
            Pointer<Int32> pPackets,
            Pointer<Uint32> pcInOutPkts,
            Pointer<Pointer<Int32>> ppInOutPkts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            int cPktCount,
            int cPktBuffLength,
            Pointer<Int32> pPackets,
            Pointer<Uint32> pcInOutPkts,
            Pointer<Pointer<Int32>> ppInOutPkts,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        pStylusInfo,
        cPktCount,
        cPktBuffLength,
        pPackets,
        pcInOutPkts,
        ppInOutPkts,
      );

  int Packets(
    Pointer<COMObject> piRtsSrc,
    Pointer<StylusInfo> pStylusInfo,
    int cPktCount,
    int cPktBuffLength,
    Pointer<Int32> pPackets,
    Pointer<Uint32> pcInOutPkts,
    Pointer<Pointer<Int32>> ppInOutPkts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            Uint32 cPktCount,
            Uint32 cPktBuffLength,
            Pointer<Int32> pPackets,
            Pointer<Uint32> pcInOutPkts,
            Pointer<Pointer<Int32>> ppInOutPkts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<StylusInfo> pStylusInfo,
            int cPktCount,
            int cPktBuffLength,
            Pointer<Int32> pPackets,
            Pointer<Uint32> pcInOutPkts,
            Pointer<Pointer<Int32>> ppInOutPkts,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        pStylusInfo,
        cPktCount,
        cPktBuffLength,
        pPackets,
        pcInOutPkts,
        ppInOutPkts,
      );

  int CustomStylusDataAdded(
    Pointer<COMObject> piRtsSrc,
    Pointer<GUID> pGuidId,
    int cbData,
    Pointer<Uint8> pbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<GUID> pGuidId,
            Uint32 cbData,
            Pointer<Uint8> pbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<GUID> pGuidId,
            int cbData,
            Pointer<Uint8> pbData,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        pGuidId,
        cbData,
        pbData,
      );

  int SystemEvent(
    Pointer<COMObject> piRtsSrc,
    int tcid,
    int sid,
    int event,
    SYSTEM_EVENT_DATA eventdata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Uint32 tcid,
            Uint32 sid,
            Uint16 event,
            SYSTEM_EVENT_DATA eventdata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int tcid,
            int sid,
            int event,
            SYSTEM_EVENT_DATA eventdata,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        tcid,
        sid,
        event,
        eventdata,
      );

  int TabletAdded(
    Pointer<COMObject> piRtsSrc,
    Pointer<COMObject> piTablet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<COMObject> piTablet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<COMObject> piTablet,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        piTablet,
      );

  int TabletRemoved(
    Pointer<COMObject> piRtsSrc,
    int iTabletIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Int32 iTabletIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            int iTabletIndex,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        iTabletIndex,
      );

  int Error(
    Pointer<COMObject> piRtsSrc,
    Pointer<COMObject> piPlugin,
    int dataInterest,
    int hrErrorCode,
    Pointer<IntPtr> lptrKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<COMObject> piPlugin,
            Int32 dataInterest,
            Int32 hrErrorCode,
            Pointer<IntPtr> lptrKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
            Pointer<COMObject> piPlugin,
            int dataInterest,
            int hrErrorCode,
            Pointer<IntPtr> lptrKey,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
        piPlugin,
        dataInterest,
        hrErrorCode,
        lptrKey,
      );

  int UpdateMapping(
    Pointer<COMObject> piRtsSrc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRtsSrc,
          )>()(
        ptr.ref.lpVtbl,
        piRtsSrc,
      );

  int DataInterest(
    Pointer<Int32> pDataInterest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pDataInterest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pDataInterest,
          )>()(
        ptr.ref.lpVtbl,
        pDataInterest,
      );
}
