// IAMMediaContent2.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMMediaContent2 = '{CE8F78C1-74D9-11D2-B09D-00A0C9A81117}';

/// {@category Interface}
/// {@category com}
class IAMMediaContent2 extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IAMMediaContent2(Pointer<COMObject> ptr) : super(ptr);

  int get_MediaParameter(
    int EntryNum,
    Pointer<Utf16> bstrName,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EntryNum,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EntryNum,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        EntryNum,
        bstrName,
        pbstrValue,
      );

  int get_MediaParameterName(
    int EntryNum,
    int Index,
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EntryNum,
            Int32 Index,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EntryNum,
            int Index,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        EntryNum,
        Index,
        pbstrName,
      );

  int get PlaylistCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pNumberEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pNumberEntries,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
