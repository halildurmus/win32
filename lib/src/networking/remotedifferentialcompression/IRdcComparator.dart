// IRdcComparator.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../networking/remotedifferentialcompression/structs.g.dart';

/// @nodoc
const IID_IRdcComparator = '{96236A77-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcComparator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRdcComparator(Pointer<COMObject> ptr) : super(ptr);

  int Process(
    int endOfInput,
    Pointer<Int32> endOfOutput,
    Pointer<RdcBufferPointer> inputBuffer,
    Pointer<RdcNeedPointer> outputBuffer,
    Pointer<Int32> rdc_ErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 endOfInput,
            Pointer<Int32> endOfOutput,
            Pointer<RdcBufferPointer> inputBuffer,
            Pointer<RdcNeedPointer> outputBuffer,
            Pointer<Int32> rdc_ErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int endOfInput,
            Pointer<Int32> endOfOutput,
            Pointer<RdcBufferPointer> inputBuffer,
            Pointer<RdcNeedPointer> outputBuffer,
            Pointer<Int32> rdc_ErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        endOfInput,
        endOfOutput,
        inputBuffer,
        outputBuffer,
        rdc_ErrorCode,
      );
}

/// @nodoc
const CLSID_RdcComparator = '{96236A8B-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcComparator extends IRdcComparator {
  RdcComparator(Pointer<COMObject> ptr) : super(ptr);

  factory RdcComparator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RdcComparator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRdcComparator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcComparator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
