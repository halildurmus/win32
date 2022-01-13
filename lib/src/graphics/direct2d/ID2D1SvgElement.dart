// ID2D1SvgElement.dart

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

import '../../graphics/direct2d/ID2D1Resource.dart';
import '../../graphics/direct2d/ID2D1SvgDocument.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1SvgElement.dart';
import '../../graphics/direct2d/ID2D1SvgAttribute.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1SvgElement = '{AC7B67A6-183E-49C1-A823-0EBE40B0DB29}';

/// {@category Interface}
/// {@category com}
class ID2D1SvgElement extends ID2D1Resource {
  // vtable begins at 4, is 30 entries long.
  ID2D1SvgElement(Pointer<COMObject> ptr) : super(ptr);

  void GetDocument(
    Pointer<Pointer<COMObject>> document,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> document,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> document,
          )>()(
        ptr.ref.lpVtbl,
        document,
      );

  int GetTagName(
    Pointer<Utf16> name,
    int nameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 nameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int nameCount,
          )>()(
        ptr.ref.lpVtbl,
        name,
        nameCount,
      );

  int GetTagNameLength() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int IsTextContent() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  void GetParent(
    Pointer<Pointer<COMObject>> parent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> parent,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> parent,
          )>()(
        ptr.ref.lpVtbl,
        parent,
      );

  int HasChildren() => ptr.ref.lpVtbl.value
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

  void GetFirstChild(
    Pointer<Pointer<COMObject>> child,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> child,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> child,
          )>()(
        ptr.ref.lpVtbl,
        child,
      );

  void GetLastChild(
    Pointer<Pointer<COMObject>> child,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> child,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> child,
          )>()(
        ptr.ref.lpVtbl,
        child,
      );

  int GetPreviousChild(
    Pointer<COMObject> referenceChild,
    Pointer<Pointer<COMObject>> previousChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> referenceChild,
            Pointer<Pointer<COMObject>> previousChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> referenceChild,
            Pointer<Pointer<COMObject>> previousChild,
          )>()(
        ptr.ref.lpVtbl,
        referenceChild,
        previousChild,
      );

  int GetNextChild(
    Pointer<COMObject> referenceChild,
    Pointer<Pointer<COMObject>> nextChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> referenceChild,
            Pointer<Pointer<COMObject>> nextChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> referenceChild,
            Pointer<Pointer<COMObject>> nextChild,
          )>()(
        ptr.ref.lpVtbl,
        referenceChild,
        nextChild,
      );

  int InsertChildBefore(
    Pointer<COMObject> newChild,
    Pointer<COMObject> referenceChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newChild,
            Pointer<COMObject> referenceChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newChild,
            Pointer<COMObject> referenceChild,
          )>()(
        ptr.ref.lpVtbl,
        newChild,
        referenceChild,
      );

  int AppendChild(
    Pointer<COMObject> newChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newChild,
          )>()(
        ptr.ref.lpVtbl,
        newChild,
      );

  int ReplaceChild(
    Pointer<COMObject> newChild,
    Pointer<COMObject> oldChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newChild,
            Pointer<COMObject> oldChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newChild,
            Pointer<COMObject> oldChild,
          )>()(
        ptr.ref.lpVtbl,
        newChild,
        oldChild,
      );

  int RemoveChild(
    Pointer<COMObject> oldChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oldChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oldChild,
          )>()(
        ptr.ref.lpVtbl,
        oldChild,
      );

  int CreateChild(
    Pointer<Utf16> tagName,
    Pointer<Pointer<COMObject>> newChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> tagName,
            Pointer<Pointer<COMObject>> newChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> tagName,
            Pointer<Pointer<COMObject>> newChild,
          )>()(
        ptr.ref.lpVtbl,
        tagName,
        newChild,
      );

  int IsAttributeSpecified(
    Pointer<Utf16> name,
    Pointer<Int32> inherited,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Int32> inherited,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Int32> inherited,
          )>()(
        ptr.ref.lpVtbl,
        name,
        inherited,
      );

  int GetSpecifiedAttributeCount() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int GetSpecifiedAttributeName(
    int index,
    Pointer<Utf16> name,
    int nameCount,
    Pointer<Int32> inherited,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Utf16> name,
            Uint32 nameCount,
            Pointer<Int32> inherited,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Utf16> name,
            int nameCount,
            Pointer<Int32> inherited,
          )>()(
        ptr.ref.lpVtbl,
        index,
        name,
        nameCount,
        inherited,
      );

  int GetSpecifiedAttributeNameLength(
    int index,
    Pointer<Uint32> nameLength,
    Pointer<Int32> inherited,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Uint32> nameLength,
            Pointer<Int32> inherited,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Uint32> nameLength,
            Pointer<Int32> inherited,
          )>()(
        ptr.ref.lpVtbl,
        index,
        nameLength,
        inherited,
      );

  int RemoveAttribute(
    Pointer<Utf16> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int SetTextValue(
    Pointer<Utf16> name,
    int nameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 nameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int nameCount,
          )>()(
        ptr.ref.lpVtbl,
        name,
        nameCount,
      );

  int GetTextValue(
    Pointer<Utf16> name,
    int nameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 nameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int nameCount,
          )>()(
        ptr.ref.lpVtbl,
        name,
        nameCount,
      );

  int GetTextValueLength() => ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int SetAttributeValue_2(
    Pointer<Utf16> name,
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        name,
        value,
      );

  int SetAttributeValue_1(
    Pointer<Utf16> name,
    int type,
    Pointer value,
    int valueSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 type,
            Pointer value,
            Uint32 valueSizeInBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int type,
            Pointer value,
            int valueSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        name,
        type,
        value,
        valueSizeInBytes,
      );

  int SetAttributeValue(
    Pointer<Utf16> name,
    int type,
    Pointer<Utf16> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 type,
            Pointer<Utf16> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int type,
            Pointer<Utf16> value,
          )>()(
        ptr.ref.lpVtbl,
        name,
        type,
        value,
      );

  int GetAttributeValue_2(
    Pointer<Utf16> name,
    Pointer<GUID> riid,
    Pointer<Pointer> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<GUID> riid,
            Pointer<Pointer> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<GUID> riid,
            Pointer<Pointer> value,
          )>()(
        ptr.ref.lpVtbl,
        name,
        riid,
        value,
      );

  int GetAttributeValue_1(
    Pointer<Utf16> name,
    int type,
    Pointer value,
    int valueSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 type,
            Pointer value,
            Uint32 valueSizeInBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int type,
            Pointer value,
            int valueSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        name,
        type,
        value,
        valueSizeInBytes,
      );

  int GetAttributeValue(
    Pointer<Utf16> name,
    int type,
    Pointer<Utf16> value,
    int valueCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 type,
            Pointer<Utf16> value,
            Uint32 valueCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int type,
            Pointer<Utf16> value,
            int valueCount,
          )>()(
        ptr.ref.lpVtbl,
        name,
        type,
        value,
        valueCount,
      );

  int GetAttributeValueLength(
    Pointer<Utf16> name,
    int type,
    Pointer<Uint32> valueLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 type,
            Pointer<Uint32> valueLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int type,
            Pointer<Uint32> valueLength,
          )>()(
        ptr.ref.lpVtbl,
        name,
        type,
        valueLength,
      );
}
