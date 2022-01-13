// IWpdSerializer.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWpdSerializer = '{B32F4002-BB27-45FF-AF4F-06631C1E8DAD}';

/// {@category Interface}
/// {@category com}
class IWpdSerializer extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWpdSerializer(Pointer<COMObject> ptr) : super(ptr);

  int GetIPortableDeviceValuesFromBuffer(
    Pointer<Uint8> pBuffer,
    int dwInputBufferLength,
    Pointer<Pointer<COMObject>> ppParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            Uint32 dwInputBufferLength,
            Pointer<Pointer<COMObject>> ppParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            int dwInputBufferLength,
            Pointer<Pointer<COMObject>> ppParams,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        dwInputBufferLength,
        ppParams,
      );

  int WriteIPortableDeviceValuesToBuffer(
    int dwOutputBufferLength,
    Pointer<COMObject> pResults,
    Pointer<Uint8> pBuffer,
    Pointer<Uint32> pdwBytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputBufferLength,
            Pointer<COMObject> pResults,
            Pointer<Uint8> pBuffer,
            Pointer<Uint32> pdwBytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputBufferLength,
            Pointer<COMObject> pResults,
            Pointer<Uint8> pBuffer,
            Pointer<Uint32> pdwBytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputBufferLength,
        pResults,
        pBuffer,
        pdwBytesWritten,
      );

  int GetBufferFromIPortableDeviceValues(
    Pointer<COMObject> pSource,
    Pointer<Pointer<Uint8>> ppBuffer,
    Pointer<Uint32> pdwBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint32> pdwBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Pointer<Uint8>> ppBuffer,
            Pointer<Uint32> pdwBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pSource,
        ppBuffer,
        pdwBufferSize,
      );

  int GetSerializedSize(
    Pointer<COMObject> pSource,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSource,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pSource,
        pdwSize,
      );
}

/// @nodoc
const CLSID_WpdSerializer = '{0B91A74B-AD7C-4A9D-B563-29EEF9167172}';

/// {@category com}
class WpdSerializer extends IWpdSerializer {
  WpdSerializer(Pointer<COMObject> ptr) : super(ptr);

  factory WpdSerializer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WpdSerializer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWpdSerializer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WpdSerializer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
