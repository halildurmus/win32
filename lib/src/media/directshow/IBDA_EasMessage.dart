// IBDA_EasMessage.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_EasMessage = '{D806973D-3EBE-46DE-8FBB-6358FE784208}';

/// {@category Interface}
/// {@category com}
class IBDA_EasMessage extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBDA_EasMessage(Pointer<COMObject> ptr) : super(ptr);

  int get_EasMessage(
    int ulEventID,
    Pointer<Pointer<COMObject>> ppEASObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulEventID,
            Pointer<Pointer<COMObject>> ppEASObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulEventID,
            Pointer<Pointer<COMObject>> ppEASObject,
          )>()(
        ptr.ref.lpVtbl,
        ulEventID,
        ppEASObject,
      );
}
