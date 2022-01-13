// IMediaEvent.dart

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
const IID_IMediaEvent = '{56A868B6-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IMediaEvent extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IMediaEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetEventHandle(
    Pointer<IntPtr> hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );

  int GetEvent(
    Pointer<Int32> lEventCode,
    Pointer<IntPtr> lParam1,
    Pointer<IntPtr> lParam2,
    int msTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lEventCode,
            Pointer<IntPtr> lParam1,
            Pointer<IntPtr> lParam2,
            Int32 msTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lEventCode,
            Pointer<IntPtr> lParam1,
            Pointer<IntPtr> lParam2,
            int msTimeout,
          )>()(
        ptr.ref.lpVtbl,
        lEventCode,
        lParam1,
        lParam2,
        msTimeout,
      );

  int WaitForCompletion(
    int msTimeout,
    Pointer<Int32> pEvCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 msTimeout,
            Pointer<Int32> pEvCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msTimeout,
            Pointer<Int32> pEvCode,
          )>()(
        ptr.ref.lpVtbl,
        msTimeout,
        pEvCode,
      );

  int CancelDefaultHandling(
    int lEvCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEvCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEvCode,
          )>()(
        ptr.ref.lpVtbl,
        lEvCode,
      );

  int RestoreDefaultHandling(
    int lEvCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEvCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEvCode,
          )>()(
        ptr.ref.lpVtbl,
        lEvCode,
      );

  int FreeEventParams(
    int lEvCode,
    int lParam1,
    int lParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEvCode,
            IntPtr lParam1,
            IntPtr lParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEvCode,
            int lParam1,
            int lParam2,
          )>()(
        ptr.ref.lpVtbl,
        lEvCode,
        lParam1,
        lParam2,
      );
}
