// IIOCancelInformation.dart

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

/// @nodoc
const IID_IIOCancelInformation = '{F5B0BF81-8CB5-4B1B-9449-1A159E0C733C}';

/// {@category Interface}
/// {@category com}
class IIOCancelInformation extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IIOCancelInformation(Pointer<COMObject> ptr) : super(ptr);

  int SetCancelInformation(
    int dwThreadID,
    int uMsgCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadID,
            Uint32 uMsgCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadID,
            int uMsgCancel,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadID,
        uMsgCancel,
      );

  int GetCancelInformation(
    Pointer<Uint32> pdwThreadID,
    Pointer<Uint32> puMsgCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwThreadID,
            Pointer<Uint32> puMsgCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwThreadID,
            Pointer<Uint32> puMsgCancel,
          )>()(
        ptr.ref.lpVtbl,
        pdwThreadID,
        puMsgCancel,
      );
}
