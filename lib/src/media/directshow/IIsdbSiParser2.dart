// IIsdbSiParser2.dart

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

import '../../media/directshow/IDvbSiParser2.dart';
import '../../media/directshow/IISDB_SDT.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IISDB_BIT.dart';
import '../../media/directshow/IISDB_NBIT.dart';
import '../../media/directshow/IISDB_LDT.dart';
import '../../media/directshow/IISDB_SDTT.dart';
import '../../media/directshow/IISDB_CDT.dart';
import '../../media/directshow/IISDB_EMM.dart';

/// @nodoc
const IID_IIsdbSiParser2 = '{900E4BB7-18CD-453F-98BE-3BE6AA211772}';

/// {@category Interface}
/// {@category com}
class IIsdbSiParser2 extends IDvbSiParser2 {
  // vtable begins at 19, is 7 entries long.
  IIsdbSiParser2(Pointer<COMObject> ptr) : super(ptr);

  int GetSDT_1(
    int tableId,
    Pointer<Uint16> pwTransportStreamId,
    Pointer<Pointer<COMObject>> ppSDT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int GetBIT(
    int tableId,
    Pointer<Uint16> pwOriginalNetworkId,
    Pointer<Pointer<COMObject>> ppBIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwOriginalNetworkId,
            Pointer<Pointer<COMObject>> ppBIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwOriginalNetworkId,
            Pointer<Pointer<COMObject>> ppBIT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwOriginalNetworkId,
        ppBIT,
      );

  int GetNBIT(
    int tableId,
    Pointer<Uint16> pwOriginalNetworkId,
    Pointer<Pointer<COMObject>> ppNBIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwOriginalNetworkId,
            Pointer<Pointer<COMObject>> ppNBIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwOriginalNetworkId,
            Pointer<Pointer<COMObject>> ppNBIT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwOriginalNetworkId,
        ppNBIT,
      );

  int GetLDT(
    int tableId,
    Pointer<Uint16> pwOriginalServiceId,
    Pointer<Pointer<COMObject>> ppLDT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwOriginalServiceId,
            Pointer<Pointer<COMObject>> ppLDT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwOriginalServiceId,
            Pointer<Pointer<COMObject>> ppLDT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwOriginalServiceId,
        ppLDT,
      );

  int GetSDTT(
    int tableId,
    Pointer<Uint16> pwTableIdExt,
    Pointer<Pointer<COMObject>> ppSDTT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwTableIdExt,
            Pointer<Pointer<COMObject>> ppSDTT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwTableIdExt,
            Pointer<Pointer<COMObject>> ppSDTT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwTableIdExt,
        ppSDTT,
      );

  int GetCDT(
    int tableId,
    int bSectionNumber,
    Pointer<Uint16> pwDownloadDataId,
    Pointer<Pointer<COMObject>> ppCDT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Uint8 bSectionNumber,
            Pointer<Uint16> pwDownloadDataId,
            Pointer<Pointer<COMObject>> ppCDT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            int bSectionNumber,
            Pointer<Uint16> pwDownloadDataId,
            Pointer<Pointer<COMObject>> ppCDT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        bSectionNumber,
        pwDownloadDataId,
        ppCDT,
      );

  int GetEMM(
    int pid,
    int wTableIdExt,
    Pointer<Pointer<COMObject>> ppEMM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Uint16 wTableIdExt,
            Pointer<Pointer<COMObject>> ppEMM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            int wTableIdExt,
            Pointer<Pointer<COMObject>> ppEMM,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        wTableIdExt,
        ppEMM,
      );
}
