// IWICImagingFactory2.dart

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

import '../../../graphics/imaging/IWICImagingFactory.dart';
import '../../../graphics/direct2d/ID2D1Device.dart';
import '../../../graphics/imaging/d2d/IWICImageEncoder.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICImagingFactory2 = '{7B816B45-1996-4476-B132-DE9E247C8AF0}';

/// {@category Interface}
/// {@category com}
class IWICImagingFactory2 extends IWICImagingFactory {
  // vtable begins at 28, is 1 entries long.
  IWICImagingFactory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateImageEncoder(
    Pointer<COMObject> pD2DDevice,
    Pointer<Pointer<COMObject>> ppWICImageEncoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD2DDevice,
            Pointer<Pointer<COMObject>> ppWICImageEncoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD2DDevice,
            Pointer<Pointer<COMObject>> ppWICImageEncoder,
          )>()(
        ptr.ref.lpVtbl,
        pD2DDevice,
        ppWICImageEncoder,
      );
}
