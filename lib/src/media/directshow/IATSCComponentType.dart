// IATSCComponentType.dart

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

import '../../media/directshow/IMPEG2ComponentType.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IATSCComponentType = '{FC189E4D-7BD4-4125-B3B3-3A76A332CC96}';

/// {@category Interface}
/// {@category com}
class IATSCComponentType extends IMPEG2ComponentType {
  // vtable begins at 28, is 2 entries long.
  IATSCComponentType(Pointer<COMObject> ptr) : super(ptr);

  int get Flags {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Flags,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Flags(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 flags,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int flags,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_ATSCComponentType = '{A8DCF3D5-0780-4EF4-8A83-2CFFAACB8ACE}';

/// {@category com}
class ATSCComponentType extends IATSCComponentType {
  ATSCComponentType(Pointer<COMObject> ptr) : super(ptr);

  factory ATSCComponentType.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ATSCComponentType);
    final iid = calloc<GUID>()..ref.setGUID(IID_IATSCComponentType);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ATSCComponentType(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
