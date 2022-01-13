// IDWriteFactory7.dart

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

import '../../graphics/directwrite/IDWriteFactory6.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontSet2.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontCollection3.dart';

/// @nodoc
const IID_IDWriteFactory7 = '{35D0E0B3-9076-4D2E-A016-A91B568A06B4}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory7 extends IDWriteFactory6 {
  // vtable begins at 55, is 2 entries long.
  IDWriteFactory7(Pointer<COMObject> ptr) : super(ptr);

  int GetSystemFontSet_2(
    int includeDownloadableFonts,
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 includeDownloadableFonts,
            Pointer<Pointer<COMObject>> fontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int includeDownloadableFonts,
            Pointer<Pointer<COMObject>> fontSet,
          )>()(
        ptr.ref.lpVtbl,
        includeDownloadableFonts,
        fontSet,
      );

  int GetSystemFontCollection_3(
    int includeDownloadableFonts,
    int fontFamilyModel,
    Pointer<Pointer<COMObject>> fontCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 includeDownloadableFonts,
            Int32 fontFamilyModel,
            Pointer<Pointer<COMObject>> fontCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int includeDownloadableFonts,
            int fontFamilyModel,
            Pointer<Pointer<COMObject>> fontCollection,
          )>()(
        ptr.ref.lpVtbl,
        includeDownloadableFonts,
        fontFamilyModel,
        fontCollection,
      );
}
