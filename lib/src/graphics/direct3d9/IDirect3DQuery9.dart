// IDirect3DQuery9.dart

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
const IID_IDirect3DQuery9 = '{D9771460-A695-4F26-BBD3-27B840B541CC}';

/// {@category Interface}
/// {@category com}
class IDirect3DQuery9 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDirect3DQuery9(Pointer<COMObject> ptr) : super(ptr);

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

  int GetType() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetDataSize() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Issue(
    int dwIssueFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIssueFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIssueFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwIssueFlags,
      );

  int GetData(
    Pointer pData,
    int dwSize,
    int dwGetDataFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
            Uint32 dwSize,
            Uint32 dwGetDataFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
            int dwSize,
            int dwGetDataFlags,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        dwSize,
        dwGetDataFlags,
      );
}
