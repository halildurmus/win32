// IDirect3DQuery9.dart

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

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DQuery9 = '{D9771460-A695-4F26-BBD3-27B840B541CC}';

typedef _GetDevice_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDevice);
typedef _GetDevice_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDevice);

typedef _GetType_Native = Uint32 Function(Pointer obj);
typedef _GetType_Dart = int Function(Pointer obj);

typedef _GetDataSize_Native = Uint32 Function(Pointer obj);
typedef _GetDataSize_Dart = int Function(Pointer obj);

typedef _Issue_Native = Int32 Function(Pointer obj, Uint32 dwIssueFlags);
typedef _Issue_Dart = int Function(Pointer obj, int dwIssueFlags);

typedef _GetData_Native = Int32 Function(
    Pointer obj, Pointer pData, Uint32 dwSize, Uint32 dwGetDataFlags);
typedef _GetData_Dart = int Function(
    Pointer obj, Pointer pData, int dwSize, int dwGetDataFlags);

/// {@category Interface}
/// {@category com}
class IDirect3DQuery9 extends IUnknown {
  // vtable begins at 3, ends at 7

  IDirect3DQuery9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(Pointer<COMObject> ppDevice) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetDevice_Native>>>()
      .value
      .asFunction<_GetDevice_Dart>()(ptr.ref.lpVtbl, ppDevice);

  int GetType() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetType_Native>>>()
      .value
      .asFunction<_GetType_Dart>()(ptr.ref.lpVtbl);

  int GetDataSize() => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_GetDataSize_Native>>>()
      .value
      .asFunction<_GetDataSize_Dart>()(ptr.ref.lpVtbl);

  int Issue(int dwIssueFlags) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Issue_Native>>>()
      .value
      .asFunction<_Issue_Dart>()(ptr.ref.lpVtbl, dwIssueFlags);

  int GetData(Pointer pData, int dwSize, int dwGetDataFlags) => ptr
          .ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_GetData_Native>>>()
          .value
          .asFunction<_GetData_Dart>()(
      ptr.ref.lpVtbl, pData, dwSize, dwGetDataFlags);
}
