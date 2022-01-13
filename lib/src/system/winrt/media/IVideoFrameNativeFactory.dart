// IVideoFrameNativeFactory.dart

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

import '../../../system/winrt/IInspectable.dart';
import '../../../media/mediafoundation/IMFSample.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/mediafoundation/structs.g.dart';
import '../../../media/mediafoundation/IMFDXGIDeviceManager.dart';

/// @nodoc
const IID_IVideoFrameNativeFactory = '{69E3693E-8E1E-4E63-AC4C-7FDC21D9731D}';

/// {@category Interface}
/// {@category com}
class IVideoFrameNativeFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IVideoFrameNativeFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateFromMFSample(
    Pointer<COMObject> data,
    Pointer<GUID> subtype,
    int width,
    int height,
    int forceReadOnly,
    Pointer<MFVideoArea> minDisplayAperture,
    Pointer<COMObject> device,
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
            Pointer<GUID> subtype,
            Uint32 width,
            Uint32 height,
            Int32 forceReadOnly,
            Pointer<MFVideoArea> minDisplayAperture,
            Pointer<COMObject> device,
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
            Pointer<COMObject> device,
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
        device,
        riid,
        ppv,
      );
}
