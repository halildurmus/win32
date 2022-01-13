// IWICMetadataBlockReader.dart

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
import '../../graphics/imaging/IWICMetadataReader.dart';
import '../../system/com/IEnumUnknown.dart';

/// @nodoc
const IID_IWICMetadataBlockReader = '{FEAA2A8D-B3F3-43E4-B25C-D1DE990A1AE1}';

/// {@category Interface}
/// {@category com}
class IWICMetadataBlockReader extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWICMetadataBlockReader(Pointer<COMObject> ptr) : super(ptr);

  int GetContainerFormat(
    Pointer<GUID> pguidContainerFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>()(
        ptr.ref.lpVtbl,
        pguidContainerFormat,
      );

  int GetCount(
    Pointer<Uint32> pcCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>()(
        ptr.ref.lpVtbl,
        pcCount,
      );

  int GetReaderByIndex(
    int nIndex,
    Pointer<Pointer<COMObject>> ppIMetadataReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<COMObject>> ppIMetadataReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<COMObject>> ppIMetadataReader,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppIMetadataReader,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> ppIEnumMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumMetadata,
      );
}
