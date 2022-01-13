// IWICBitmapScaler.dart

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

import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICBitmapScaler = '{00000302-A8F2-4877-BA0A-FD2B6645FB94}';

/// {@category Interface}
/// {@category com}
class IWICBitmapScaler extends IWICBitmapSource {
  // vtable begins at 8, is 1 entries long.
  IWICBitmapScaler(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pISource,
    int uiWidth,
    int uiHeight,
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pISource,
            Uint32 uiWidth,
            Uint32 uiHeight,
            Int32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pISource,
            int uiWidth,
            int uiHeight,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        pISource,
        uiWidth,
        uiHeight,
        mode,
      );
}
