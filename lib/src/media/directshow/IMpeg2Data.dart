// IMpeg2Data.dart

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
import '../../media/directshow/ISectionList.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IMpeg2Stream.dart';

/// @nodoc
const IID_IMpeg2Data = '{9B396D40-F380-4E3C-A514-1A82BF6EBFE6}';

/// {@category Interface}
/// {@category com}
class IMpeg2Data extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMpeg2Data(Pointer<COMObject> ptr) : super(ptr);

  int GetSection(
    int pid,
    int tid,
    Pointer<MPEG2_FILTER> pFilter,
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppSectionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Uint8 tid,
            Pointer<MPEG2_FILTER> pFilter,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppSectionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            int tid,
            Pointer<MPEG2_FILTER> pFilter,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppSectionList,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        tid,
        pFilter,
        dwTimeout,
        ppSectionList,
      );

  int GetTable(
    int pid,
    int tid,
    Pointer<MPEG2_FILTER> pFilter,
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppSectionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Uint8 tid,
            Pointer<MPEG2_FILTER> pFilter,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppSectionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            int tid,
            Pointer<MPEG2_FILTER> pFilter,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppSectionList,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        tid,
        pFilter,
        dwTimeout,
        ppSectionList,
      );

  int GetStreamOfSections(
    int pid,
    int tid,
    Pointer<MPEG2_FILTER> pFilter,
    int hDataReadyEvent,
    Pointer<Pointer<COMObject>> ppMpegStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 pid,
            Uint8 tid,
            Pointer<MPEG2_FILTER> pFilter,
            IntPtr hDataReadyEvent,
            Pointer<Pointer<COMObject>> ppMpegStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pid,
            int tid,
            Pointer<MPEG2_FILTER> pFilter,
            int hDataReadyEvent,
            Pointer<Pointer<COMObject>> ppMpegStream,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        tid,
        pFilter,
        hDataReadyEvent,
        ppMpegStream,
      );
}

/// @nodoc
const CLSID_Mpeg2Data = '{C666E115-BB62-4027-A113-82D643FE2D99}';

/// {@category com}
class Mpeg2Data extends IMpeg2Data {
  Mpeg2Data(Pointer<COMObject> ptr) : super(ptr);

  factory Mpeg2Data.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Mpeg2Data);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMpeg2Data);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Mpeg2Data(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
