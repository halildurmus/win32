// IAMStreamControl.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IAMStreamControl = '{36B73881-C2C8-11CF-8B46-00805F6CEF60}';

/// {@category Interface}
/// {@category com}
class IAMStreamControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMStreamControl(Pointer<COMObject> ptr) : super(ptr);

  int StartAt(
    Pointer<Int64> ptStart,
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> ptStart,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> ptStart,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        ptStart,
        dwCookie,
      );

  int StopAt(
    Pointer<Int64> ptStop,
    int bSendExtra,
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> ptStop,
            Int32 bSendExtra,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> ptStop,
            int bSendExtra,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        ptStop,
        bSendExtra,
        dwCookie,
      );

  int GetInfo(
    Pointer<AM_STREAM_INFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_STREAM_INFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_STREAM_INFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );
}
