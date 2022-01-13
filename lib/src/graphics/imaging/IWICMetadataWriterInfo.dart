// IWICMetadataWriterInfo.dart

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
import '../../graphics/imaging/IWICMetadataWriter.dart';

/// @nodoc
const IID_IWICMetadataWriterInfo = '{B22E3FBA-3925-4323-B5C1-9EBFC430F236}';

/// {@category Interface}
/// {@category com}
class IWICMetadataWriterInfo extends IWICMetadataHandlerInfo {
  // vtable begins at 18, is 2 entries long.
  IWICMetadataWriterInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetHeader(
    Pointer<GUID> guidContainerFormat,
    int cbSize,
    Pointer<WICMetadataHeader> pHeader,
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
            Pointer<WICMetadataHeader> pHeader,
            Pointer<Uint32> pcbActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            int cbSize,
            Pointer<WICMetadataHeader> pHeader,
            Pointer<Uint32> pcbActual,
          )>()(
        ptr.ref.lpVtbl,
        guidContainerFormat,
        cbSize,
        pHeader,
        pcbActual,
      );

  int CreateInstance(
    Pointer<Pointer<COMObject>> ppIWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWriter,
          )>()(
        ptr.ref.lpVtbl,
        ppIWriter,
      );
}
