// IFileIo.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFileIo = '{11993196-1244-4840-AB44-480975C4FFE4}';

/// {@category Interface}
/// {@category com}
class IFileIo extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IFileIo(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int eAccessMode,
    int eOpenMode,
    Pointer<Utf16> pwszFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eAccessMode,
            Int32 eOpenMode,
            Pointer<Utf16> pwszFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eAccessMode,
            int eOpenMode,
            Pointer<Utf16> pwszFileName,
          )>()(
        ptr.ref.lpVtbl,
        eAccessMode,
        eOpenMode,
        pwszFileName,
      );

  int GetLength(
    Pointer<Uint64> pqwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwLength,
          )>()(
        ptr.ref.lpVtbl,
        pqwLength,
      );

  int SetLength(
    int qwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwLength,
          )>()(
        ptr.ref.lpVtbl,
        qwLength,
      );

  int GetCurrentPosition(
    Pointer<Uint64> pqwPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwPosition,
          )>()(
        ptr.ref.lpVtbl,
        pqwPosition,
      );

  int SetCurrentPosition(
    int qwPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwPosition,
          )>()(
        ptr.ref.lpVtbl,
        qwPosition,
      );

  int IsEndOfStream(
    Pointer<Int32> pbEndOfStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbEndOfStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbEndOfStream,
          )>()(
        ptr.ref.lpVtbl,
        pbEndOfStream,
      );

  int Read(
    Pointer<Uint8> pbt,
    int ul,
    Pointer<Uint32> pulRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbt,
            Uint32 ul,
            Pointer<Uint32> pulRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbt,
            int ul,
            Pointer<Uint32> pulRead,
          )>()(
        ptr.ref.lpVtbl,
        pbt,
        ul,
        pulRead,
      );

  int Write(
    Pointer<Uint8> pbt,
    int ul,
    Pointer<Uint32> pulWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbt,
            Uint32 ul,
            Pointer<Uint32> pulWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbt,
            int ul,
            Pointer<Uint32> pulWritten,
          )>()(
        ptr.ref.lpVtbl,
        pbt,
        ul,
        pulWritten,
      );

  int Seek(
    int eSeekOrigin,
    int qwSeekOffset,
    int dwSeekFlags,
    Pointer<Uint64> pqwCurrentPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eSeekOrigin,
            Uint64 qwSeekOffset,
            Uint32 dwSeekFlags,
            Pointer<Uint64> pqwCurrentPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eSeekOrigin,
            int qwSeekOffset,
            int dwSeekFlags,
            Pointer<Uint64> pqwCurrentPosition,
          )>()(
        ptr.ref.lpVtbl,
        eSeekOrigin,
        qwSeekOffset,
        dwSeekFlags,
        pqwCurrentPosition,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
