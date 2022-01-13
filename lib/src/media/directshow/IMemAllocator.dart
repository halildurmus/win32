// IMemAllocator.dart

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
import '../../media/directshow/IMediaSample.dart';

/// @nodoc
const IID_IMemAllocator = '{56A8689C-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IMemAllocator extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMemAllocator(Pointer<COMObject> ptr) : super(ptr);

  int SetProperties(
    Pointer<ALLOCATOR_PROPERTIES> pRequest,
    Pointer<ALLOCATOR_PROPERTIES> pActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pRequest,
            Pointer<ALLOCATOR_PROPERTIES> pActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pRequest,
            Pointer<ALLOCATOR_PROPERTIES> pActual,
          )>()(
        ptr.ref.lpVtbl,
        pRequest,
        pActual,
      );

  int GetProperties(
    Pointer<ALLOCATOR_PROPERTIES> pProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
          )>()(
        ptr.ref.lpVtbl,
        pProps,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Decommit() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetBuffer(
    Pointer<Pointer<COMObject>> ppBuffer,
    Pointer<Int64> pStartTime,
    Pointer<Int64> pEndTime,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer<Int64> pStartTime,
            Pointer<Int64> pEndTime,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer<Int64> pStartTime,
            Pointer<Int64> pEndTime,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffer,
        pStartTime,
        pEndTime,
        dwFlags,
      );

  int ReleaseBuffer(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );
}
