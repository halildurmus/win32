// IMFVideoMixerControl.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoMixerControl = '{A5C6C53F-C202-4AA5-9695-175BA8C508A5}';

/// {@category Interface}
/// {@category com}
class IMFVideoMixerControl extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFVideoMixerControl(Pointer<COMObject> ptr) : super(ptr);

  int SetStreamZOrder(
    int dwStreamID,
    int dwZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Uint32 dwZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            int dwZ,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        dwZ,
      );

  int GetStreamZOrder(
    int dwStreamID,
    Pointer<Uint32> pdwZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<Uint32> pdwZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<Uint32> pdwZ,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pdwZ,
      );

  int SetStreamOutputRect(
    int dwStreamID,
    Pointer<MFVideoNormalizedRect> pnrcOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<MFVideoNormalizedRect> pnrcOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<MFVideoNormalizedRect> pnrcOutput,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pnrcOutput,
      );

  int GetStreamOutputRect(
    int dwStreamID,
    Pointer<MFVideoNormalizedRect> pnrcOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<MFVideoNormalizedRect> pnrcOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<MFVideoNormalizedRect> pnrcOutput,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pnrcOutput,
      );
}
