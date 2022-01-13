// IAppxPackagingDiagnosticEventSinkManager.dart

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
import '../../../storage/packaging/appx/IAppxPackagingDiagnosticEventSink.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxPackagingDiagnosticEventSinkManager =
    '{369648FA-A7EB-4909-A15D-6954A078F18A}';

/// {@category Interface}
/// {@category com}
class IAppxPackagingDiagnosticEventSinkManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxPackagingDiagnosticEventSinkManager(Pointer<COMObject> ptr) : super(ptr);

  int SetSinkForProcess(
    Pointer<COMObject> sink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sink,
          )>()(
        ptr.ref.lpVtbl,
        sink,
      );
}

/// @nodoc
const CLSID_AppxPackagingDiagnosticEventSinkManager =
    '{50CA0A46-1588-4161-8ED2-EF9E469CED5D}';

/// {@category com}
class AppxPackagingDiagnosticEventSinkManager
    extends IAppxPackagingDiagnosticEventSinkManager {
  AppxPackagingDiagnosticEventSinkManager(Pointer<COMObject> ptr) : super(ptr);

  factory AppxPackagingDiagnosticEventSinkManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_AppxPackagingDiagnosticEventSinkManager);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IAppxPackagingDiagnosticEventSinkManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AppxPackagingDiagnosticEventSinkManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
