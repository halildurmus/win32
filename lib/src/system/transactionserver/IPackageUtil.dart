// IPackageUtil.dart

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
const IID_IPackageUtil = '{6EB22874-8A19-11D0-81B6-00A0C9231C29}';

/// {@category Interface}
/// {@category com}
class IPackageUtil extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IPackageUtil(Pointer<COMObject> ptr) : super(ptr);

  int InstallPackage(
    Pointer<Utf16> bstrPackageFile,
    Pointer<Utf16> bstrInstallPath,
    int lOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPackageFile,
            Pointer<Utf16> bstrInstallPath,
            Int32 lOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPackageFile,
            Pointer<Utf16> bstrInstallPath,
            int lOptions,
          )>()(
        ptr.ref.lpVtbl,
        bstrPackageFile,
        bstrInstallPath,
        lOptions,
      );

  int ExportPackage(
    Pointer<Utf16> bstrPackageID,
    Pointer<Utf16> bstrPackageFile,
    int lOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPackageID,
            Pointer<Utf16> bstrPackageFile,
            Int32 lOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPackageID,
            Pointer<Utf16> bstrPackageFile,
            int lOptions,
          )>()(
        ptr.ref.lpVtbl,
        bstrPackageID,
        bstrPackageFile,
        lOptions,
      );

  int ShutdownPackage(
    Pointer<Utf16> bstrPackageID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPackageID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPackageID,
          )>()(
        ptr.ref.lpVtbl,
        bstrPackageID,
      );
}

/// @nodoc
const CLSID_PackageUtil = '{6EB22885-8A19-11D0-81B6-00A0C9231C29}';

/// {@category com}
class PackageUtil extends IPackageUtil {
  PackageUtil(Pointer<COMObject> ptr) : super(ptr);

  factory PackageUtil.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PackageUtil);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPackageUtil);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PackageUtil(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
