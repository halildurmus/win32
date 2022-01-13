// IMixerPinConfig.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMixerPinConfig = 'null';

/// {@category Interface}
/// {@category com}
class IMixerPinConfig extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IMixerPinConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetRelativePosition(
    int dwLeft,
    int dwTop,
    int dwRight,
    int dwBottom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwLeft,
            Uint32 dwTop,
            Uint32 dwRight,
            Uint32 dwBottom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLeft,
            int dwTop,
            int dwRight,
            int dwBottom,
          )>()(
        ptr.ref.lpVtbl,
        dwLeft,
        dwTop,
        dwRight,
        dwBottom,
      );

  int GetRelativePosition(
    Pointer<Uint32> pdwLeft,
    Pointer<Uint32> pdwTop,
    Pointer<Uint32> pdwRight,
    Pointer<Uint32> pdwBottom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLeft,
            Pointer<Uint32> pdwTop,
            Pointer<Uint32> pdwRight,
            Pointer<Uint32> pdwBottom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLeft,
            Pointer<Uint32> pdwTop,
            Pointer<Uint32> pdwRight,
            Pointer<Uint32> pdwBottom,
          )>()(
        ptr.ref.lpVtbl,
        pdwLeft,
        pdwTop,
        pdwRight,
        pdwBottom,
      );

  int SetZOrder(
    int dwZOrder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZOrder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZOrder,
          )>()(
        ptr.ref.lpVtbl,
        dwZOrder,
      );

  int GetZOrder(
    Pointer<Uint32> pdwZOrder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwZOrder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwZOrder,
          )>()(
        ptr.ref.lpVtbl,
        pdwZOrder,
      );

  int SetColorKey(
    Pointer<COLORKEY> pColorKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>()(
        ptr.ref.lpVtbl,
        pColorKey,
      );

  int GetColorKey(
    Pointer<COLORKEY> pColorKey,
    Pointer<Uint32> pColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
            Pointer<Uint32> pColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
            Pointer<Uint32> pColor,
          )>()(
        ptr.ref.lpVtbl,
        pColorKey,
        pColor,
      );

  int SetBlendingParameter(
    int dwBlendingParameter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBlendingParameter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBlendingParameter,
          )>()(
        ptr.ref.lpVtbl,
        dwBlendingParameter,
      );

  int GetBlendingParameter(
    Pointer<Uint32> pdwBlendingParameter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBlendingParameter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBlendingParameter,
          )>()(
        ptr.ref.lpVtbl,
        pdwBlendingParameter,
      );

  int SetAspectRatioMode(
    int amAspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 amAspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int amAspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        amAspectRatioMode,
      );

  int GetAspectRatioMode(
    Pointer<Int32> pamAspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pamAspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pamAspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        pamAspectRatioMode,
      );

  int SetStreamTransparent(
    int bStreamTransparent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bStreamTransparent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bStreamTransparent,
          )>()(
        ptr.ref.lpVtbl,
        bStreamTransparent,
      );

  int GetStreamTransparent(
    Pointer<Int32> pbStreamTransparent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbStreamTransparent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbStreamTransparent,
          )>()(
        ptr.ref.lpVtbl,
        pbStreamTransparent,
      );
}
