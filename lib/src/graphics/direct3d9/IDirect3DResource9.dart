// IDirect3DResource9.dart

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
const IID_IDirect3DResource9 = '{05EEC05D-8F7D-4362-B999-D1BAF357C704}';

/// {@category Interface}
/// {@category com}
class IDirect3DResource9 extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDirect3DResource9(Pointer<COMObject> ptr) : super(ptr);

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

  int SetPriority(
    int PriorityNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 PriorityNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PriorityNew,
          )>()(
        ptr.ref.lpVtbl,
        PriorityNew,
      );

  int GetPriority() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  void PreLoad() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetType() => ptr.ref.lpVtbl.value
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
