// IMFMediaEngineOPMInfo.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaEngineOPMInfo = '{765763E6-6C01-4B01-BB0F-B829F60ED28C}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineOPMInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaEngineOPMInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetOPMInfo(
    Pointer<Int32> pStatus,
    Pointer<Int32> pConstricted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStatus,
            Pointer<Int32> pConstricted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStatus,
            Pointer<Int32> pConstricted,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
        pConstricted,
      );
}
