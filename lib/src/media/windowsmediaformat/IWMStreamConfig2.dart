// IWMStreamConfig2.dart

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

import '../../media/windowsmediaformat/IWMStreamConfig.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMStreamConfig2 = '{7688D8CB-FC0D-43BD-9459-5A8DEC200CFA}';

/// {@category Interface}
/// {@category com}
class IWMStreamConfig2 extends IWMStreamConfig {
  // vtable begins at 14, is 6 entries long.
  IWMStreamConfig2(Pointer<COMObject> ptr) : super(ptr);

  int GetTransportType(
    Pointer<Int32> pnTransportType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnTransportType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnTransportType,
          )>()(
        ptr.ref.lpVtbl,
        pnTransportType,
      );

  int SetTransportType(
    int nTransportType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nTransportType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nTransportType,
          )>()(
        ptr.ref.lpVtbl,
        nTransportType,
      );

  int AddDataUnitExtension(
    GUID guidExtensionSystemID,
    int cbExtensionDataSize,
    Pointer<Uint8> pbExtensionSystemInfo,
    int cbExtensionSystemInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidExtensionSystemID,
            Uint16 cbExtensionDataSize,
            Pointer<Uint8> pbExtensionSystemInfo,
            Uint32 cbExtensionSystemInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidExtensionSystemID,
            int cbExtensionDataSize,
            Pointer<Uint8> pbExtensionSystemInfo,
            int cbExtensionSystemInfo,
          )>()(
        ptr.ref.lpVtbl,
        guidExtensionSystemID,
        cbExtensionDataSize,
        pbExtensionSystemInfo,
        cbExtensionSystemInfo,
      );

  int GetDataUnitExtensionCount(
    Pointer<Uint16> pcDataUnitExtensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pcDataUnitExtensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pcDataUnitExtensions,
          )>()(
        ptr.ref.lpVtbl,
        pcDataUnitExtensions,
      );

  int GetDataUnitExtension(
    int wDataUnitExtensionNumber,
    Pointer<GUID> pguidExtensionSystemID,
    Pointer<Uint16> pcbExtensionDataSize,
    Pointer<Uint8> pbExtensionSystemInfo,
    Pointer<Uint32> pcbExtensionSystemInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wDataUnitExtensionNumber,
            Pointer<GUID> pguidExtensionSystemID,
            Pointer<Uint16> pcbExtensionDataSize,
            Pointer<Uint8> pbExtensionSystemInfo,
            Pointer<Uint32> pcbExtensionSystemInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wDataUnitExtensionNumber,
            Pointer<GUID> pguidExtensionSystemID,
            Pointer<Uint16> pcbExtensionDataSize,
            Pointer<Uint8> pbExtensionSystemInfo,
            Pointer<Uint32> pcbExtensionSystemInfo,
          )>()(
        ptr.ref.lpVtbl,
        wDataUnitExtensionNumber,
        pguidExtensionSystemID,
        pcbExtensionDataSize,
        pbExtensionSystemInfo,
        pcbExtensionSystemInfo,
      );

  int RemoveAllDataUnitExtensions() => ptr.ref.lpVtbl.value
          .elementAt(19)
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
