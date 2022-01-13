// IRdcLibrary.dart

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
import '../../networking/remotedifferentialcompression/IRdcGeneratorParameters.dart';
import '../../networking/remotedifferentialcompression/IRdcGenerator.dart';
import '../../networking/remotedifferentialcompression/IRdcFileReader.dart';
import '../../networking/remotedifferentialcompression/IRdcComparator.dart';
import '../../networking/remotedifferentialcompression/IRdcSignatureReader.dart';

/// @nodoc
const IID_IRdcLibrary = '{96236A78-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcLibrary extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IRdcLibrary(Pointer<COMObject> ptr) : super(ptr);

  int ComputeDefaultRecursionDepth(
    int fileSize,
    Pointer<Uint32> depth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 fileSize,
            Pointer<Uint32> depth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fileSize,
            Pointer<Uint32> depth,
          )>()(
        ptr.ref.lpVtbl,
        fileSize,
        depth,
      );

  int CreateGeneratorParameters(
    int parametersType,
    int level,
    Pointer<Pointer<COMObject>> iGeneratorParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 parametersType,
            Uint32 level,
            Pointer<Pointer<COMObject>> iGeneratorParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parametersType,
            int level,
            Pointer<Pointer<COMObject>> iGeneratorParameters,
          )>()(
        ptr.ref.lpVtbl,
        parametersType,
        level,
        iGeneratorParameters,
      );

  int OpenGeneratorParameters(
    int size,
    Pointer<Uint8> parametersBlob,
    Pointer<Pointer<COMObject>> iGeneratorParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 size,
            Pointer<Uint8> parametersBlob,
            Pointer<Pointer<COMObject>> iGeneratorParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int size,
            Pointer<Uint8> parametersBlob,
            Pointer<Pointer<COMObject>> iGeneratorParameters,
          )>()(
        ptr.ref.lpVtbl,
        size,
        parametersBlob,
        iGeneratorParameters,
      );

  int CreateGenerator(
    int depth,
    Pointer<Pointer<COMObject>> iGeneratorParametersArray,
    Pointer<Pointer<COMObject>> iGenerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 depth,
            Pointer<Pointer<COMObject>> iGeneratorParametersArray,
            Pointer<Pointer<COMObject>> iGenerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int depth,
            Pointer<Pointer<COMObject>> iGeneratorParametersArray,
            Pointer<Pointer<COMObject>> iGenerator,
          )>()(
        ptr.ref.lpVtbl,
        depth,
        iGeneratorParametersArray,
        iGenerator,
      );

  int CreateComparator(
    Pointer<COMObject> iSeedSignaturesFile,
    int comparatorBufferSize,
    Pointer<Pointer<COMObject>> iComparator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> iSeedSignaturesFile,
            Uint32 comparatorBufferSize,
            Pointer<Pointer<COMObject>> iComparator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> iSeedSignaturesFile,
            int comparatorBufferSize,
            Pointer<Pointer<COMObject>> iComparator,
          )>()(
        ptr.ref.lpVtbl,
        iSeedSignaturesFile,
        comparatorBufferSize,
        iComparator,
      );

  int CreateSignatureReader(
    Pointer<COMObject> iFileReader,
    Pointer<Pointer<COMObject>> iSignatureReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> iFileReader,
            Pointer<Pointer<COMObject>> iSignatureReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> iFileReader,
            Pointer<Pointer<COMObject>> iSignatureReader,
          )>()(
        ptr.ref.lpVtbl,
        iFileReader,
        iSignatureReader,
      );

  int GetRDCVersion(
    Pointer<Uint32> currentVersion,
    Pointer<Uint32> minimumCompatibleAppVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
}

/// @nodoc
const CLSID_RdcLibrary = '{96236A85-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcLibrary extends IRdcLibrary {
  RdcLibrary(Pointer<COMObject> ptr) : super(ptr);

  factory RdcLibrary.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RdcLibrary);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRdcLibrary);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcLibrary(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
