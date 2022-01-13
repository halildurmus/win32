// IWICBitmapLock.dart

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

/// @nodoc
const IID_IWICBitmapLock = '{00000123-A8F2-4877-BA0A-FD2B6645FB94}';

/// {@category Interface}
/// {@category com}
class IWICBitmapLock extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWICBitmapLock(Pointer<COMObject> ptr) : super(ptr);

  int GetSize(
    Pointer<Uint32> puiWidth,
    Pointer<Uint32> puiHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
          )>()(
        ptr.ref.lpVtbl,
        puiWidth,
        puiHeight,
      );

  int GetStride(
    Pointer<Uint32> pcbStride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbStride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbStride,
          )>()(
        ptr.ref.lpVtbl,
        pcbStride,
      );

  int GetDataPointer(
    Pointer<Uint32> pcbBufferSize,
    Pointer<Pointer<Uint8>> ppbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbBufferSize,
            Pointer<Pointer<Uint8>> ppbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbBufferSize,
            Pointer<Pointer<Uint8>> ppbData,
          )>()(
        ptr.ref.lpVtbl,
        pcbBufferSize,
        ppbData,
      );

  int GetPixelFormat(
    Pointer<GUID> pPixelFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pPixelFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pPixelFormat,
          )>()(
        ptr.ref.lpVtbl,
        pPixelFormat,
      );
}
