// IInkDesktopHost.dart

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
import '../../../ui/input/ink/IInkHostWorkItem.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IInkDesktopHost = '{4CE7D875-A981-4140-A1FF-AD93258E8D59}';

/// {@category Interface}
/// {@category com}
class IInkDesktopHost extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IInkDesktopHost(Pointer<COMObject> ptr) : super(ptr);

  int QueueWorkItem(
    Pointer<COMObject> workItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> workItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> workItem,
          )>()(
        ptr.ref.lpVtbl,
        workItem,
      );

  int CreateInkPresenter(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int CreateAndInitializeInkPresenter(
    Pointer<COMObject> rootVisual,
    double width,
    double height,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> rootVisual,
            Float width,
            Float height,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> rootVisual,
            double width,
            double height,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        rootVisual,
        width,
        height,
        riid,
        ppv,
      );
}

/// @nodoc
const CLSID_InkDesktopHost = '{062584A6-F830-4BDC-A4D2-0A10AB062B1D}';

/// {@category com}
class InkDesktopHost extends IInkDesktopHost {
  InkDesktopHost(Pointer<COMObject> ptr) : super(ptr);

  factory InkDesktopHost.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkDesktopHost);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkDesktopHost);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkDesktopHost(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
