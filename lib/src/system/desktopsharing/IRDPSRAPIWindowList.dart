// IRDPSRAPIWindowList.dart

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
import '../../system/desktopsharing/IRDPSRAPIWindow.dart';

/// @nodoc
const IID_IRDPSRAPIWindowList = '{8A05CE44-715A-4116-A189-A118F30A07BD}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIWindowList extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IRDPSRAPIWindowList(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> pWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 item,
            Pointer<Pointer<COMObject>> pWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int item,
            Pointer<Pointer<COMObject>> pWindow,
          )>()(
        ptr.ref.lpVtbl,
        item,
        pWindow,
      );
}

/// @nodoc
const CLSID_RDPSRAPIWindowList = '{9C21E2B8-5DD4-42CC-81BA-1C099852E6FA}';

/// {@category com}
class RDPSRAPIWindowList extends IRDPSRAPIWindowList {
  RDPSRAPIWindowList(Pointer<COMObject> ptr) : super(ptr);

  factory RDPSRAPIWindowList.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RDPSRAPIWindowList);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRDPSRAPIWindowList);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RDPSRAPIWindowList(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
