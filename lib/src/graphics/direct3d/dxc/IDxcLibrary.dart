// IDxcLibrary.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/IMalloc.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../graphics/direct3d/dxc/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcBlobEncoding.dart';
import '../../../graphics/direct3d/dxc/IDxcIncludeHandler.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IDxcLibrary = '{E5204DC7-D18C-4C3C-BDFB-851673980FE7}';

/// {@category Interface}
/// {@category com}
class IDxcLibrary extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IDxcLibrary(Pointer<COMObject> ptr) : super(ptr);

  int SetMalloc(
    Pointer<COMObject> pMalloc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMalloc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMalloc,
          )>()(
        ptr.ref.lpVtbl,
        pMalloc,
      );

  int CreateBlobFromBlob(
    Pointer<COMObject> pBlob,
    int offset,
    int length,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Uint32 offset,
            Uint32 length,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            int offset,
            int length,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        offset,
        length,
        ppResult,
      );

  int CreateBlobFromFile(
    Pointer<Utf16> pFileName,
    Pointer<Uint32> codePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pFileName,
            Pointer<Uint32> codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pFileName,
            Pointer<Uint32> codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pFileName,
        codePage,
        pBlobEncoding,
      );

  int CreateBlobWithEncodingFromPinned(
    Pointer pText,
    int size,
    int codePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pText,
            Uint32 size,
            Uint32 codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pText,
            int size,
            int codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pText,
        size,
        codePage,
        pBlobEncoding,
      );

  int CreateBlobWithEncodingOnHeapCopy(
    Pointer pText,
    int size,
    int codePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pText,
            Uint32 size,
            Uint32 codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pText,
            int size,
            int codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pText,
        size,
        codePage,
        pBlobEncoding,
      );

  int CreateBlobWithEncodingOnMalloc(
    Pointer pText,
    Pointer<COMObject> pIMalloc,
    int size,
    int codePage,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pText,
            Pointer<COMObject> pIMalloc,
            Uint32 size,
            Uint32 codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pText,
            Pointer<COMObject> pIMalloc,
            int size,
            int codePage,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pText,
        pIMalloc,
        size,
        codePage,
        pBlobEncoding,
      );

  int CreateIncludeHandler(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );

  int CreateStreamFromBlobReadOnly(
    Pointer<COMObject> pBlob,
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        ppStream,
      );

  int GetBlobAsUtf8(
    Pointer<COMObject> pBlob,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        pBlobEncoding,
      );

  int GetBlobAsUtf16(
    Pointer<COMObject> pBlob,
    Pointer<Pointer<COMObject>> pBlobEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBlob,
            Pointer<Pointer<COMObject>> pBlobEncoding,
          )>()(
        ptr.ref.lpVtbl,
        pBlob,
        pBlobEncoding,
      );
}
