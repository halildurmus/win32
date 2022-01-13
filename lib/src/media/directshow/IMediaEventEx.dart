// IMediaEventEx.dart

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

import '../../media/directshow/IMediaEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMediaEventEx = '{56A868C0-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IMediaEventEx extends IMediaEvent {
  // vtable begins at 13, is 3 entries long.
  IMediaEventEx(Pointer<COMObject> ptr) : super(ptr);

  int SetNotifyWindow(
    int hwnd,
    int lMsg,
    int lInstanceData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Int32 lMsg,
            IntPtr lInstanceData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int lMsg,
            int lInstanceData,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        lMsg,
        lInstanceData,
      );

  int SetNotifyFlags(
    int lNoNotifyFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lNoNotifyFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lNoNotifyFlags,
          )>()(
        ptr.ref.lpVtbl,
        lNoNotifyFlags,
      );

  int GetNotifyFlags(
    Pointer<Int32> lplNoNotifyFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lplNoNotifyFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lplNoNotifyFlags,
          )>()(
        ptr.ref.lpVtbl,
        lplNoNotifyFlags,
      );
}
