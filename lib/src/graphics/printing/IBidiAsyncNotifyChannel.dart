// IBidiAsyncNotifyChannel.dart

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

import '../../graphics/printing/IPrintAsyncNotifyChannel.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/IPrintAsyncNotifyDataObject.dart';
import '../../graphics/printing/IAsyncGetSendNotificationCookie.dart';
import '../../graphics/printing/IPrintAsyncCookie.dart';

/// @nodoc
const IID_IBidiAsyncNotifyChannel = '{532818F7-921B-4FB2-BFF8-2F4FD52EBEBF}';

/// {@category Interface}
/// {@category com}
class IBidiAsyncNotifyChannel extends IPrintAsyncNotifyChannel {
  // vtable begins at 5, is 5 entries long.
  IBidiAsyncNotifyChannel(Pointer<COMObject> ptr) : super(ptr);

  int CreateNotificationChannel() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetPrintName(
    Pointer<Pointer<COMObject>> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetChannelNotificationType(
    Pointer<Pointer<COMObject>> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int AsyncGetNotificationSendResponse(
    Pointer<COMObject> param0,
    Pointer<COMObject> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<COMObject> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<COMObject> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int AsyncCloseChannel(
    Pointer<COMObject> param0,
    Pointer<COMObject> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<COMObject> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<COMObject> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
