// IInputObject2.dart

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

import '../../ui/shell/IInputObject.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInputObject2 = '{6915C085-510B-44CD-94AF-28DFA56CF92B}';

/// {@category Interface}
/// {@category com}
class IInputObject2 extends IInputObject {
  // vtable begins at 6, is 1 entries long.
  IInputObject2(Pointer<COMObject> ptr) : super(ptr);

  int TranslateAcceleratorGlobal(
    Pointer<MSG> pMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pMsg,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
      );
}
