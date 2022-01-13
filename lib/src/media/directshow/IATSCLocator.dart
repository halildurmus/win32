// IATSCLocator.dart

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

import '../../media/directshow/IDigitalLocator.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IATSCLocator = '{BF8D986F-8C2B-4131-94D7-4D3D9FCC21EF}';

/// {@category Interface}
/// {@category com}
class IATSCLocator extends IDigitalLocator {
  // vtable begins at 22, is 4 entries long.
  IATSCLocator(Pointer<COMObject> ptr) : super(ptr);

  int get PhysicalChannel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> PhysicalChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> PhysicalChannel,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PhysicalChannel(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 PhysicalChannel,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int PhysicalChannel,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get TSID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> TSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> TSID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TSID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 TSID,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int TSID,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_ATSCLocator = '{8872FF1B-98FA-4D7A-8D93-C9F1055F85BB}';

/// {@category com}
class ATSCLocator extends IATSCLocator {
  ATSCLocator(Pointer<COMObject> ptr) : super(ptr);

  factory ATSCLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ATSCLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IATSCLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ATSCLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
