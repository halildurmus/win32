// IAsyncReader.dart

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
import '../../media/directshow/IMemAllocator.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IMediaSample.dart';

/// @nodoc
const IID_IAsyncReader = '{56A868AA-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IAsyncReader extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IAsyncReader(Pointer<COMObject> ptr) : super(ptr);

  int RequestAllocator(
    Pointer<COMObject> pPreferred,
    Pointer<ALLOCATOR_PROPERTIES> pProps,
    Pointer<Pointer<COMObject>> ppActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPreferred,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
            Pointer<Pointer<COMObject>> ppActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPreferred,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
            Pointer<Pointer<COMObject>> ppActual,
          )>()(
        ptr.ref.lpVtbl,
        pPreferred,
        pProps,
        ppActual,
      );

  int Request(
    Pointer<COMObject> pSample,
    int dwUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSample,
            IntPtr dwUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSample,
            int dwUser,
          )>()(
        ptr.ref.lpVtbl,
        pSample,
        dwUser,
      );

  int WaitForNext(
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppSample,
    Pointer<IntPtr> pdwUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppSample,
            Pointer<IntPtr> pdwUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppSample,
            Pointer<IntPtr> pdwUser,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeout,
        ppSample,
        pdwUser,
      );

  int SyncReadAligned(
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        pSample,
      );

  int SyncRead(
    int llPosition,
    int lLength,
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llPosition,
            Int32 lLength,
            Pointer<Uint8> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llPosition,
            int lLength,
            Pointer<Uint8> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        llPosition,
        lLength,
        pBuffer,
      );

  int Length(
    Pointer<Int64> pTotal,
    Pointer<Int64> pAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTotal,
            Pointer<Int64> pAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTotal,
            Pointer<Int64> pAvailable,
          )>()(
        ptr.ref.lpVtbl,
        pTotal,
        pAvailable,
      );

  int BeginFlush() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int EndFlush() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
