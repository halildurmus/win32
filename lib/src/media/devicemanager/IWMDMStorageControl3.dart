// IWMDMStorageControl3.dart

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

import '../../media/devicemanager/IWMDMStorageControl2.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IWMDMOperation.dart';
import '../../media/devicemanager/IWMDMProgress.dart';
import '../../media/devicemanager/IWMDMMetaData.dart';
import '../../specialTypes.dart';
import '../../media/devicemanager/IWMDMStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMStorageControl3 = '{B3266365-D4F3-4696-8D53-BD27EC60993A}';

/// {@category Interface}
/// {@category com}
class IWMDMStorageControl3 extends IWMDMStorageControl2 {
  // vtable begins at 9, is 1 entries long.
  IWMDMStorageControl3(Pointer<COMObject> ptr) : super(ptr);

  int Insert3(
    int fuMode,
    int fuType,
    Pointer<Utf16> pwszFileSource,
    Pointer<Utf16> pwszFileDest,
    Pointer<COMObject> pOperation,
    Pointer<COMObject> pProgress,
    Pointer<COMObject> pMetaData,
    Pointer<COMObject> pUnknown,
    Pointer<Pointer<COMObject>> ppNewObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Uint32 fuType,
            Pointer<Utf16> pwszFileSource,
            Pointer<Utf16> pwszFileDest,
            Pointer<COMObject> pOperation,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pMetaData,
            Pointer<COMObject> pUnknown,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            int fuType,
            Pointer<Utf16> pwszFileSource,
            Pointer<Utf16> pwszFileDest,
            Pointer<COMObject> pOperation,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pMetaData,
            Pointer<COMObject> pUnknown,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        fuType,
        pwszFileSource,
        pwszFileDest,
        pOperation,
        pProgress,
        pMetaData,
        pUnknown,
        ppNewObject,
      );
}
