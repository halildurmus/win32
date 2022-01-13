// ISoftwareBitmapNativeFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/winrt/IInspectable.dart';
import '../../../../graphics/imaging/IWICBitmap.dart';
import '../../../../foundation/structs.g.dart';
import '../../../../media/mediafoundation/IMF2DBuffer2.dart';
import '../../../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_ISoftwareBitmapNativeFactory =
    '{C3C181EC-2914-4791-AF02-02D224A10B43}';

/// {@category Interface}
/// {@category com}
class ISoftwareBitmapNativeFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ISoftwareBitmapNativeFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateFromWICBitmap(
    Pointer<COMObject> data,
    int forceReadOnly,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> data,
            Int32 forceReadOnly,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> data,
            int forceReadOnly,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        data,
        forceReadOnly,
        riid,
        ppv,
      );

  int CreateFromMF2DBuffer2(
    Pointer<COMObject> data,
    Pointer<GUID> subtype,
    int width,
    int height,
    int forceReadOnly,
    Pointer<MFVideoArea> minDisplayAperture,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> data,
            Pointer<GUID> subtype,
            Uint32 width,
            Uint32 height,
            Int32 forceReadOnly,
            Pointer<MFVideoArea> minDisplayAperture,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> data,
            Pointer<GUID> subtype,
            int width,
            int height,
            int forceReadOnly,
            Pointer<MFVideoArea> minDisplayAperture,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        data,
        subtype,
        width,
        height,
        forceReadOnly,
        minDisplayAperture,
        riid,
        ppv,
      );
}
