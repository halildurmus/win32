// IWindowsMediaLibrarySharingDevices.dart

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
import '../../media/librarysharingservices/IWindowsMediaLibrarySharingDevice.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWindowsMediaLibrarySharingDevices =
    '{1803F9D6-FE6D-4546-BF5B-992FE8EC12D1}';

/// {@category Interface}
/// {@category com}
class IWindowsMediaLibrarySharingDevices extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IWindowsMediaLibrarySharingDevices(Pointer<COMObject> ptr) : super(ptr);

  int get_Item(
    int index,
    Pointer<Pointer<COMObject>> device,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 index,
            Pointer<Pointer<COMObject>> device,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> device,
          )>()(
        ptr.ref.lpVtbl,
        index,
        device,
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

  int GetDevice(
    Pointer<Utf16> deviceID,
    Pointer<Pointer<COMObject>> device,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> deviceID,
            Pointer<Pointer<COMObject>> device,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> deviceID,
            Pointer<Pointer<COMObject>> device,
          )>()(
        ptr.ref.lpVtbl,
        deviceID,
        device,
      );
}
