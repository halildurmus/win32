// IWMPNodeWindowless.dart

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

import '../../media/mediaplayer/IWMPWindowMessageSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPNodeWindowless = '{9B9199AD-780C-4EDA-B816-261EBA5D1575}';

/// {@category Interface}
/// {@category com}
class IWMPNodeWindowless extends IWMPWindowMessageSink {
  // vtable begins at 4, is 1 entries long.
  IWMPNodeWindowless(Pointer<COMObject> ptr) : super(ptr);

  int OnDraw(
    int hdc,
    Pointer<RECT> prcDraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Pointer<RECT> prcDraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            Pointer<RECT> prcDraw,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        prcDraw,
      );
}
