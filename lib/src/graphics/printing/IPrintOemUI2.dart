// IPrintOemUI2.dart

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

import '../../graphics/printing/IPrintOemUI.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IPrintOemUI2 = '{292515F9-B54B-489B-9275-BAB56821395E}';

/// {@category Interface}
/// {@category com}
class IPrintOemUI2 extends IPrintOemUI {
  // vtable begins at 17, is 3 entries long.
  IPrintOemUI2(Pointer<COMObject> ptr) : super(ptr);

  int QueryJobAttributes(
    int hPrinter,
    Pointer<DEVMODE> pDevmode,
    int dwLevel,
    Pointer<Uint8> lpAttributeInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Pointer<DEVMODE> pDevmode,
            Uint32 dwLevel,
            Pointer<Uint8> lpAttributeInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            Pointer<DEVMODE> pDevmode,
            int dwLevel,
            Pointer<Uint8> lpAttributeInfo,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        pDevmode,
        dwLevel,
        lpAttributeInfo,
      );

  int HideStandardUI(
    int dwMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMode,
          )>()(
        ptr.ref.lpVtbl,
        dwMode,
      );

  int DocumentEvent(
    int hPrinter,
    int hdc,
    int iEsc,
    int cbIn,
    Pointer pvIn,
    int cbOut,
    Pointer pvOut,
    Pointer<Int32> piResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            IntPtr hdc,
            Int32 iEsc,
            Uint32 cbIn,
            Pointer pvIn,
            Uint32 cbOut,
            Pointer pvOut,
            Pointer<Int32> piResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            int hdc,
            int iEsc,
            int cbIn,
            Pointer pvIn,
            int cbOut,
            Pointer pvOut,
            Pointer<Int32> piResult,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        hdc,
        iEsc,
        cbIn,
        pvIn,
        cbOut,
        pvOut,
        piResult,
      );
}
