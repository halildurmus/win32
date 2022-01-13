// IIsolatedAppLauncher.dart

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
import '../../foundation/structs.g.dart';
import '../../security/isolation/structs.g.dart';

/// @nodoc
const IID_IIsolatedAppLauncher = '{F686878F-7B42-4CC4-96FB-F4F3B6E3D24D}';

/// {@category Interface}
/// {@category com}
class IIsolatedAppLauncher extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IIsolatedAppLauncher(Pointer<COMObject> ptr) : super(ptr);

  int Launch(
    Pointer<Utf16> appUserModelId,
    Pointer<Utf16> arguments,
    Pointer<IsolatedAppLauncherTelemetryParameters> telemetryParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> appUserModelId,
            Pointer<Utf16> arguments,
            Pointer<IsolatedAppLauncherTelemetryParameters> telemetryParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> appUserModelId,
            Pointer<Utf16> arguments,
            Pointer<IsolatedAppLauncherTelemetryParameters> telemetryParameters,
          )>()(
        ptr.ref.lpVtbl,
        appUserModelId,
        arguments,
        telemetryParameters,
      );
}

/// @nodoc
const CLSID_IsolatedAppLauncher = '{BC812430-E75E-4FD1-9641-1F9F1E2D9A1F}';

/// {@category com}
class IsolatedAppLauncher extends IIsolatedAppLauncher {
  IsolatedAppLauncher(Pointer<COMObject> ptr) : super(ptr);

  factory IsolatedAppLauncher.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_IsolatedAppLauncher);
    final iid = calloc<GUID>()..ref.setGUID(IID_IIsolatedAppLauncher);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return IsolatedAppLauncher(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
