// IRdcGeneratorParameters.dart

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
const IID_IRdcGeneratorParameters = '{96236A71-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcGeneratorParameters extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IRdcGeneratorParameters(Pointer<COMObject> ptr) : super(ptr);

  int GetGeneratorParametersType(
    Pointer<Int32> parametersType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> parametersType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> parametersType,
          )>()(
        ptr.ref.lpVtbl,
        parametersType,
      );

  int GetParametersVersion(
    Pointer<Uint32> currentVersion,
    Pointer<Uint32> minimumCompatibleAppVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> currentVersion,
            Pointer<Uint32> minimumCompatibleAppVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> currentVersion,
            Pointer<Uint32> minimumCompatibleAppVersion,
          )>()(
        ptr.ref.lpVtbl,
        currentVersion,
        minimumCompatibleAppVersion,
      );

  int GetSerializeSize(
    Pointer<Uint32> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );

  int Serialize(
    int size,
    Pointer<Uint8> parametersBlob,
    Pointer<Uint32> bytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 size,
            Pointer<Uint8> parametersBlob,
            Pointer<Uint32> bytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int size,
            Pointer<Uint8> parametersBlob,
            Pointer<Uint32> bytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        size,
        parametersBlob,
        bytesWritten,
      );
}

/// @nodoc
const CLSID_RdcGeneratorParameters = '{96236A86-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcGeneratorParameters extends IRdcGeneratorParameters {
  RdcGeneratorParameters(Pointer<COMObject> ptr) : super(ptr);

  factory RdcGeneratorParameters.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RdcGeneratorParameters);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRdcGeneratorParameters);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcGeneratorParameters(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
