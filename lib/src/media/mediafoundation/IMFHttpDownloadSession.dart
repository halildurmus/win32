// IMFHttpDownloadSession.dart

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
import '../../media/mediafoundation/IMFHttpDownloadRequest.dart';

/// @nodoc
const IID_IMFHttpDownloadSession = '{71FA9A2C-53CE-4662-A132-1A7E8CBF62DB}';

/// {@category Interface}
/// {@category com}
class IMFHttpDownloadSession extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFHttpDownloadSession(Pointer<COMObject> ptr) : super(ptr);

  int SetServer(
    Pointer<Utf16> szServerName,
    int nPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szServerName,
            Uint32 nPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szServerName,
            int nPort,
          )>()(
        ptr.ref.lpVtbl,
        szServerName,
        nPort,
      );

  int CreateRequest(
    Pointer<Utf16> szObjectName,
    int fBypassProxyCache,
    int fSecure,
    Pointer<Utf16> szVerb,
    Pointer<Utf16> szReferrer,
    Pointer<Pointer<COMObject>> ppRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szObjectName,
            Int32 fBypassProxyCache,
            Int32 fSecure,
            Pointer<Utf16> szVerb,
            Pointer<Utf16> szReferrer,
            Pointer<Pointer<COMObject>> ppRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szObjectName,
            int fBypassProxyCache,
            int fSecure,
            Pointer<Utf16> szVerb,
            Pointer<Utf16> szReferrer,
            Pointer<Pointer<COMObject>> ppRequest,
          )>()(
        ptr.ref.lpVtbl,
        szObjectName,
        fBypassProxyCache,
        fSecure,
        szVerb,
        szReferrer,
        ppRequest,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
