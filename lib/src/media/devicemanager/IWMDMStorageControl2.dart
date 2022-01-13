// IWMDMStorageControl2.dart

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

import '../../media/devicemanager/IWMDMStorageControl.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IWMDMOperation.dart';
import '../../media/devicemanager/IWMDMProgress.dart';
import '../../specialTypes.dart';
import '../../media/devicemanager/IWMDMStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMStorageControl2 = '{972C2E88-BD6C-4125-8E09-84F837E637B6}';

/// {@category Interface}
/// {@category com}
class IWMDMStorageControl2 extends IWMDMStorageControl {
  // vtable begins at 8, is 1 entries long.
  IWMDMStorageControl2(Pointer<COMObject> ptr) : super(ptr);

  int Insert2(
    int fuMode,
    Pointer<Utf16> pwszFileSource,
    Pointer<Utf16> pwszFileDest,
    Pointer<COMObject> pOperation,
    Pointer<COMObject> pProgress,
    Pointer<COMObject> pUnknown,
    Pointer<Pointer<COMObject>> ppNewObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<Utf16> pwszFileSource,
            Pointer<Utf16> pwszFileDest,
            Pointer<COMObject> pOperation,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pUnknown,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<Utf16> pwszFileSource,
            Pointer<Utf16> pwszFileDest,
            Pointer<COMObject> pOperation,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pUnknown,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pwszFileSource,
        pwszFileDest,
        pOperation,
        pProgress,
        pUnknown,
        ppNewObject,
      );
}
