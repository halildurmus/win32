// IObjectControl.dart

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
const IID_IObjectControl = '{51372AEC-CAE7-11CF-BE81-00AA00A2FA25}';

/// {@category Interface}
/// {@category com}
class IObjectControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IObjectControl(Pointer<COMObject> ptr) : super(ptr);

  int Activate() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  void Deactivate() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CanBePooled() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
}

/// @nodoc
const CLSID_ObjectControl = '{7DC41850-0C31-11D0-8B79-00AA00B8A790}';

/// {@category com}
class ObjectControl extends IObjectControl {
  ObjectControl(Pointer<COMObject> ptr) : super(ptr);

  factory ObjectControl.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ObjectControl);
    final iid = calloc<GUID>()..ref.setGUID(IID_IObjectControl);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ObjectControl(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
