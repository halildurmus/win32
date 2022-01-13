// IRdcGenerator.dart

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
import '../../networking/remotedifferentialcompression/IRdcGeneratorParameters.dart';
import '../../foundation/structs.g.dart';
import '../../networking/remotedifferentialcompression/structs.g.dart';

/// @nodoc
const IID_IRdcGenerator = '{96236A73-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcGenerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRdcGenerator(Pointer<COMObject> ptr) : super(ptr);

  int GetGeneratorParameters(
    int level,
    Pointer<Pointer<COMObject>> iGeneratorParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 level,
            Pointer<Pointer<COMObject>> iGeneratorParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int level,
            Pointer<Pointer<COMObject>> iGeneratorParameters,
          )>()(
        ptr.ref.lpVtbl,
        level,
        iGeneratorParameters,
      );

  int Process(
    int endOfInput,
    Pointer<Int32> endOfOutput,
    Pointer<RdcBufferPointer> inputBuffer,
    int depth,
    Pointer<Pointer<RdcBufferPointer>> outputBuffers,
    Pointer<Int32> rdc_ErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 endOfInput,
            Pointer<Int32> endOfOutput,
            Pointer<RdcBufferPointer> inputBuffer,
            Uint32 depth,
            Pointer<Pointer<RdcBufferPointer>> outputBuffers,
            Pointer<Int32> rdc_ErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int endOfInput,
            Pointer<Int32> endOfOutput,
            Pointer<RdcBufferPointer> inputBuffer,
            int depth,
            Pointer<Pointer<RdcBufferPointer>> outputBuffers,
            Pointer<Int32> rdc_ErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        endOfInput,
        endOfOutput,
        inputBuffer,
        depth,
        outputBuffers,
        rdc_ErrorCode,
      );
}

/// @nodoc
const CLSID_RdcGenerator = '{96236A88-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcGenerator extends IRdcGenerator {
  RdcGenerator(Pointer<COMObject> ptr) : super(ptr);

  factory RdcGenerator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RdcGenerator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRdcGenerator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcGenerator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
