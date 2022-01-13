// IEnumEnhancedStorageACT.dart

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
import '../../storage/enhancedstorage/IEnhancedStorageACT.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnumEnhancedStorageACT = '{09B224BD-1335-4631-A7FF-CFD3A92646D7}';

/// {@category Interface}
/// {@category com}
class IEnumEnhancedStorageACT extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEnumEnhancedStorageACT(Pointer<COMObject> ptr) : super(ptr);

  int GetACTs(
    Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageACTs,
    Pointer<Uint32> pcEnhancedStorageACTs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageACTs,
            Pointer<Uint32> pcEnhancedStorageACTs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageACTs,
            Pointer<Uint32> pcEnhancedStorageACTs,
          )>()(
        ptr.ref.lpVtbl,
        pppIEnhancedStorageACTs,
        pcEnhancedStorageACTs,
      );

  int GetMatchingACT(
    Pointer<Utf16> szVolume,
    Pointer<Pointer<COMObject>> ppIEnhancedStorageACT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szVolume,
            Pointer<Pointer<COMObject>> ppIEnhancedStorageACT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szVolume,
            Pointer<Pointer<COMObject>> ppIEnhancedStorageACT,
          )>()(
        ptr.ref.lpVtbl,
        szVolume,
        ppIEnhancedStorageACT,
      );
}

/// @nodoc
const CLSID_EnumEnhancedStorageACT = '{FE841493-835C-4FA3-B6CC-B4B2D4719848}';

/// {@category com}
class EnumEnhancedStorageACT extends IEnumEnhancedStorageACT {
  EnumEnhancedStorageACT(Pointer<COMObject> ptr) : super(ptr);

  factory EnumEnhancedStorageACT.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EnumEnhancedStorageACT);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEnumEnhancedStorageACT);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EnumEnhancedStorageACT(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
