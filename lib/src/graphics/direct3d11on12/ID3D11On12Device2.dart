// ID3D11On12Device2.dart

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

import '../../graphics/direct3d11on12/ID3D11On12Device1.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d12/ID3D12CommandQueue.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Fence.dart';

/// @nodoc
const IID_ID3D11On12Device2 = '{DC90F331-4740-43FA-866E-67F12CB58223}';

/// {@category Interface}
/// {@category com}
class ID3D11On12Device2 extends ID3D11On12Device1 {
  // vtable begins at 7, is 2 entries long.
  ID3D11On12Device2(Pointer<COMObject> ptr) : super(ptr);

  int UnwrapUnderlyingResource(
    Pointer<COMObject> pResource11,
    Pointer<COMObject> pCommandQueue,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvResource12,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource11,
            Pointer<COMObject> pCommandQueue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource12,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource11,
            Pointer<COMObject> pCommandQueue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource12,
          )>()(
        ptr.ref.lpVtbl,
        pResource11,
        pCommandQueue,
        riid,
        ppvResource12,
      );

  int ReturnUnderlyingResource(
    Pointer<COMObject> pResource11,
    int NumSync,
    Pointer<Uint64> pSignalValues,
    Pointer<Pointer<COMObject>> ppFences,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource11,
            Uint32 NumSync,
            Pointer<Uint64> pSignalValues,
            Pointer<Pointer<COMObject>> ppFences,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource11,
            int NumSync,
            Pointer<Uint64> pSignalValues,
            Pointer<Pointer<COMObject>> ppFences,
          )>()(
        ptr.ref.lpVtbl,
        pResource11,
        NumSync,
        pSignalValues,
        ppFences,
      );
}
