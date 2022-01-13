// IPrintTicketProvider.dart

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
import '../../graphics/printing/structs.g.dart';
import '../../data/xml/msxml/IXMLDOMDocument2.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IPrintTicketProvider = '{BB5116DB-0A23-4C3A-A6B6-89E5558DFB5D}';

/// {@category Interface}
/// {@category com}
class IPrintTicketProvider extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IPrintTicketProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedVersions(
    int hPrinter,
    Pointer<Pointer<Int32>> ppVersions,
    Pointer<Int32> cVersions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Pointer<Pointer<Int32>> ppVersions,
            Pointer<Int32> cVersions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            Pointer<Pointer<Int32>> ppVersions,
            Pointer<Int32> cVersions,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        ppVersions,
        cVersions,
      );

  int BindPrinter(
    int hPrinter,
    int version,
    Pointer<Int32> pOptions,
    Pointer<Uint32> pDevModeFlags,
    Pointer<Int32> cNamespaces,
    Pointer<Pointer<Pointer<Utf16>>> ppNamespaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Int32 version,
            Pointer<Int32> pOptions,
            Pointer<Uint32> pDevModeFlags,
            Pointer<Int32> cNamespaces,
            Pointer<Pointer<Pointer<Utf16>>> ppNamespaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            int version,
            Pointer<Int32> pOptions,
            Pointer<Uint32> pDevModeFlags,
            Pointer<Int32> cNamespaces,
            Pointer<Pointer<Pointer<Utf16>>> ppNamespaces,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        version,
        pOptions,
        pDevModeFlags,
        cNamespaces,
        ppNamespaces,
      );

  int QueryDeviceNamespace(
    Pointer<Pointer<Utf16>> pDefaultNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDefaultNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDefaultNamespace,
          )>()(
        ptr.ref.lpVtbl,
        pDefaultNamespace,
      );

  int ConvertPrintTicketToDevMode(
    Pointer<COMObject> pPrintTicket,
    int cbDevmodeIn,
    Pointer<DEVMODE> pDevmodeIn,
    Pointer<Uint32> pcbDevmodeOut,
    Pointer<Pointer<DEVMODE>> ppDevmodeOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPrintTicket,
            Uint32 cbDevmodeIn,
            Pointer<DEVMODE> pDevmodeIn,
            Pointer<Uint32> pcbDevmodeOut,
            Pointer<Pointer<DEVMODE>> ppDevmodeOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPrintTicket,
            int cbDevmodeIn,
            Pointer<DEVMODE> pDevmodeIn,
            Pointer<Uint32> pcbDevmodeOut,
            Pointer<Pointer<DEVMODE>> ppDevmodeOut,
          )>()(
        ptr.ref.lpVtbl,
        pPrintTicket,
        cbDevmodeIn,
        pDevmodeIn,
        pcbDevmodeOut,
        ppDevmodeOut,
      );

  int ConvertDevModeToPrintTicket(
    int cbDevmode,
    Pointer<DEVMODE> pDevmode,
    Pointer<COMObject> pPrintTicket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbDevmode,
            Pointer<DEVMODE> pDevmode,
            Pointer<COMObject> pPrintTicket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbDevmode,
            Pointer<DEVMODE> pDevmode,
            Pointer<COMObject> pPrintTicket,
          )>()(
        ptr.ref.lpVtbl,
        cbDevmode,
        pDevmode,
        pPrintTicket,
      );

  int GetPrintCapabilities(
    Pointer<COMObject> pPrintTicket,
    Pointer<Pointer<COMObject>> ppCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPrintTicket,
            Pointer<Pointer<COMObject>> ppCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPrintTicket,
            Pointer<Pointer<COMObject>> ppCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pPrintTicket,
        ppCapabilities,
      );

  int ValidatePrintTicket(
    Pointer<COMObject> pBaseTicket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBaseTicket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBaseTicket,
          )>()(
        ptr.ref.lpVtbl,
        pBaseTicket,
      );
}
