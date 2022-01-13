// IGetSecurityCallContext.dart

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

import '../../system/com/IDispatch.dart';
import '../../system/componentservices/ISecurityCallContext.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IGetSecurityCallContext = '{CAFC823F-B441-11D1-B82B-0000F8757E2A}';

/// {@category Interface}
/// {@category com}
class IGetSecurityCallContext extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IGetSecurityCallContext(Pointer<COMObject> ptr) : super(ptr);

  int GetSecurityCallContext(
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        ppObject,
      );
}
