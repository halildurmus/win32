// IMFMediaSourceEx.dart

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

import '../../media/mediafoundation/IMFMediaSource.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFMediaSourceEx = '{3C9B2EB9-86D5-4514-A394-F56664F9F0D8}';

/// {@category Interface}
/// {@category com}
class IMFMediaSourceEx extends IMFMediaSource {
  // vtable begins at 13, is 3 entries long.
  IMFMediaSourceEx(Pointer<COMObject> ptr) : super(ptr);

  int GetSourceAttributes(
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        ppAttributes,
      );

  int GetStreamAttributes(
    int dwStreamIdentifier,
    Pointer<Pointer<COMObject>> ppAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIdentifier,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIdentifier,
            Pointer<Pointer<COMObject>> ppAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIdentifier,
        ppAttributes,
      );

  int SetD3DManager(
    Pointer<COMObject> pManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pManager,
          )>()(
        ptr.ref.lpVtbl,
        pManager,
      );
}
