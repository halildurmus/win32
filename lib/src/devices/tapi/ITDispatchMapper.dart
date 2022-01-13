// ITDispatchMapper.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITDispatchMapper = '{E9225295-C759-11D1-A02B-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITDispatchMapper extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  ITDispatchMapper(Pointer<COMObject> ptr) : super(ptr);

  int QueryDispatchInterface(
    Pointer<Utf16> pIID,
    Pointer<COMObject> pInterfaceToMap,
    Pointer<Pointer<COMObject>> ppReturnedInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pIID,
            Pointer<COMObject> pInterfaceToMap,
            Pointer<Pointer<COMObject>> ppReturnedInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pIID,
            Pointer<COMObject> pInterfaceToMap,
            Pointer<Pointer<COMObject>> ppReturnedInterface,
          )>()(
        ptr.ref.lpVtbl,
        pIID,
        pInterfaceToMap,
        ppReturnedInterface,
      );
}
