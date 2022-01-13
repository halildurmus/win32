// IWICBitmap.dart

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

import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../graphics/imaging/IWICBitmapLock.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICPalette.dart';

/// @nodoc
const IID_IWICBitmap = '{00000121-A8F2-4877-BA0A-FD2B6645FB94}';

/// {@category Interface}
/// {@category com}
class IWICBitmap extends IWICBitmapSource {
  // vtable begins at 8, is 3 entries long.
  IWICBitmap(Pointer<COMObject> ptr) : super(ptr);

  int Lock(
    Pointer<WICRect> prcLock,
    int flags,
    Pointer<Pointer<COMObject>> ppILock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICRect> prcLock,
            Uint32 flags,
            Pointer<Pointer<COMObject>> ppILock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICRect> prcLock,
            int flags,
            Pointer<Pointer<COMObject>> ppILock,
          )>()(
        ptr.ref.lpVtbl,
        prcLock,
        flags,
        ppILock,
      );

  int SetPalette(
    Pointer<COMObject> pIPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIPalette,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIPalette,
          )>()(
        ptr.ref.lpVtbl,
        pIPalette,
      );

  int SetResolution(
    double dpiX,
    double dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dpiX,
            Double dpiY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dpiX,
            double dpiY,
          )>()(
        ptr.ref.lpVtbl,
        dpiX,
        dpiY,
      );
}
