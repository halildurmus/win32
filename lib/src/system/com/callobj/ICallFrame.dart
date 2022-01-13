// ICallFrame.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/callobj/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/callobj/ICallFrameWalker.dart';
import '../../../system/com/callobj/ICallFrame.dart';
import '../../../system/com/structs.g.dart';

/// @nodoc
const IID_ICallFrame = '{D573B4B0-894E-11D2-B8B6-00C04FB9618A}';

/// {@category Interface}
/// {@category com}
class ICallFrame extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  ICallFrame(Pointer<COMObject> ptr) : super(ptr);

  int GetInfo(
    Pointer<CALLFRAMEINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CALLFRAMEINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CALLFRAMEINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );

  int GetIIDAndMethod(
    Pointer<GUID> pIID,
    Pointer<Uint32> piMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pIID,
            Pointer<Uint32> piMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pIID,
            Pointer<Uint32> piMethod,
          )>()(
        ptr.ref.lpVtbl,
        pIID,
        piMethod,
      );

  int GetNames(
    Pointer<Pointer<Utf16>> pwszInterface,
    Pointer<Pointer<Utf16>> pwszMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pwszInterface,
            Pointer<Pointer<Utf16>> pwszMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pwszInterface,
            Pointer<Pointer<Utf16>> pwszMethod,
          )>()(
        ptr.ref.lpVtbl,
        pwszInterface,
        pwszMethod,
      );

  Pointer GetStackLocation() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SetStackLocation(
    Pointer pvStack,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pvStack,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pvStack,
          )>()(
        ptr.ref.lpVtbl,
        pvStack,
      );

  void SetReturnValue(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );

  int GetReturnValue() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetParamInfo(
    int iparam,
    Pointer<CALLFRAMEPARAMINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iparam,
            Pointer<CALLFRAMEPARAMINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iparam,
            Pointer<CALLFRAMEPARAMINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        iparam,
        pInfo,
      );

  int SetParam(
    int iparam,
    Pointer<VARIANT> pvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iparam,
            Pointer<VARIANT> pvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iparam,
            Pointer<VARIANT> pvar,
          )>()(
        ptr.ref.lpVtbl,
        iparam,
        pvar,
      );

  int GetParam(
    int iparam,
    Pointer<VARIANT> pvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iparam,
            Pointer<VARIANT> pvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iparam,
            Pointer<VARIANT> pvar,
          )>()(
        ptr.ref.lpVtbl,
        iparam,
        pvar,
      );

  int Copy(
    int copyControl,
    Pointer<COMObject> pWalker,
    Pointer<Pointer<COMObject>> ppFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 copyControl,
            Pointer<COMObject> pWalker,
            Pointer<Pointer<COMObject>> ppFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int copyControl,
            Pointer<COMObject> pWalker,
            Pointer<Pointer<COMObject>> ppFrame,
          )>()(
        ptr.ref.lpVtbl,
        copyControl,
        pWalker,
        ppFrame,
      );

  int Free(
    Pointer<COMObject> pframeArgsDest,
    Pointer<COMObject> pWalkerDestFree,
    Pointer<COMObject> pWalkerCopy,
    int freeFlags,
    Pointer<COMObject> pWalkerFree,
    int nullFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pframeArgsDest,
            Pointer<COMObject> pWalkerDestFree,
            Pointer<COMObject> pWalkerCopy,
            Uint32 freeFlags,
            Pointer<COMObject> pWalkerFree,
            Uint32 nullFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pframeArgsDest,
            Pointer<COMObject> pWalkerDestFree,
            Pointer<COMObject> pWalkerCopy,
            int freeFlags,
            Pointer<COMObject> pWalkerFree,
            int nullFlags,
          )>()(
        ptr.ref.lpVtbl,
        pframeArgsDest,
        pWalkerDestFree,
        pWalkerCopy,
        freeFlags,
        pWalkerFree,
        nullFlags,
      );

  int FreeParam(
    int iparam,
    int freeFlags,
    Pointer<COMObject> pWalkerFree,
    int nullFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iparam,
            Uint32 freeFlags,
            Pointer<COMObject> pWalkerFree,
            Uint32 nullFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iparam,
            int freeFlags,
            Pointer<COMObject> pWalkerFree,
            int nullFlags,
          )>()(
        ptr.ref.lpVtbl,
        iparam,
        freeFlags,
        pWalkerFree,
        nullFlags,
      );

  int WalkFrame(
    int walkWhat,
    Pointer<COMObject> pWalker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 walkWhat,
            Pointer<COMObject> pWalker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int walkWhat,
            Pointer<COMObject> pWalker,
          )>()(
        ptr.ref.lpVtbl,
        walkWhat,
        pWalker,
      );

  int GetMarshalSizeMax(
    Pointer<CALLFRAME_MARSHALCONTEXT> pmshlContext,
    int mshlflags,
    Pointer<Uint32> pcbBufferNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CALLFRAME_MARSHALCONTEXT> pmshlContext,
            Int32 mshlflags,
            Pointer<Uint32> pcbBufferNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CALLFRAME_MARSHALCONTEXT> pmshlContext,
            int mshlflags,
            Pointer<Uint32> pcbBufferNeeded,
          )>()(
        ptr.ref.lpVtbl,
        pmshlContext,
        mshlflags,
        pcbBufferNeeded,
      );

  int Marshal(
    Pointer<CALLFRAME_MARSHALCONTEXT> pmshlContext,
    int mshlflags,
    Pointer pBuffer,
    int cbBuffer,
    Pointer<Uint32> pcbBufferUsed,
    Pointer<Uint32> pdataRep,
    Pointer<Uint32> prpcFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CALLFRAME_MARSHALCONTEXT> pmshlContext,
            Int32 mshlflags,
            Pointer pBuffer,
            Uint32 cbBuffer,
            Pointer<Uint32> pcbBufferUsed,
            Pointer<Uint32> pdataRep,
            Pointer<Uint32> prpcFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CALLFRAME_MARSHALCONTEXT> pmshlContext,
            int mshlflags,
            Pointer pBuffer,
            int cbBuffer,
            Pointer<Uint32> pcbBufferUsed,
            Pointer<Uint32> pdataRep,
            Pointer<Uint32> prpcFlags,
          )>()(
        ptr.ref.lpVtbl,
        pmshlContext,
        mshlflags,
        pBuffer,
        cbBuffer,
        pcbBufferUsed,
        pdataRep,
        prpcFlags,
      );

  int Unmarshal(
    Pointer pBuffer,
    int cbBuffer,
    int dataRep,
    Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
    Pointer<Uint32> pcbUnmarshalled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pBuffer,
            Uint32 cbBuffer,
            Uint32 dataRep,
            Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
            Pointer<Uint32> pcbUnmarshalled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pBuffer,
            int cbBuffer,
            int dataRep,
            Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
            Pointer<Uint32> pcbUnmarshalled,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        cbBuffer,
        dataRep,
        pcontext,
        pcbUnmarshalled,
      );

  int ReleaseMarshalData(
    Pointer pBuffer,
    int cbBuffer,
    int ibFirstRelease,
    int dataRep,
    Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pBuffer,
            Uint32 cbBuffer,
            Uint32 ibFirstRelease,
            Uint32 dataRep,
            Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pBuffer,
            int cbBuffer,
            int ibFirstRelease,
            int dataRep,
            Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        cbBuffer,
        ibFirstRelease,
        dataRep,
        pcontext,
      );

  int Invoke(
    Pointer pvReceiver,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pvReceiver,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pvReceiver,
          )>()(
        ptr.ref.lpVtbl,
        pvReceiver,
      );
}
