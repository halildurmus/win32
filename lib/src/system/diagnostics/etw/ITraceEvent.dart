// ITraceEvent.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/etw/structs.g.dart';

/// @nodoc
const IID_ITraceEvent = '{8CC97F40-9028-4FF3-9B62-7D1F79CA7BCB}';

/// {@category Interface}
/// {@category com}
class ITraceEvent extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  ITraceEvent(Pointer<COMObject> ptr) : super(ptr);

  int Clone(
    Pointer<Pointer<COMObject>> NewEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEvent,
          )>()(
        ptr.ref.lpVtbl,
        NewEvent,
      );

  int GetUserContext(
    Pointer<Pointer> UserContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> UserContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> UserContext,
          )>()(
        ptr.ref.lpVtbl,
        UserContext,
      );

  int GetEventRecord(
    Pointer<Pointer<EVENT_RECORD>> EventRecord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<EVENT_RECORD>> EventRecord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<EVENT_RECORD>> EventRecord,
          )>()(
        ptr.ref.lpVtbl,
        EventRecord,
      );

  int SetPayload(
    Pointer<Uint8> Payload,
    int PayloadSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> Payload,
            Uint32 PayloadSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> Payload,
            int PayloadSize,
          )>()(
        ptr.ref.lpVtbl,
        Payload,
        PayloadSize,
      );

  int SetEventDescriptor(
    Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<EVENT_DESCRIPTOR> EventDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<EVENT_DESCRIPTOR> EventDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        EventDescriptor,
      );

  int SetProcessId(
    int ProcessId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ProcessId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProcessId,
          )>()(
        ptr.ref.lpVtbl,
        ProcessId,
      );

  int SetProcessorIndex(
    int ProcessorIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ProcessorIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProcessorIndex,
          )>()(
        ptr.ref.lpVtbl,
        ProcessorIndex,
      );

  int SetThreadId(
    int ThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ThreadId,
          )>()(
        ptr.ref.lpVtbl,
        ThreadId,
      );

  int SetThreadTimes(
    int KernelTime,
    int UserTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 KernelTime,
            Uint32 UserTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int KernelTime,
            int UserTime,
          )>()(
        ptr.ref.lpVtbl,
        KernelTime,
        UserTime,
      );

  int SetActivityId(
    Pointer<GUID> ActivityId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ActivityId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ActivityId,
          )>()(
        ptr.ref.lpVtbl,
        ActivityId,
      );

  int SetTimeStamp(
    Pointer<Int64> TimeStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> TimeStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> TimeStamp,
          )>()(
        ptr.ref.lpVtbl,
        TimeStamp,
      );

  int SetProviderId(
    Pointer<GUID> ProviderId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ProviderId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ProviderId,
          )>()(
        ptr.ref.lpVtbl,
        ProviderId,
      );
}
