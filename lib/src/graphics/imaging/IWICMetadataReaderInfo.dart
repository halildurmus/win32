// IWICMetadataReaderInfo.dart

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

import '../../graphics/imaging/IWICMetadataHandlerInfo.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../graphics/imaging/IWICMetadataReader.dart';

/// @nodoc
const IID_IWICMetadataReaderInfo = '{EEBF1F5B-07C1-4447-A3AB-22ACAF78A804}';

/// {@category Interface}
/// {@category com}
class IWICMetadataReaderInfo extends IWICMetadataHandlerInfo {
  // vtable begins at 18, is 3 entries long.
  IWICMetadataReaderInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetPatterns(
    Pointer<GUID> guidContainerFormat,
    int cbSize,
    Pointer<WICMetadataPattern> pPattern,
    Pointer<Uint32> pcCount,
    Pointer<Uint32> pcbActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Uint32 cbSize,
            Pointer<WICMetadataPattern> pPattern,
            Pointer<Uint32> pcCount,
            Pointer<Uint32> pcbActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            int cbSize,
            Pointer<WICMetadataPattern> pPattern,
            Pointer<Uint32> pcCount,
            Pointer<Uint32> pcbActual,
          )>()(
        ptr.ref.lpVtbl,
        guidContainerFormat,
        cbSize,
        pPattern,
        pcCount,
        pcbActual,
      );

  int MatchesPattern(
    Pointer<GUID> guidContainerFormat,
    Pointer<COMObject> pIStream,
    Pointer<Int32> pfMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<COMObject> pIStream,
            Pointer<Int32> pfMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<COMObject> pIStream,
            Pointer<Int32> pfMatches,
          )>()(
        ptr.ref.lpVtbl,
        guidContainerFormat,
        pIStream,
        pfMatches,
      );

  int CreateInstance(
    Pointer<Pointer<COMObject>> ppIReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIReader,
          )>()(
        ptr.ref.lpVtbl,
        ppIReader,
      );
}
