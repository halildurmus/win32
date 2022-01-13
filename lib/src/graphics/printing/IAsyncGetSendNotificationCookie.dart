// IAsyncGetSendNotificationCookie.dart

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

import '../../graphics/printing/IPrintAsyncCookie.dart';
import '../../graphics/printing/IPrintAsyncNotifyDataObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAsyncGetSendNotificationCookie = 'null';

/// {@category Interface}
/// {@category com}
class IAsyncGetSendNotificationCookie extends IPrintAsyncCookie {
  // vtable begins at 5, is 1 entries long.
  IAsyncGetSendNotificationCookie(Pointer<COMObject> ptr) : super(ptr);

  int FinishAsyncCallWithData(
    Pointer<COMObject> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Int32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
