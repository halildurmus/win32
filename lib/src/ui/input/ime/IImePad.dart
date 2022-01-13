// IImePad.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../ui/input/ime/IImePadApplet.dart';
import '../../../ui/input/ime/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IImePad = '{5D8E643A-C3A9-11D1-AFEF-00805F0C8B6D}';

/// {@category Interface}
/// {@category com}
class IImePad extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IImePad(Pointer<COMObject> ptr) : super(ptr);

  int Request(
    Pointer<COMObject> pIImePadApplet,
    int reqId,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIImePadApplet,
            Uint32 reqId,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIImePadApplet,
            int reqId,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        pIImePadApplet,
        reqId,
        wParam,
        lParam,
      );
}
