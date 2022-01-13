// IWiaMiniDrv.dart

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
import '../../specialTypes.dart';
import '../../devices/imageacquisition/IWiaDrvItem.dart';
import '../../devices/imageacquisition/structs.g.dart';
import '../../system/com/structuredstorage/structs.g.dart';

/// @nodoc
const IID_IWiaMiniDrv = '{D8CDEE14-3C6C-11D2-9A35-00C04FA36145}';

/// {@category Interface}
/// {@category com}
class IWiaMiniDrv extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IWiaMiniDrv(Pointer<COMObject> ptr) : super(ptr);

  int drvInitializeWia(
    Pointer<Uint8> MIDL__IWiaMiniDrv0000,
    int MIDL__IWiaMiniDrv0001,
    Pointer<Utf16> MIDL__IWiaMiniDrv0002,
    Pointer<Utf16> MIDL__IWiaMiniDrv0003,
    Pointer<COMObject> MIDL__IWiaMiniDrv0004,
    Pointer<COMObject> MIDL__IWiaMiniDrv0005,
    Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0006,
    Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0007,
    Pointer<Int32> MIDL__IWiaMiniDrv0008,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0000,
            Int32 MIDL__IWiaMiniDrv0001,
            Pointer<Utf16> MIDL__IWiaMiniDrv0002,
            Pointer<Utf16> MIDL__IWiaMiniDrv0003,
            Pointer<COMObject> MIDL__IWiaMiniDrv0004,
            Pointer<COMObject> MIDL__IWiaMiniDrv0005,
            Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0006,
            Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0007,
            Pointer<Int32> MIDL__IWiaMiniDrv0008,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0000,
            int MIDL__IWiaMiniDrv0001,
            Pointer<Utf16> MIDL__IWiaMiniDrv0002,
            Pointer<Utf16> MIDL__IWiaMiniDrv0003,
            Pointer<COMObject> MIDL__IWiaMiniDrv0004,
            Pointer<COMObject> MIDL__IWiaMiniDrv0005,
            Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0006,
            Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0007,
            Pointer<Int32> MIDL__IWiaMiniDrv0008,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0000,
        MIDL__IWiaMiniDrv0001,
        MIDL__IWiaMiniDrv0002,
        MIDL__IWiaMiniDrv0003,
        MIDL__IWiaMiniDrv0004,
        MIDL__IWiaMiniDrv0005,
        MIDL__IWiaMiniDrv0006,
        MIDL__IWiaMiniDrv0007,
        MIDL__IWiaMiniDrv0008,
      );

  int drvAcquireItemData(
    Pointer<Uint8> MIDL__IWiaMiniDrv0009,
    int MIDL__IWiaMiniDrv0010,
    Pointer<MINIDRV_TRANSFER_CONTEXT> MIDL__IWiaMiniDrv0011,
    Pointer<Int32> MIDL__IWiaMiniDrv0012,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0009,
            Int32 MIDL__IWiaMiniDrv0010,
            Pointer<MINIDRV_TRANSFER_CONTEXT> MIDL__IWiaMiniDrv0011,
            Pointer<Int32> MIDL__IWiaMiniDrv0012,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0009,
            int MIDL__IWiaMiniDrv0010,
            Pointer<MINIDRV_TRANSFER_CONTEXT> MIDL__IWiaMiniDrv0011,
            Pointer<Int32> MIDL__IWiaMiniDrv0012,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0009,
        MIDL__IWiaMiniDrv0010,
        MIDL__IWiaMiniDrv0011,
        MIDL__IWiaMiniDrv0012,
      );

  int drvInitItemProperties(
    Pointer<Uint8> MIDL__IWiaMiniDrv0013,
    int MIDL__IWiaMiniDrv0014,
    Pointer<Int32> MIDL__IWiaMiniDrv0015,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0013,
            Int32 MIDL__IWiaMiniDrv0014,
            Pointer<Int32> MIDL__IWiaMiniDrv0015,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0013,
            int MIDL__IWiaMiniDrv0014,
            Pointer<Int32> MIDL__IWiaMiniDrv0015,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0013,
        MIDL__IWiaMiniDrv0014,
        MIDL__IWiaMiniDrv0015,
      );

  int drvValidateItemProperties(
    Pointer<Uint8> MIDL__IWiaMiniDrv0016,
    int MIDL__IWiaMiniDrv0017,
    int MIDL__IWiaMiniDrv0018,
    Pointer<PROPSPEC> MIDL__IWiaMiniDrv0019,
    Pointer<Int32> MIDL__IWiaMiniDrv0020,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0016,
            Int32 MIDL__IWiaMiniDrv0017,
            Uint32 MIDL__IWiaMiniDrv0018,
            Pointer<PROPSPEC> MIDL__IWiaMiniDrv0019,
            Pointer<Int32> MIDL__IWiaMiniDrv0020,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0016,
            int MIDL__IWiaMiniDrv0017,
            int MIDL__IWiaMiniDrv0018,
            Pointer<PROPSPEC> MIDL__IWiaMiniDrv0019,
            Pointer<Int32> MIDL__IWiaMiniDrv0020,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0016,
        MIDL__IWiaMiniDrv0017,
        MIDL__IWiaMiniDrv0018,
        MIDL__IWiaMiniDrv0019,
        MIDL__IWiaMiniDrv0020,
      );

  int drvWriteItemProperties(
    Pointer<Uint8> MIDL__IWiaMiniDrv0021,
    int MIDL__IWiaMiniDrv0022,
    Pointer<MINIDRV_TRANSFER_CONTEXT> MIDL__IWiaMiniDrv0023,
    Pointer<Int32> MIDL__IWiaMiniDrv0024,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0021,
            Int32 MIDL__IWiaMiniDrv0022,
            Pointer<MINIDRV_TRANSFER_CONTEXT> MIDL__IWiaMiniDrv0023,
            Pointer<Int32> MIDL__IWiaMiniDrv0024,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0021,
            int MIDL__IWiaMiniDrv0022,
            Pointer<MINIDRV_TRANSFER_CONTEXT> MIDL__IWiaMiniDrv0023,
            Pointer<Int32> MIDL__IWiaMiniDrv0024,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0021,
        MIDL__IWiaMiniDrv0022,
        MIDL__IWiaMiniDrv0023,
        MIDL__IWiaMiniDrv0024,
      );

  int drvReadItemProperties(
    Pointer<Uint8> MIDL__IWiaMiniDrv0025,
    int MIDL__IWiaMiniDrv0026,
    int MIDL__IWiaMiniDrv0027,
    Pointer<PROPSPEC> MIDL__IWiaMiniDrv0028,
    Pointer<Int32> MIDL__IWiaMiniDrv0029,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0025,
            Int32 MIDL__IWiaMiniDrv0026,
            Uint32 MIDL__IWiaMiniDrv0027,
            Pointer<PROPSPEC> MIDL__IWiaMiniDrv0028,
            Pointer<Int32> MIDL__IWiaMiniDrv0029,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0025,
            int MIDL__IWiaMiniDrv0026,
            int MIDL__IWiaMiniDrv0027,
            Pointer<PROPSPEC> MIDL__IWiaMiniDrv0028,
            Pointer<Int32> MIDL__IWiaMiniDrv0029,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0025,
        MIDL__IWiaMiniDrv0026,
        MIDL__IWiaMiniDrv0027,
        MIDL__IWiaMiniDrv0028,
        MIDL__IWiaMiniDrv0029,
      );

  int drvLockWiaDevice(
    Pointer<Uint8> MIDL__IWiaMiniDrv0030,
    int MIDL__IWiaMiniDrv0031,
    Pointer<Int32> MIDL__IWiaMiniDrv0032,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0030,
            Int32 MIDL__IWiaMiniDrv0031,
            Pointer<Int32> MIDL__IWiaMiniDrv0032,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0030,
            int MIDL__IWiaMiniDrv0031,
            Pointer<Int32> MIDL__IWiaMiniDrv0032,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0030,
        MIDL__IWiaMiniDrv0031,
        MIDL__IWiaMiniDrv0032,
      );

  int drvUnLockWiaDevice(
    Pointer<Uint8> MIDL__IWiaMiniDrv0033,
    int MIDL__IWiaMiniDrv0034,
    Pointer<Int32> MIDL__IWiaMiniDrv0035,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0033,
            Int32 MIDL__IWiaMiniDrv0034,
            Pointer<Int32> MIDL__IWiaMiniDrv0035,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0033,
            int MIDL__IWiaMiniDrv0034,
            Pointer<Int32> MIDL__IWiaMiniDrv0035,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0033,
        MIDL__IWiaMiniDrv0034,
        MIDL__IWiaMiniDrv0035,
      );

  int drvAnalyzeItem(
    Pointer<Uint8> MIDL__IWiaMiniDrv0036,
    int MIDL__IWiaMiniDrv0037,
    Pointer<Int32> MIDL__IWiaMiniDrv0038,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0036,
            Int32 MIDL__IWiaMiniDrv0037,
            Pointer<Int32> MIDL__IWiaMiniDrv0038,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0036,
            int MIDL__IWiaMiniDrv0037,
            Pointer<Int32> MIDL__IWiaMiniDrv0038,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0036,
        MIDL__IWiaMiniDrv0037,
        MIDL__IWiaMiniDrv0038,
      );

  int drvGetDeviceErrorStr(
    int MIDL__IWiaMiniDrv0039,
    int MIDL__IWiaMiniDrv0040,
    Pointer<Pointer<Utf16>> MIDL__IWiaMiniDrv0041,
    Pointer<Int32> MIDL__IWiaMiniDrv0042,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MIDL__IWiaMiniDrv0039,
            Int32 MIDL__IWiaMiniDrv0040,
            Pointer<Pointer<Utf16>> MIDL__IWiaMiniDrv0041,
            Pointer<Int32> MIDL__IWiaMiniDrv0042,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IWiaMiniDrv0039,
            int MIDL__IWiaMiniDrv0040,
            Pointer<Pointer<Utf16>> MIDL__IWiaMiniDrv0041,
            Pointer<Int32> MIDL__IWiaMiniDrv0042,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0039,
        MIDL__IWiaMiniDrv0040,
        MIDL__IWiaMiniDrv0041,
        MIDL__IWiaMiniDrv0042,
      );

  int drvDeviceCommand(
    Pointer<Uint8> MIDL__IWiaMiniDrv0043,
    int MIDL__IWiaMiniDrv0044,
    Pointer<GUID> MIDL__IWiaMiniDrv0045,
    Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0046,
    Pointer<Int32> MIDL__IWiaMiniDrv0047,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0043,
            Int32 MIDL__IWiaMiniDrv0044,
            Pointer<GUID> MIDL__IWiaMiniDrv0045,
            Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0046,
            Pointer<Int32> MIDL__IWiaMiniDrv0047,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0043,
            int MIDL__IWiaMiniDrv0044,
            Pointer<GUID> MIDL__IWiaMiniDrv0045,
            Pointer<Pointer<COMObject>> MIDL__IWiaMiniDrv0046,
            Pointer<Int32> MIDL__IWiaMiniDrv0047,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0043,
        MIDL__IWiaMiniDrv0044,
        MIDL__IWiaMiniDrv0045,
        MIDL__IWiaMiniDrv0046,
        MIDL__IWiaMiniDrv0047,
      );

  int drvGetCapabilities(
    Pointer<Uint8> MIDL__IWiaMiniDrv0048,
    int MIDL__IWiaMiniDrv0049,
    Pointer<Int32> MIDL__IWiaMiniDrv0050,
    Pointer<Pointer<WIA_DEV_CAP_DRV>> MIDL__IWiaMiniDrv0051,
    Pointer<Int32> MIDL__IWiaMiniDrv0052,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0048,
            Int32 MIDL__IWiaMiniDrv0049,
            Pointer<Int32> MIDL__IWiaMiniDrv0050,
            Pointer<Pointer<WIA_DEV_CAP_DRV>> MIDL__IWiaMiniDrv0051,
            Pointer<Int32> MIDL__IWiaMiniDrv0052,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0048,
            int MIDL__IWiaMiniDrv0049,
            Pointer<Int32> MIDL__IWiaMiniDrv0050,
            Pointer<Pointer<WIA_DEV_CAP_DRV>> MIDL__IWiaMiniDrv0051,
            Pointer<Int32> MIDL__IWiaMiniDrv0052,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0048,
        MIDL__IWiaMiniDrv0049,
        MIDL__IWiaMiniDrv0050,
        MIDL__IWiaMiniDrv0051,
        MIDL__IWiaMiniDrv0052,
      );

  int drvDeleteItem(
    Pointer<Uint8> MIDL__IWiaMiniDrv0053,
    int MIDL__IWiaMiniDrv0054,
    Pointer<Int32> MIDL__IWiaMiniDrv0055,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0053,
            Int32 MIDL__IWiaMiniDrv0054,
            Pointer<Int32> MIDL__IWiaMiniDrv0055,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0053,
            int MIDL__IWiaMiniDrv0054,
            Pointer<Int32> MIDL__IWiaMiniDrv0055,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0053,
        MIDL__IWiaMiniDrv0054,
        MIDL__IWiaMiniDrv0055,
      );

  int drvFreeDrvItemContext(
    int MIDL__IWiaMiniDrv0056,
    Pointer<Uint8> MIDL__IWiaMiniDrv0057,
    Pointer<Int32> MIDL__IWiaMiniDrv0058,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MIDL__IWiaMiniDrv0056,
            Pointer<Uint8> MIDL__IWiaMiniDrv0057,
            Pointer<Int32> MIDL__IWiaMiniDrv0058,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IWiaMiniDrv0056,
            Pointer<Uint8> MIDL__IWiaMiniDrv0057,
            Pointer<Int32> MIDL__IWiaMiniDrv0058,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0056,
        MIDL__IWiaMiniDrv0057,
        MIDL__IWiaMiniDrv0058,
      );

  int drvGetWiaFormatInfo(
    Pointer<Uint8> MIDL__IWiaMiniDrv0059,
    int MIDL__IWiaMiniDrv0060,
    Pointer<Int32> MIDL__IWiaMiniDrv0061,
    Pointer<Pointer<WIA_FORMAT_INFO>> MIDL__IWiaMiniDrv0062,
    Pointer<Int32> MIDL__IWiaMiniDrv0063,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0059,
            Int32 MIDL__IWiaMiniDrv0060,
            Pointer<Int32> MIDL__IWiaMiniDrv0061,
            Pointer<Pointer<WIA_FORMAT_INFO>> MIDL__IWiaMiniDrv0062,
            Pointer<Int32> MIDL__IWiaMiniDrv0063,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0059,
            int MIDL__IWiaMiniDrv0060,
            Pointer<Int32> MIDL__IWiaMiniDrv0061,
            Pointer<Pointer<WIA_FORMAT_INFO>> MIDL__IWiaMiniDrv0062,
            Pointer<Int32> MIDL__IWiaMiniDrv0063,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0059,
        MIDL__IWiaMiniDrv0060,
        MIDL__IWiaMiniDrv0061,
        MIDL__IWiaMiniDrv0062,
        MIDL__IWiaMiniDrv0063,
      );

  int drvNotifyPnpEvent(
    Pointer<GUID> pEventGUID,
    Pointer<Utf16> bstrDeviceID,
    int ulReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pEventGUID,
            Pointer<Utf16> bstrDeviceID,
            Uint32 ulReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pEventGUID,
            Pointer<Utf16> bstrDeviceID,
            int ulReserved,
          )>()(
        ptr.ref.lpVtbl,
        pEventGUID,
        bstrDeviceID,
        ulReserved,
      );

  int drvUnInitializeWia(
    Pointer<Uint8> MIDL__IWiaMiniDrv0064,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0064,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> MIDL__IWiaMiniDrv0064,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IWiaMiniDrv0064,
      );
}
