// ISectionList.dart

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
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IMpeg2Data.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISectionList = '{AFEC1EB5-2A64-46C6-BF4B-AE3CCB6AFDB0}';

/// {@category Interface}
/// {@category com}
class ISectionList extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISectionList(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int requestType,
    Pointer<COMObject> pMpeg2Data,
    Pointer<MPEG_CONTEXT> pContext,
    int pid,
    int tid,
    Pointer<MPEG2_FILTER> pFilter,
    int timeout,
    int hDoneEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 requestType,
            Pointer<COMObject> pMpeg2Data,
            Pointer<MPEG_CONTEXT> pContext,
            Uint16 pid,
            Uint8 tid,
            Pointer<MPEG2_FILTER> pFilter,
            Uint32 timeout,
            IntPtr hDoneEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int requestType,
            Pointer<COMObject> pMpeg2Data,
            Pointer<MPEG_CONTEXT> pContext,
            int pid,
            int tid,
            Pointer<MPEG2_FILTER> pFilter,
            int timeout,
            int hDoneEvent,
          )>()(
        ptr.ref.lpVtbl,
        requestType,
        pMpeg2Data,
        pContext,
        pid,
        tid,
        pFilter,
        timeout,
        hDoneEvent,
      );

  int InitializeWithRawSections(
    Pointer<MPEG_PACKET_LIST> pmplSections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MPEG_PACKET_LIST> pmplSections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MPEG_PACKET_LIST> pmplSections,
          )>()(
        ptr.ref.lpVtbl,
        pmplSections,
      );

  int CancelPendingRequest() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetNumberOfSections(
    Pointer<Uint16> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetSectionData(
    int sectionNumber,
    Pointer<Uint32> pdwRawPacketLength,
    Pointer<Pointer<SECTION>> ppSection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 sectionNumber,
            Pointer<Uint32> pdwRawPacketLength,
            Pointer<Pointer<SECTION>> ppSection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sectionNumber,
            Pointer<Uint32> pdwRawPacketLength,
            Pointer<Pointer<SECTION>> ppSection,
          )>()(
        ptr.ref.lpVtbl,
        sectionNumber,
        pdwRawPacketLength,
        ppSection,
      );

  int GetProgramIdentifier(
    Pointer<Uint16> pPid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pPid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pPid,
          )>()(
        ptr.ref.lpVtbl,
        pPid,
      );

  int GetTableIdentifier(
    Pointer<Uint8> pTableId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pTableId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pTableId,
          )>()(
        ptr.ref.lpVtbl,
        pTableId,
      );
}

/// @nodoc
const CLSID_SectionList = '{73DA5D04-4347-45D3-A9DC-FAE9DDBE558D}';

/// {@category com}
class SectionList extends ISectionList {
  SectionList(Pointer<COMObject> ptr) : super(ptr);

  factory SectionList.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SectionList);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISectionList);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SectionList(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
