// ID3D12SwapChainAssistant.dart

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
const IID_ID3D12SwapChainAssistant = '{F1DF64B6-57FD-49CD-8807-C0EB88B45C8F}';

/// {@category Interface}
/// {@category com}
class ID3D12SwapChainAssistant extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ID3D12SwapChainAssistant(Pointer<COMObject> ptr) : super(ptr);

  LUID GetLUID() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      LUID Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              LUID Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetSwapChainObject(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int GetCurrentResourceAndCommandQueue(
    Pointer<GUID> riidResource,
    Pointer<Pointer> ppvResource,
    Pointer<GUID> riidQueue,
    Pointer<Pointer> ppvQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riidResource,
            Pointer<Pointer> ppvResource,
            Pointer<GUID> riidQueue,
            Pointer<Pointer> ppvQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riidResource,
            Pointer<Pointer> ppvResource,
            Pointer<GUID> riidQueue,
            Pointer<Pointer> ppvQueue,
          )>()(
        ptr.ref.lpVtbl,
        riidResource,
        ppvResource,
        riidQueue,
        ppvQueue,
      );

  int InsertImplicitSync() => ptr.ref.lpVtbl.value
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
