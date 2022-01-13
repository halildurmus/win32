// IFsrmAccessDeniedRemediationClient.dart

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
import '../../storage/fileserverresourcemanager/structs.g.dart';

/// @nodoc
const IID_IFsrmAccessDeniedRemediationClient =
    '{40002314-590B-45A5-8E1B-8C05DA527E52}';

/// {@category Interface}
/// {@category com}
class IFsrmAccessDeniedRemediationClient extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IFsrmAccessDeniedRemediationClient(Pointer<COMObject> ptr) : super(ptr);

  int Show(
    int parentWnd,
    Pointer<Utf16> accessPath,
    int errorType,
    int flags,
    Pointer<Utf16> windowTitle,
    Pointer<Utf16> windowMessage,
    Pointer<Int32> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr parentWnd,
            Pointer<Utf16> accessPath,
            Int32 errorType,
            Int32 flags,
            Pointer<Utf16> windowTitle,
            Pointer<Utf16> windowMessage,
            Pointer<Int32> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parentWnd,
            Pointer<Utf16> accessPath,
            int errorType,
            int flags,
            Pointer<Utf16> windowTitle,
            Pointer<Utf16> windowMessage,
            Pointer<Int32> result,
          )>()(
        ptr.ref.lpVtbl,
        parentWnd,
        accessPath,
        errorType,
        flags,
        windowTitle,
        windowMessage,
        result,
      );
}

/// @nodoc
const CLSID_FsrmAccessDeniedRemediationClient =
    '{100B4FC8-74C1-470F-B1B7-DD7B6BAE79BD}';

/// {@category com}
class FsrmAccessDeniedRemediationClient
    extends IFsrmAccessDeniedRemediationClient {
  FsrmAccessDeniedRemediationClient(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmAccessDeniedRemediationClient.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_FsrmAccessDeniedRemediationClient);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IFsrmAccessDeniedRemediationClient);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmAccessDeniedRemediationClient(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
