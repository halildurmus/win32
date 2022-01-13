// ITfTextLayoutSink.dart

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
import '../../ui/textservices/ITfContext.dart';
import '../../ui/textservices/structs.g.dart';
import '../../ui/textservices/ITfContextView.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfTextLayoutSink = '{2AF2D06A-DD5B-4927-A0B4-54F19C91FADE}';

/// {@category Interface}
/// {@category com}
class ITfTextLayoutSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfTextLayoutSink(Pointer<COMObject> ptr) : super(ptr);

  int OnLayoutChange(
    Pointer<COMObject> pic,
    int lcode,
    Pointer<COMObject> pView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Int32 lcode,
            Pointer<COMObject> pView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int lcode,
            Pointer<COMObject> pView,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        lcode,
        pView,
      );
}
