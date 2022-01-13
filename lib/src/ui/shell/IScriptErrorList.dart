// IScriptErrorList.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IScriptErrorList = '{F3470F24-15FD-11D2-BB2E-00805FF7EFCA}';

/// {@category Interface}
/// {@category com}
class IScriptErrorList extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  IScriptErrorList(Pointer<COMObject> ptr) : super(ptr);

  int advanceError() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int retreatError() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int canAdvanceError(
    Pointer<Int32> pfCanAdvance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCanAdvance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCanAdvance,
          )>()(
        ptr.ref.lpVtbl,
        pfCanAdvance,
      );

  int canRetreatError(
    Pointer<Int32> pfCanRetreat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCanRetreat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCanRetreat,
          )>()(
        ptr.ref.lpVtbl,
        pfCanRetreat,
      );

  int getErrorLine(
    Pointer<Int32> plLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plLine,
          )>()(
        ptr.ref.lpVtbl,
        plLine,
      );

  int getErrorChar(
    Pointer<Int32> plChar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plChar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plChar,
          )>()(
        ptr.ref.lpVtbl,
        plChar,
      );

  int getErrorCode(
    Pointer<Int32> plCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCode,
          )>()(
        ptr.ref.lpVtbl,
        plCode,
      );

  int getErrorMsg(
    Pointer<Pointer<Utf16>> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>()(
        ptr.ref.lpVtbl,
        pstr,
      );

  int getErrorUrl(
    Pointer<Pointer<Utf16>> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstr,
          )>()(
        ptr.ref.lpVtbl,
        pstr,
      );

  int getAlwaysShowLockState(
    Pointer<Int32> pfAlwaysShowLocked,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAlwaysShowLocked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAlwaysShowLocked,
          )>()(
        ptr.ref.lpVtbl,
        pfAlwaysShowLocked,
      );

  int getDetailsPaneOpen(
    Pointer<Int32> pfDetailsPaneOpen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfDetailsPaneOpen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfDetailsPaneOpen,
          )>()(
        ptr.ref.lpVtbl,
        pfDetailsPaneOpen,
      );

  int setDetailsPaneOpen(
    int fDetailsPaneOpen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fDetailsPaneOpen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fDetailsPaneOpen,
          )>()(
        ptr.ref.lpVtbl,
        fDetailsPaneOpen,
      );

  int getPerErrorDisplay(
    Pointer<Int32> pfPerErrorDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfPerErrorDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfPerErrorDisplay,
          )>()(
        ptr.ref.lpVtbl,
        pfPerErrorDisplay,
      );

  int setPerErrorDisplay(
    int fPerErrorDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fPerErrorDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fPerErrorDisplay,
          )>()(
        ptr.ref.lpVtbl,
        fPerErrorDisplay,
      );
}
