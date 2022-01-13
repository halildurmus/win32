// IDVB_RST.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDVB_RST = '{F47DCD04-1E23-4FB7-9F96-B40EEAD10B2B}';

/// {@category Interface}
/// {@category com}
class IDVB_RST extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDVB_RST(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
      );

  int GetCountOfRecords(
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetRecordTransportStreamId(
    int dwRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pwVal,
      );

  int GetRecordOriginalNetworkId(
    int dwRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pwVal,
      );

  int GetRecordServiceId(
    int dwRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pwVal,
      );

  int GetRecordEventId(
    int dwRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pwVal,
      );

  int GetRecordRunningStatus(
    int dwRecordIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
}
