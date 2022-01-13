// IMFDRMNetHelper.dart

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

/// @nodoc
const IID_IMFDRMNetHelper = '{3D1FF0EA-679A-4190-8D46-7FA69E8C7E15}';

/// {@category Interface}
/// {@category com}
class IMFDRMNetHelper extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFDRMNetHelper(Pointer<COMObject> ptr) : super(ptr);

  int ProcessLicenseRequest(
    Pointer<Uint8> pLicenseRequest,
    int cbLicenseRequest,
    Pointer<Pointer<Uint8>> ppLicenseResponse,
    Pointer<Uint32> pcbLicenseResponse,
    Pointer<Pointer<Utf16>> pbstrKID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pLicenseRequest,
            Uint32 cbLicenseRequest,
            Pointer<Pointer<Uint8>> ppLicenseResponse,
            Pointer<Uint32> pcbLicenseResponse,
            Pointer<Pointer<Utf16>> pbstrKID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pLicenseRequest,
            int cbLicenseRequest,
            Pointer<Pointer<Uint8>> ppLicenseResponse,
            Pointer<Uint32> pcbLicenseResponse,
            Pointer<Pointer<Utf16>> pbstrKID,
          )>()(
        ptr.ref.lpVtbl,
        pLicenseRequest,
        cbLicenseRequest,
        ppLicenseResponse,
        pcbLicenseResponse,
        pbstrKID,
      );

  int GetChainedLicenseResponse(
    Pointer<Pointer<Uint8>> ppLicenseResponse,
    Pointer<Uint32> pcbLicenseResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppLicenseResponse,
            Pointer<Uint32> pcbLicenseResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppLicenseResponse,
            Pointer<Uint32> pcbLicenseResponse,
          )>()(
        ptr.ref.lpVtbl,
        ppLicenseResponse,
        pcbLicenseResponse,
      );
}
