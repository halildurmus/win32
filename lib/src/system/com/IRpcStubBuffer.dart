// IRpcStubBuffer.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../system/com/IRpcChannelBuffer.dart';
import '../../system/com/IRpcStubBuffer.dart';

/// @nodoc
const IID_IRpcStubBuffer = '{D5F56AFC-593B-101A-B569-08002B2DBF7A}';

/// {@category Interface}
/// {@category com}
class IRpcStubBuffer extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IRpcStubBuffer(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<COMObject> pUnkServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkServer,
          )>()(
        ptr.ref.lpVtbl,
        pUnkServer,
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

  int Invoke(
    Pointer<RPCOLEMESSAGE> prpcmsg,
    Pointer<COMObject> pRpcChannelBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> prpcmsg,
            Pointer<COMObject> pRpcChannelBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> prpcmsg,
            Pointer<COMObject> pRpcChannelBuffer,
          )>()(
        ptr.ref.lpVtbl,
        prpcmsg,
        pRpcChannelBuffer,
      );

  Pointer<COMObject> IsIIDSupported(
    Pointer<GUID> riid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Pointer<GUID> riid,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            Pointer<GUID> riid,
          )>()(
        ptr.ref.lpVtbl,
        riid,
      );

  int CountRefs() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int DebugServerQueryInterface(
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        ppv,
      );

  void DebugServerRelease(
    Pointer pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pv,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pv,
          )>()(
        ptr.ref.lpVtbl,
        pv,
      );
}
