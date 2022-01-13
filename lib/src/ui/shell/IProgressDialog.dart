// IProgressDialog.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IProgressDialog = '{EBBC7C04-315E-11D2-B62F-006097DF5BD4}';

/// {@category Interface}
/// {@category com}
class IProgressDialog extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IProgressDialog(Pointer<COMObject> ptr) : super(ptr);

  int StartProgressDialog(
    int hwndParent,
    Pointer<COMObject> punkEnableModless,
    int dwFlags,
    Pointer pvResevered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<COMObject> punkEnableModless,
            Uint32 dwFlags,
            Pointer pvResevered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<COMObject> punkEnableModless,
            int dwFlags,
            Pointer pvResevered,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        punkEnableModless,
        dwFlags,
        pvResevered,
      );

  int StopProgressDialog() => ptr.ref.lpVtbl.value
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

  int SetTitle(
    Pointer<Utf16> pwzTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzTitle,
          )>()(
        ptr.ref.lpVtbl,
        pwzTitle,
      );

  int SetAnimation(
    int hInstAnimation,
    int idAnimation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hInstAnimation,
            Uint32 idAnimation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hInstAnimation,
            int idAnimation,
          )>()(
        ptr.ref.lpVtbl,
        hInstAnimation,
        idAnimation,
      );

  int HasUserCancelled() => ptr.ref.lpVtbl.value
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

  int SetProgress(
    int dwCompleted,
    int dwTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCompleted,
            Uint32 dwTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCompleted,
            int dwTotal,
          )>()(
        ptr.ref.lpVtbl,
        dwCompleted,
        dwTotal,
      );

  int SetProgress64(
    int ullCompleted,
    int ullTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullCompleted,
            Uint64 ullTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullCompleted,
            int ullTotal,
          )>()(
        ptr.ref.lpVtbl,
        ullCompleted,
        ullTotal,
      );

  int SetLine(
    int dwLineNum,
    Pointer<Utf16> pwzString,
    int fCompactPath,
    Pointer pvResevered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwLineNum,
            Pointer<Utf16> pwzString,
            Int32 fCompactPath,
            Pointer pvResevered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLineNum,
            Pointer<Utf16> pwzString,
            int fCompactPath,
            Pointer pvResevered,
          )>()(
        ptr.ref.lpVtbl,
        dwLineNum,
        pwzString,
        fCompactPath,
        pvResevered,
      );

  int SetCancelMsg(
    Pointer<Utf16> pwzCancelMsg,
    Pointer pvResevered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzCancelMsg,
            Pointer pvResevered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzCancelMsg,
            Pointer pvResevered,
          )>()(
        ptr.ref.lpVtbl,
        pwzCancelMsg,
        pvResevered,
      );

  int Timer(
    int dwTimerAction,
    Pointer pvResevered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimerAction,
            Pointer pvResevered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimerAction,
            Pointer pvResevered,
          )>()(
        ptr.ref.lpVtbl,
        dwTimerAction,
        pvResevered,
      );
}
