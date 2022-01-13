// ILayoutStorage.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structuredstorage/ILockBytes.dart';

/// @nodoc
const IID_ILayoutStorage = '{0E6D4D90-6738-11CF-9608-00AA00680DB4}';

/// {@category Interface}
/// {@category com}
class ILayoutStorage extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ILayoutStorage(Pointer<COMObject> ptr) : super(ptr);

  int LayoutScript(
    Pointer<StorageLayout> pStorageLayout,
    int nEntries,
    int glfInterleavedFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<StorageLayout> pStorageLayout,
            Uint32 nEntries,
            Uint32 glfInterleavedFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<StorageLayout> pStorageLayout,
            int nEntries,
            int glfInterleavedFlag,
          )>()(
        ptr.ref.lpVtbl,
        pStorageLayout,
        nEntries,
        glfInterleavedFlag,
      );

  int BeginMonitor() => ptr.ref.lpVtbl.value
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

  int EndMonitor() => ptr.ref.lpVtbl.value
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

  int ReLayoutDocfile(
    Pointer<Utf16> pwcsNewDfName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwcsNewDfName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwcsNewDfName,
          )>()(
        ptr.ref.lpVtbl,
        pwcsNewDfName,
      );

  int ReLayoutDocfileOnILockBytes(
    Pointer<COMObject> pILockBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pILockBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pILockBytes,
          )>()(
        ptr.ref.lpVtbl,
        pILockBytes,
      );
}
