// IJsDebugDataTarget.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IEnumJsStackFrames.dart';

/// @nodoc
const IID_IJsDebugDataTarget = '{53B28977-53A1-48E5-9000-5D0DFA893931}';

/// {@category Interface}
/// {@category com}
class IJsDebugDataTarget extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IJsDebugDataTarget(Pointer<COMObject> ptr) : super(ptr);

  int ReadMemory(
    int address,
    int flags,
    Pointer<Uint8> pBuffer,
    int size,
    Pointer<Uint32> pBytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 address,
            Int32 flags,
            Pointer<Uint8> pBuffer,
            Uint32 size,
            Pointer<Uint32> pBytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int address,
            int flags,
            Pointer<Uint8> pBuffer,
            int size,
            Pointer<Uint32> pBytesRead,
          )>()(
        ptr.ref.lpVtbl,
        address,
        flags,
        pBuffer,
        size,
        pBytesRead,
      );

  int WriteMemory(
    int address,
    Pointer<Uint8> pMemory,
    int size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 address,
            Pointer<Uint8> pMemory,
            Uint32 size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int address,
            Pointer<Uint8> pMemory,
            int size,
          )>()(
        ptr.ref.lpVtbl,
        address,
        pMemory,
        size,
      );

  int AllocateVirtualMemory(
    int address,
    int size,
    int allocationType,
    int pageProtection,
    Pointer<Uint64> pAllocatedAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 address,
            Uint32 size,
            Uint32 allocationType,
            Uint32 pageProtection,
            Pointer<Uint64> pAllocatedAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int address,
            int size,
            int allocationType,
            int pageProtection,
            Pointer<Uint64> pAllocatedAddress,
          )>()(
        ptr.ref.lpVtbl,
        address,
        size,
        allocationType,
        pageProtection,
        pAllocatedAddress,
      );

  int FreeVirtualMemory(
    int address,
    int size,
    int freeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 address,
            Uint32 size,
            Uint32 freeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int address,
            int size,
            int freeType,
          )>()(
        ptr.ref.lpVtbl,
        address,
        size,
        freeType,
      );

  int GetTlsValue(
    int threadId,
    int tlsIndex,
    Pointer<Uint64> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 threadId,
            Uint32 tlsIndex,
            Pointer<Uint64> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threadId,
            int tlsIndex,
            Pointer<Uint64> pValue,
          )>()(
        ptr.ref.lpVtbl,
        threadId,
        tlsIndex,
        pValue,
      );

  int ReadBSTR(
    int address,
    Pointer<Pointer<Utf16>> pString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 address,
            Pointer<Pointer<Utf16>> pString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int address,
            Pointer<Pointer<Utf16>> pString,
          )>()(
        ptr.ref.lpVtbl,
        address,
        pString,
      );

  int ReadNullTerminatedString(
    int address,
    int characterSize,
    int maxCharacters,
    Pointer<Pointer<Utf16>> pString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 address,
            Uint16 characterSize,
            Uint32 maxCharacters,
            Pointer<Pointer<Utf16>> pString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int address,
            int characterSize,
            int maxCharacters,
            Pointer<Pointer<Utf16>> pString,
          )>()(
        ptr.ref.lpVtbl,
        address,
        characterSize,
        maxCharacters,
        pString,
      );

  int CreateStackFrameEnumerator(
    int threadId,
    Pointer<Pointer<COMObject>> ppEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 threadId,
            Pointer<Pointer<COMObject>> ppEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threadId,
            Pointer<Pointer<COMObject>> ppEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        threadId,
        ppEnumerator,
      );

  int GetThreadContext(
    int threadId,
    int contextFlags,
    int contextSize,
    Pointer pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 threadId,
            Uint32 contextFlags,
            Uint32 contextSize,
            Pointer pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threadId,
            int contextFlags,
            int contextSize,
            Pointer pContext,
          )>()(
        ptr.ref.lpVtbl,
        threadId,
        contextFlags,
        contextSize,
        pContext,
      );
}
