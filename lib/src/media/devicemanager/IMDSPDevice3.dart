// IMDSPDevice3.dart

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

import '../../media/devicemanager/IMDSPDevice2.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../media/devicemanager/IMDSPStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPDevice3 = '{1A839845-FC55-487C-976F-EE38AC0E8C4E}';

/// {@category Interface}
/// {@category com}
class IMDSPDevice3 extends IMDSPDevice2 {
  // vtable begins at 18, is 5 entries long.
  IMDSPDevice3(Pointer<COMObject> ptr) : super(ptr);

  int GetProperty(
    Pointer<Utf16> pwszPropName,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPropName,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPropName,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszPropName,
        pValue,
      );

  int SetProperty(
    Pointer<Utf16> pwszPropName,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPropName,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPropName,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszPropName,
        pValue,
      );

  int GetFormatCapability(
    int format,
    Pointer<WMDM_FORMAT_CAPABILITY> pFormatSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 format,
            Pointer<WMDM_FORMAT_CAPABILITY> pFormatSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int format,
            Pointer<WMDM_FORMAT_CAPABILITY> pFormatSupport,
          )>()(
        ptr.ref.lpVtbl,
        format,
        pFormatSupport,
      );

  int DeviceIoControl(
    int dwIoControlCode,
    Pointer<Uint8> lpInBuffer,
    int nInBufferSize,
    Pointer<Uint8> lpOutBuffer,
    Pointer<Uint32> pnOutBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIoControlCode,
            Pointer<Uint8> lpInBuffer,
            Uint32 nInBufferSize,
            Pointer<Uint8> lpOutBuffer,
            Pointer<Uint32> pnOutBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIoControlCode,
            Pointer<Uint8> lpInBuffer,
            int nInBufferSize,
            Pointer<Uint8> lpOutBuffer,
            Pointer<Uint32> pnOutBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        dwIoControlCode,
        lpInBuffer,
        nInBufferSize,
        lpOutBuffer,
        pnOutBufferSize,
      );

  int FindStorage(
    int findScope,
    Pointer<Utf16> pwszUniqueID,
    Pointer<Pointer<COMObject>> ppStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 findScope,
            Pointer<Utf16> pwszUniqueID,
            Pointer<Pointer<COMObject>> ppStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int findScope,
            Pointer<Utf16> pwszUniqueID,
            Pointer<Pointer<COMObject>> ppStorage,
          )>()(
        ptr.ref.lpVtbl,
        findScope,
        pwszUniqueID,
        ppStorage,
      );
}
