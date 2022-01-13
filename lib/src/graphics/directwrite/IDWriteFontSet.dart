// IDWriteFontSet.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteStringList.dart';
import '../../graphics/directwrite/IDWriteLocalizedStrings.dart';
import '../../graphics/directwrite/IDWriteFontSet.dart';

/// @nodoc
const IID_IDWriteFontSet = '{53585141-D9F8-4095-8321-D73CF6BD116B}';

/// {@category Interface}
/// {@category com}
class IDWriteFontSet extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IDWriteFontSet(Pointer<COMObject> ptr) : super(ptr);

  int GetFontCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetFontFaceReference(
    int listIndex,
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        fontFaceReference,
      );

  int FindFontFaceReference(
    Pointer<COMObject> fontFaceReference,
    Pointer<Uint32> listIndex,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFaceReference,
            Pointer<Uint32> listIndex,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFaceReference,
            Pointer<Uint32> listIndex,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        fontFaceReference,
        listIndex,
        exists,
      );

  int FindFontFace(
    Pointer<COMObject> fontFace,
    Pointer<Uint32> listIndex,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Pointer<Uint32> listIndex,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontFace,
            Pointer<Uint32> listIndex,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        fontFace,
        listIndex,
        exists,
      );

  int GetPropertyValues_2(
    int propertyID,
    Pointer<Pointer<COMObject>> values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyID,
            Pointer<Pointer<COMObject>> values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyID,
            Pointer<Pointer<COMObject>> values,
          )>()(
        ptr.ref.lpVtbl,
        propertyID,
        values,
      );

  int GetPropertyValues_1(
    int propertyID,
    Pointer<Utf16> preferredLocaleNames,
    Pointer<Pointer<COMObject>> values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyID,
            Pointer<Utf16> preferredLocaleNames,
            Pointer<Pointer<COMObject>> values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyID,
            Pointer<Utf16> preferredLocaleNames,
            Pointer<Pointer<COMObject>> values,
          )>()(
        ptr.ref.lpVtbl,
        propertyID,
        preferredLocaleNames,
        values,
      );

  int GetPropertyValues(
    int listIndex,
    int propertyId,
    Pointer<Int32> exists,
    Pointer<Pointer<COMObject>> values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Int32 propertyId,
            Pointer<Int32> exists,
            Pointer<Pointer<COMObject>> values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            int propertyId,
            Pointer<Int32> exists,
            Pointer<Pointer<COMObject>> values,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        propertyId,
        exists,
        values,
      );

  int GetPropertyOccurrenceCount(
    Pointer<DWRITE_FONT_PROPERTY> property,
    Pointer<Uint32> propertyOccurrenceCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> property,
            Pointer<Uint32> propertyOccurrenceCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> property,
            Pointer<Uint32> propertyOccurrenceCount,
          )>()(
        ptr.ref.lpVtbl,
        property,
        propertyOccurrenceCount,
      );

  int GetMatchingFonts_1(
    Pointer<Utf16> familyName,
    int fontWeight,
    int fontStretch,
    int fontStyle,
    Pointer<Pointer<COMObject>> filteredSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> familyName,
            Int32 fontWeight,
            Int32 fontStretch,
            Int32 fontStyle,
            Pointer<Pointer<COMObject>> filteredSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> familyName,
            int fontWeight,
            int fontStretch,
            int fontStyle,
            Pointer<Pointer<COMObject>> filteredSet,
          )>()(
        ptr.ref.lpVtbl,
        familyName,
        fontWeight,
        fontStretch,
        fontStyle,
        filteredSet,
      );

  int GetMatchingFonts(
    Pointer<DWRITE_FONT_PROPERTY> properties,
    int propertyCount,
    Pointer<Pointer<COMObject>> filteredSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            Uint32 propertyCount,
            Pointer<Pointer<COMObject>> filteredSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            int propertyCount,
            Pointer<Pointer<COMObject>> filteredSet,
          )>()(
        ptr.ref.lpVtbl,
        properties,
        propertyCount,
        filteredSet,
      );
}
