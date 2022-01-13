// ISharedBitmap.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISharedBitmap = '{091162A4-BC96-411F-AAE8-C5122CD03363}';

/// {@category Interface}
/// {@category com}
class ISharedBitmap extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISharedBitmap(Pointer<COMObject> ptr) : super(ptr);

  int GetSharedBitmap(
    Pointer<IntPtr> phbm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phbm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phbm,
          )>()(
        ptr.ref.lpVtbl,
        phbm,
      );

  int GetSize(
    Pointer<SIZE> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pSize,
          )>()(
        ptr.ref.lpVtbl,
        pSize,
      );

  int GetFormat(
    Pointer<Int32> pat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pat,
          )>()(
        ptr.ref.lpVtbl,
        pat,
      );

  int InitializeBitmap(
    int hbm,
    int wtsAT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hbm,
            Int32 wtsAT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hbm,
            int wtsAT,
          )>()(
        ptr.ref.lpVtbl,
        hbm,
        wtsAT,
      );

  int Detach(
    Pointer<IntPtr> phbm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phbm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phbm,
          )>()(
        ptr.ref.lpVtbl,
        phbm,
      );
}

/// @nodoc
const CLSID_SharedBitmap = '{4DB26476-6787-4046-B836-E8412A9E8A27}';

/// {@category com}
class SharedBitmap extends ISharedBitmap {
  SharedBitmap(Pointer<COMObject> ptr) : super(ptr);

  factory SharedBitmap.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SharedBitmap);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISharedBitmap);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SharedBitmap(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
