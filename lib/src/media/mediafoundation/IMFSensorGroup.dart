// IMFSensorGroup.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFSensorDevice.dart';
import '../../media/mediafoundation/IMFMediaSource.dart';

/// @nodoc
const IID_IMFSensorGroup = '{4110243A-9757-461F-89F1-F22345BCAB4E}';

/// {@category Interface}
/// {@category com}
class IMFSensorGroup extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMFSensorGroup(Pointer<COMObject> ptr) : super(ptr);

  int GetSymbolicLink(
    Pointer<Utf16> SymbolicLink,
    int cchSymbolicLink,
    Pointer<Int32> pcchWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SymbolicLink,
            Int32 cchSymbolicLink,
            Pointer<Int32> pcchWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SymbolicLink,
            int cchSymbolicLink,
            Pointer<Int32> pcchWritten,
          )>()(
        ptr.ref.lpVtbl,
        SymbolicLink,
        cchSymbolicLink,
        pcchWritten,
      );

  int GetFlags(
    Pointer<Uint64> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int GetSensorGroupAttributes(
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        ppAttributes,
      );

  int GetSensorDeviceCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetSensorDevice(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppDevice,
      );

  int SetDefaultSensorDeviceIndex(
    int dwIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
      );

  int GetDefaultSensorDeviceIndex(
    Pointer<Uint32> pdwIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwIndex,
          )>()(
        ptr.ref.lpVtbl,
        pdwIndex,
      );

  int CreateMediaSource(
    Pointer<Pointer<COMObject>> ppSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSource,
          )>()(
        ptr.ref.lpVtbl,
        ppSource,
      );
}
