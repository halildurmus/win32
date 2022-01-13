// ID3D11On12Device.dart

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
import '../../specialTypes.dart';
import '../../graphics/direct3d11on12/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';

/// @nodoc
const IID_ID3D11On12Device = '{85611E73-70A9-490E-9614-A9E302777904}';

/// {@category Interface}
/// {@category com}
class ID3D11On12Device extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3D11On12Device(Pointer<COMObject> ptr) : super(ptr);

  int CreateWrappedResource(
    Pointer<COMObject> pResource12,
    Pointer<D3D11_RESOURCE_FLAGS> pFlags11,
    int InState,
    int OutState,
    Pointer<GUID> riid,
    Pointer<Pointer> ppResource11,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource12,
            Pointer<D3D11_RESOURCE_FLAGS> pFlags11,
            Uint32 InState,
            Uint32 OutState,
            Pointer<GUID> riid,
            Pointer<Pointer> ppResource11,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource12,
            Pointer<D3D11_RESOURCE_FLAGS> pFlags11,
            int InState,
            int OutState,
            Pointer<GUID> riid,
            Pointer<Pointer> ppResource11,
          )>()(
        ptr.ref.lpVtbl,
        pResource12,
        pFlags11,
        InState,
        OutState,
        riid,
        ppResource11,
      );

  void ReleaseWrappedResources(
    Pointer<Pointer<COMObject>> ppResources,
    int NumResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            Uint32 NumResources,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            int NumResources,
          )>()(
        ptr.ref.lpVtbl,
        ppResources,
        NumResources,
      );

  void AcquireWrappedResources(
    Pointer<Pointer<COMObject>> ppResources,
    int NumResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            Uint32 NumResources,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            int NumResources,
          )>()(
        ptr.ref.lpVtbl,
        ppResources,
        NumResources,
      );
}
