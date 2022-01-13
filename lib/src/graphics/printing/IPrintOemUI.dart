// IPrintOemUI.dart

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

import '../../graphics/printing/IPrintOemCommon.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IPrintOemUI = '{C6A7A9D0-774C-11D1-947F-00A0C90640B8}';

/// {@category Interface}
/// {@category com}
class IPrintOemUI extends IPrintOemCommon {
  // vtable begins at 5, is 12 entries long.
  IPrintOemUI(Pointer<COMObject> ptr) : super(ptr);

  int PublishDriverInterface(
    Pointer<COMObject> pIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        pIUnknown,
      );

  int CommonUIProp(
    int dwMode,
    Pointer<OEMCUIPPARAM> pOemCUIPParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMode,
            Pointer<OEMCUIPPARAM> pOemCUIPParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMode,
            Pointer<OEMCUIPPARAM> pOemCUIPParam,
          )>()(
        ptr.ref.lpVtbl,
        dwMode,
        pOemCUIPParam,
      );

  int DocumentPropertySheets(
    Pointer<PROPSHEETUI_INFO> pPSUIInfo,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPSHEETUI_INFO> pPSUIInfo,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPSHEETUI_INFO> pPSUIInfo,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        pPSUIInfo,
        lParam,
      );

  int DevicePropertySheets(
    Pointer<PROPSHEETUI_INFO> pPSUIInfo,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPSHEETUI_INFO> pPSUIInfo,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPSHEETUI_INFO> pPSUIInfo,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        pPSUIInfo,
        lParam,
      );

  int DevQueryPrintEx(
    Pointer<OEMUIOBJ> poemuiobj,
    Pointer<DEVQUERYPRINT_INFO> pDQPInfo,
    Pointer<DEVMODE> pPublicDM,
    Pointer pOEMDM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Pointer<DEVQUERYPRINT_INFO> pDQPInfo,
            Pointer<DEVMODE> pPublicDM,
            Pointer pOEMDM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Pointer<DEVQUERYPRINT_INFO> pDQPInfo,
            Pointer<DEVMODE> pPublicDM,
            Pointer pOEMDM,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        pDQPInfo,
        pPublicDM,
        pOEMDM,
      );

  int DeviceCapabilitiesA(
    Pointer<OEMUIOBJ> poemuiobj,
    int hPrinter,
    Pointer<Utf16> pDeviceName,
    int wCapability,
    Pointer pOutput,
    Pointer<DEVMODE> pPublicDM,
    Pointer pOEMDM,
    int dwOld,
    Pointer<Uint32> dwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            IntPtr hPrinter,
            Pointer<Utf16> pDeviceName,
            Uint16 wCapability,
            Pointer pOutput,
            Pointer<DEVMODE> pPublicDM,
            Pointer pOEMDM,
            Uint32 dwOld,
            Pointer<Uint32> dwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int hPrinter,
            Pointer<Utf16> pDeviceName,
            int wCapability,
            Pointer pOutput,
            Pointer<DEVMODE> pPublicDM,
            Pointer pOEMDM,
            int dwOld,
            Pointer<Uint32> dwResult,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        hPrinter,
        pDeviceName,
        wCapability,
        pOutput,
        pPublicDM,
        pOEMDM,
        dwOld,
        dwResult,
      );

  int UpgradePrinter(
    int dwLevel,
    Pointer<Uint8> pDriverUpgradeInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwLevel,
            Pointer<Uint8> pDriverUpgradeInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLevel,
            Pointer<Uint8> pDriverUpgradeInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwLevel,
        pDriverUpgradeInfo,
      );

  int PrinterEvent(
    Pointer<Utf16> pPrinterName,
    int iDriverEvent,
    int dwFlags,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pPrinterName,
            Int32 iDriverEvent,
            Uint32 dwFlags,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pPrinterName,
            int iDriverEvent,
            int dwFlags,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        pPrinterName,
        iDriverEvent,
        dwFlags,
        lParam,
      );

  int DriverEvent(
    int dwDriverEvent,
    int dwLevel,
    Pointer<Uint8> pDriverInfo,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDriverEvent,
            Uint32 dwLevel,
            Pointer<Uint8> pDriverInfo,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDriverEvent,
            int dwLevel,
            Pointer<Uint8> pDriverInfo,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        dwDriverEvent,
        dwLevel,
        pDriverInfo,
        lParam,
      );

  int QueryColorProfile(
    int hPrinter,
    Pointer<OEMUIOBJ> poemuiobj,
    Pointer<DEVMODE> pPublicDM,
    Pointer pOEMDM,
    int ulQueryMode,
    Pointer pvProfileData,
    Pointer<Uint32> pcbProfileData,
    Pointer<Uint32> pflProfileData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Pointer<OEMUIOBJ> poemuiobj,
            Pointer<DEVMODE> pPublicDM,
            Pointer pOEMDM,
            Uint32 ulQueryMode,
            Pointer pvProfileData,
            Pointer<Uint32> pcbProfileData,
            Pointer<Uint32> pflProfileData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            Pointer<OEMUIOBJ> poemuiobj,
            Pointer<DEVMODE> pPublicDM,
            Pointer pOEMDM,
            int ulQueryMode,
            Pointer pvProfileData,
            Pointer<Uint32> pcbProfileData,
            Pointer<Uint32> pflProfileData,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        poemuiobj,
        pPublicDM,
        pOEMDM,
        ulQueryMode,
        pvProfileData,
        pcbProfileData,
        pflProfileData,
      );

  int FontInstallerDlgProc(
    int hWnd,
    int usMsg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Uint32 usMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int usMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        usMsg,
        wParam,
        lParam,
      );

  int UpdateExternalFonts(
    int hPrinter,
    int hHeap,
    Pointer<Utf16> pwstrCartridges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            IntPtr hHeap,
            Pointer<Utf16> pwstrCartridges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            int hHeap,
            Pointer<Utf16> pwstrCartridges,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        hHeap,
        pwstrCartridges,
      );
}
