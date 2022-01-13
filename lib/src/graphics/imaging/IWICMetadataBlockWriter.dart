// IWICMetadataBlockWriter.dart

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

import '../../graphics/imaging/IWICMetadataBlockReader.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICMetadataWriter.dart';

/// @nodoc
const IID_IWICMetadataBlockWriter = '{08FB9676-B444-41E8-8DBE-6A53A542BFF1}';

/// {@category Interface}
/// {@category com}
class IWICMetadataBlockWriter extends IWICMetadataBlockReader {
  // vtable begins at 7, is 5 entries long.
  IWICMetadataBlockWriter(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromBlockReader(
    Pointer<COMObject> pIMDBlockReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIMDBlockReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIMDBlockReader,
          )>()(
        ptr.ref.lpVtbl,
        pIMDBlockReader,
      );

  int GetWriterByIndex(
    int nIndex,
    Pointer<Pointer<COMObject>> ppIMetadataWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<COMObject>> ppIMetadataWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<COMObject>> ppIMetadataWriter,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppIMetadataWriter,
      );

  int AddWriter(
    Pointer<COMObject> pIMetadataWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIMetadataWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIMetadataWriter,
          )>()(
        ptr.ref.lpVtbl,
        pIMetadataWriter,
      );

  int SetWriterByIndex(
    int nIndex,
    Pointer<COMObject> pIMetadataWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<COMObject> pIMetadataWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<COMObject> pIMetadataWriter,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        pIMetadataWriter,
      );

  int RemoveWriterByIndex(
    int nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
      );
}
