// IUPnPDescriptionDocument.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../devices/enumeration/pnp/IUPnPDevice.dart';

/// @nodoc
const IID_IUPnPDescriptionDocument = '{11D1C1B2-7DAA-4C9E-9595-7F82ED206D1E}';

/// {@category Interface}
/// {@category com}
class IUPnPDescriptionDocument extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IUPnPDescriptionDocument(Pointer<COMObject> ptr) : super(ptr);

  int get ReadyState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plReadyState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plReadyState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Load(
    Pointer<Utf16> bstrUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
          )>()(
        ptr.ref.lpVtbl,
        bstrUrl,
      );

  int LoadAsync(
    Pointer<Utf16> bstrUrl,
    Pointer<COMObject> punkCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Pointer<COMObject> punkCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUrl,
            Pointer<COMObject> punkCallback,
          )>()(
        ptr.ref.lpVtbl,
        bstrUrl,
        punkCallback,
      );

  int get LoadResult {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrError,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int RootDevice(
    Pointer<Pointer<COMObject>> ppudRootDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppudRootDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppudRootDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppudRootDevice,
      );

  int DeviceByUDN(
    Pointer<Utf16> bstrUDN,
    Pointer<Pointer<COMObject>> ppudDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Pointer<COMObject>> ppudDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Pointer<COMObject>> ppudDevice,
          )>()(
        ptr.ref.lpVtbl,
        bstrUDN,
        ppudDevice,
      );
}

/// @nodoc
const CLSID_UPnPDescriptionDocument = '{1D8A9B47-3A28-4CE2-8A4B-BD34E45BCEEB}';

/// {@category com}
class UPnPDescriptionDocument extends IUPnPDescriptionDocument {
  UPnPDescriptionDocument(Pointer<COMObject> ptr) : super(ptr);

  factory UPnPDescriptionDocument.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UPnPDescriptionDocument);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUPnPDescriptionDocument);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UPnPDescriptionDocument(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
