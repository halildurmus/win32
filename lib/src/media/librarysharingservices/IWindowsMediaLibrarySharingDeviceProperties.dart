// IWindowsMediaLibrarySharingDeviceProperties.dart

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
import '../../media/librarysharingservices/IWindowsMediaLibrarySharingDeviceProperty.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWindowsMediaLibrarySharingDeviceProperties =
    '{C4623214-6B06-40C5-A623-B2FF4C076BFD}';

/// {@category Interface}
/// {@category com}
class IWindowsMediaLibrarySharingDeviceProperties extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IWindowsMediaLibrarySharingDeviceProperties(Pointer<COMObject> ptr)
      : super(ptr);

  int get_Item(
    int index,
    Pointer<Pointer<COMObject>> property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 index,
            Pointer<Pointer<COMObject>> property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> property,
          )>()(
        ptr.ref.lpVtbl,
        index,
        property,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetProperty(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> property,
          )>()(
        ptr.ref.lpVtbl,
        name,
        property,
      );
}
