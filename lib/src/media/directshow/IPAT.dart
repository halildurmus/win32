// IPAT.dart

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
import '../../media/directshow/IPAT.dart';

/// @nodoc
const IID_IPAT = '{6623B511-4B5F-43C3-9A01-E8FF84188060}';

/// {@category Interface}
/// {@category com}
class IPAT extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IPAT(Pointer<COMObject> ptr) : super(ptr);

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

  int GetTransportStreamId(
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

  int GetCountOfRecords(
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetRecordProgramNumber(
    int dwIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pwVal,
      );

  int GetRecordProgramMapPid(
    int dwIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pwVal,
      );

  int FindRecordProgramMapPid(
    int wProgramNumber,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wProgramNumber,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wProgramNumber,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        wProgramNumber,
        pwVal,
      );

  int RegisterForNextTable(
    int hNextTableAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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
    Pointer<Pointer<COMObject>> ppPAT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int RegisterForWhenCurrent(
    int hNextTableIsCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
          .elementAt(13)
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
