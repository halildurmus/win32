// IWiaDevMgr.dart

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
import '../../devices/imageacquisition/IEnumWIA_DEV_INFO.dart';
import '../../foundation/structs.g.dart';
import '../../devices/imageacquisition/IWiaItem.dart';
import '../../devices/imageacquisition/IWiaEventCallback.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWiaDevMgr = '{5EB2502A-8CF1-11D1-BF92-0060081ED811}';

/// {@category Interface}
/// {@category com}
class IWiaDevMgr extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IWiaDevMgr(Pointer<COMObject> ptr) : super(ptr);

  int EnumDeviceInfo(
    int lFlag,
    Pointer<Pointer<COMObject>> ppIEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlag,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlag,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>()(
        ptr.ref.lpVtbl,
        lFlag,
        ppIEnum,
      );

  int CreateDevice(
    Pointer<Utf16> bstrDeviceID,
    Pointer<Pointer<COMObject>> ppWiaItemRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceID,
            Pointer<Pointer<COMObject>> ppWiaItemRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceID,
            Pointer<Pointer<COMObject>> ppWiaItemRoot,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceID,
        ppWiaItemRoot,
      );

  int SelectDeviceDlg(
    int hwndParent,
    int lDeviceType,
    int lFlags,
    Pointer<Pointer<Utf16>> pbstrDeviceID,
    Pointer<Pointer<COMObject>> ppItemRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Int32 lDeviceType,
            Int32 lFlags,
            Pointer<Pointer<Utf16>> pbstrDeviceID,
            Pointer<Pointer<COMObject>> ppItemRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int lDeviceType,
            int lFlags,
            Pointer<Pointer<Utf16>> pbstrDeviceID,
            Pointer<Pointer<COMObject>> ppItemRoot,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lDeviceType,
        lFlags,
        pbstrDeviceID,
        ppItemRoot,
      );

  int SelectDeviceDlgID(
    int hwndParent,
    int lDeviceType,
    int lFlags,
    Pointer<Pointer<Utf16>> pbstrDeviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Int32 lDeviceType,
            Int32 lFlags,
            Pointer<Pointer<Utf16>> pbstrDeviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int lDeviceType,
            int lFlags,
            Pointer<Pointer<Utf16>> pbstrDeviceID,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lDeviceType,
        lFlags,
        pbstrDeviceID,
      );

  int GetImageDlg(
    int hwndParent,
    int lDeviceType,
    int lFlags,
    int lIntent,
    Pointer<COMObject> pItemRoot,
    Pointer<Utf16> bstrFilename,
    Pointer<GUID> pguidFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Int32 lDeviceType,
            Int32 lFlags,
            Int32 lIntent,
            Pointer<COMObject> pItemRoot,
            Pointer<Utf16> bstrFilename,
            Pointer<GUID> pguidFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int lDeviceType,
            int lFlags,
            int lIntent,
            Pointer<COMObject> pItemRoot,
            Pointer<Utf16> bstrFilename,
            Pointer<GUID> pguidFormat,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lDeviceType,
        lFlags,
        lIntent,
        pItemRoot,
        bstrFilename,
        pguidFormat,
      );

  int RegisterEventCallbackProgram(
    int lFlags,
    Pointer<Utf16> bstrDeviceID,
    Pointer<GUID> pEventGUID,
    Pointer<Utf16> bstrCommandline,
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrDescription,
    Pointer<Utf16> bstrIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrDeviceID,
            Pointer<GUID> pEventGUID,
            Pointer<Utf16> bstrCommandline,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrDescription,
            Pointer<Utf16> bstrIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrDeviceID,
            Pointer<GUID> pEventGUID,
            Pointer<Utf16> bstrCommandline,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrDescription,
            Pointer<Utf16> bstrIcon,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrDeviceID,
        pEventGUID,
        bstrCommandline,
        bstrName,
        bstrDescription,
        bstrIcon,
      );

  int RegisterEventCallbackInterface(
    int lFlags,
    Pointer<Utf16> bstrDeviceID,
    Pointer<GUID> pEventGUID,
    Pointer<COMObject> pIWiaEventCallback,
    Pointer<Pointer<COMObject>> pEventObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrDeviceID,
            Pointer<GUID> pEventGUID,
            Pointer<COMObject> pIWiaEventCallback,
            Pointer<Pointer<COMObject>> pEventObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrDeviceID,
            Pointer<GUID> pEventGUID,
            Pointer<COMObject> pIWiaEventCallback,
            Pointer<Pointer<COMObject>> pEventObject,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrDeviceID,
        pEventGUID,
        pIWiaEventCallback,
        pEventObject,
      );

  int RegisterEventCallbackCLSID(
    int lFlags,
    Pointer<Utf16> bstrDeviceID,
    Pointer<GUID> pEventGUID,
    Pointer<GUID> pClsID,
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrDescription,
    Pointer<Utf16> bstrIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrDeviceID,
            Pointer<GUID> pEventGUID,
            Pointer<GUID> pClsID,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrDescription,
            Pointer<Utf16> bstrIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrDeviceID,
            Pointer<GUID> pEventGUID,
            Pointer<GUID> pClsID,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrDescription,
            Pointer<Utf16> bstrIcon,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrDeviceID,
        pEventGUID,
        pClsID,
        bstrName,
        bstrDescription,
        bstrIcon,
      );

  int AddDeviceDlg(
    int hwndParent,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lFlags,
      );
}

/// @nodoc
const CLSID_WiaDevMgr = '{A1F4E726-8CF1-11D1-BF92-0060081ED811}';

/// {@category com}
class WiaDevMgr extends IWiaDevMgr {
  WiaDevMgr(Pointer<COMObject> ptr) : super(ptr);

  factory WiaDevMgr.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WiaDevMgr);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWiaDevMgr);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WiaDevMgr(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
