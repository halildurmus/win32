// IUpdateServiceManager.dart

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
import '../../system/updateagent/IUpdateServiceCollection.dart';
import '../../foundation/structs.g.dart';
import '../../system/updateagent/IUpdateService.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IUpdateServiceManager = '{23857E3C-02BA-44A3-9423-B1C900805F37}';

/// {@category Interface}
/// {@category com}
class IUpdateServiceManager extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IUpdateServiceManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Services {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddService(
    Pointer<Utf16> serviceID,
    Pointer<Utf16> authorizationCabPath,
    Pointer<Pointer<COMObject>> retval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serviceID,
            Pointer<Utf16> authorizationCabPath,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serviceID,
            Pointer<Utf16> authorizationCabPath,
            Pointer<Pointer<COMObject>> retval,
          )>()(
        ptr.ref.lpVtbl,
        serviceID,
        authorizationCabPath,
        retval,
      );

  int RegisterServiceWithAU(
    Pointer<Utf16> serviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serviceID,
          )>()(
        ptr.ref.lpVtbl,
        serviceID,
      );

  int RemoveService(
    Pointer<Utf16> serviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serviceID,
          )>()(
        ptr.ref.lpVtbl,
        serviceID,
      );

  int UnregisterServiceWithAU(
    Pointer<Utf16> serviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serviceID,
          )>()(
        ptr.ref.lpVtbl,
        serviceID,
      );

  int AddScanPackageService(
    Pointer<Utf16> serviceName,
    Pointer<Utf16> scanFileLocation,
    int flags,
    Pointer<Pointer<COMObject>> ppService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serviceName,
            Pointer<Utf16> scanFileLocation,
            Int32 flags,
            Pointer<Pointer<COMObject>> ppService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serviceName,
            Pointer<Utf16> scanFileLocation,
            int flags,
            Pointer<Pointer<COMObject>> ppService,
          )>()(
        ptr.ref.lpVtbl,
        serviceName,
        scanFileLocation,
        flags,
        ppService,
      );

  int SetOption(
    Pointer<Utf16> optionName,
    VARIANT optionValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> optionName,
            VARIANT optionValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> optionName,
            VARIANT optionValue,
          )>()(
        ptr.ref.lpVtbl,
        optionName,
        optionValue,
      );
}

/// @nodoc
const CLSID_UpdateServiceManager = '{F8D253D9-89A4-4DAA-87B6-1168369F0B21}';

/// {@category com}
class UpdateServiceManager extends IUpdateServiceManager {
  UpdateServiceManager(Pointer<COMObject> ptr) : super(ptr);

  factory UpdateServiceManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UpdateServiceManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUpdateServiceManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UpdateServiceManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
