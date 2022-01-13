// IDirect3DVolume9.dart

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
import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DVolume9 = '{24F416E6-1F67-4AA7-B88E-D33F6F3128A1}';

/// {@category Interface}
/// {@category com}
class IDirect3DVolume9 extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDirect3DVolume9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppDevice,
      );

  int SetPrivateData(
    Pointer<GUID> refguid,
    Pointer pData,
    int SizeOfData,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> refguid,
            Pointer pData,
            Uint32 SizeOfData,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> refguid,
            Pointer pData,
            int SizeOfData,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        refguid,
        pData,
        SizeOfData,
        Flags,
      );

  int GetPrivateData(
    Pointer<GUID> refguid,
    Pointer pData,
    Pointer<Uint32> pSizeOfData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> refguid,
            Pointer pData,
            Pointer<Uint32> pSizeOfData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> refguid,
            Pointer pData,
            Pointer<Uint32> pSizeOfData,
          )>()(
        ptr.ref.lpVtbl,
        refguid,
        pData,
        pSizeOfData,
      );

  int FreePrivateData(
    Pointer<GUID> refguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> refguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> refguid,
          )>()(
        ptr.ref.lpVtbl,
        refguid,
      );

  int GetContainer(
    Pointer<GUID> riid,
    Pointer<Pointer> ppContainer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppContainer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppContainer,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppContainer,
      );

  int GetDesc(
    Pointer<D3DVOLUME_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVOLUME_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVOLUME_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int LockBox(
    Pointer<D3DLOCKED_BOX> pLockedVolume,
    Pointer<D3DBOX> pBox,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DLOCKED_BOX> pLockedVolume,
            Pointer<D3DBOX> pBox,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DLOCKED_BOX> pLockedVolume,
            Pointer<D3DBOX> pBox,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pLockedVolume,
        pBox,
        Flags,
      );

  int UnlockBox() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
