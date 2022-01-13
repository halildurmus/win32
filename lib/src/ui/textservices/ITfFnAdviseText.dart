// ITfFnAdviseText.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfLMLattice.dart';

/// @nodoc
const IID_ITfFnAdviseText = '{3527268B-7D53-4DD9-92B7-7296AE461249}';

/// {@category Interface}
/// {@category com}
class ITfFnAdviseText extends ITfFunction {
  // vtable begins at 4, is 2 entries long.
  ITfFnAdviseText(Pointer<COMObject> ptr) : super(ptr);

  int OnTextUpdate(
    Pointer<COMObject> pRange,
    Pointer<Utf16> pchText,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Utf16> pchText,
            Int32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Utf16> pchText,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        pchText,
        cch,
      );

  int OnLatticeUpdate(
    Pointer<COMObject> pRange,
    Pointer<COMObject> pLattice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<COMObject> pLattice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<COMObject> pLattice,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        pLattice,
      );
}
