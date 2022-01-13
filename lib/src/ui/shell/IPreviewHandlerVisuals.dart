// IPreviewHandlerVisuals.dart

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
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IPreviewHandlerVisuals = '{196BF9A5-B346-4EF0-AA1E-5DCDB76768B1}';

/// {@category Interface}
/// {@category com}
class IPreviewHandlerVisuals extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPreviewHandlerVisuals(Pointer<COMObject> ptr) : super(ptr);

  int SetBackgroundColor(
    int color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );

  int SetFont(
    Pointer<LOGFONT> plf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LOGFONT> plf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LOGFONT> plf,
          )>()(
        ptr.ref.lpVtbl,
        plf,
      );

  int SetTextColor(
    int color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );
}
