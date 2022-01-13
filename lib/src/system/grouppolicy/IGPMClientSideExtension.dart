// IGPMClientSideExtension.dart

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
const IID_IGPMClientSideExtension = '{69DA7488-B8DB-415E-9266-901BE4D49928}';

/// {@category Interface}
/// {@category com}
class IGPMClientSideExtension extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IGPMClientSideExtension(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get ID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get DisplayName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int IsUserEnabled(
    Pointer<Int16> pvbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pvbEnabled,
      );

  int IsComputerEnabled(
    Pointer<Int16> pvbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pvbEnabled,
      );
}

/// @nodoc
const CLSID_GPMClientSideExtension = '{C1A2E70E-659C-4B1A-940B-F88B0AF9C8A4}';

/// {@category com}
class GPMClientSideExtension extends IGPMClientSideExtension {
  GPMClientSideExtension(Pointer<COMObject> ptr) : super(ptr);

  factory GPMClientSideExtension.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMClientSideExtension);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMClientSideExtension);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMClientSideExtension(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
