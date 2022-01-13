// IWMDRMTranscryptionManager.dart

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
import '../../media/windowsmediaformat/IWMDRMTranscryptor.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMDRMTranscryptionManager = '{B1A887B2-A4F0-407A-B02E-EFBD23BBECDF}';

/// {@category Interface}
/// {@category com}
class IWMDRMTranscryptionManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMDRMTranscryptionManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateTranscryptor(
    Pointer<Pointer<COMObject>> ppTranscryptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTranscryptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTranscryptor,
          )>()(
        ptr.ref.lpVtbl,
        ppTranscryptor,
      );
}
