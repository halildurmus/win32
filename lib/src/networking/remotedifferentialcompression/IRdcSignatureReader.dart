// IRdcSignatureReader.dart

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
import '../../networking/remotedifferentialcompression/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRdcSignatureReader = '{96236A76-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcSignatureReader extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRdcSignatureReader(Pointer<COMObject> ptr) : super(ptr);

  int ReadHeader(
    Pointer<Int32> rdc_ErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> rdc_ErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> rdc_ErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        rdc_ErrorCode,
      );

  int ReadSignatures(
    Pointer<RdcSignaturePointer> rdcSignaturePointer,
    Pointer<Int32> endOfOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RdcSignaturePointer> rdcSignaturePointer,
            Pointer<Int32> endOfOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RdcSignaturePointer> rdcSignaturePointer,
            Pointer<Int32> endOfOutput,
          )>()(
        ptr.ref.lpVtbl,
        rdcSignaturePointer,
        endOfOutput,
      );
}

/// @nodoc
const CLSID_RdcSignatureReader = '{96236A8A-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcSignatureReader extends IRdcSignatureReader {
  RdcSignatureReader(Pointer<COMObject> ptr) : super(ptr);

  factory RdcSignatureReader.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RdcSignatureReader);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRdcSignatureReader);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcSignatureReader(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
