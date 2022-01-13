// IAMDevMemoryAllocator.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAMDevMemoryAllocator = '{C6545BF0-E76B-11D0-BD52-00A0C911CE86}';

/// {@category Interface}
/// {@category com}
class IAMDevMemoryAllocator extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAMDevMemoryAllocator(Pointer<COMObject> ptr) : super(ptr);

  int GetInfo(
    Pointer<Uint32> pdwcbTotalFree,
    Pointer<Uint32> pdwcbLargestFree,
    Pointer<Uint32> pdwcbTotalMemory,
    Pointer<Uint32> pdwcbMinimumChunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwcbTotalFree,
            Pointer<Uint32> pdwcbLargestFree,
            Pointer<Uint32> pdwcbTotalMemory,
            Pointer<Uint32> pdwcbMinimumChunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwcbTotalFree,
            Pointer<Uint32> pdwcbLargestFree,
            Pointer<Uint32> pdwcbTotalMemory,
            Pointer<Uint32> pdwcbMinimumChunk,
          )>()(
        ptr.ref.lpVtbl,
        pdwcbTotalFree,
        pdwcbLargestFree,
        pdwcbTotalMemory,
        pdwcbMinimumChunk,
      );

  int CheckMemory(
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int Alloc(
    Pointer<Pointer<Uint8>> ppBuffer,
    Pointer<Uint32> pdwcbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint32> pdwcbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint32> pdwcbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffer,
        pdwcbBuffer,
      );

  int Free(
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int GetDevMemoryObject(
    Pointer<Pointer<COMObject>> ppUnkInnner,
    Pointer<COMObject> pUnkOuter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnkInnner,
            Pointer<COMObject> pUnkOuter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnkInnner,
            Pointer<COMObject> pUnkOuter,
          )>()(
        ptr.ref.lpVtbl,
        ppUnkInnner,
        pUnkOuter,
      );
}
