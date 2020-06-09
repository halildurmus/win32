// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';
import 'comerrors.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const IID_IInspectable = '{AF86E2E0-B12D-4c6a-9C5A-D7AA65101E90}';

typedef GetIids_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> iidCount, Pointer<IntPtr> iids);
typedef GetIids_Dart = int Function(
    Pointer obj, Pointer<Uint32> iidCount, Pointer<IntPtr> iids);

typedef GetRuntimeClassName_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> className);
typedef GetRuntimeClassName_Dart = int Function(
    Pointer obj, Pointer<IntPtr> className);

typedef GetTrustLevel_Native = Int32 Function(
    Pointer obj, Pointer<Int32> trustLevel);
typedef GetTrustLevel_Dart = int Function(
    Pointer obj, Pointer<Int32> trustLevel);

class IInspectable extends IUnknown {
  // vtable begins at 3, ends at 5

  @override
  Pointer<COMObject> ptr;

  IInspectable(this.ptr) : super(ptr);

  int GetIids(Pointer<Uint32> iidCount, Pointer<IntPtr> iids) =>
      Pointer<NativeFunction<GetIids_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<GetIids_Dart>()(ptr.ref.lpVtbl, iidCount, iids);

  int GetRuntimeClassName(Pointer<IntPtr> className) =>
      Pointer<NativeFunction<GetRuntimeClassName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<GetRuntimeClassName_Dart>()(ptr.ref.lpVtbl, className);

  int GetTrustLevel(Pointer<Int32> trustLevel) =>
      Pointer<NativeFunction<GetTrustLevel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<GetTrustLevel_Dart>()(ptr.ref.lpVtbl, trustLevel);
}
