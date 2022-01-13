// IActionProgress.dart

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

import '../../system/com/IUnknown.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IActionProgress = '{49FF1173-EADC-446D-9285-156453A6431C}';

/// {@category Interface}
/// {@category com}
class IActionProgress extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IActionProgress(Pointer<COMObject> ptr) : super(ptr);

  int Begin(
    int action,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 action,
            Uint32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int action,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        action,
        flags,
      );

  int UpdateProgress(
    int ulCompleted,
    int ulTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ulCompleted,
            Uint64 ulTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCompleted,
            int ulTotal,
          )>()(
        ptr.ref.lpVtbl,
        ulCompleted,
        ulTotal,
      );

  int UpdateText(
    int sptext,
    Pointer<Utf16> pszText,
    int fMayCompact,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 sptext,
            Pointer<Utf16> pszText,
            Int32 fMayCompact,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sptext,
            Pointer<Utf16> pszText,
            int fMayCompact,
          )>()(
        ptr.ref.lpVtbl,
        sptext,
        pszText,
        fMayCompact,
      );

  int QueryCancel(
    Pointer<Int32> pfCancelled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCancelled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCancelled,
          )>()(
        ptr.ref.lpVtbl,
        pfCancelled,
      );

  int ResetCancel() => ptr.ref.lpVtbl.value
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

  int End() => ptr.ref.lpVtbl.value
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
}
