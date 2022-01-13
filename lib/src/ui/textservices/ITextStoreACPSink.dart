// ITextStoreACPSink.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITextStoreACPSink = '{22D44C94-A419-4542-A272-AE26093ECECF}';

/// {@category Interface}
/// {@category com}
class ITextStoreACPSink extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ITextStoreACPSink(Pointer<COMObject> ptr) : super(ptr);

  int OnTextChange(
    int dwFlags,
    Pointer<TS_TEXTCHANGE> pChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<TS_TEXTCHANGE> pChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<TS_TEXTCHANGE> pChange,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pChange,
      );

  int OnSelectionChange() => ptr.ref.lpVtbl.value
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

  int OnLayoutChange(
    int lcode,
    int vcView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lcode,
            Uint32 vcView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lcode,
            int vcView,
          )>()(
        ptr.ref.lpVtbl,
        lcode,
        vcView,
      );

  int OnStatusChange(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int OnAttrsChange(
    int acpStart,
    int acpEnd,
    int cAttrs,
    Pointer<GUID> paAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpStart,
            Int32 acpEnd,
            Uint32 cAttrs,
            Pointer<GUID> paAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpStart,
            int acpEnd,
            int cAttrs,
            Pointer<GUID> paAttrs,
          )>()(
        ptr.ref.lpVtbl,
        acpStart,
        acpEnd,
        cAttrs,
        paAttrs,
      );

  int OnLockGranted(
    int dwLockFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwLockFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLockFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwLockFlags,
      );

  int OnStartEditTransaction() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int OnEndEditTransaction() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
