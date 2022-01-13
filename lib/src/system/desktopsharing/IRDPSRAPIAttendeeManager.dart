// IRDPSRAPIAttendeeManager.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/desktopsharing/IRDPSRAPIAttendee.dart';

/// @nodoc
const IID_IRDPSRAPIAttendeeManager = '{BA3A37E8-33DA-4749-8DA0-07FA34DA7944}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIAttendeeManager extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IRDPSRAPIAttendeeManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
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

  int get_Item(
    int id,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 id,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int id,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        id,
        ppItem,
      );
}

/// @nodoc
const CLSID_RDPSRAPIAttendeeManager = '{D7B13A01-F7D4-42A6-8595-12FC8C24E851}';

/// {@category com}
class RDPSRAPIAttendeeManager extends IRDPSRAPIAttendeeManager {
  RDPSRAPIAttendeeManager(Pointer<COMObject> ptr) : super(ptr);

  factory RDPSRAPIAttendeeManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RDPSRAPIAttendeeManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRDPSRAPIAttendeeManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RDPSRAPIAttendeeManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
