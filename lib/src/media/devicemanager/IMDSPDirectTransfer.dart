// IMDSPDirectTransfer.dart

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
import '../../media/devicemanager/IWMDMOperation.dart';
import '../../media/devicemanager/IWMDMMetaData.dart';
import '../../media/devicemanager/IWMDMProgress.dart';
import '../../media/devicemanager/IMDSPStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPDirectTransfer = '{C2FE57A8-9304-478C-9EE4-47E397B912D7}';

/// {@category Interface}
/// {@category com}
class IMDSPDirectTransfer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMDSPDirectTransfer(Pointer<COMObject> ptr) : super(ptr);

  int TransferToDevice(
    Pointer<Utf16> pwszSourceFilePath,
    Pointer<COMObject> pSourceOperation,
    int fuFlags,
    Pointer<Utf16> pwszDestinationName,
    Pointer<COMObject> pSourceMetaData,
    Pointer<COMObject> pTransferProgress,
    Pointer<Pointer<COMObject>> ppNewObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSourceFilePath,
            Pointer<COMObject> pSourceOperation,
            Uint32 fuFlags,
            Pointer<Utf16> pwszDestinationName,
            Pointer<COMObject> pSourceMetaData,
            Pointer<COMObject> pTransferProgress,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSourceFilePath,
            Pointer<COMObject> pSourceOperation,
            int fuFlags,
            Pointer<Utf16> pwszDestinationName,
            Pointer<COMObject> pSourceMetaData,
            Pointer<COMObject> pTransferProgress,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>()(
        ptr.ref.lpVtbl,
        pwszSourceFilePath,
        pSourceOperation,
        fuFlags,
        pwszDestinationName,
        pSourceMetaData,
        pTransferProgress,
        ppNewObject,
      );
}
