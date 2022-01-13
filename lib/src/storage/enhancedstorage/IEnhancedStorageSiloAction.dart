// IEnhancedStorageSiloAction.dart

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
const IID_IEnhancedStorageSiloAction = '{B6F7F311-206F-4FF8-9C4B-27EFEE77A86F}';

/// {@category Interface}
/// {@category com}
class IEnhancedStorageSiloAction extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IEnhancedStorageSiloAction(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> ppwszActionName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszActionName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszActionName,
          )>()(
        ptr.ref.lpVtbl,
        ppwszActionName,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> ppwszActionDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszActionDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszActionDescription,
          )>()(
        ptr.ref.lpVtbl,
        ppwszActionDescription,
      );

  int Invoke() => ptr.ref.lpVtbl.value
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
const CLSID_EnhancedStorageSiloAction =
    '{886D29DD-B506-466B-9FBF-B44FF383FB3F}';

/// {@category com}
class EnhancedStorageSiloAction extends IEnhancedStorageSiloAction {
  EnhancedStorageSiloAction(Pointer<COMObject> ptr) : super(ptr);

  factory EnhancedStorageSiloAction.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EnhancedStorageSiloAction);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEnhancedStorageSiloAction);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EnhancedStorageSiloAction(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
