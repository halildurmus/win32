// IWMDRMWriter2.dart

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

import '../../media/windowsmediaformat/IWMDRMWriter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMDRMWriter2 = '{38EE7A94-40E2-4E10-AA3F-33FD3210ED5B}';

/// {@category Interface}
/// {@category com}
class IWMDRMWriter2 extends IWMDRMWriter {
  // vtable begins at 7, is 1 entries long.
  IWMDRMWriter2(Pointer<COMObject> ptr) : super(ptr);

  int SetWMDRMNetEncryption(
    int fSamplesEncrypted,
    Pointer<Uint8> pbKeyID,
    int cbKeyID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSamplesEncrypted,
            Pointer<Uint8> pbKeyID,
            Uint32 cbKeyID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSamplesEncrypted,
            Pointer<Uint8> pbKeyID,
            int cbKeyID,
          )>()(
        ptr.ref.lpVtbl,
        fSamplesEncrypted,
        pbKeyID,
        cbKeyID,
      );
}
