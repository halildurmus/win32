// IWiaItem2.dart

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
import '../../devices/imageacquisition/IWiaItem2.dart';
import '../../devices/imageacquisition/IEnumWiaItem2.dart';
import '../../devices/imageacquisition/IEnumWIA_DEV_CAPS.dart';
import '../../devices/imageacquisition/IWiaPreview.dart';

/// @nodoc
const IID_IWiaItem2 = '{6CBA0075-1287-407D-9B77-CF0E030435CC}';

/// {@category Interface}
/// {@category com}
class IWiaItem2 extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IWiaItem2(Pointer<COMObject> ptr) : super(ptr);

  int CreateChildItem(
    int lItemFlags,
    int lCreationFlags,
    Pointer<Utf16> bstrItemName,
    Pointer<Pointer<COMObject>> ppIWiaItem2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lItemFlags,
            Int32 lCreationFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lItemFlags,
            int lCreationFlags,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>()(
        ptr.ref.lpVtbl,
        lItemFlags,
        lCreationFlags,
        bstrItemName,
        ppIWiaItem2,
      );

  int DeleteItem(
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
    Pointer<GUID> pCategoryGUID,
    Pointer<Pointer<COMObject>> ppIEnumWiaItem2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCategoryGUID,
            Pointer<Pointer<COMObject>> ppIEnumWiaItem2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCategoryGUID,
            Pointer<Pointer<COMObject>> ppIEnumWiaItem2,
          )>()(
        ptr.ref.lpVtbl,
        pCategoryGUID,
        ppIEnumWiaItem2,
      );

  int FindItemByName(
    int lFlags,
    Pointer<Utf16> bstrFullItemName,
    Pointer<Pointer<COMObject>> ppIWiaItem2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrFullItemName,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrFullItemName,
        ppIWiaItem2,
      );

  int GetItemCategory(
    Pointer<GUID> pItemCategoryGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pItemCategoryGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pItemCategoryGUID,
          )>()(
        ptr.ref.lpVtbl,
        pItemCategoryGUID,
      );

  int GetItemType(
    Pointer<Int32> pItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int DeviceDlg(
    int lFlags,
    int hwndParent,
    Pointer<Utf16> bstrFolderName,
    Pointer<Utf16> bstrFilename,
    Pointer<Int32> plNumFiles,
    Pointer<Pointer<Pointer<Utf16>>> ppbstrFilePaths,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            IntPtr hwndParent,
            Pointer<Utf16> bstrFolderName,
            Pointer<Utf16> bstrFilename,
            Pointer<Int32> plNumFiles,
            Pointer<Pointer<Pointer<Utf16>>> ppbstrFilePaths,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            int hwndParent,
            Pointer<Utf16> bstrFolderName,
            Pointer<Utf16> bstrFilename,
            Pointer<Int32> plNumFiles,
            Pointer<Pointer<Pointer<Utf16>>> ppbstrFilePaths,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        hwndParent,
        bstrFolderName,
        bstrFilename,
        plNumFiles,
        ppbstrFilePaths,
        ppItem,
      );

  int DeviceCommand(
    int lFlags,
    Pointer<GUID> pCmdGUID,
    Pointer<Pointer<COMObject>> ppIWiaItem2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<GUID> pCmdGUID,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<GUID> pCmdGUID,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pCmdGUID,
        ppIWiaItem2,
      );

  int EnumDeviceCapabilities(
    int lFlags,
    Pointer<Pointer<COMObject>> ppIEnumWIA_DEV_CAPS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int CheckExtension(
    int lFlags,
    Pointer<Utf16> bstrName,
    Pointer<GUID> riidExtensionInterface,
    Pointer<Int32> pbExtensionExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrName,
            Pointer<GUID> riidExtensionInterface,
            Pointer<Int32> pbExtensionExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrName,
            Pointer<GUID> riidExtensionInterface,
            Pointer<Int32> pbExtensionExists,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrName,
        riidExtensionInterface,
        pbExtensionExists,
      );

  int GetExtension(
    int lFlags,
    Pointer<Utf16> bstrName,
    Pointer<GUID> riidExtensionInterface,
    Pointer<Pointer> ppOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> bstrName,
            Pointer<GUID> riidExtensionInterface,
            Pointer<Pointer> ppOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> bstrName,
            Pointer<GUID> riidExtensionInterface,
            Pointer<Pointer> ppOut,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        bstrName,
        riidExtensionInterface,
        ppOut,
      );

  int GetParentItem(
    Pointer<Pointer<COMObject>> ppIWiaItem2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>()(
        ptr.ref.lpVtbl,
        ppIWiaItem2,
      );

  int GetRootItem(
    Pointer<Pointer<COMObject>> ppIWiaItem2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
          )>()(
        ptr.ref.lpVtbl,
        ppIWiaItem2,
      );

  int GetPreviewComponent(
    int lFlags,
    Pointer<Pointer<COMObject>> ppWiaPreview,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppWiaPreview,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Pointer<COMObject>> ppWiaPreview,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        ppWiaPreview,
      );

  int EnumRegisterEventInfo(
    int lFlags,
    Pointer<GUID> pEventGUID,
    Pointer<Pointer<COMObject>> ppIEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int Diagnostic(
    int ulSize,
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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
