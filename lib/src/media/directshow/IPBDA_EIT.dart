// IPBDA_EIT.dart

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
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IGenericDescriptor.dart';

/// @nodoc
const IID_IPBDA_EIT = '{A35F2DEA-098F-4EBD-984C-2BD4C3C8CE0A}';

/// {@category Interface}
/// {@category com}
class IPBDA_EIT extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IPBDA_EIT(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int size,
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 size,
            Pointer<Uint8> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int size,
            Pointer<Uint8> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        size,
        pBuffer,
      );

  int GetTableId(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetVersionNumber(
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetServiceIdx(
    Pointer<Uint64> plwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> plwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> plwVal,
          )>()(
        ptr.ref.lpVtbl,
        plwVal,
      );

  int GetCountOfRecords(
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

  int GetRecordEventId(
    int dwRecordIndex,
    Pointer<Uint64> plwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint64> plwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint64> plwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        plwVal,
      );

  int GetRecordStartTime(
    int dwRecordIndex,
    Pointer<MPEG_DATE_AND_TIME> pmdtVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<MPEG_DATE_AND_TIME> pmdtVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<MPEG_DATE_AND_TIME> pmdtVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pmdtVal,
      );

  int GetRecordDuration(
    int dwRecordIndex,
    Pointer<MPEG_TIME> pmdVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<MPEG_TIME> pmdVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<MPEG_TIME> pmdVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pmdVal,
      );

  int GetRecordCountOfDescriptors(
    int dwRecordIndex,
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
    int dwIndex,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        dwIndex,
        ppDescriptor,
      );

  int GetRecordDescriptorByTag(
    int dwRecordIndex,
    int bTag,
    Pointer<Uint32> pdwCookie,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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
}
