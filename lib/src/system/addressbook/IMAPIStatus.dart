// IMAPIStatus.dart

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

import '../../system/addressbook/IMAPIProp.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/structs.g.dart';

/// @nodoc
const IID_IMAPIStatus = 'null';

/// {@category Interface}
/// {@category com}
class IMAPIStatus extends IMAPIProp {
  // vtable begins at 14, is 4 entries long.
  IMAPIStatus(Pointer<COMObject> ptr) : super(ptr);

  int ValidateState(
    int ulUIParam,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ulUIParam,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulUIParam,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulUIParam,
        ulFlags,
      );

  int SettingsDialog(
    int ulUIParam,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ulUIParam,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulUIParam,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulUIParam,
        ulFlags,
      );

  int ChangePassword(
    Pointer<Int8> lpOldPass,
    Pointer<Int8> lpNewPass,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpOldPass,
            Pointer<Int8> lpNewPass,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpOldPass,
            Pointer<Int8> lpNewPass,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpOldPass,
        lpNewPass,
        ulFlags,
      );

  int FlushQueues(
    int ulUIParam,
    int cbTargetTransport,
    Pointer<ENTRYID> lpTargetTransport,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ulUIParam,
            Uint32 cbTargetTransport,
            Pointer<ENTRYID> lpTargetTransport,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulUIParam,
            int cbTargetTransport,
            Pointer<ENTRYID> lpTargetTransport,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulUIParam,
        cbTargetTransport,
        lpTargetTransport,
        ulFlags,
      );
}
