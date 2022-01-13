// IWMDMStorage.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IWMDMStorageGlobals.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../media/devicemanager/IWMDMEnumStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMStorage = '{1DCB3A06-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IWMDMStorage extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IWMDMStorage(Pointer<COMObject> ptr) : super(ptr);

  int SetAttributes(
    int dwAttributes,
    Pointer<WAVEFORMATEX> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        dwAttributes,
        pFormat,
      );

  int GetStorageGlobals(
    Pointer<Pointer<COMObject>> ppStorageGlobals,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStorageGlobals,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStorageGlobals,
          )>()(
        ptr.ref.lpVtbl,
        ppStorageGlobals,
      );

  int GetAttributes(
    Pointer<Uint32> pdwAttributes,
    Pointer<WAVEFORMATEX> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAttributes,
            Pointer<WAVEFORMATEX> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pdwAttributes,
        pFormat,
      );

  int GetName(
    Pointer<Utf16> pwszName,
    int nMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Uint32 nMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            int nMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        nMaxChars,
      );

  int GetDate(
    Pointer<WMDMDATETIME> pDateTimeUTC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WMDMDATETIME> pDateTimeUTC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WMDMDATETIME> pDateTimeUTC,
          )>()(
        ptr.ref.lpVtbl,
        pDateTimeUTC,
      );

  int GetSize(
    Pointer<Uint32> pdwSizeLow,
    Pointer<Uint32> pdwSizeHigh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSizeLow,
            Pointer<Uint32> pdwSizeHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSizeLow,
            Pointer<Uint32> pdwSizeHigh,
          )>()(
        ptr.ref.lpVtbl,
        pdwSizeLow,
        pdwSizeHigh,
      );

  int GetRights(
    Pointer<Pointer<WMDMRIGHTS>> ppRights,
    Pointer<Uint32> pnRightsCount,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        ppRights,
        pnRightsCount,
        abMac,
      );

  int EnumStorage(
    Pointer<Pointer<COMObject>> pEnumStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnumStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnumStorage,
          )>()(
        ptr.ref.lpVtbl,
        pEnumStorage,
      );

  int SendOpaqueCommand(
    Pointer<OPAQUECOMMAND> pCommand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OPAQUECOMMAND> pCommand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OPAQUECOMMAND> pCommand,
          )>()(
        ptr.ref.lpVtbl,
        pCommand,
      );
}

/// @nodoc
const CLSID_WMDMStorage = '{807B3CE0-357A-11D3-8471-00C04F79DBC0}';

/// {@category com}
class WMDMStorage extends IWMDMStorage {
  WMDMStorage(Pointer<COMObject> ptr) : super(ptr);

  factory WMDMStorage.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WMDMStorage);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWMDMStorage);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WMDMStorage(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
