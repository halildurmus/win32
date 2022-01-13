// IPrintTicketProvider2.dart

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

import '../../graphics/printing/IPrintTicketProvider.dart';
import '../../data/xml/msxml/IXMLDOMDocument2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintTicketProvider2 = '{B8A70AB2-3DFC-4FEC-A074-511B13C651CB}';

/// {@category Interface}
/// {@category com}
class IPrintTicketProvider2 extends IPrintTicketProvider {
  // vtable begins at 10, is 2 entries long.
  IPrintTicketProvider2(Pointer<COMObject> ptr) : super(ptr);

  int GetPrintDeviceCapabilities(
    Pointer<COMObject> pPrintTicket,
    Pointer<Pointer<COMObject>> ppDeviceCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPrintTicket,
            Pointer<Pointer<COMObject>> ppDeviceCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPrintTicket,
            Pointer<Pointer<COMObject>> ppDeviceCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pPrintTicket,
        ppDeviceCapabilities,
      );

  int GetPrintDeviceResources(
    Pointer<Utf16> pszLocaleName,
    Pointer<COMObject> pPrintTicket,
    Pointer<Pointer<COMObject>> ppDeviceResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszLocaleName,
            Pointer<COMObject> pPrintTicket,
            Pointer<Pointer<COMObject>> ppDeviceResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszLocaleName,
            Pointer<COMObject> pPrintTicket,
            Pointer<Pointer<COMObject>> ppDeviceResources,
          )>()(
        ptr.ref.lpVtbl,
        pszLocaleName,
        pPrintTicket,
        ppDeviceResources,
      );
}
