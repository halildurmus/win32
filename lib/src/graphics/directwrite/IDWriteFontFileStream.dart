// IDWriteFontFileStream.dart

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

/// @nodoc
const IID_IDWriteFontFileStream = '{6D4865FE-0AB8-4D91-8F62-5DD6BE34A3E0}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFileStream extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDWriteFontFileStream(Pointer<COMObject> ptr) : super(ptr);

  int ReadFileFragment(
    Pointer<Pointer> fragmentStart,
    int fileOffset,
    int fragmentSize,
    Pointer<Pointer> fragmentContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> fragmentStart,
            Uint64 fileOffset,
            Uint64 fragmentSize,
            Pointer<Pointer> fragmentContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> fragmentStart,
            int fileOffset,
            int fragmentSize,
            Pointer<Pointer> fragmentContext,
          )>()(
        ptr.ref.lpVtbl,
        fragmentStart,
        fileOffset,
        fragmentSize,
        fragmentContext,
      );

  void ReleaseFileFragment(
    Pointer fragmentContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer fragmentContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer fragmentContext,
          )>()(
        ptr.ref.lpVtbl,
        fragmentContext,
      );

  int GetFileSize(
    Pointer<Uint64> fileSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> fileSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> fileSize,
          )>()(
        ptr.ref.lpVtbl,
        fileSize,
      );

  int GetLastWriteTime(
    Pointer<Uint64> lastWriteTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> lastWriteTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> lastWriteTime,
          )>()(
        ptr.ref.lpVtbl,
        lastWriteTime,
      );
}
