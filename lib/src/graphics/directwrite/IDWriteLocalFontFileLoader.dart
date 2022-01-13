// IDWriteLocalFontFileLoader.dart

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

import '../../graphics/directwrite/IDWriteFontFileLoader.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteLocalFontFileLoader = '{B2D9F3EC-C9FE-4A11-A2EC-D86208F7C0A2}';

/// {@category Interface}
/// {@category com}
class IDWriteLocalFontFileLoader extends IDWriteFontFileLoader {
  // vtable begins at 4, is 3 entries long.
  IDWriteLocalFontFileLoader(Pointer<COMObject> ptr) : super(ptr);

  int GetFilePathLengthFromKey(
    Pointer fontFileReferenceKey,
    int fontFileReferenceKeySize,
    Pointer<Uint32> filePathLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer fontFileReferenceKey,
            Uint32 fontFileReferenceKeySize,
            Pointer<Uint32> filePathLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fontFileReferenceKey,
            int fontFileReferenceKeySize,
            Pointer<Uint32> filePathLength,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
        filePathLength,
      );

  int GetFilePathFromKey(
    Pointer fontFileReferenceKey,
    int fontFileReferenceKeySize,
    Pointer<Utf16> filePath,
    int filePathSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer fontFileReferenceKey,
            Uint32 fontFileReferenceKeySize,
            Pointer<Utf16> filePath,
            Uint32 filePathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fontFileReferenceKey,
            int fontFileReferenceKeySize,
            Pointer<Utf16> filePath,
            int filePathSize,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
        filePath,
        filePathSize,
      );

  int GetLastWriteTimeFromKey(
    Pointer fontFileReferenceKey,
    int fontFileReferenceKeySize,
    Pointer<FILETIME> lastWriteTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer fontFileReferenceKey,
            Uint32 fontFileReferenceKeySize,
            Pointer<FILETIME> lastWriteTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fontFileReferenceKey,
            int fontFileReferenceKeySize,
            Pointer<FILETIME> lastWriteTime,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
        lastWriteTime,
      );
}
