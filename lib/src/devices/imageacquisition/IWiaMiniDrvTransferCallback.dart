// IWiaMiniDrvTransferCallback.dart

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
import '../../system/com/IStream.dart';
import '../../devices/imageacquisition/structs.g.dart';

/// @nodoc
const IID_IWiaMiniDrvTransferCallback =
    '{A9D2EE89-2CE5-4FF0-8ADB-C961D1D774CA}';

/// {@category Interface}
/// {@category com}
class IWiaMiniDrvTransferCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWiaMiniDrvTransferCallback(Pointer<COMObject> ptr) : super(ptr);

  int GetNextStream(
    int lFlags,
    Pointer<Utf16> bstrItemName,
    Pointer<Utf16> bstrFullItemName,
    Pointer<Pointer<COMObject>> ppIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIStream,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrItemName,
        bstrFullItemName,
        ppIStream,
      );

  int SendMessage(
    int lFlags,
    Pointer<WiaTransferParams> pWiaTransferParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
