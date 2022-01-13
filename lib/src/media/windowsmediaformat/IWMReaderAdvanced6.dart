// IWMReaderAdvanced6.dart

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

import '../../media/windowsmediaformat/IWMReaderAdvanced5.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMReaderAdvanced6 = '{18A2E7F8-428F-4ACD-8A00-E64639BC93DE}';

/// {@category Interface}
/// {@category com}
class IWMReaderAdvanced6 extends IWMReaderAdvanced5 {
  // vtable begins at 50, is 1 entries long.
  IWMReaderAdvanced6(Pointer<COMObject> ptr) : super(ptr);

  int SetProtectStreamSamples(
    Pointer<Uint8> pbCertificate,
    int cbCertificate,
    int dwCertificateType,
    int dwFlags,
    Pointer<Uint8> pbInitializationVector,
    Pointer<Uint32> pcbInitializationVector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbCertificate,
            Uint32 cbCertificate,
            Uint32 dwCertificateType,
            Uint32 dwFlags,
            Pointer<Uint8> pbInitializationVector,
            Pointer<Uint32> pcbInitializationVector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbCertificate,
            int cbCertificate,
            int dwCertificateType,
            int dwFlags,
            Pointer<Uint8> pbInitializationVector,
            Pointer<Uint32> pcbInitializationVector,
          )>()(
        ptr.ref.lpVtbl,
        pbCertificate,
        cbCertificate,
        dwCertificateType,
        dwFlags,
        pbInitializationVector,
        pcbInitializationVector,
      );
}
