// IDvbSiParser.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IPAT.dart';
import '../../media/directshow/ICAT.dart';
import '../../media/directshow/IPMT.dart';
import '../../media/directshow/ITSDT.dart';
import '../../media/directshow/IDVB_NIT.dart';
import '../../media/directshow/IDVB_SDT.dart';
import '../../media/directshow/IDVB_EIT.dart';
import '../../media/directshow/IDVB_BAT.dart';
import '../../media/directshow/IDVB_RST.dart';
import '../../media/directshow/IDVB_ST.dart';
import '../../media/directshow/IDVB_TDT.dart';
import '../../media/directshow/IDVB_TOT.dart';
import '../../media/directshow/IDVB_DIT.dart';
import '../../media/directshow/IDVB_SIT.dart';

/// @nodoc
const IID_IDvbSiParser = '{B758A7BD-14DC-449D-B828-35909ACB3B1E}';

/// {@category Interface}
/// {@category com}
class IDvbSiParser extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IDvbSiParser(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> punkMpeg2Data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkMpeg2Data,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkMpeg2Data,
          )>()(
        ptr.ref.lpVtbl,
        punkMpeg2Data,
      );

  int GetPAT(
    Pointer<Pointer<COMObject>> ppPAT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPAT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPAT,
          )>()(
        ptr.ref.lpVtbl,
        ppPAT,
      );

  int GetCAT(
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppCAT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppCAT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppCAT,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeout,
        ppCAT,
      );

  int GetPMT(
    int pid,
    Pointer<Uint16> pwProgramNumber,
    Pointer<Pointer<COMObject>> ppPMT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Pointer<Uint16> pwProgramNumber,
            Pointer<Pointer<COMObject>> ppPMT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            Pointer<Uint16> pwProgramNumber,
            Pointer<Pointer<COMObject>> ppPMT,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        pwProgramNumber,
        ppPMT,
      );

  int GetTSDT(
    Pointer<Pointer<COMObject>> ppTSDT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTSDT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTSDT,
          )>()(
        ptr.ref.lpVtbl,
        ppTSDT,
      );

  int GetNIT(
    int tableId,
    Pointer<Uint16> pwNetworkId,
    Pointer<Pointer<COMObject>> ppNIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwNetworkId,
            Pointer<Pointer<COMObject>> ppNIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwNetworkId,
            Pointer<Pointer<COMObject>> ppNIT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwNetworkId,
        ppNIT,
      );

  int GetSDT(
    int tableId,
    Pointer<Uint16> pwTransportStreamId,
    Pointer<Pointer<COMObject>> ppSDT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwTransportStreamId,
            Pointer<Pointer<COMObject>> ppSDT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwTransportStreamId,
            Pointer<Pointer<COMObject>> ppSDT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwTransportStreamId,
        ppSDT,
      );

  int GetEIT(
    int tableId,
    Pointer<Uint16> pwServiceId,
    Pointer<Pointer<COMObject>> ppEIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwServiceId,
            Pointer<Pointer<COMObject>> ppEIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwServiceId,
            Pointer<Pointer<COMObject>> ppEIT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwServiceId,
        ppEIT,
      );

  int GetBAT(
    Pointer<Uint16> pwBouquetId,
    Pointer<Pointer<COMObject>> ppBAT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwBouquetId,
            Pointer<Pointer<COMObject>> ppBAT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwBouquetId,
            Pointer<Pointer<COMObject>> ppBAT,
          )>()(
        ptr.ref.lpVtbl,
        pwBouquetId,
        ppBAT,
      );

  int GetRST(
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppRST,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppRST,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppRST,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeout,
        ppRST,
      );

  int GetST(
    int pid,
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppST,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppST,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppST,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        dwTimeout,
        ppST,
      );

  int GetTDT(
    Pointer<Pointer<COMObject>> ppTDT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTDT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTDT,
          )>()(
        ptr.ref.lpVtbl,
        ppTDT,
      );

  int GetTOT(
    Pointer<Pointer<COMObject>> ppTOT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTOT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTOT,
          )>()(
        ptr.ref.lpVtbl,
        ppTOT,
      );

  int GetDIT(
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppDIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppDIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppDIT,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeout,
        ppDIT,
      );

  int GetSIT(
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppSIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppSIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppSIT,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeout,
        ppSIT,
      );
}
