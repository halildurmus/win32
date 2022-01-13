// IDVBTuningSpace.dart

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

import '../../media/directshow/ITuningSpace.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDVBTuningSpace = '{ADA0B268-3B19-4E5B-ACC4-49F852BE13BA}';

/// {@category Interface}
/// {@category com}
class IDVBTuningSpace extends ITuningSpace {
  // vtable begins at 26, is 2 entries long.
  IDVBTuningSpace(Pointer<COMObject> ptr) : super(ptr);

  int get SystemType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> SysType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> SysType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SystemType(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 SysType,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int SysType,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_DVBTuningSpace = '{C6B14B32-76AA-4A86-A7AC-5C79AAF58DA7}';

/// {@category com}
class DVBTuningSpace extends IDVBTuningSpace {
  DVBTuningSpace(Pointer<COMObject> ptr) : super(ptr);

  factory DVBTuningSpace.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DVBTuningSpace);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDVBTuningSpace);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DVBTuningSpace(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
