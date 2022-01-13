// IXpsOMFontResource.dart

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

import '../../storage/xps/IXpsOMResource.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';

/// @nodoc
const IID_IXpsOMFontResource = '{A8C45708-47D9-4AF4-8D20-33B48C9B8485}';

/// {@category Interface}
/// {@category com}
class IXpsOMFontResource extends IXpsOMResource {
  // vtable begins at 5, is 3 entries long.
  IXpsOMFontResource(Pointer<COMObject> ptr) : super(ptr);

  int GetStream(
    Pointer<Pointer<COMObject>> readerStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> readerStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> readerStream,
          )>()(
        ptr.ref.lpVtbl,
        readerStream,
      );

  int SetContent(
    Pointer<COMObject> sourceStream,
    int embeddingOption,
    Pointer<COMObject> partName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sourceStream,
            Int32 embeddingOption,
            Pointer<COMObject> partName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sourceStream,
            int embeddingOption,
            Pointer<COMObject> partName,
          )>()(
        ptr.ref.lpVtbl,
        sourceStream,
        embeddingOption,
        partName,
      );

  int GetEmbeddingOption(
    Pointer<Int32> embeddingOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> embeddingOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> embeddingOption,
          )>()(
        ptr.ref.lpVtbl,
        embeddingOption,
      );
}
