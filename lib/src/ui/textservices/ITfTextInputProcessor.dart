// ITfTextInputProcessor.dart

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
import '../../ui/textservices/ITfThreadMgr.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfTextInputProcessor = '{AA80E7F7-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfTextInputProcessor extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfTextInputProcessor(Pointer<COMObject> ptr) : super(ptr);

  int Activate(
    Pointer<COMObject> ptim,
    int tid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ptim,
            Uint32 tid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ptim,
            int tid,
          )>()(
        ptr.ref.lpVtbl,
        ptim,
        tid,
      );

  int Deactivate() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
