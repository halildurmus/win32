// IMFSensorDevice.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFAttributes.dart';

/// @nodoc
const IID_IMFSensorDevice = '{FB9F48F2-2A18-4E28-9730-786F30F04DC4}';

/// {@category Interface}
/// {@category com}
class IMFSensorDevice extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IMFSensorDevice(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceId(
    Pointer<Uint64> pDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceId,
      );

  int GetDeviceType(
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int GetFlags(
    Pointer<Uint64> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetSymbolicLink(
    Pointer<Utf16> SymbolicLink,
    int cchSymbolicLink,
    Pointer<Int32> pcchWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetDeviceAttributes(
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetStreamAttributesCount(
    int eType,
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eType,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eType,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        eType,
        pdwCount,
      );

  int GetStreamAttributes(
    int eType,
    int dwIndex,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eType,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eType,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        eType,
        dwIndex,
        ppAttributes,
      );

  int SetSensorDeviceMode(
    int eMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eMode,
          )>()(
        ptr.ref.lpVtbl,
        eMode,
      );

  int GetSensorDeviceMode(
    Pointer<Int32> peMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> peMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> peMode,
          )>()(
        ptr.ref.lpVtbl,
        peMode,
      );
}
