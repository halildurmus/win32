// ID3D12InfoQueue1.dart

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

import '../../graphics/direct3d12/ID3D12InfoQueue.dart';
import '../../graphics/direct3d12/callbacks.g.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12InfoQueue1 = '{2852DD88-B484-4C0C-B6B1-67168500E600}';

/// {@category Interface}
/// {@category com}
class ID3D12InfoQueue1 extends ID3D12InfoQueue {
  // vtable begins at 38, is 2 entries long.
  ID3D12InfoQueue1(Pointer<COMObject> ptr) : super(ptr);

  int RegisterMessageCallback(
    Pointer<NativeFunction<D3D12MessageFunc>> CallbackFunc,
    int CallbackFilterFlags,
    Pointer pContext,
    Pointer<Uint32> pCallbackCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<D3D12MessageFunc>> CallbackFunc,
            Int32 CallbackFilterFlags,
            Pointer pContext,
            Pointer<Uint32> pCallbackCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<D3D12MessageFunc>> CallbackFunc,
            int CallbackFilterFlags,
            Pointer pContext,
            Pointer<Uint32> pCallbackCookie,
          )>()(
        ptr.ref.lpVtbl,
        CallbackFunc,
        CallbackFilterFlags,
        pContext,
        pCallbackCookie,
      );

  int UnregisterMessageCallback(
    int CallbackCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 CallbackCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallbackCookie,
          )>()(
        ptr.ref.lpVtbl,
        CallbackCookie,
      );
}
