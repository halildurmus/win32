// IWiaTransferCallback.dart

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
import '../../devices/imageacquisition/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IWiaTransferCallback = '{27D4EAAF-28A6-4CA5-9AAB-E678168B9527}';

/// {@category Interface}
/// {@category com}
class IWiaTransferCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWiaTransferCallback(Pointer<COMObject> ptr) : super(ptr);

  int TransferCallback(
    int lFlags,
    Pointer<WiaTransferParams> pWiaTransferParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<WiaTransferParams> pWiaTransferParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<WiaTransferParams> pWiaTransferParams,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pWiaTransferParams,
      );

  int GetNextStream(
    int lFlags,
    Pointer<Utf16> bstrItemName,
    Pointer<Utf16> bstrFullItemName,
    Pointer<Pointer<COMObject>> ppDestination,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppDestination,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppDestination,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrItemName,
        bstrFullItemName,
        ppDestination,
      );
}
