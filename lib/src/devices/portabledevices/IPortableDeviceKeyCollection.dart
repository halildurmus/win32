// IPortableDeviceKeyCollection.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';

/// @nodoc
const IID_IPortableDeviceKeyCollection =
    '{DADA2357-E0AD-492E-98DB-DD61C53BA353}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceKeyCollection extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPortableDeviceKeyCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pcElems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcElems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcElems,
          )>()(
        ptr.ref.lpVtbl,
        pcElems,
      );

  int GetAt(
    int dwIndex,
    Pointer<PROPERTYKEY> pKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<PROPERTYKEY> pKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<PROPERTYKEY> pKey,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pKey,
      );

  int Add(
    Pointer<PROPERTYKEY> Key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> Key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> Key,
          )>()(
        ptr.ref.lpVtbl,
        Key,
      );

  int Clear() => ptr.ref.lpVtbl.value
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

  int RemoveAt(
    int dwIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
      );
}

/// @nodoc
const CLSID_PortableDeviceKeyCollection =
    '{DE2D022D-2480-43BE-97F0-D1FA2CF98F4F}';

/// {@category com}
class PortableDeviceKeyCollection extends IPortableDeviceKeyCollection {
  PortableDeviceKeyCollection(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDeviceKeyCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_PortableDeviceKeyCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPortableDeviceKeyCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDeviceKeyCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
