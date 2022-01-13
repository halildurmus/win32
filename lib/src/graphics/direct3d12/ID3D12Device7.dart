// ID3D12Device7.dart

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

import '../../graphics/direct3d12/ID3D12Device6.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d12/ID3D12StateObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Device7 = '{5C014B53-68A1-4B9B-8BD1-DD6046B9358B}';

/// {@category Interface}
/// {@category com}
class ID3D12Device7 extends ID3D12Device6 {
  // vtable begins at 66, is 2 entries long.
  ID3D12Device7(Pointer<COMObject> ptr) : super(ptr);

  int AddToStateObject(
    Pointer<D3D12_STATE_OBJECT_DESC> pAddition,
    Pointer<COMObject> pStateObjectToGrowFrom,
    Pointer<GUID> riid,
    Pointer<Pointer> ppNewStateObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_STATE_OBJECT_DESC> pAddition,
            Pointer<COMObject> pStateObjectToGrowFrom,
            Pointer<GUID> riid,
            Pointer<Pointer> ppNewStateObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_STATE_OBJECT_DESC> pAddition,
            Pointer<COMObject> pStateObjectToGrowFrom,
            Pointer<GUID> riid,
            Pointer<Pointer> ppNewStateObject,
          )>()(
        ptr.ref.lpVtbl,
        pAddition,
        pStateObjectToGrowFrom,
        riid,
        ppNewStateObject,
      );

  int CreateProtectedResourceSession1(
    Pointer<D3D12_PROTECTED_RESOURCE_SESSION_DESC1> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_PROTECTED_RESOURCE_SESSION_DESC1> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_PROTECTED_RESOURCE_SESSION_DESC1> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppSession,
      );
}
