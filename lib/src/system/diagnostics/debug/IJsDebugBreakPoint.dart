// IJsDebugBreakPoint.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IJsDebugBreakPoint = '{DF6773E3-ED8D-488B-8A3E-5812577D1542}';

/// {@category Interface}
/// {@category com}
class IJsDebugBreakPoint extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IJsDebugBreakPoint(Pointer<COMObject> ptr) : super(ptr);

  int IsEnabled(
    Pointer<Int32> pIsEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pIsEnabled,
      );

  int Enable() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Disable() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetDocumentPosition(
    Pointer<Uint64> pDocumentId,
    Pointer<Uint32> pCharacterOffset,
    Pointer<Uint32> pStatementCharCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pDocumentId,
            Pointer<Uint32> pCharacterOffset,
            Pointer<Uint32> pStatementCharCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pDocumentId,
            Pointer<Uint32> pCharacterOffset,
            Pointer<Uint32> pStatementCharCount,
          )>()(
        ptr.ref.lpVtbl,
        pDocumentId,
        pCharacterOffset,
        pStatementCharCount,
      );
}
