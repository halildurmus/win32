// IPinConnection.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPinConnection = '{4A9A62D3-27D4-403D-91E9-89F540E55534}';

/// {@category Interface}
/// {@category com}
class IPinConnection extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IPinConnection(Pointer<COMObject> ptr) : super(ptr);

  int DynamicQueryAccept(
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
      );

  int NotifyEndOfStream(
    int hNotifyEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hNotifyEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hNotifyEvent,
          )>()(
        ptr.ref.lpVtbl,
        hNotifyEvent,
      );

  int IsEndPin() => ptr.ref.lpVtbl.value
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

  int DynamicDisconnect() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
