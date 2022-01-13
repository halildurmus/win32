// IWMDMStorageControl.dart

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
import '../../media/devicemanager/IWMDMProgress.dart';
import '../../media/devicemanager/IWMDMStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMStorageControl = '{1DCB3A08-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IWMDMStorageControl extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWMDMStorageControl(Pointer<COMObject> ptr) : super(ptr);

  int Insert(
    int fuMode,
    Pointer<Utf16> pwszFile,
    Pointer<COMObject> pOperation,
    Pointer<COMObject> pProgress,
    Pointer<Pointer<COMObject>> ppNewObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<Utf16> pwszFile,
            Pointer<COMObject> pOperation,
            Pointer<COMObject> pProgress,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<Utf16> pwszFile,
            Pointer<COMObject> pOperation,
            Pointer<COMObject> pProgress,
            Pointer<Pointer<COMObject>> ppNewObject,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pwszFile,
        pOperation,
        pProgress,
        ppNewObject,
      );

  int Delete(
    int fuMode,
    Pointer<COMObject> pProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Rename(
    int fuMode,
    Pointer<Utf16> pwszNewName,
    Pointer<COMObject> pProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<Utf16> pwszNewName,
            Pointer<COMObject> pProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<Utf16> pwszNewName,
            Pointer<COMObject> pProgress,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pwszNewName,
        pProgress,
      );

  int Read(
    int fuMode,
    Pointer<Utf16> pwszFile,
    Pointer<COMObject> pProgress,
    Pointer<COMObject> pOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<Utf16> pwszFile,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<Utf16> pwszFile,
            Pointer<COMObject> pProgress,
            Pointer<COMObject> pOperation,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pwszFile,
        pProgress,
        pOperation,
      );

  int Move(
    int fuMode,
    Pointer<COMObject> pTargetObject,
    Pointer<COMObject> pProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<COMObject> pTargetObject,
            Pointer<COMObject> pProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<COMObject> pTargetObject,
            Pointer<COMObject> pProgress,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pTargetObject,
        pProgress,
      );
}
