// IBDA_GuideDataDeliveryService.dart

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

/// @nodoc
const IID_IBDA_GuideDataDeliveryService =
    '{C0AFCB73-23E7-4BC6-BAFA-FDC167B4719F}';

/// {@category Interface}
/// {@category com}
class IBDA_GuideDataDeliveryService extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IBDA_GuideDataDeliveryService(Pointer<COMObject> ptr) : super(ptr);

  int GetGuideDataType(
    Pointer<GUID> pguidDataType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidDataType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidDataType,
          )>()(
        ptr.ref.lpVtbl,
        pguidDataType,
      );

  int GetGuideData(
    Pointer<Uint32> pulcbBufferLen,
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pulGuideDataPercentageProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcbBufferLen,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pulGuideDataPercentageProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcbBufferLen,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pulGuideDataPercentageProgress,
          )>()(
        ptr.ref.lpVtbl,
        pulcbBufferLen,
        pbBuffer,
        pulGuideDataPercentageProgress,
      );

  int RequestGuideDataUpdate() => ptr.ref.lpVtbl.value
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

  int GetTuneXmlFromServiceIdx(
    int ul64ServiceIdx,
    Pointer<Pointer<Utf16>> pbstrTuneXml,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ul64ServiceIdx,
            Pointer<Pointer<Utf16>> pbstrTuneXml,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ul64ServiceIdx,
            Pointer<Pointer<Utf16>> pbstrTuneXml,
          )>()(
        ptr.ref.lpVtbl,
        ul64ServiceIdx,
        pbstrTuneXml,
      );

  int GetServices(
    Pointer<Uint32> pulcbBufferLen,
    Pointer<Uint8> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcbBufferLen,
            Pointer<Uint8> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcbBufferLen,
            Pointer<Uint8> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pulcbBufferLen,
        pbBuffer,
      );

  int GetServiceInfoFromTuneXml(
    Pointer<Utf16> bstrTuneXml,
    Pointer<Pointer<Utf16>> pbstrServiceDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTuneXml,
            Pointer<Pointer<Utf16>> pbstrServiceDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTuneXml,
            Pointer<Pointer<Utf16>> pbstrServiceDescription,
          )>()(
        ptr.ref.lpVtbl,
        bstrTuneXml,
        pbstrServiceDescription,
      );
}
