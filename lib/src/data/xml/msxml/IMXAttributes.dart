// IMXAttributes.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IMXAttributes = '{F10D27CC-3EC0-415C-8ED8-77AB1C5E7262}';

/// {@category Interface}
/// {@category com}
class IMXAttributes extends IDispatch {
  // vtable begins at 7, is 11 entries long.
  IMXAttributes(Pointer<COMObject> ptr) : super(ptr);

  int addAttribute(
    Pointer<Utf16> strURI,
    Pointer<Utf16> strLocalName,
    Pointer<Utf16> strQName,
    Pointer<Utf16> strType,
    Pointer<Utf16> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Utf16> strQName,
            Pointer<Utf16> strType,
            Pointer<Utf16> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Utf16> strQName,
            Pointer<Utf16> strType,
            Pointer<Utf16> strValue,
          )>()(
        ptr.ref.lpVtbl,
        strURI,
        strLocalName,
        strQName,
        strType,
        strValue,
      );

  int addAttributeFromIndex(
    VARIANT varAtts,
    int nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varAtts,
            Int32 nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varAtts,
            int nIndex,
          )>()(
        ptr.ref.lpVtbl,
        varAtts,
        nIndex,
      );

  int clear() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int removeAttribute(
    int nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
      );

  int setAttribute(
    int nIndex,
    Pointer<Utf16> strURI,
    Pointer<Utf16> strLocalName,
    Pointer<Utf16> strQName,
    Pointer<Utf16> strType,
    Pointer<Utf16> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Utf16> strQName,
            Pointer<Utf16> strType,
            Pointer<Utf16> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Utf16> strQName,
            Pointer<Utf16> strType,
            Pointer<Utf16> strValue,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strURI,
        strLocalName,
        strQName,
        strType,
        strValue,
      );

  int setAttributes(
    VARIANT varAtts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varAtts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varAtts,
          )>()(
        ptr.ref.lpVtbl,
        varAtts,
      );

  int setLocalName(
    int nIndex,
    Pointer<Utf16> strLocalName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Utf16> strLocalName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Utf16> strLocalName,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strLocalName,
      );

  int setQName(
    int nIndex,
    Pointer<Utf16> strQName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Utf16> strQName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Utf16> strQName,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strQName,
      );

  int setType(
    int nIndex,
    Pointer<Utf16> strType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Utf16> strType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Utf16> strType,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strType,
      );

  int setURI(
    int nIndex,
    Pointer<Utf16> strURI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Utf16> strURI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Utf16> strURI,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strURI,
      );

  int setValue(
    int nIndex,
    Pointer<Utf16> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Utf16> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Utf16> strValue,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strValue,
      );
}
