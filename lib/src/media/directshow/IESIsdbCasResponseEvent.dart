// IESIsdbCasResponseEvent.dart

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

import '../../media/directshow/IESEvent.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IESIsdbCasResponseEvent = '{2017CB03-DC0F-4C24-83CA-36307B2CD19F}';

/// {@category Interface}
/// {@category com}
class IESIsdbCasResponseEvent extends IESEvent {
  // vtable begins at 8, is 4 entries long.
  IESIsdbCasResponseEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetRequestId(
    Pointer<Uint32> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        pRequestId,
      );

  int GetStatus(
    Pointer<Uint32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int GetDataLength(
    Pointer<Uint32> pRequestLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRequestLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRequestLength,
          )>()(
        ptr.ref.lpVtbl,
        pRequestLength,
      );

  int GetResponseData(
    Pointer<Pointer<SAFEARRAY>> pbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
      );
}
