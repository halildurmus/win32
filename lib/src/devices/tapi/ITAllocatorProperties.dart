// ITAllocatorProperties.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITAllocatorProperties = '{C1BC3C90-BCFE-11D1-9745-00C04FD91AC0}';

/// {@category Interface}
/// {@category com}
class ITAllocatorProperties extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITAllocatorProperties(Pointer<COMObject> ptr) : super(ptr);

  int SetAllocatorProperties(
    Pointer<ALLOCATOR_PROPERTIES> pAllocProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pAllocProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pAllocProperties,
          )>()(
        ptr.ref.lpVtbl,
        pAllocProperties,
      );

  int GetAllocatorProperties(
    Pointer<ALLOCATOR_PROPERTIES> pAllocProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pAllocProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pAllocProperties,
          )>()(
        ptr.ref.lpVtbl,
        pAllocProperties,
      );

  int SetAllocateBuffers(
    int bAllocBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bAllocBuffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bAllocBuffers,
          )>()(
        ptr.ref.lpVtbl,
        bAllocBuffers,
      );

  int GetAllocateBuffers(
    Pointer<Int32> pbAllocBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbAllocBuffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbAllocBuffers,
          )>()(
        ptr.ref.lpVtbl,
        pbAllocBuffers,
      );

  int SetBufferSize(
    int BufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BufferSize,
          )>()(
        ptr.ref.lpVtbl,
        BufferSize,
      );

  int GetBufferSize(
    Pointer<Uint32> pBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pBufferSize,
      );
}
