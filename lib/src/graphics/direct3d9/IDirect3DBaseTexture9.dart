// IDirect3DBaseTexture9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../graphics/direct3d9/IDirect3DResource9.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DBaseTexture9 = '{580CA87E-1D3C-4D54-991D-B7D3E3C298CE}';

typedef _SetLOD_Native = Uint32 Function(Pointer obj, Uint32 LODNew);
typedef _SetLOD_Dart = int Function(Pointer obj, int LODNew);

typedef _GetLOD_Native = Uint32 Function(Pointer obj);
typedef _GetLOD_Dart = int Function(Pointer obj);

typedef _GetLevelCount_Native = Uint32 Function(Pointer obj);
typedef _GetLevelCount_Dart = int Function(Pointer obj);

typedef _SetAutoGenFilterType_Native = Int32 Function(
    Pointer obj, Uint32 FilterType);
typedef _SetAutoGenFilterType_Dart = int Function(Pointer obj, int FilterType);

typedef _GetAutoGenFilterType_Native = Uint32 Function(Pointer obj);
typedef _GetAutoGenFilterType_Dart = int Function(Pointer obj);

typedef _GenerateMipSubLevels_Native = Void Function(Pointer obj);
typedef _GenerateMipSubLevels_Dart = void Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IDirect3DBaseTexture9 extends IDirect3DResource9 {
  // vtable begins at 11, ends at 16

  IDirect3DBaseTexture9(Pointer<COMObject> ptr) : super(ptr);

  int SetLOD(int LODNew) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_SetLOD_Native>>>()
      .value
      .asFunction<_SetLOD_Dart>()(ptr.ref.lpVtbl, LODNew);

  int GetLOD() => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_GetLOD_Native>>>()
      .value
      .asFunction<_GetLOD_Dart>()(ptr.ref.lpVtbl);

  int GetLevelCount() => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetLevelCount_Native>>>()
      .value
      .asFunction<_GetLevelCount_Dart>()(ptr.ref.lpVtbl);

  int SetAutoGenFilterType(int FilterType) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_SetAutoGenFilterType_Native>>>()
      .value
      .asFunction<_SetAutoGenFilterType_Dart>()(ptr.ref.lpVtbl, FilterType);

  int GetAutoGenFilterType() => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetAutoGenFilterType_Native>>>()
      .value
      .asFunction<_GetAutoGenFilterType_Dart>()(ptr.ref.lpVtbl);

  void GenerateMipSubLevels() => ptr.ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_GenerateMipSubLevels_Native>>>()
      .value
      .asFunction<_GenerateMipSubLevels_Dart>()(ptr.ref.lpVtbl);
}
