// IDeviceTopology.dart

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
import '../../media/audio/IConnector.dart';
import '../../media/audio/ISubunit.dart';
import '../../media/audio/IPart.dart';
import '../../media/audio/IPartsList.dart';

/// @nodoc
const IID_IDeviceTopology = '{2A07407E-6497-4A18-9787-32F79BD0D98F}';

/// {@category Interface}
/// {@category com}
class IDeviceTopology extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDeviceTopology(Pointer<COMObject> ptr) : super(ptr);

  int GetConnectorCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetConnector(
    int nIndex,
    Pointer<Pointer<COMObject>> ppConnector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<COMObject>> ppConnector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<COMObject>> ppConnector,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppConnector,
      );

  int GetSubunitCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetSubunit(
    int nIndex,
    Pointer<Pointer<COMObject>> ppSubunit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<COMObject>> ppSubunit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<COMObject>> ppSubunit,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppSubunit,
      );

  int GetPartById(
    int nId,
    Pointer<Pointer<COMObject>> ppPart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nId,
            Pointer<Pointer<COMObject>> ppPart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nId,
            Pointer<Pointer<COMObject>> ppPart,
          )>()(
        ptr.ref.lpVtbl,
        nId,
        ppPart,
      );

  int GetDeviceId(
    Pointer<Pointer<Utf16>> ppwstrDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwstrDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwstrDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        ppwstrDeviceId,
      );

  int GetSignalPath(
    Pointer<COMObject> pIPartFrom,
    Pointer<COMObject> pIPartTo,
    int bRejectMixedPaths,
    Pointer<Pointer<COMObject>> ppParts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIPartFrom,
            Pointer<COMObject> pIPartTo,
            Int32 bRejectMixedPaths,
            Pointer<Pointer<COMObject>> ppParts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIPartFrom,
            Pointer<COMObject> pIPartTo,
            int bRejectMixedPaths,
            Pointer<Pointer<COMObject>> ppParts,
          )>()(
        ptr.ref.lpVtbl,
        pIPartFrom,
        pIPartTo,
        bRejectMixedPaths,
        ppParts,
      );
}

/// @nodoc
const CLSID_DeviceTopology = '{1DF639D0-5EC1-47AA-9379-828DC1AA8C59}';

/// {@category com}
class DeviceTopology extends IDeviceTopology {
  DeviceTopology(Pointer<COMObject> ptr) : super(ptr);

  factory DeviceTopology.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DeviceTopology);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDeviceTopology);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DeviceTopology(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
