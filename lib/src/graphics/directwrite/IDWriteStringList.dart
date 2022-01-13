// IDWriteStringList.dart

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
const IID_IDWriteStringList = '{CFEE3140-1157-47CA-8B85-31BFCF3F2D0E}';

/// {@category Interface}
/// {@category com}
class IDWriteStringList extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDWriteStringList(Pointer<COMObject> ptr) : super(ptr);

  int GetCount() => ptr.ref.lpVtbl.value
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

  int GetLocaleNameLength(
    int listIndex,
    Pointer<Uint32> length,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Uint32> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Uint32> length,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        length,
      );

  int GetLocaleName(
    int listIndex,
    Pointer<Utf16> localeName,
    int size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Utf16> localeName,
            Uint32 size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Utf16> localeName,
            int size,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        localeName,
        size,
      );

  int GetStringLength(
    int listIndex,
    Pointer<Uint32> length,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Uint32> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Uint32> length,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        length,
      );

  int GetString(
    int listIndex,
    Pointer<Utf16> stringBuffer,
    int stringBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Utf16> stringBuffer,
            Uint32 stringBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Utf16> stringBuffer,
            int stringBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        stringBuffer,
        stringBufferSize,
      );
}
