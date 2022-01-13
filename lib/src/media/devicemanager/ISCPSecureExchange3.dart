// ISCPSecureExchange3.dart

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

import '../../media/devicemanager/ISCPSecureExchange2.dart';
import '../../media/devicemanager/IMDSPDevice.dart';
import '../../media/devicemanager/IWMDMProgress3.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureExchange3 = '{AB4E77E4-8908-4B17-BD2A-B1DBE6DD69E1}';

/// {@category Interface}
/// {@category com}
class ISCPSecureExchange3 extends ISCPSecureExchange2 {
  // vtable begins at 7, is 3 entries long.
  ISCPSecureExchange3(Pointer<COMObject> ptr) : super(ptr);

  int TransferContainerDataOnClearChannel(
    Pointer<COMObject> pDevice,
    Pointer<Uint8> pData,
    int dwSize,
    Pointer<COMObject> pProgressCallback,
    Pointer<Uint32> pfuReadyFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Uint8> pData,
            Uint32 dwSize,
            Pointer<COMObject> pProgressCallback,
            Pointer<Uint32> pfuReadyFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Uint8> pData,
            int dwSize,
            Pointer<COMObject> pProgressCallback,
            Pointer<Uint32> pfuReadyFlags,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pData,
        dwSize,
        pProgressCallback,
        pfuReadyFlags,
      );

  int GetObjectDataOnClearChannel(
    Pointer<COMObject> pDevice,
    Pointer<Uint8> pData,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pData,
        pdwSize,
      );

  int TransferCompleteForDevice(
    Pointer<COMObject> pDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
      );
}
