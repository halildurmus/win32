// IDebugPlmClient2.dart

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

/// @nodoc
const IID_IDebugPlmClient2 = '{597C980D-E7BD-4309-962C-9D9B69A7372C}';

/// {@category Interface}
/// {@category com}
class IDebugPlmClient2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDebugPlmClient2(Pointer<COMObject> ptr) : super(ptr);

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
}
