// IXFeed2.dart

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

import '../../media/mediaplayer/IXFeed.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXFeed2 = '{CE528E77-3716-4EB7-956D-F5E37502E12A}';

/// {@category Interface}
/// {@category com}
class IXFeed2 extends IXFeed {
  // vtable begins at 47, is 6 entries long.
  IXFeed2(Pointer<COMObject> ptr) : super(ptr);

  int GetItemByEffectiveId(
    int uiEffectiveId,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiEffectiveId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiEffectiveId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        uiEffectiveId,
        riid,
        ppv,
      );

  int LastItemDownloadTime(
    Pointer<SYSTEMTIME> pstLastItemDownloadTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastItemDownloadTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastItemDownloadTime,
          )>()(
        ptr.ref.lpVtbl,
        pstLastItemDownloadTime,
      );

  int Username(
    Pointer<Pointer<Utf16>> ppszUsername,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszUsername,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszUsername,
          )>()(
        ptr.ref.lpVtbl,
        ppszUsername,
      );

  int Password(
    Pointer<Pointer<Utf16>> ppszPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPassword,
          )>()(
        ptr.ref.lpVtbl,
        ppszPassword,
      );

  int SetCredentials(
    Pointer<Utf16> pszUsername,
    Pointer<Utf16> pszPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUsername,
            Pointer<Utf16> pszPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUsername,
            Pointer<Utf16> pszPassword,
          )>()(
        ptr.ref.lpVtbl,
        pszUsername,
        pszPassword,
      );

  int ClearCredentials() => ptr.ref.lpVtbl.value
          .elementAt(52)
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
