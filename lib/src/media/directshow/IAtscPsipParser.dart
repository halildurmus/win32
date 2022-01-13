// IAtscPsipParser.dart

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
import '../../media/directshow/IATSC_MGT.dart';
import '../../media/directshow/IATSC_VCT.dart';
import '../../media/directshow/IATSC_EIT.dart';
import '../../media/directshow/IATSC_ETT.dart';
import '../../media/directshow/IATSC_STT.dart';
import '../../media/directshow/ISCTE_EAS.dart';

/// @nodoc
const IID_IAtscPsipParser = '{B2C98995-5EB2-4FB1-B406-F3E8E2026A9A}';

/// {@category Interface}
/// {@category com}
class IAtscPsipParser extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IAtscPsipParser(Pointer<COMObject> ptr) : super(ptr);

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

  int GetMGT(
    Pointer<Pointer<COMObject>> ppMGT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMGT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMGT,
          )>()(
        ptr.ref.lpVtbl,
        ppMGT,
      );

  int GetVCT(
    int tableId,
    int fGetNextTable,
    Pointer<Pointer<COMObject>> ppVCT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Int32 fGetNextTable,
            Pointer<Pointer<COMObject>> ppVCT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            int fGetNextTable,
            Pointer<Pointer<COMObject>> ppVCT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        fGetNextTable,
        ppVCT,
      );

  int GetEIT(
    int pid,
    Pointer<Uint16> pwSourceId,
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppEIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Pointer<Uint16> pwSourceId,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppEIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            Pointer<Uint16> pwSourceId,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppEIT,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        pwSourceId,
        dwTimeout,
        ppEIT,
      );

  int GetETT(
    int pid,
    Pointer<Uint16> wSourceId,
    Pointer<Uint16> pwEventId,
    Pointer<Pointer<COMObject>> ppETT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Pointer<Uint16> wSourceId,
            Pointer<Uint16> pwEventId,
            Pointer<Pointer<COMObject>> ppETT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            Pointer<Uint16> wSourceId,
            Pointer<Uint16> pwEventId,
            Pointer<Pointer<COMObject>> ppETT,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        wSourceId,
        pwEventId,
        ppETT,
      );

  int GetSTT(
    Pointer<Pointer<COMObject>> ppSTT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSTT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSTT,
          )>()(
        ptr.ref.lpVtbl,
        ppSTT,
      );

  int GetEAS(
    int pid,
    Pointer<Pointer<COMObject>> ppEAS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Pointer<Pointer<COMObject>> ppEAS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            Pointer<Pointer<COMObject>> ppEAS,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        ppEAS,
      );
}
