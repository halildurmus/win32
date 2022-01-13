// IAppxPackageEditor.dart

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
import '../../../system/com/IStream.dart';
import '../../../storage/packaging/appx/structs.g.dart';

/// @nodoc
const IID_IAppxPackageEditor = '{E2ADB6DC-5E71-4416-86B6-86E5F5291A6B}';

/// {@category Interface}
/// {@category com}
class IAppxPackageEditor extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IAppxPackageEditor(Pointer<COMObject> ptr) : super(ptr);

  int SetWorkingDirectory(
    Pointer<Utf16> workingDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> workingDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> workingDirectory,
          )>()(
        ptr.ref.lpVtbl,
        workingDirectory,
      );

  int CreateDeltaPackage(
    Pointer<COMObject> updatedPackageStream,
    Pointer<COMObject> baselinePackageStream,
    Pointer<COMObject> deltaPackageStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> updatedPackageStream,
            Pointer<COMObject> baselinePackageStream,
            Pointer<COMObject> deltaPackageStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> updatedPackageStream,
            Pointer<COMObject> baselinePackageStream,
            Pointer<COMObject> deltaPackageStream,
          )>()(
        ptr.ref.lpVtbl,
        updatedPackageStream,
        baselinePackageStream,
        deltaPackageStream,
      );

  int CreateDeltaPackageUsingBaselineBlockMap(
    Pointer<COMObject> updatedPackageStream,
    Pointer<COMObject> baselineBlockMapStream,
    Pointer<Utf16> baselinePackageFullName,
    Pointer<COMObject> deltaPackageStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> updatedPackageStream,
            Pointer<COMObject> baselineBlockMapStream,
            Pointer<Utf16> baselinePackageFullName,
            Pointer<COMObject> deltaPackageStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> updatedPackageStream,
            Pointer<COMObject> baselineBlockMapStream,
            Pointer<Utf16> baselinePackageFullName,
            Pointer<COMObject> deltaPackageStream,
          )>()(
        ptr.ref.lpVtbl,
        updatedPackageStream,
        baselineBlockMapStream,
        baselinePackageFullName,
        deltaPackageStream,
      );

  int UpdatePackage(
    Pointer<COMObject> baselinePackageStream,
    Pointer<COMObject> deltaPackageStream,
    int updateOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> baselinePackageStream,
            Pointer<COMObject> deltaPackageStream,
            Int32 updateOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> baselinePackageStream,
            Pointer<COMObject> deltaPackageStream,
            int updateOption,
          )>()(
        ptr.ref.lpVtbl,
        baselinePackageStream,
        deltaPackageStream,
        updateOption,
      );

  int UpdateEncryptedPackage(
    Pointer<COMObject> baselineEncryptedPackageStream,
    Pointer<COMObject> deltaPackageStream,
    int updateOption,
    Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
    Pointer<APPX_KEY_INFO> keyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> baselineEncryptedPackageStream,
            Pointer<COMObject> deltaPackageStream,
            Int32 updateOption,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> baselineEncryptedPackageStream,
            Pointer<COMObject> deltaPackageStream,
            int updateOption,
            Pointer<APPX_ENCRYPTED_PACKAGE_SETTINGS2> settings,
            Pointer<APPX_KEY_INFO> keyInfo,
          )>()(
        ptr.ref.lpVtbl,
        baselineEncryptedPackageStream,
        deltaPackageStream,
        updateOption,
        settings,
        keyInfo,
      );

  int UpdatePackageManifest(
    Pointer<COMObject> packageStream,
    Pointer<COMObject> updatedManifestStream,
    int isPackageEncrypted,
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> packageStream,
            Pointer<COMObject> updatedManifestStream,
            Int32 isPackageEncrypted,
            Uint32 options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> packageStream,
            Pointer<COMObject> updatedManifestStream,
            int isPackageEncrypted,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        packageStream,
        updatedManifestStream,
        isPackageEncrypted,
        options,
      );
}

/// @nodoc
const CLSID_AppxPackageEditor = '{F004F2CA-AEBC-4B0D-BF58-E516D5BCC0AB}';

/// {@category com}
class AppxPackageEditor extends IAppxPackageEditor {
  AppxPackageEditor(Pointer<COMObject> ptr) : super(ptr);

  factory AppxPackageEditor.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AppxPackageEditor);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAppxPackageEditor);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AppxPackageEditor(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
