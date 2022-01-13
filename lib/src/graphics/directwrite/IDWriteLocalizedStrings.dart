// IDWriteLocalizedStrings.dart

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
const IID_IDWriteLocalizedStrings = '{08256209-099A-4B34-B86D-C22B110E7771}';

/// {@category Interface}
/// {@category com}
class IDWriteLocalizedStrings extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDWriteLocalizedStrings(Pointer<COMObject> ptr) : super(ptr);

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

  int FindLocaleName(
    Pointer<Utf16> localeName,
    Pointer<Uint32> index,
    Pointer<Int32> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> localeName,
            Pointer<Uint32> index,
            Pointer<Int32> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> localeName,
            Pointer<Uint32> index,
            Pointer<Int32> exists,
          )>()(
        ptr.ref.lpVtbl,
        localeName,
        index,
        exists,
      );

  int GetLocaleNameLength(
    int index,
    Pointer<Uint32> length,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Uint32> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Uint32> length,
          )>()(
        ptr.ref.lpVtbl,
        index,
        length,
      );

  int GetLocaleName(
    int index,
    Pointer<Utf16> localeName,
    int size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Utf16> localeName,
            Uint32 size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Utf16> localeName,
            int size,
          )>()(
        ptr.ref.lpVtbl,
        index,
        localeName,
        size,
      );

  int GetStringLength(
    int index,
    Pointer<Uint32> length,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Uint32> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Uint32> length,
          )>()(
        ptr.ref.lpVtbl,
        index,
        length,
      );

  int GetString(
    int index,
    Pointer<Utf16> stringBuffer,
    int size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Utf16> stringBuffer,
            Uint32 size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Utf16> stringBuffer,
            int size,
          )>()(
        ptr.ref.lpVtbl,
        index,
        stringBuffer,
        size,
      );
}
