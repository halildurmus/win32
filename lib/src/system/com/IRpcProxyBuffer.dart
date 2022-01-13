// IRpcProxyBuffer.dart

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
import '../../system/com/IRpcChannelBuffer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRpcProxyBuffer = '{D5F56A34-593B-101A-B569-08002B2DBF7A}';

/// {@category Interface}
/// {@category com}
class IRpcProxyBuffer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRpcProxyBuffer(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<COMObject> pRpcChannelBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRpcChannelBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRpcChannelBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pRpcChannelBuffer,
      );

  void Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
