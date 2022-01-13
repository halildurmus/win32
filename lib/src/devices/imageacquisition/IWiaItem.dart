// IWiaItem.dart

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
import '../../devices/imageacquisition/IEnumWiaItem.dart';
import '../../devices/imageacquisition/IWiaItem.dart';
import '../../devices/imageacquisition/IEnumWIA_DEV_CAPS.dart';

/// @nodoc
const IID_IWiaItem = '{4DB1AD10-3391-11D2-9A33-00C04FA36145}';

/// {@category Interface}
/// {@category com}
class IWiaItem extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IWiaItem(Pointer<COMObject> ptr) : super(ptr);

  int GetItemType(
    Pointer<Int32> pItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pItemType,
          )>()(
        ptr.ref.lpVtbl,
        pItemType,
      );

  int AnalyzeItem(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

  int EnumChildItems(
    Pointer<Pointer<COMObject>> ppIEnumWiaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumWiaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumWiaItem,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumWiaItem,
      );

  int DeleteItem(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

  int CreateChildItem(
    int lFlags,
    Pointer<Utf16> bstrItemName,
    Pointer<Utf16> bstrFullItemName,
    Pointer<Pointer<COMObject>> ppIWiaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrItemName,
        bstrFullItemName,
        ppIWiaItem,
      );

  int EnumRegisterEventInfo(
    int lFlags,
    Pointer<GUID> pEventGUID,
    Pointer<Pointer<COMObject>> ppIEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<GUID> pEventGUID,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<GUID> pEventGUID,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pEventGUID,
        ppIEnum,
      );

  int FindItemByName(
    int lFlags,
    Pointer<Utf16> bstrFullItemName,
    Pointer<Pointer<COMObject>> ppIWiaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrFullItemName,
        ppIWiaItem,
      );

  int DeviceDlg(
    int hwndParent,
    int lFlags,
    int lIntent,
    Pointer<Int32> plItemCount,
    Pointer<Pointer<Pointer<COMObject>>> ppIWiaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Int32 lFlags,
            Int32 lIntent,
            Pointer<Int32> plItemCount,
            Pointer<Pointer<Pointer<COMObject>>> ppIWiaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int lFlags,
            int lIntent,
            Pointer<Int32> plItemCount,
            Pointer<Pointer<Pointer<COMObject>>> ppIWiaItem,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lFlags,
        lIntent,
        plItemCount,
        ppIWiaItem,
      );

  int DeviceCommand(
    int lFlags,
    Pointer<GUID> pCmdGUID,
    Pointer<Pointer<COMObject>> pIWiaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<GUID> pCmdGUID,
            Pointer<Pointer<COMObject>> pIWiaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<GUID> pCmdGUID,
            Pointer<Pointer<COMObject>> pIWiaItem,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pCmdGUID,
        pIWiaItem,
      );

  int GetRootItem(
    Pointer<Pointer<COMObject>> ppIWiaItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWiaItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWiaItem,
          )>()(
        ptr.ref.lpVtbl,
        ppIWiaItem,
      );

  int EnumDeviceCapabilities(
    int lFlags,
    Pointer<Pointer<COMObject>> ppIEnumWIA_DEV_CAPS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppIEnumWIA_DEV_CAPS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Pointer<COMObject>> ppIEnumWIA_DEV_CAPS,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        ppIEnumWIA_DEV_CAPS,
      );

  int DumpItemData(
    Pointer<Pointer<Utf16>> bstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrData,
          )>()(
        ptr.ref.lpVtbl,
        bstrData,
      );

  int DumpDrvItemData(
    Pointer<Pointer<Utf16>> bstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrData,
          )>()(
        ptr.ref.lpVtbl,
        bstrData,
      );

  int DumpTreeItemData(
    Pointer<Pointer<Utf16>> bstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrData,
          )>()(
        ptr.ref.lpVtbl,
        bstrData,
      );

  int Diagnostic(
    int ulSize,
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSize,
            Pointer<Uint8> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSize,
            Pointer<Uint8> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ulSize,
        pBuffer,
      );
}
