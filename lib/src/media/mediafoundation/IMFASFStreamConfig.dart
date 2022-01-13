// IMFASFStreamConfig.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFASFStreamConfig.dart';

/// @nodoc
const IID_IMFASFStreamConfig = '{9E8AE8D2-DBBD-4200-9ACA-06E6DF484913}';

/// {@category Interface}
/// {@category com}
class IMFASFStreamConfig extends IMFAttributes {
  // vtable begins at 33, is 10 entries long.
  IMFASFStreamConfig(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamType(
    Pointer<GUID> pguidStreamType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidStreamType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidStreamType,
          )>()(
        ptr.ref.lpVtbl,
        pguidStreamType,
      );

  int GetStreamNumber() => ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint16 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetStreamNumber(
    int wStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
      );

  int GetMediaType(
    Pointer<Pointer<COMObject>> ppIMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMediaType,
          )>()(
        ptr.ref.lpVtbl,
        ppIMediaType,
      );

  int SetMediaType(
    Pointer<COMObject> pIMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIMediaType,
          )>()(
        ptr.ref.lpVtbl,
        pIMediaType,
      );

  int GetPayloadExtensionCount(
    Pointer<Uint16> pcPayloadExtensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pcPayloadExtensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pcPayloadExtensions,
          )>()(
        ptr.ref.lpVtbl,
        pcPayloadExtensions,
      );

  int GetPayloadExtension(
    int wPayloadExtensionNumber,
    Pointer<GUID> pguidExtensionSystemID,
    Pointer<Uint16> pcbExtensionDataSize,
    Pointer<Uint8> pbExtensionSystemInfo,
    Pointer<Uint32> pcbExtensionSystemInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wPayloadExtensionNumber,
            Pointer<GUID> pguidExtensionSystemID,
            Pointer<Uint16> pcbExtensionDataSize,
            Pointer<Uint8> pbExtensionSystemInfo,
            Pointer<Uint32> pcbExtensionSystemInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wPayloadExtensionNumber,
            Pointer<GUID> pguidExtensionSystemID,
            Pointer<Uint16> pcbExtensionDataSize,
            Pointer<Uint8> pbExtensionSystemInfo,
            Pointer<Uint32> pcbExtensionSystemInfo,
          )>()(
        ptr.ref.lpVtbl,
        wPayloadExtensionNumber,
        pguidExtensionSystemID,
        pcbExtensionDataSize,
        pbExtensionSystemInfo,
        pcbExtensionSystemInfo,
      );

  int AddPayloadExtension(
    GUID guidExtensionSystemID,
    int cbExtensionDataSize,
    Pointer<Uint8> pbExtensionSystemInfo,
    int cbExtensionSystemInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int RemoveAllPayloadExtensions() => ptr.ref.lpVtbl.value
          .elementAt(41)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppIStreamConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamConfig,
          )>()(
        ptr.ref.lpVtbl,
        ppIStreamConfig,
      );
}
