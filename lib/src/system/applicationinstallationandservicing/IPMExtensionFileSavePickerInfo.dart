// IPMExtensionFileSavePickerInfo.dart

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
const IID_IPMExtensionFileSavePickerInfo =
    '{38005CBA-F81A-493E-A0F8-922C8680DA43}';

/// {@category Interface}
/// {@category com}
class IPMExtensionFileSavePickerInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPMExtensionFileSavePickerInfo(Pointer<COMObject> ptr) : super(ptr);

  int get_AllFileTypes(
    Pointer<Uint32> pcTypes,
    Pointer<Pointer<Pointer<Utf16>>> ppTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcTypes,
            Pointer<Pointer<Pointer<Utf16>>> ppTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcTypes,
            Pointer<Pointer<Pointer<Utf16>>> ppTypes,
          )>()(
        ptr.ref.lpVtbl,
        pcTypes,
        ppTypes,
      );

  int get SupportsAllFileTypes {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSupportsAllTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSupportsAllTypes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
