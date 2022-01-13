// IWSDInboundAttachment.dart

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
const IID_IWSDInboundAttachment = '{5BD6CA65-233C-4FB8-9F7A-2641619655C9}';

/// {@category Interface}
/// {@category com}
class IWSDInboundAttachment extends IWSDAttachment {
  // vtable begins at 3, is 2 entries long.
  IWSDInboundAttachment(Pointer<COMObject> ptr) : super(ptr);

  int Read(
    Pointer<Uint8> pBuffer,
    int dwBytesToRead,
    Pointer<Uint32> pdwNumberOfBytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            Uint32 dwBytesToRead,
            Pointer<Uint32> pdwNumberOfBytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            int dwBytesToRead,
            Pointer<Uint32> pdwNumberOfBytesRead,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        dwBytesToRead,
        pdwNumberOfBytesRead,
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
}
