// IRemoteComponentUtil.dart

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

/// @nodoc
const IID_IRemoteComponentUtil = '{6EB22875-8A19-11D0-81B6-00A0C9231C29}';

/// {@category Interface}
/// {@category com}
class IRemoteComponentUtil extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IRemoteComponentUtil(Pointer<COMObject> ptr) : super(ptr);

  int InstallRemoteComponent(
    Pointer<Utf16> bstrServer,
    Pointer<Utf16> bstrPackageID,
    Pointer<Utf16> bstrCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServer,
            Pointer<Utf16> bstrPackageID,
            Pointer<Utf16> bstrCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServer,
            Pointer<Utf16> bstrPackageID,
            Pointer<Utf16> bstrCLSID,
          )>()(
        ptr.ref.lpVtbl,
        bstrServer,
        bstrPackageID,
        bstrCLSID,
      );

  int InstallRemoteComponentByName(
    Pointer<Utf16> bstrServer,
    Pointer<Utf16> bstrPackageName,
    Pointer<Utf16> bstrProgID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServer,
            Pointer<Utf16> bstrPackageName,
            Pointer<Utf16> bstrProgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServer,
            Pointer<Utf16> bstrPackageName,
            Pointer<Utf16> bstrProgID,
          )>()(
        ptr.ref.lpVtbl,
        bstrServer,
        bstrPackageName,
        bstrProgID,
      );
}

/// @nodoc
const CLSID_RemoteComponentUtil = '{6EB22886-8A19-11D0-81B6-00A0C9231C29}';

/// {@category com}
class RemoteComponentUtil extends IRemoteComponentUtil {
  RemoteComponentUtil(Pointer<COMObject> ptr) : super(ptr);

  factory RemoteComponentUtil.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RemoteComponentUtil);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRemoteComponentUtil);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RemoteComponentUtil(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
