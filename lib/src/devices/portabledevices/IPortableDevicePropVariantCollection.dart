// IPortableDevicePropVariantCollection.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IPortableDevicePropVariantCollection =
    '{89B2E422-4F1B-4316-BCEF-A44AFEA83EB3}';

/// {@category Interface}
/// {@category com}
class IPortableDevicePropVariantCollection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IPortableDevicePropVariantCollection(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pValue,
      );

  int Add(
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetType(
    Pointer<Uint16> pvt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pvt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pvt,
          )>()(
        ptr.ref.lpVtbl,
        pvt,
      );

  int ChangeType(
    int vt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 vt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vt,
          )>()(
        ptr.ref.lpVtbl,
        vt,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
          .elementAt(9)
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
const CLSID_PortableDevicePropVariantCollection =
    '{08A99E2F-6D6D-4B80-AF5A-BAF2BCBE4CB9}';

/// {@category com}
class PortableDevicePropVariantCollection
    extends IPortableDevicePropVariantCollection {
  PortableDevicePropVariantCollection(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDevicePropVariantCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_PortableDevicePropVariantCollection);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IPortableDevicePropVariantCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDevicePropVariantCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
