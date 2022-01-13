// IPMT.dart

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
import '../../media/directshow/ISectionList.dart';
import '../../media/directshow/IMpeg2Data.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IGenericDescriptor.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IPMT.dart';

/// @nodoc
const IID_IPMT = '{01F3B398-9527-4736-94DB-5195878E97A8}';

/// {@category Interface}
/// {@category com}
class IPMT extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  IPMT(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
    Pointer<COMObject> pMPEGData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSectionList,
            Pointer<COMObject> pMPEGData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
            Pointer<COMObject> pMPEGData,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
        pMPEGData,
      );

  int GetProgramNumber(
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        pwVal,
      );

  int GetVersionNumber(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetPcrPid(
    Pointer<Uint16> pPidVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pPidVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pPidVal,
          )>()(
        ptr.ref.lpVtbl,
        pPidVal,
      );

  int GetCountOfTableDescriptors(
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>()(
        ptr.ref.lpVtbl,
        pdwVal,
      );

  int GetTableDescriptorByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppDescriptor,
      );

  int GetTableDescriptorByTag(
    int bTag,
    Pointer<Uint32> pdwCookie,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        bTag,
        pdwCookie,
        ppDescriptor,
      );

  int GetCountOfRecords(
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        pwVal,
      );

  int GetRecordStreamType(
    int dwRecordIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pbVal,
      );

  int GetRecordElementaryPid(
    int dwRecordIndex,
    Pointer<Uint16> pPidVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint16> pPidVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint16> pPidVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pPidVal,
      );

  int GetRecordCountOfDescriptors(
    int dwRecordIndex,
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint32> pdwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint32> pdwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pdwVal,
      );

  int GetRecordDescriptorByIndex(
    int dwRecordIndex,
    int dwDescIndex,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Uint32 dwDescIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            int dwDescIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        dwDescIndex,
        ppDescriptor,
      );

  int GetRecordDescriptorByTag(
    int dwRecordIndex,
    int bTag,
    Pointer<Uint32> pdwCookie,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Uint8 bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            int bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        bTag,
        pdwCookie,
        ppDescriptor,
      );

  int QueryServiceGatewayInfo(
    Pointer<Pointer<DSMCC_ELEMENT>> ppDSMCCList,
    Pointer<Uint32> puiCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<DSMCC_ELEMENT>> ppDSMCCList,
            Pointer<Uint32> puiCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<DSMCC_ELEMENT>> ppDSMCCList,
            Pointer<Uint32> puiCount,
          )>()(
        ptr.ref.lpVtbl,
        ppDSMCCList,
        puiCount,
      );

  int QueryMPEInfo(
    Pointer<Pointer<MPE_ELEMENT>> ppMPEList,
    Pointer<Uint32> puiCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<MPE_ELEMENT>> ppMPEList,
            Pointer<Uint32> puiCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<MPE_ELEMENT>> ppMPEList,
            Pointer<Uint32> puiCount,
          )>()(
        ptr.ref.lpVtbl,
        ppMPEList,
        puiCount,
      );

  int RegisterForNextTable(
    int hNextTableAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hNextTableAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hNextTableAvailable,
          )>()(
        ptr.ref.lpVtbl,
        hNextTableAvailable,
      );

  int GetNextTable(
    Pointer<Pointer<COMObject>> ppPMT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPMT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPMT,
          )>()(
        ptr.ref.lpVtbl,
        ppPMT,
      );

  int RegisterForWhenCurrent(
    int hNextTableIsCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hNextTableIsCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hNextTableIsCurrent,
          )>()(
        ptr.ref.lpVtbl,
        hNextTableIsCurrent,
      );

  int ConvertNextToCurrent() => ptr.ref.lpVtbl.value
          .elementAt(21)
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
}
