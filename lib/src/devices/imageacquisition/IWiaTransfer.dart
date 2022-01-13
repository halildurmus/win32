// IWiaTransfer.dart

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
import '../../devices/imageacquisition/IWiaTransferCallback.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../devices/imageacquisition/IEnumWIA_FORMAT_INFO.dart';

/// @nodoc
const IID_IWiaTransfer = '{C39D6942-2F4E-4D04-92FE-4EF4D3A1DE5A}';

/// {@category Interface}
/// {@category com}
class IWiaTransfer extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWiaTransfer(Pointer<COMObject> ptr) : super(ptr);

  int Download(
    int lFlags,
    Pointer<COMObject> pIWiaTransferCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pIWiaTransferCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pIWiaTransferCallback,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pIWiaTransferCallback,
      );

  int Upload(
    int lFlags,
    Pointer<COMObject> pSource,
    Pointer<COMObject> pIWiaTransferCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pSource,
            Pointer<COMObject> pIWiaTransferCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pSource,
            Pointer<COMObject> pIWiaTransferCallback,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pSource,
        pIWiaTransferCallback,
      );

  int Cancel() => ptr.ref.lpVtbl.value
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

  int EnumWIA_FORMAT_INFO(
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
}
