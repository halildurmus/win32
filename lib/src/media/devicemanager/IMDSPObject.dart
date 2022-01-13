// IMDSPObject.dart

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
import '../../media/devicemanager/IWMDMProgress.dart';
import '../../media/devicemanager/IMDSPStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPObject = '{1DCB3A18-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IMDSPObject extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMDSPObject(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    int fuMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
      );

  int Read(
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

  int Write(
    Pointer<Uint8> pData,
    Pointer<Uint32> pdwSize,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Delete(
    int fuMode,
    Pointer<COMObject> pProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<COMObject> pProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<COMObject> pProgress,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pProgress,
      );

  int Seek(
    int fuFlags,
    int dwOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuFlags,
            Uint32 dwOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuFlags,
            int dwOffset,
          )>()(
        ptr.ref.lpVtbl,
        fuFlags,
        dwOffset,
      );

  int Rename(
    Pointer<Utf16> pwszNewName,
    Pointer<COMObject> pProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszNewName,
            Pointer<COMObject> pProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszNewName,
            Pointer<COMObject> pProgress,
          )>()(
        ptr.ref.lpVtbl,
        pwszNewName,
        pProgress,
      );

  int Move(
    int fuMode,
    Pointer<COMObject> pProgress,
    Pointer<COMObject> pTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pTarget,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pProgress,
        pTarget,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
