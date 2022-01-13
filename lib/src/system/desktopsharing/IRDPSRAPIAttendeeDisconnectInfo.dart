// IRDPSRAPIAttendeeDisconnectInfo.dart

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
import '../../system/desktopsharing/IRDPSRAPIAttendee.dart';
import '../../foundation/structs.g.dart';
import '../../system/desktopsharing/structs.g.dart';

/// @nodoc
const IID_IRDPSRAPIAttendeeDisconnectInfo =
    '{C187689F-447C-44A1-9C14-FFFBB3B7EC17}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIAttendeeDisconnectInfo extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IRDPSRAPIAttendeeDisconnectInfo(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Attendee {
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

  int get Reason {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pReason,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Code {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_RDPSRAPIAttendeeDisconnectInfo =
    '{B47D7250-5BDB-405D-B487-CAAD9C56F4F8}';

/// {@category com}
class RDPSRAPIAttendeeDisconnectInfo extends IRDPSRAPIAttendeeDisconnectInfo {
  RDPSRAPIAttendeeDisconnectInfo(Pointer<COMObject> ptr) : super(ptr);

  factory RDPSRAPIAttendeeDisconnectInfo.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_RDPSRAPIAttendeeDisconnectInfo);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IRDPSRAPIAttendeeDisconnectInfo);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RDPSRAPIAttendeeDisconnectInfo(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
