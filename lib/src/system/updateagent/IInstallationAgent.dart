// IInstallationAgent.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/updateagent/IStringCollection.dart';

/// @nodoc
const IID_IInstallationAgent = '{925CBC18-A2EA-4648-BF1C-EC8BADCFE20A}';

/// {@category Interface}
/// {@category com}
class IInstallationAgent extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IInstallationAgent(Pointer<COMObject> ptr) : super(ptr);

  int RecordInstallationResult(
    Pointer<Utf16> installationResultCookie,
    int hresult,
    Pointer<COMObject> extendedReportingData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> installationResultCookie,
            Int32 hresult,
            Pointer<COMObject> extendedReportingData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> installationResultCookie,
            int hresult,
            Pointer<COMObject> extendedReportingData,
          )>()(
        ptr.ref.lpVtbl,
        installationResultCookie,
        hresult,
        extendedReportingData,
      );
}

/// @nodoc
const CLSID_InstallationAgent = '{317E92FC-1679-46FD-A0B5-F08914DD8623}';

/// {@category com}
class InstallationAgent extends IInstallationAgent {
  InstallationAgent(Pointer<COMObject> ptr) : super(ptr);

  factory InstallationAgent.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InstallationAgent);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInstallationAgent);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InstallationAgent(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
