// IWdsTransportSetupManager.dart

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
const IID_IWdsTransportSetupManager = '{F7238425-EFA8-40A4-AEF9-C98D969C0B75}';

/// {@category Interface}
/// {@category com}
class IWdsTransportSetupManager extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IWdsTransportSetupManager(Pointer<COMObject> ptr) : super(ptr);

  int get Version {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullVersion,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get InstalledFeatures {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulInstalledFeatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulInstalledFeatures,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Protocols {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulProtocols,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulProtocols,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int RegisterContentProvider(
    Pointer<Utf16> bszName,
    Pointer<Utf16> bszDescription,
    Pointer<Utf16> bszFilePath,
    Pointer<Utf16> bszInitializationRoutine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bszName,
            Pointer<Utf16> bszDescription,
            Pointer<Utf16> bszFilePath,
            Pointer<Utf16> bszInitializationRoutine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bszName,
            Pointer<Utf16> bszDescription,
            Pointer<Utf16> bszFilePath,
            Pointer<Utf16> bszInitializationRoutine,
          )>()(
        ptr.ref.lpVtbl,
        bszName,
        bszDescription,
        bszFilePath,
        bszInitializationRoutine,
      );

  int DeregisterContentProvider(
    Pointer<Utf16> bszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bszName,
          )>()(
        ptr.ref.lpVtbl,
        bszName,
      );
}

/// @nodoc
const CLSID_WdsTransportSetupManager = '{C7BEEAAD-9F04-4923-9F0C-FBF52BC7590F}';

/// {@category com}
class WdsTransportSetupManager extends IWdsTransportSetupManager {
  WdsTransportSetupManager(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportSetupManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WdsTransportSetupManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportSetupManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportSetupManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
