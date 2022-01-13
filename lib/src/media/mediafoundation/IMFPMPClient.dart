// IMFPMPClient.dart

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
import '../../media/mediafoundation/IMFPMPHost.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFPMPClient = '{6C4E655D-EAD8-4421-B6B9-54DCDBBDF820}';

/// {@category Interface}
/// {@category com}
class IMFPMPClient extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFPMPClient(Pointer<COMObject> ptr) : super(ptr);

  int SetPMPHost(
    Pointer<COMObject> pPMPHost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPMPHost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPMPHost,
          )>()(
        ptr.ref.lpVtbl,
        pPMPHost,
      );
}
