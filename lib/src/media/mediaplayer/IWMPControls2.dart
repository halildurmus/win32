// IWMPControls2.dart

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

import '../../media/mediaplayer/IWMPControls.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPControls2 = '{6F030D25-0890-480F-9775-1F7E40AB5B8E}';

/// {@category Interface}
/// {@category com}
class IWMPControls2 extends IWMPControls {
  // vtable begins at 23, is 1 entries long.
  IWMPControls2(Pointer<COMObject> ptr) : super(ptr);

  int step(
    int lStep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStep,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStep,
          )>()(
        ptr.ref.lpVtbl,
        lStep,
      );
}
