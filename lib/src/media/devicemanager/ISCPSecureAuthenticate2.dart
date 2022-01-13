// ISCPSecureAuthenticate2.dart

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

import '../../media/devicemanager/ISCPSecureAuthenticate.dart';
import '../../media/devicemanager/ISCPSession.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSecureAuthenticate2 = '{B580CFAE-1672-47E2-ACAA-44BBECBCAE5B}';

/// {@category Interface}
/// {@category com}
class ISCPSecureAuthenticate2 extends ISCPSecureAuthenticate {
  // vtable begins at 4, is 1 entries long.
  ISCPSecureAuthenticate2(Pointer<COMObject> ptr) : super(ptr);

  int GetSCPSession(
    Pointer<Pointer<COMObject>> ppSCPSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSCPSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSCPSession,
          )>()(
        ptr.ref.lpVtbl,
        ppSCPSession,
      );
}
