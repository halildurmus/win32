// IDebugPlmClient3.dart

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
import '../../../system/diagnostics/debug/IDebugOutputStream.dart';

/// @nodoc
const IID_IDebugPlmClient3 = '{D4A5DBD1-CA02-4D90-856A-2A92BFD0F20F}';

/// {@category Interface}
/// {@category com}
class IDebugPlmClient3 extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IDebugPlmClient3(Pointer<COMObject> ptr) : super(ptr);

  int LaunchPlmPackageForDebugWide(
    int Server,
    int Timeout,
    Pointer<Utf16> PackageFullName,
    Pointer<Utf16> AppName,
    Pointer<Utf16> Arguments,
    Pointer<Uint32> ProcessId,
    Pointer<Uint32> ThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Uint32 Timeout,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> AppName,
            Pointer<Utf16> Arguments,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            int Timeout,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> AppName,
            Pointer<Utf16> Arguments,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        Timeout,
        PackageFullName,
        AppName,
        Arguments,
        ProcessId,
        ThreadId,
      );

  int LaunchPlmBgTaskForDebugWide(
    int Server,
    int Timeout,
    Pointer<Utf16> PackageFullName,
    Pointer<Utf16> BackgroundTaskId,
    Pointer<Uint32> ProcessId,
    Pointer<Uint32> ThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Uint32 Timeout,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> BackgroundTaskId,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            int Timeout,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> BackgroundTaskId,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        Timeout,
        PackageFullName,
        BackgroundTaskId,
        ProcessId,
        ThreadId,
      );

  int QueryPlmPackageWide(
    int Server,
    Pointer<Utf16> PackageFullName,
    Pointer<COMObject> Stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
            Pointer<COMObject> Stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
            Pointer<COMObject> Stream,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
        Stream,
      );

  int QueryPlmPackageList(
    int Server,
    Pointer<COMObject> Stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<COMObject> Stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<COMObject> Stream,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        Stream,
      );

  int EnablePlmPackageDebugWide(
    int Server,
    Pointer<Utf16> PackageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
      );

  int DisablePlmPackageDebugWide(
    int Server,
    Pointer<Utf16> PackageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
      );

  int SuspendPlmPackageWide(
    int Server,
    Pointer<Utf16> PackageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
      );

  int ResumePlmPackageWide(
    int Server,
    Pointer<Utf16> PackageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
      );

  int TerminatePlmPackageWide(
    int Server,
    Pointer<Utf16> PackageFullName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
      );

  int LaunchAndDebugPlmAppWide(
    int Server,
    Pointer<Utf16> PackageFullName,
    Pointer<Utf16> AppName,
    Pointer<Utf16> Arguments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> AppName,
            Pointer<Utf16> Arguments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> AppName,
            Pointer<Utf16> Arguments,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
        AppName,
        Arguments,
      );

  int ActivateAndDebugPlmBgTaskWide(
    int Server,
    Pointer<Utf16> PackageFullName,
    Pointer<Utf16> BackgroundTaskId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> BackgroundTaskId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> PackageFullName,
            Pointer<Utf16> BackgroundTaskId,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        PackageFullName,
        BackgroundTaskId,
      );
}
