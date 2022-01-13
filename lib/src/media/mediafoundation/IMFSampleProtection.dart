// IMFSampleProtection.dart

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
const IID_IMFSampleProtection = '{8E36395F-C7B9-43C4-A54D-512B4AF63C95}';

/// {@category Interface}
/// {@category com}
class IMFSampleProtection extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFSampleProtection(Pointer<COMObject> ptr) : super(ptr);

  int GetInputProtectionVersion(
    Pointer<Uint32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );

  int GetOutputProtectionVersion(
    Pointer<Uint32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );

  int GetProtectionCertificate(
    int dwVersion,
    Pointer<Pointer<Uint8>> ppCert,
    Pointer<Uint32> pcbCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwVersion,
            Pointer<Pointer<Uint8>> ppCert,
            Pointer<Uint32> pcbCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwVersion,
            Pointer<Pointer<Uint8>> ppCert,
            Pointer<Uint32> pcbCert,
          )>()(
        ptr.ref.lpVtbl,
        dwVersion,
        ppCert,
        pcbCert,
      );

  int InitOutputProtection(
    int dwVersion,
    int dwOutputId,
    Pointer<Uint8> pbCert,
    int cbCert,
    Pointer<Pointer<Uint8>> ppbSeed,
    Pointer<Uint32> pcbSeed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwVersion,
            Uint32 dwOutputId,
            Pointer<Uint8> pbCert,
            Uint32 cbCert,
            Pointer<Pointer<Uint8>> ppbSeed,
            Pointer<Uint32> pcbSeed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwVersion,
            int dwOutputId,
            Pointer<Uint8> pbCert,
            int cbCert,
            Pointer<Pointer<Uint8>> ppbSeed,
            Pointer<Uint32> pcbSeed,
          )>()(
        ptr.ref.lpVtbl,
        dwVersion,
        dwOutputId,
        pbCert,
        cbCert,
        ppbSeed,
        pcbSeed,
      );

  int InitInputProtection(
    int dwVersion,
    int dwInputId,
    Pointer<Uint8> pbSeed,
    int cbSeed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwVersion,
            Uint32 dwInputId,
            Pointer<Uint8> pbSeed,
            Uint32 cbSeed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwVersion,
            int dwInputId,
            Pointer<Uint8> pbSeed,
            int cbSeed,
          )>()(
        ptr.ref.lpVtbl,
        dwVersion,
        dwInputId,
        pbSeed,
        cbSeed,
      );
}
