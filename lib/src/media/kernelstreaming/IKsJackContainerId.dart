// IKsJackContainerId.dart

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
const IID_IKsJackContainerId = '{C99AF463-D629-4EC4-8C00-E54D68154248}';

/// {@category Interface}
/// {@category com}
class IKsJackContainerId extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IKsJackContainerId(Pointer<COMObject> ptr) : super(ptr);

  int GetJackContainerId(
    Pointer<GUID> pJackContainerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pJackContainerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pJackContainerId,
          )>()(
        ptr.ref.lpVtbl,
        pJackContainerId,
      );
}
