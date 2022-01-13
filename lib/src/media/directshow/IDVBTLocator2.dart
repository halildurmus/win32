// IDVBTLocator2.dart

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

import '../../media/directshow/IDVBTLocator.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDVBTLocator2 = '{448A2EDF-AE95-4B43-A3CC-747843C453D4}';

/// {@category Interface}
/// {@category com}
class IDVBTLocator2 extends IDVBTLocator {
  // vtable begins at 36, is 2 entries long.
  IDVBTLocator2(Pointer<COMObject> ptr) : super(ptr);

  int get PhysicalLayerPipeId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> PhysicalLayerPipeIdVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> PhysicalLayerPipeIdVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PhysicalLayerPipeId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(37)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 PhysicalLayerPipeIdVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int PhysicalLayerPipeIdVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_DVBTLocator2 = '{EFE3FA02-45D7-4920-BE96-53FA7F35B0E6}';

/// {@category com}
class DVBTLocator2 extends IDVBTLocator2 {
  DVBTLocator2(Pointer<COMObject> ptr) : super(ptr);

  factory DVBTLocator2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DVBTLocator2);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDVBTLocator2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DVBTLocator2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
