// ITfCandidateListUIElementBehavior.dart

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

import '../../ui/textservices/ITfCandidateListUIElement.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfCandidateListUIElementBehavior =
    '{85FAD185-58CE-497A-9460-355366B64B9A}';

/// {@category Interface}
/// {@category com}
class ITfCandidateListUIElementBehavior extends ITfCandidateListUIElement {
  // vtable begins at 15, is 3 entries long.
  ITfCandidateListUIElementBehavior(Pointer<COMObject> ptr) : super(ptr);

  int SetSelection(
    int nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
      );

  int Finalize() => ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
