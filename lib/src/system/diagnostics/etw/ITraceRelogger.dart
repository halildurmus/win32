// ITraceRelogger.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/etw/ITraceEventCallback.dart';
import '../../../system/diagnostics/etw/ITraceEvent.dart';

/// @nodoc
const IID_ITraceRelogger = '{F754AD43-3BCC-4286-8009-9C5DA214E84E}';

/// {@category Interface}
/// {@category com}
class ITraceRelogger extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ITraceRelogger(Pointer<COMObject> ptr) : super(ptr);

  int AddLogfileTraceStream(
    Pointer<Utf16> LogfileName,
    Pointer UserContext,
    Pointer<Uint64> TraceHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> LogfileName,
            Pointer UserContext,
            Pointer<Uint64> TraceHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> LogfileName,
            Pointer UserContext,
            Pointer<Uint64> TraceHandle,
          )>()(
        ptr.ref.lpVtbl,
        LogfileName,
        UserContext,
        TraceHandle,
      );

  int AddRealtimeTraceStream(
    Pointer<Utf16> LoggerName,
    Pointer UserContext,
    Pointer<Uint64> TraceHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> LoggerName,
            Pointer UserContext,
            Pointer<Uint64> TraceHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> LoggerName,
            Pointer UserContext,
            Pointer<Uint64> TraceHandle,
          )>()(
        ptr.ref.lpVtbl,
        LoggerName,
        UserContext,
        TraceHandle,
      );

  int RegisterCallback(
    Pointer<COMObject> Callback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Callback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Callback,
          )>()(
        ptr.ref.lpVtbl,
        Callback,
      );

  int Inject(
    Pointer<COMObject> Event,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Event,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Event,
          )>()(
        ptr.ref.lpVtbl,
        Event,
      );

  int CreateEventInstance(
    int TraceHandle,
    int Flags,
    Pointer<Pointer<COMObject>> Event,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 TraceHandle,
            Uint32 Flags,
            Pointer<Pointer<COMObject>> Event,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TraceHandle,
            int Flags,
            Pointer<Pointer<COMObject>> Event,
          )>()(
        ptr.ref.lpVtbl,
        TraceHandle,
        Flags,
        Event,
      );

  int ProcessTrace() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetOutputFilename(
    Pointer<Utf16> LogfileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> LogfileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> LogfileName,
          )>()(
        ptr.ref.lpVtbl,
        LogfileName,
      );

  int SetCompressionMode(
    int CompressionMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 CompressionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CompressionMode,
          )>()(
        ptr.ref.lpVtbl,
        CompressionMode,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
