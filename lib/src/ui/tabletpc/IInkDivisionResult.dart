// IInkDivisionResult.dart

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

import '../../system/com/IDispatch.dart';
import '../../ui/tabletpc/IInkStrokes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../ui/tabletpc/IInkDivisionUnits.dart';

/// @nodoc
const IID_IInkDivisionResult = '{2DBEC0A7-74C7-4B38-81EB-AA8EF0C24900}';

/// {@category Interface}
/// {@category com}
class IInkDivisionResult extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IInkDivisionResult(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Strokes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Strokes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ResultByType(
    int divisionType,
    Pointer<Pointer<COMObject>> InkDivisionUnits,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 divisionType,
            Pointer<Pointer<COMObject>> InkDivisionUnits,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int divisionType,
            Pointer<Pointer<COMObject>> InkDivisionUnits,
          )>()(
        ptr.ref.lpVtbl,
        divisionType,
        InkDivisionUnits,
      );
}
