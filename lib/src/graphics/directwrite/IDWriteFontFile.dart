// IDWriteFontFile.dart

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
import '../../graphics/directwrite/IDWriteFontFileLoader.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteFontFile = '{739D886A-CEF5-47DC-8769-1A8B41BEBBB0}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFile extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDWriteFontFile(Pointer<COMObject> ptr) : super(ptr);

  int GetReferenceKey(
    Pointer<Pointer> fontFileReferenceKey,
    Pointer<Uint32> fontFileReferenceKeySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> fontFileReferenceKey,
            Pointer<Uint32> fontFileReferenceKeySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> fontFileReferenceKey,
            Pointer<Uint32> fontFileReferenceKeySize,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
      );

  int GetLoader(
    Pointer<Pointer<COMObject>> fontFileLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFileLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFileLoader,
          )>()(
        ptr.ref.lpVtbl,
        fontFileLoader,
      );

  int Analyze(
    Pointer<Int32> isSupportedFontType,
    Pointer<Int32> fontFileType,
    Pointer<Int32> fontFaceType,
    Pointer<Uint32> numberOfFaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isSupportedFontType,
            Pointer<Int32> fontFileType,
            Pointer<Int32> fontFaceType,
            Pointer<Uint32> numberOfFaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isSupportedFontType,
            Pointer<Int32> fontFileType,
            Pointer<Int32> fontFaceType,
            Pointer<Uint32> numberOfFaces,
          )>()(
        ptr.ref.lpVtbl,
        isSupportedFontType,
        fontFileType,
        fontFaceType,
        numberOfFaces,
      );
}
