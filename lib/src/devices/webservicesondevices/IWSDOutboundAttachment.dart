// IWSDOutboundAttachment.dart

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

import '../../devices/webservicesondevices/IWSDAttachment.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDOutboundAttachment = '{AA302F8D-5A22-4BA5-B392-AA8486F4C15D}';

/// {@category Interface}
/// {@category com}
class IWSDOutboundAttachment extends IWSDAttachment {
  // vtable begins at 3, is 3 entries long.
  IWSDOutboundAttachment(Pointer<COMObject> ptr) : super(ptr);

  int Write(
    Pointer<Uint8> pBuffer,
    int dwBytesToWrite,
    Pointer<Uint32> pdwNumberOfBytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            Uint32 dwBytesToWrite,
            Pointer<Uint32> pdwNumberOfBytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            int dwBytesToWrite,
            Pointer<Uint32> pdwNumberOfBytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        dwBytesToWrite,
        pdwNumberOfBytesWritten,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Abort() => ptr.ref.lpVtbl.value
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
}
