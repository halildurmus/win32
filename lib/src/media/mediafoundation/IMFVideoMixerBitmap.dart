// IMFVideoMixerBitmap.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoMixerBitmap = '{814C7B20-0FDB-4EEC-AF8F-F957C8F69EDC}';

/// {@category Interface}
/// {@category com}
class IMFVideoMixerBitmap extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFVideoMixerBitmap(Pointer<COMObject> ptr) : super(ptr);

  int SetAlphaBitmap(
    Pointer<MFVideoAlphaBitmap> pBmpParms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoAlphaBitmap> pBmpParms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoAlphaBitmap> pBmpParms,
          )>()(
        ptr.ref.lpVtbl,
        pBmpParms,
      );

  int ClearAlphaBitmap() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int UpdateAlphaBitmapParameters(
    Pointer<MFVideoAlphaBitmapParams> pBmpParms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoAlphaBitmapParams> pBmpParms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoAlphaBitmapParams> pBmpParms,
          )>()(
        ptr.ref.lpVtbl,
        pBmpParms,
      );

  int GetAlphaBitmapParameters(
    Pointer<MFVideoAlphaBitmapParams> pBmpParms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoAlphaBitmapParams> pBmpParms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoAlphaBitmapParams> pBmpParms,
          )>()(
        ptr.ref.lpVtbl,
        pBmpParms,
      );
}
