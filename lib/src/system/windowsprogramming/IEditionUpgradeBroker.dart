// IEditionUpgradeBroker.dart

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
const IID_IEditionUpgradeBroker = '{FF19CBCF-9455-4937-B872-6B7929A460AF}';

/// {@category Interface}
/// {@category com}
class IEditionUpgradeBroker extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEditionUpgradeBroker(Pointer<COMObject> ptr) : super(ptr);

  int InitializeParentWindow(
    int parentHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 parentHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parentHandle,
          )>()(
        ptr.ref.lpVtbl,
        parentHandle,
      );

  int UpdateOperatingSystem(
    Pointer<Utf16> parameter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> parameter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> parameter,
          )>()(
        ptr.ref.lpVtbl,
        parameter,
      );

  int ShowProductKeyUI() => ptr.ref.lpVtbl.value
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

  int CanUpgrade() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
const CLSID_EditionUpgradeBroker = '{C4270827-4F39-45DF-9288-12FF6B85A921}';

/// {@category com}
class EditionUpgradeBroker extends IEditionUpgradeBroker {
  EditionUpgradeBroker(Pointer<COMObject> ptr) : super(ptr);

  factory EditionUpgradeBroker.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EditionUpgradeBroker);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEditionUpgradeBroker);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EditionUpgradeBroker(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
