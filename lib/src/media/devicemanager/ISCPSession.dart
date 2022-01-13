// ISCPSession.dart

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
import '../../media/devicemanager/IMDSPDevice.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/ISCPSecureQuery.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_ISCPSession = '{88A3E6ED-EEE4-4619-BBB3-FD4FB62715D1}';

/// {@category Interface}
/// {@category com}
class ISCPSession extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISCPSession(Pointer<COMObject> ptr) : super(ptr);

  int BeginSession(
    Pointer<COMObject> pIDevice,
    Pointer<Uint8> pCtx,
    int dwSizeCtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIDevice,
            Pointer<Uint8> pCtx,
            Uint32 dwSizeCtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIDevice,
            Pointer<Uint8> pCtx,
            int dwSizeCtx,
          )>()(
        ptr.ref.lpVtbl,
        pIDevice,
        pCtx,
        dwSizeCtx,
      );

  int EndSession(
    Pointer<Uint8> pCtx,
    int dwSizeCtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pCtx,
            Uint32 dwSizeCtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pCtx,
            int dwSizeCtx,
          )>()(
        ptr.ref.lpVtbl,
        pCtx,
        dwSizeCtx,
      );

  int GetSecureQuery(
    Pointer<Pointer<COMObject>> ppSecureQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecureQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecureQuery,
          )>()(
        ptr.ref.lpVtbl,
        ppSecureQuery,
      );
}
