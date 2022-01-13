// IPrintAsyncNotifyCallback.dart

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
import '../../graphics/printing/IPrintAsyncNotifyChannel.dart';
import '../../graphics/printing/IPrintAsyncNotifyDataObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintAsyncNotifyCallback = '{7DEF34C1-9D92-4C99-B3B3-DB94A9D4191B}';

/// {@category Interface}
/// {@category com}
class IPrintAsyncNotifyCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPrintAsyncNotifyCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnEventNotify(
    Pointer<COMObject> pChannel,
    Pointer<COMObject> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Pointer<COMObject> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Pointer<COMObject> pData,
          )>()(
        ptr.ref.lpVtbl,
        pChannel,
        pData,
      );

  int ChannelClosed(
    Pointer<COMObject> pChannel,
    Pointer<COMObject> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Pointer<COMObject> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Pointer<COMObject> pData,
          )>()(
        ptr.ref.lpVtbl,
        pChannel,
        pData,
      );
}
