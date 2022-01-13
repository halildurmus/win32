// ICreatePropBagOnRegKey.dart

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
import '../../system/registry/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICreatePropBagOnRegKey = '{8A674B48-1F63-11D3-B64C-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class ICreatePropBagOnRegKey extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICreatePropBagOnRegKey(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    int hkey,
    Pointer<Utf16> subkey,
    int ulOptions,
    int samDesired,
    Pointer<GUID> iid,
    Pointer<Pointer> ppBag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hkey,
            Pointer<Utf16> subkey,
            Uint32 ulOptions,
            Uint32 samDesired,
            Pointer<GUID> iid,
            Pointer<Pointer> ppBag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hkey,
            Pointer<Utf16> subkey,
            int ulOptions,
            int samDesired,
            Pointer<GUID> iid,
            Pointer<Pointer> ppBag,
          )>()(
        ptr.ref.lpVtbl,
        hkey,
        subkey,
        ulOptions,
        samDesired,
        iid,
        ppBag,
      );
}

/// @nodoc
const CLSID_CreatePropBagOnRegKey = '{8A674B49-1F63-11D3-B64C-00C04F79498E}';

/// {@category com}
class CreatePropBagOnRegKey extends ICreatePropBagOnRegKey {
  CreatePropBagOnRegKey(Pointer<COMObject> ptr) : super(ptr);

  factory CreatePropBagOnRegKey.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_CreatePropBagOnRegKey);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICreatePropBagOnRegKey);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return CreatePropBagOnRegKey(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
