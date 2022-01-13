// IPortableDeviceValuesCollection.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';

/// @nodoc
const IID_IPortableDeviceValuesCollection =
    '{6E3F2D79-4E07-48C4-8208-D8C2E5AF4A99}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceValuesCollection extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPortableDeviceValuesCollection(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> ppValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppValues,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppValues,
      );

  int Add(
    Pointer<COMObject> pValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pValues,
          )>()(
        ptr.ref.lpVtbl,
        pValues,
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
const CLSID_PortableDeviceValuesCollection =
    '{3882134D-14CF-4220-9CB4-435F86D83F60}';

/// {@category com}
class PortableDeviceValuesCollection extends IPortableDeviceValuesCollection {
  PortableDeviceValuesCollection(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDeviceValuesCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_PortableDeviceValuesCollection);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IPortableDeviceValuesCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDeviceValuesCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
