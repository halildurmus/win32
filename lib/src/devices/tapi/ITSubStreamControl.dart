// ITSubStreamControl.dart

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
import '../../devices/tapi/ITSubStream.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/IEnumSubStream.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITSubStreamControl = '{EE3BD607-3868-11D2-A045-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITSubStreamControl extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ITSubStreamControl(Pointer<COMObject> ptr) : super(ptr);

  int CreateSubStream(
    Pointer<Pointer<COMObject>> ppSubStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubStream,
          )>()(
        ptr.ref.lpVtbl,
        ppSubStream,
      );

  int RemoveSubStream(
    Pointer<COMObject> pSubStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSubStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSubStream,
          )>()(
        ptr.ref.lpVtbl,
        pSubStream,
      );

  int EnumerateSubStreams(
    Pointer<Pointer<COMObject>> ppEnumSubStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumSubStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumSubStream,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumSubStream,
      );

  VARIANT get SubStreams {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
