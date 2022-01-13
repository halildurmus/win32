// ID3D11AuthenticatedChannel.dart

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

import '../../graphics/direct3d11/ID3D11DeviceChild.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11AuthenticatedChannel = '{3015A308-DCBD-47AA-A747-192486D14D4A}';

/// {@category Interface}
/// {@category com}
class ID3D11AuthenticatedChannel extends ID3D11DeviceChild {
  // vtable begins at 7, is 3 entries long.
  ID3D11AuthenticatedChannel(Pointer<COMObject> ptr) : super(ptr);

  int GetCertificateSize(
    Pointer<Uint32> pCertificateSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCertificateSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCertificateSize,
          )>()(
        ptr.ref.lpVtbl,
        pCertificateSize,
      );

  int GetCertificate(
    int CertificateSize,
    Pointer<Uint8> pCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 CertificateSize,
            Pointer<Uint8> pCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CertificateSize,
            Pointer<Uint8> pCertificate,
          )>()(
        ptr.ref.lpVtbl,
        CertificateSize,
        pCertificate,
      );

  void GetChannelHandle(
    Pointer<IntPtr> pChannelHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<IntPtr> pChannelHandle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<IntPtr> pChannelHandle,
          )>()(
        ptr.ref.lpVtbl,
        pChannelHandle,
      );
}
