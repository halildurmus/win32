// IDirect3DDevice9Video.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../media/mediafoundation/IDirect3DAuthenticatedChannel9.dart';
import '../../media/mediafoundation/IDirect3DCryptoSession9.dart';

/// @nodoc
const IID_IDirect3DDevice9Video = '{26DC4561-A1EE-4AE7-96DA-118A36C0EC95}';

/// {@category Interface}
/// {@category com}
class IDirect3DDevice9Video extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirect3DDevice9Video(Pointer<COMObject> ptr) : super(ptr);

  int GetContentProtectionCaps(
    Pointer<GUID> pCryptoType,
    Pointer<GUID> pDecodeProfile,
    Pointer<D3DCONTENTPROTECTIONCAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecodeProfile,
            Pointer<D3DCONTENTPROTECTIONCAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecodeProfile,
            Pointer<D3DCONTENTPROTECTIONCAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoType,
        pDecodeProfile,
        pCaps,
      );

  int CreateAuthenticatedChannel(
    int ChannelType,
    Pointer<Pointer<COMObject>> ppAuthenticatedChannel,
    Pointer<IntPtr> pChannelHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ChannelType,
            Pointer<Pointer<COMObject>> ppAuthenticatedChannel,
            Pointer<IntPtr> pChannelHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ChannelType,
            Pointer<Pointer<COMObject>> ppAuthenticatedChannel,
            Pointer<IntPtr> pChannelHandle,
          )>()(
        ptr.ref.lpVtbl,
        ChannelType,
        ppAuthenticatedChannel,
        pChannelHandle,
      );

  int CreateCryptoSession(
    Pointer<GUID> pCryptoType,
    Pointer<GUID> pDecodeProfile,
    Pointer<Pointer<COMObject>> ppCryptoSession,
    Pointer<IntPtr> pCryptoHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecodeProfile,
            Pointer<Pointer<COMObject>> ppCryptoSession,
            Pointer<IntPtr> pCryptoHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCryptoType,
            Pointer<GUID> pDecodeProfile,
            Pointer<Pointer<COMObject>> ppCryptoSession,
            Pointer<IntPtr> pCryptoHandle,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoType,
        pDecodeProfile,
        ppCryptoSession,
        pCryptoHandle,
      );
}
