// IDWriteFontSetBuilder.dart

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
import '../../graphics/directwrite/IDWriteFontFaceReference.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontSet.dart';

/// @nodoc
const IID_IDWriteFontSetBuilder = '{2F642AFE-9C68-4F40-B8BE-457401AFCB3D}';

/// {@category Interface}
/// {@category com}
class IDWriteFontSetBuilder extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDWriteFontSetBuilder(Pointer<COMObject> ptr) : super(ptr);

  int AddFontFaceReference_1(
    Pointer<COMObject> fontFaceReference,
    Pointer<DWRITE_FONT_PROPERTY> properties,
    int propertyCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFaceReference,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            Uint32 propertyCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFaceReference,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            int propertyCount,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceReference,
        properties,
        propertyCount,
      );

  int AddFontFaceReference(
    Pointer<COMObject> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceReference,
      );

  int AddFontSet(
    Pointer<COMObject> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontSet,
          )>()(
        ptr.ref.lpVtbl,
        fontSet,
      );

  int CreateFontSet(
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>()(
        ptr.ref.lpVtbl,
        fontSet,
      );
}
