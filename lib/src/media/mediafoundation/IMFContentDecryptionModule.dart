// IMFContentDecryptionModule.dart

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
import '../../media/mediafoundation/IMFContentEnabler.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFCdmSuspendNotify.dart';
import '../../media/mediafoundation/IMFPMPHostApp.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFContentDecryptionModuleSessionCallbacks.dart';
import '../../media/mediafoundation/IMFContentDecryptionModuleSession.dart';
import '../../media/mediafoundation/IMFTrustedInput.dart';

/// @nodoc
const IID_IMFContentDecryptionModule = '{87BE986C-10BE-4943-BF48-4B54CE1983A2}';

/// {@category Interface}
/// {@category com}
class IMFContentDecryptionModule extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFContentDecryptionModule(Pointer<COMObject> ptr) : super(ptr);

  int SetContentEnabler(
    Pointer<COMObject> contentEnabler,
    Pointer<COMObject> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contentEnabler,
            Pointer<COMObject> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contentEnabler,
            Pointer<COMObject> result,
          )>()(
        ptr.ref.lpVtbl,
        contentEnabler,
        result,
      );

  int GetSuspendNotify(
    Pointer<Pointer<COMObject>> notify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> notify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> notify,
          )>()(
        ptr.ref.lpVtbl,
        notify,
      );

  int SetPMPHostApp(
    Pointer<COMObject> pmpHostApp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pmpHostApp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pmpHostApp,
          )>()(
        ptr.ref.lpVtbl,
        pmpHostApp,
      );

  int CreateSession(
    int sessionType,
    Pointer<COMObject> callbacks,
    Pointer<Pointer<COMObject>> session,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 sessionType,
            Pointer<COMObject> callbacks,
            Pointer<Pointer<COMObject>> session,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sessionType,
            Pointer<COMObject> callbacks,
            Pointer<Pointer<COMObject>> session,
          )>()(
        ptr.ref.lpVtbl,
        sessionType,
        callbacks,
        session,
      );

  int SetServerCertificate(
    Pointer<Uint8> certificate,
    int certificateSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> certificate,
            Uint32 certificateSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> certificate,
            int certificateSize,
          )>()(
        ptr.ref.lpVtbl,
        certificate,
        certificateSize,
      );

  int CreateTrustedInput(
    Pointer<Uint8> contentInitData,
    int contentInitDataSize,
    Pointer<Pointer<COMObject>> trustedInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> contentInitData,
            Uint32 contentInitDataSize,
            Pointer<Pointer<COMObject>> trustedInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> contentInitData,
            int contentInitDataSize,
            Pointer<Pointer<COMObject>> trustedInput,
          )>()(
        ptr.ref.lpVtbl,
        contentInitData,
        contentInitDataSize,
        trustedInput,
      );

  int GetProtectionSystemIds(
    Pointer<Pointer<GUID>> systemIds,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<GUID>> systemIds,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<GUID>> systemIds,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        systemIds,
        count,
      );
}
