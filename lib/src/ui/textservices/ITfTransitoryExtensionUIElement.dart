// ITfTransitoryExtensionUIElement.dart

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

import '../../ui/textservices/ITfUIElement.dart';
import '../../ui/textservices/ITfDocumentMgr.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfTransitoryExtensionUIElement =
    '{858F956A-972F-42A2-A2F2-0321E1ABE209}';

/// {@category Interface}
/// {@category com}
class ITfTransitoryExtensionUIElement extends ITfUIElement {
  // vtable begins at 7, is 1 entries long.
  ITfTransitoryExtensionUIElement(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentMgr(
    Pointer<Pointer<COMObject>> ppdim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdim,
          )>()(
        ptr.ref.lpVtbl,
        ppdim,
      );
}
