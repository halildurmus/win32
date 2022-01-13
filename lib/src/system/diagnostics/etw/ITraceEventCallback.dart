// ITraceEventCallback.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/etw/ITraceEvent.dart';
import '../../../system/diagnostics/etw/ITraceRelogger.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ITraceEventCallback = '{3ED25501-593F-43E9-8F38-3AB46F5A4A52}';

/// {@category Interface}
/// {@category com}
class ITraceEventCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITraceEventCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnBeginProcessTrace(
    Pointer<COMObject> HeaderEvent,
    Pointer<COMObject> Relogger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> HeaderEvent,
            Pointer<COMObject> Relogger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> HeaderEvent,
            Pointer<COMObject> Relogger,
          )>()(
        ptr.ref.lpVtbl,
        HeaderEvent,
        Relogger,
      );

  int OnFinalizeProcessTrace(
    Pointer<COMObject> Relogger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Relogger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Relogger,
          )>()(
        ptr.ref.lpVtbl,
        Relogger,
      );

  int OnEvent(
    Pointer<COMObject> Event,
    Pointer<COMObject> Relogger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Event,
            Pointer<COMObject> Relogger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Event,
            Pointer<COMObject> Relogger,
          )>()(
        ptr.ref.lpVtbl,
        Event,
        Relogger,
      );
}
