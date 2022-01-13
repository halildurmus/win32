// IDynamicRenderer.dart

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
import '../../ui/tabletpc/IInkDrawingAttributes.dart';

/// @nodoc
const IID_IDynamicRenderer = '{A079468E-7165-46F9-B7AF-98AD01A93009}';

/// {@category Interface}
/// {@category com}
class IDynamicRenderer extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IDynamicRenderer(Pointer<COMObject> ptr) : super(ptr);

  int get Enabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> bEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Enabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 bEnabled,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bEnabled,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get HWND {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> hwnd,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set HWND(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          IntPtr hwnd,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int hwnd,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_ClipRectangle(
    Pointer<RECT> prcClipRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcClipRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcClipRect,
          )>()(
        ptr.ref.lpVtbl,
        prcClipRect,
      );

  int put_ClipRectangle(
    Pointer<RECT> prcClipRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcClipRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcClipRect,
          )>()(
        ptr.ref.lpVtbl,
        prcClipRect,
      );

  int get ClipRegion {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phClipRgn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phClipRgn,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ClipRegion(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          IntPtr hClipRgn,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int hClipRgn,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get DrawingAttributes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiDA,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiDA,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_DrawingAttributes(
    Pointer<COMObject> piDA,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piDA,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piDA,
          )>()(
        ptr.ref.lpVtbl,
        piDA,
      );

  int get DataCacheEnabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCacheData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCacheData,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DataCacheEnabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fCacheData,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fCacheData,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int ReleaseCachedData(
    int strokeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 strokeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int strokeId,
          )>()(
        ptr.ref.lpVtbl,
        strokeId,
      );

  int Refresh() => ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Draw(
    int hDC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
      );
}

/// @nodoc
const CLSID_DynamicRenderer = '{ECD32AEA-746F-4DCB-BF68-082757FAFF18}';

/// {@category com}
class DynamicRenderer extends IDynamicRenderer {
  DynamicRenderer(Pointer<COMObject> ptr) : super(ptr);

  factory DynamicRenderer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DynamicRenderer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDynamicRenderer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DynamicRenderer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
