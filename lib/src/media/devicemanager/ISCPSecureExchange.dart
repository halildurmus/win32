// ISCPSecureExchange.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureExchange = '{1DCB3A0E-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class ISCPSecureExchange extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISCPSecureExchange(Pointer<COMObject> ptr) : super(ptr);

  int TransferContainerData(
    Pointer<Uint8> pData,
    int dwSize,
    Pointer<Uint32> pfuReadyFlags,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Uint32 dwSize,
            Pointer<Uint32> pfuReadyFlags,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            int dwSize,
            Pointer<Uint32> pfuReadyFlags,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        dwSize,
        pfuReadyFlags,
        abMac,
      );

  int ObjectData(
    Pointer<Uint8> pData,
    Pointer<Uint32> pdwSize,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        pdwSize,
        abMac,
      );

  int TransferComplete() => ptr.ref.lpVtbl.value
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
