// IDirect3DSwapChain9Ex.dart

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

import '../../graphics/direct3d9/IDirect3DSwapChain9.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DSwapChain9Ex = '{91886CAF-1C3D-4D2E-A0AB-3E4C7D8D3303}';

typedef _GetLastPresentCount_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pLastPresentCount);
typedef _GetLastPresentCount_Dart = int Function(
    Pointer obj, Pointer<Uint32> pLastPresentCount);

typedef _GetPresentStats_Native = Int32 Function(
    Pointer obj, Pointer<D3DPRESENTSTATS> pPresentationStatistics);
typedef _GetPresentStats_Dart = int Function(
    Pointer obj, Pointer<D3DPRESENTSTATS> pPresentationStatistics);

typedef _GetDisplayModeEx_Native = Int32 Function(
    Pointer obj, Pointer<D3DDISPLAYMODEEX> pMode, Pointer<Uint32> pRotation);
typedef _GetDisplayModeEx_Dart = int Function(
    Pointer obj, Pointer<D3DDISPLAYMODEEX> pMode, Pointer<Uint32> pRotation);

/// {@category Interface}
/// {@category com}
class IDirect3DSwapChain9Ex extends IDirect3DSwapChain9 {
  // vtable begins at 10, ends at 12

  IDirect3DSwapChain9Ex(Pointer<COMObject> ptr) : super(ptr);

  int GetLastPresentCount(Pointer<Uint32> pLastPresentCount) => ptr
          .ref.lpVtbl.value
          .elementAt(10)
          .cast<Pointer<NativeFunction<_GetLastPresentCount_Native>>>()
          .value
          .asFunction<_GetLastPresentCount_Dart>()(
      ptr.ref.lpVtbl, pLastPresentCount);

  int GetPresentStats(Pointer<D3DPRESENTSTATS> pPresentationStatistics) =>
      ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_GetPresentStats_Native>>>()
              .value
              .asFunction<_GetPresentStats_Dart>()(
          ptr.ref.lpVtbl, pPresentationStatistics);

  int GetDisplayModeEx(
          Pointer<D3DDISPLAYMODEEX> pMode, Pointer<Uint32> pRotation) =>
      ptr.ref.lpVtbl.value
              .elementAt(12)
              .cast<Pointer<NativeFunction<_GetDisplayModeEx_Native>>>()
              .value
              .asFunction<_GetDisplayModeEx_Dart>()(
          ptr.ref.lpVtbl, pMode, pRotation);
}
