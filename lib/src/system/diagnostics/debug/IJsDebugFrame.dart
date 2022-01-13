// IJsDebugFrame.dart

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
import '../../../system/diagnostics/debug/IJsDebugProperty.dart';

/// @nodoc
const IID_IJsDebugFrame = '{C9196637-AB9D-44B2-BAD2-13B95B3F390E}';

/// {@category Interface}
/// {@category com}
class IJsDebugFrame extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IJsDebugFrame(Pointer<COMObject> ptr) : super(ptr);

  int GetStackRange(
    Pointer<Uint64> pStart,
    Pointer<Uint64> pEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pStart,
            Pointer<Uint64> pEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pStart,
            Pointer<Uint64> pEnd,
          )>()(
        ptr.ref.lpVtbl,
        pStart,
        pEnd,
      );

  int GetName(
    Pointer<Pointer<Utf16>> pName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>()(
        ptr.ref.lpVtbl,
        pName,
      );

  int GetDocumentPositionWithId(
    Pointer<Uint64> pDocumentId,
    Pointer<Uint32> pCharacterOffset,
    Pointer<Uint32> pStatementCharCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetDocumentPositionWithName(
    Pointer<Pointer<Utf16>> pDocumentName,
    Pointer<Uint32> pLine,
    Pointer<Uint32> pColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDocumentName,
            Pointer<Uint32> pLine,
            Pointer<Uint32> pColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDocumentName,
            Pointer<Uint32> pLine,
            Pointer<Uint32> pColumn,
          )>()(
        ptr.ref.lpVtbl,
        pDocumentName,
        pLine,
        pColumn,
      );

  int GetDebugProperty(
    Pointer<Pointer<COMObject>> ppDebugProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDebugProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDebugProperty,
          )>()(
        ptr.ref.lpVtbl,
        ppDebugProperty,
      );

  int GetReturnAddress(
    Pointer<Uint64> pReturnAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pReturnAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pReturnAddress,
          )>()(
        ptr.ref.lpVtbl,
        pReturnAddress,
      );

  int Evaluate(
    Pointer<Utf16> pExpressionText,
    Pointer<Pointer<COMObject>> ppDebugProperty,
    Pointer<Pointer<Utf16>> pError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pExpressionText,
            Pointer<Pointer<COMObject>> ppDebugProperty,
            Pointer<Pointer<Utf16>> pError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pExpressionText,
            Pointer<Pointer<COMObject>> ppDebugProperty,
            Pointer<Pointer<Utf16>> pError,
          )>()(
        ptr.ref.lpVtbl,
        pExpressionText,
        ppDebugProperty,
        pError,
      );
}
