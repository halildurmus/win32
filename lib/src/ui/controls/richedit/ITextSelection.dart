// ITextSelection.dart

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

import '../../../ui/controls/richedit/ITextRange.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/structs.g.dart';

/// @nodoc
const IID_ITextSelection = '{8CC497C1-A1DF-11CE-8098-00AA0047BE5D}';

/// {@category Interface}
/// {@category com}
class ITextSelection extends ITextRange {
  // vtable begins at 58, is 10 entries long.
  ITextSelection(Pointer<COMObject> ptr) : super(ptr);

  int GetFlags(
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int SetFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int GetType(
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int MoveLeft(
    int Unit,
    int Count,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        Extend,
        pDelta,
      );

  int MoveRight(
    int Unit,
    int Count,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        Extend,
        pDelta,
      );

  int MoveUp(
    int Unit,
    int Count,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        Extend,
        pDelta,
      );

  int MoveDown(
    int Unit,
    int Count,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        Extend,
        pDelta,
      );

  int HomeKey(
    int Unit,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Extend,
        pDelta,
      );

  int EndKey(
    int Unit,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Extend,
        pDelta,
      );

  int TypeText(
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstr,
          )>()(
        ptr.ref.lpVtbl,
        bstr,
      );
}
