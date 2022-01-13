// ISCPSecureExchange2.dart

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

import '../../media/devicemanager/ISCPSecureExchange.dart';
import '../../media/devicemanager/IWMDMProgress3.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureExchange2 = '{6C62FC7B-2690-483F-9D44-0A20CB35577C}';

/// {@category Interface}
/// {@category com}
class ISCPSecureExchange2 extends ISCPSecureExchange {
  // vtable begins at 6, is 1 entries long.
  ISCPSecureExchange2(Pointer<COMObject> ptr) : super(ptr);

  int TransferContainerData2(
    Pointer<Uint8> pData,
    int dwSize,
    Pointer<COMObject> pProgressCallback,
    Pointer<Uint32> pfuReadyFlags,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Uint32 dwSize,
            Pointer<COMObject> pProgressCallback,
            Pointer<Uint32> pfuReadyFlags,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            int dwSize,
            Pointer<COMObject> pProgressCallback,
            Pointer<Uint32> pfuReadyFlags,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        dwSize,
        pProgressCallback,
        pfuReadyFlags,
        abMac,
      );
}
