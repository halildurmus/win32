// IWorkspace.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWorkspace = '{B922BBB8-4C55-4FEA-8496-BEB0B44285E5}';

/// {@category Interface}
/// {@category com}
class IWorkspace extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWorkspace(Pointer<COMObject> ptr) : super(ptr);

  int GetWorkspaceNames(
    Pointer<Pointer<SAFEARRAY>> psaWkspNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> psaWkspNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> psaWkspNames,
          )>()(
        ptr.ref.lpVtbl,
        psaWkspNames,
      );

  int StartRemoteApplication(
    Pointer<Utf16> bstrWorkspaceId,
    Pointer<SAFEARRAY> psaParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<SAFEARRAY> psaParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<SAFEARRAY> psaParams,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
        psaParams,
      );

  int GetProcessId(
    Pointer<Uint32> pulProcessId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulProcessId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulProcessId,
          )>()(
        ptr.ref.lpVtbl,
        pulProcessId,
      );
}

/// @nodoc
const CLSID_Workspace = '{4F1DFCA6-3AAD-48E1-8406-4BC21A501D7C}';

/// {@category com}
class Workspace extends IWorkspace {
  Workspace(Pointer<COMObject> ptr) : super(ptr);

  factory Workspace.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Workspace);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWorkspace);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Workspace(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
