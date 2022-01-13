// ICallInterceptor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/callobj/ICallIndirect.dart';
import '../../../system/com/callobj/ICallFrameEvents.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICallInterceptor = '{60C7CA75-896D-11D2-B8B6-00C04FB9618A}';

/// {@category Interface}
/// {@category com}
class ICallInterceptor extends ICallIndirect {
  // vtable begins at 7, is 2 entries long.
  ICallInterceptor(Pointer<COMObject> ptr) : super(ptr);

  int RegisterSink(
    Pointer<COMObject> psink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psink,
          )>()(
        ptr.ref.lpVtbl,
        psink,
      );

  int GetRegisteredSink(
    Pointer<Pointer<COMObject>> ppsink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsink,
          )>()(
        ptr.ref.lpVtbl,
        ppsink,
      );
}
