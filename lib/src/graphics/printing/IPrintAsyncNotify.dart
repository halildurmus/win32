// IPrintAsyncNotify.dart

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
import '../../graphics/printing/structs.g.dart';
import '../../graphics/printing/IPrintAsyncNotifyCallback.dart';
import '../../graphics/printing/IPrintAsyncNotifyChannel.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/IPrintAsyncNotifyRegistration.dart';

/// @nodoc
const IID_IPrintAsyncNotify = '{532818F7-921B-4FB2-BFF8-2F4FD52EBEBF}';

/// {@category Interface}
/// {@category com}
class IPrintAsyncNotify extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPrintAsyncNotify(Pointer<COMObject> ptr) : super(ptr);

  int CreatePrintAsyncNotifyChannel(
    int param0,
    Pointer<GUID> param1,
    int param2,
    int param3,
    Pointer<COMObject> param4,
    Pointer<Pointer<COMObject>> param5,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<GUID> param1,
            Int32 param2,
            Int32 param3,
            Pointer<COMObject> param4,
            Pointer<Pointer<COMObject>> param5,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<GUID> param1,
            int param2,
            int param3,
            Pointer<COMObject> param4,
            Pointer<Pointer<COMObject>> param5,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
        param5,
      );

  int CreatePrintAsyncNotifyRegistration(
    Pointer<GUID> param0,
    int param1,
    int param2,
    Pointer<COMObject> param3,
    Pointer<Pointer<COMObject>> param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Int32 param1,
            Int32 param2,
            Pointer<COMObject> param3,
            Pointer<Pointer<COMObject>> param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            int param1,
            int param2,
            Pointer<COMObject> param3,
            Pointer<Pointer<COMObject>> param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );
}
