// ID2D1Properties.dart

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
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1Properties.dart';

/// @nodoc
const IID_ID2D1Properties = '{483473D7-CD46-4F9D-9D3A-3112AA80159D}';

/// {@category Interface}
/// {@category com}
class ID2D1Properties extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  ID2D1Properties(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyCount() => ptr.ref.lpVtbl.value
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

  int GetPropertyName(
    int index,
    Pointer<Utf16> name,
    int nameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Utf16> name,
            Uint32 nameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Utf16> name,
            int nameCount,
          )>()(
        ptr.ref.lpVtbl,
        index,
        name,
        nameCount,
      );

  int GetPropertyNameLength(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int GetType(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int GetPropertyIndex(
    Pointer<Utf16> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
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

  int SetValueByName(
    Pointer<Utf16> name,
    int type,
    Pointer<Uint8> data,
    int dataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 type,
            Pointer<Uint8> data,
            Uint32 dataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int type,
            Pointer<Uint8> data,
            int dataSize,
          )>()(
        ptr.ref.lpVtbl,
        name,
        type,
        data,
        dataSize,
      );

  int SetValue(
    int index,
    int type,
    Pointer<Uint8> data,
    int dataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Uint32 type,
            Pointer<Uint8> data,
            Uint32 dataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            int type,
            Pointer<Uint8> data,
            int dataSize,
          )>()(
        ptr.ref.lpVtbl,
        index,
        type,
        data,
        dataSize,
      );

  int GetValueByName(
    Pointer<Utf16> name,
    int type,
    Pointer<Uint8> data,
    int dataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Uint32 type,
            Pointer<Uint8> data,
            Uint32 dataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int type,
            Pointer<Uint8> data,
            int dataSize,
          )>()(
        ptr.ref.lpVtbl,
        name,
        type,
        data,
        dataSize,
      );

  int GetValue(
    int index,
    int type,
    Pointer<Uint8> data,
    int dataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Uint32 type,
            Pointer<Uint8> data,
            Uint32 dataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            int type,
            Pointer<Uint8> data,
            int dataSize,
          )>()(
        ptr.ref.lpVtbl,
        index,
        type,
        data,
        dataSize,
      );

  int GetValueSize(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int GetSubProperties(
    int index,
    Pointer<Pointer<COMObject>> subProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> subProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> subProperties,
          )>()(
        ptr.ref.lpVtbl,
        index,
        subProperties,
      );
}
