// IRDPSRAPIApplicationList.dart

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
import '../../system/desktopsharing/IRDPSRAPIApplication.dart';

/// @nodoc
const IID_IRDPSRAPIApplicationList = '{D4B4AEB3-22DC-4837-B3B6-42EA2517849A}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIApplicationList extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IRDPSRAPIApplicationList(Pointer<COMObject> ptr) : super(ptr);

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
    int item,
    Pointer<Pointer<COMObject>> pApplication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 item,
            Pointer<Pointer<COMObject>> pApplication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int item,
            Pointer<Pointer<COMObject>> pApplication,
          )>()(
        ptr.ref.lpVtbl,
        item,
        pApplication,
      );
}

/// @nodoc
const CLSID_RDPSRAPIApplicationList = '{9E31C815-7433-4876-97FB-ED59FE2BAA22}';

/// {@category com}
class RDPSRAPIApplicationList extends IRDPSRAPIApplicationList {
  RDPSRAPIApplicationList(Pointer<COMObject> ptr) : super(ptr);

  factory RDPSRAPIApplicationList.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RDPSRAPIApplicationList);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRDPSRAPIApplicationList);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RDPSRAPIApplicationList(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
