// IDWriteRemoteFontFileLoader.dart

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
import '../../graphics/directwrite/IDWriteRemoteFontFileStream.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFactory.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';

/// @nodoc
const IID_IDWriteRemoteFontFileLoader =
    '{68648C83-6EDE-46C0-AB46-20083A887FDE}';

/// {@category Interface}
/// {@category com}
class IDWriteRemoteFontFileLoader extends IDWriteFontFileLoader {
  // vtable begins at 4, is 3 entries long.
  IDWriteRemoteFontFileLoader(Pointer<COMObject> ptr) : super(ptr);

  int CreateRemoteStreamFromKey(
    Pointer fontFileReferenceKey,
    int fontFileReferenceKeySize,
    Pointer<Pointer<COMObject>> fontFileStream,
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
            Pointer<Pointer<COMObject>> fontFileStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fontFileReferenceKey,
            int fontFileReferenceKeySize,
            Pointer<Pointer<COMObject>> fontFileStream,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
        fontFileStream,
      );

  int GetLocalityFromKey(
    Pointer fontFileReferenceKey,
    int fontFileReferenceKeySize,
    Pointer<Int32> locality,
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
            Pointer<Int32> locality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fontFileReferenceKey,
            int fontFileReferenceKeySize,
            Pointer<Int32> locality,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
        locality,
      );

  int CreateFontFileReferenceFromUrl(
    Pointer<COMObject> factory,
    Pointer<Utf16> baseUrl,
    Pointer<Utf16> fontFileUrl,
    Pointer<Pointer<COMObject>> fontFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer<Utf16> baseUrl,
            Pointer<Utf16> fontFileUrl,
            Pointer<Pointer<COMObject>> fontFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer<Utf16> baseUrl,
            Pointer<Utf16> fontFileUrl,
            Pointer<Pointer<COMObject>> fontFile,
          )>()(
        ptr.ref.lpVtbl,
        factory,
        baseUrl,
        fontFileUrl,
        fontFile,
      );
}
