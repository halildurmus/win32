// IPrintAsyncNewChannelCookie.dart

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
import '../../graphics/printing/IPrintAsyncNotifyChannel.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintAsyncNewChannelCookie = 'null';

/// {@category Interface}
/// {@category com}
class IPrintAsyncNewChannelCookie extends IPrintAsyncCookie {
  // vtable begins at 5, is 1 entries long.
  IPrintAsyncNewChannelCookie(Pointer<COMObject> ptr) : super(ptr);

  int FinishAsyncCallWithData(
    Pointer<Pointer<COMObject>> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
