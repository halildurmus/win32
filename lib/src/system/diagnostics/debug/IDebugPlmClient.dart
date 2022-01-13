// IDebugPlmClient.dart

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
const IID_IDebugPlmClient = '{A02B66C4-AEA3-4234-A9F7-FE4C383D4E29}';

/// {@category Interface}
/// {@category com}
class IDebugPlmClient extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugPlmClient(Pointer<COMObject> ptr) : super(ptr);

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
}
