// IDirect3DBaseTexture9.dart

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

import '../../graphics/direct3d9/IDirect3DResource9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirect3DBaseTexture9 = '{580CA87E-1D3C-4D54-991D-B7D3E3C298CE}';

/// {@category Interface}
/// {@category com}
class IDirect3DBaseTexture9 extends IDirect3DResource9 {
  // vtable begins at 11, is 6 entries long.
  IDirect3DBaseTexture9(Pointer<COMObject> ptr) : super(ptr);

  int SetLOD(
    int LODNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 LODNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LODNew,
          )>()(
        ptr.ref.lpVtbl,
        LODNew,
      );

  int GetLOD() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetLevelCount() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int SetAutoGenFilterType(
    int FilterType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FilterType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FilterType,
          )>()(
        ptr.ref.lpVtbl,
        FilterType,
      );

  int GetAutoGenFilterType() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  void GenerateMipSubLevels() => ptr.ref.lpVtbl.value
          .elementAt(16)
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
}
