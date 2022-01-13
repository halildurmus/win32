// IWiaDataTransfer.dart

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
import '../../system/com/structs.g.dart';
import '../../devices/imageacquisition/IWiaDataCallback.dart';
import '../../foundation/structs.g.dart';
import '../../devices/imageacquisition/structs.g.dart';
import '../../devices/imageacquisition/IEnumWIA_FORMAT_INFO.dart';

/// @nodoc
const IID_IWiaDataTransfer = '{A6CEF998-A5B0-11D2-A08F-00C04F72DC3C}';

/// {@category Interface}
/// {@category com}
class IWiaDataTransfer extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWiaDataTransfer(Pointer<COMObject> ptr) : super(ptr);

  int idtGetData(
    Pointer<STGMEDIUM> pMedium,
    Pointer<COMObject> pIWiaDataCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STGMEDIUM> pMedium,
            Pointer<COMObject> pIWiaDataCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STGMEDIUM> pMedium,
            Pointer<COMObject> pIWiaDataCallback,
          )>()(
        ptr.ref.lpVtbl,
        pMedium,
        pIWiaDataCallback,
      );

  int idtGetBandedData(
    Pointer<WIA_DATA_TRANSFER_INFO> pWiaDataTransInfo,
    Pointer<COMObject> pIWiaDataCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WIA_DATA_TRANSFER_INFO> pWiaDataTransInfo,
            Pointer<COMObject> pIWiaDataCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WIA_DATA_TRANSFER_INFO> pWiaDataTransInfo,
            Pointer<COMObject> pIWiaDataCallback,
          )>()(
        ptr.ref.lpVtbl,
        pWiaDataTransInfo,
        pIWiaDataCallback,
      );

  int idtQueryGetData(
    Pointer<WIA_FORMAT_INFO> pfe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WIA_FORMAT_INFO> pfe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WIA_FORMAT_INFO> pfe,
          )>()(
        ptr.ref.lpVtbl,
        pfe,
      );

  int idtEnumWIA_FORMAT_INFO(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int idtGetExtendedTransferInfo(
    Pointer<WIA_EXTENDED_TRANSFER_INFO> pExtendedTransferInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WIA_EXTENDED_TRANSFER_INFO> pExtendedTransferInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WIA_EXTENDED_TRANSFER_INFO> pExtendedTransferInfo,
          )>()(
        ptr.ref.lpVtbl,
        pExtendedTransferInfo,
      );
}
