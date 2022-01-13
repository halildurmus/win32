// ICallUnmarshal.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/com/callobj/structs.g.dart';
import '../../../system/com/callobj/ICallFrame.dart';

/// @nodoc
const IID_ICallUnmarshal = '{5333B003-2E42-11D2-B89D-00C04FB9618A}';

/// {@category Interface}
/// {@category com}
class ICallUnmarshal extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICallUnmarshal(Pointer<COMObject> ptr) : super(ptr);

  int Unmarshal(
    int iMethod,
    Pointer pBuffer,
    int cbBuffer,
    int fForceBufferCopy,
    int dataRep,
    Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
    Pointer<Uint32> pcbUnmarshalled,
    Pointer<Pointer<COMObject>> ppFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iMethod,
            Pointer pBuffer,
            Uint32 cbBuffer,
            Int32 fForceBufferCopy,
            Uint32 dataRep,
            Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
            Pointer<Uint32> pcbUnmarshalled,
            Pointer<Pointer<COMObject>> ppFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iMethod,
            Pointer pBuffer,
            int cbBuffer,
            int fForceBufferCopy,
            int dataRep,
            Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
            Pointer<Uint32> pcbUnmarshalled,
            Pointer<Pointer<COMObject>> ppFrame,
          )>()(
        ptr.ref.lpVtbl,
        iMethod,
        pBuffer,
        cbBuffer,
        fForceBufferCopy,
        dataRep,
        pcontext,
        pcbUnmarshalled,
        ppFrame,
      );

  int ReleaseMarshalData(
    int iMethod,
    Pointer pBuffer,
    int cbBuffer,
    int ibFirstRelease,
    int dataRep,
    Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iMethod,
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
            int iMethod,
            Pointer pBuffer,
            int cbBuffer,
            int ibFirstRelease,
            int dataRep,
            Pointer<CALLFRAME_MARSHALCONTEXT> pcontext,
          )>()(
        ptr.ref.lpVtbl,
        iMethod,
        pBuffer,
        cbBuffer,
        ibFirstRelease,
        dataRep,
        pcontext,
      );
}
