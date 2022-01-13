// ID3D12Device3.dart

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

import '../../graphics/direct3d12/ID3D12Device2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../graphics/direct3d12/ID3D12Fence.dart';

/// @nodoc
const IID_ID3D12Device3 = '{81DADC15-2BAD-4392-93C5-101345C4AA98}';

/// {@category Interface}
/// {@category com}
class ID3D12Device3 extends ID3D12Device2 {
  // vtable begins at 48, is 3 entries long.
  ID3D12Device3(Pointer<COMObject> ptr) : super(ptr);

  int OpenExistingHeapFromAddress(
    Pointer pAddress,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pAddress,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pAddress,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>()(
        ptr.ref.lpVtbl,
        pAddress,
        riid,
        ppvHeap,
      );

  int OpenExistingHeapFromFileMapping(
    int hFileMapping,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hFileMapping,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hFileMapping,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>()(
        ptr.ref.lpVtbl,
        hFileMapping,
        riid,
        ppvHeap,
      );

  int EnqueueMakeResident(
    int Flags,
    int NumObjects,
    Pointer<Pointer<COMObject>> ppObjects,
    Pointer<COMObject> pFenceToSignal,
    int FenceValueToSignal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint32 NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
            Pointer<COMObject> pFenceToSignal,
            Uint64 FenceValueToSignal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
            Pointer<COMObject> pFenceToSignal,
            int FenceValueToSignal,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        NumObjects,
        ppObjects,
        pFenceToSignal,
        FenceValueToSignal,
      );
}
