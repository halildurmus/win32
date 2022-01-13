// IPortableDeviceValues.dart

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
import '../../specialTypes.dart';
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../devices/portabledevices/IPortableDevicePropVariantCollection.dart';
import '../../devices/portabledevices/IPortableDeviceKeyCollection.dart';
import '../../devices/portabledevices/IPortableDeviceValuesCollection.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_IPortableDeviceValues = '{6848F6F2-3155-4F86-B6F5-263EEEAB3143}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceValues extends IUnknown {
  // vtable begins at 3, is 40 entries long.
  IPortableDeviceValues(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pcelt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
      );

  int GetAt(
    int index,
    Pointer<PROPERTYKEY> pKey,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pKey,
        pValue,
      );

  int SetValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int GetValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetStringValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Utf16> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Utf16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Utf16> Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetStringValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetUnsignedIntegerValue(
    Pointer<PROPERTYKEY> key,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Uint32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetUnsignedIntegerValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Uint32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Uint32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Uint32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetSignedIntegerValue(
    Pointer<PROPERTYKEY> key,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetSignedIntegerValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetUnsignedLargeIntegerValue(
    Pointer<PROPERTYKEY> key,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Uint64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetUnsignedLargeIntegerValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Uint64> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Uint64> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Uint64> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetSignedLargeIntegerValue(
    Pointer<PROPERTYKEY> key,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Int64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetSignedLargeIntegerValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Int64> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int64> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int64> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetFloatValue(
    Pointer<PROPERTYKEY> key,
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Float Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            double Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetFloatValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetErrorValue(
    Pointer<PROPERTYKEY> key,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetErrorValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetKeyValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPERTYKEY> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPERTYKEY> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPERTYKEY> Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetKeyValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPERTYKEY> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPERTYKEY> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPERTYKEY> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetBoolValue(
    Pointer<PROPERTYKEY> key,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetBoolValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetIUnknownValue(
    Pointer<PROPERTYKEY> key,
    Pointer<COMObject> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int GetIUnknownValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<COMObject>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppValue,
      );

  int SetGuidValue(
    Pointer<PROPERTYKEY> key,
    Pointer<GUID> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<GUID> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<GUID> Value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        Value,
      );

  int GetGuidValue(
    Pointer<PROPERTYKEY> key,
    Pointer<GUID> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<GUID> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<GUID> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int SetBufferValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Uint8> pValue,
    int cbValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Uint8> pValue,
            Uint32 cbValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Uint8> pValue,
            int cbValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
        cbValue,
      );

  int GetBufferValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<Uint8>> ppValue,
    Pointer<Uint32> pcbValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<Uint8>> ppValue,
            Pointer<Uint32> pcbValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<Uint8>> ppValue,
            Pointer<Uint32> pcbValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppValue,
        pcbValue,
      );

  int SetIPortableDeviceValuesValue(
    Pointer<PROPERTYKEY> key,
    Pointer<COMObject> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int GetIPortableDeviceValuesValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<COMObject>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppValue,
      );

  int SetIPortableDevicePropVariantCollectionValue(
    Pointer<PROPERTYKEY> key,
    Pointer<COMObject> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int GetIPortableDevicePropVariantCollectionValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<COMObject>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppValue,
      );

  int SetIPortableDeviceKeyCollectionValue(
    Pointer<PROPERTYKEY> key,
    Pointer<COMObject> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int GetIPortableDeviceKeyCollectionValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<COMObject>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppValue,
      );

  int SetIPortableDeviceValuesCollectionValue(
    Pointer<PROPERTYKEY> key,
    Pointer<COMObject> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<COMObject> pValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pValue,
      );

  int GetIPortableDeviceValuesCollectionValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<COMObject>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        ppValue,
      );

  int RemoveValue(
    Pointer<PROPERTYKEY> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int CopyValuesFromPropertyStore(
    Pointer<COMObject> pStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStore,
          )>()(
        ptr.ref.lpVtbl,
        pStore,
      );

  int CopyValuesToPropertyStore(
    Pointer<COMObject> pStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStore,
          )>()(
        ptr.ref.lpVtbl,
        pStore,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(42)
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
const CLSID_PortableDeviceValues = '{0C15D503-D017-47CE-9016-7B3F978721CC}';

/// {@category com}
class PortableDeviceValues extends IPortableDeviceValues {
  PortableDeviceValues(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDeviceValues.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PortableDeviceValues);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPortableDeviceValues);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDeviceValues(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
