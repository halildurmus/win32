// IInkD2DRenderer.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInkD2DRenderer = '{407FB1DE-F85A-4150-97CF-B7FB274FB4F8}';

/// {@category Interface}
/// {@category com}
class IInkD2DRenderer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInkD2DRenderer(Pointer<COMObject> ptr) : super(ptr);

  int Draw(
    Pointer<COMObject> pD2D1DeviceContext,
    Pointer<COMObject> pInkStrokeIterable,
    int fHighContrast,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD2D1DeviceContext,
            Pointer<COMObject> pInkStrokeIterable,
            Int32 fHighContrast,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD2D1DeviceContext,
            Pointer<COMObject> pInkStrokeIterable,
            int fHighContrast,
          )>()(
        ptr.ref.lpVtbl,
        pD2D1DeviceContext,
        pInkStrokeIterable,
        fHighContrast,
      );
}

/// @nodoc
const CLSID_InkD2DRenderer = '{4044E60C-7B01-4671-A97C-04E0210A07A5}';

/// {@category com}
class InkD2DRenderer extends IInkD2DRenderer {
  InkD2DRenderer(Pointer<COMObject> ptr) : super(ptr);

  factory InkD2DRenderer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkD2DRenderer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkD2DRenderer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkD2DRenderer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
