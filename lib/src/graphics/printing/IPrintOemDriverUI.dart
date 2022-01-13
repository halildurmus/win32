// IPrintOemDriverUI.dart

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

/// @nodoc
const IID_IPrintOemDriverUI = '{92B05D50-78BC-11D1-9480-00A0C90640B8}';

/// {@category Interface}
/// {@category com}
class IPrintOemDriverUI extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPrintOemDriverUI(Pointer<COMObject> ptr) : super(ptr);

  int DrvGetDriverSetting(
    Pointer pci,
    Pointer<Utf8> Feature,
    Pointer pOutput,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
    Pointer<Uint32> pdwOptionsReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pci,
            Pointer<Utf8> Feature,
            Pointer pOutput,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
            Pointer<Uint32> pdwOptionsReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pci,
            Pointer<Utf8> Feature,
            Pointer pOutput,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
            Pointer<Uint32> pdwOptionsReturned,
          )>()(
        ptr.ref.lpVtbl,
        pci,
        Feature,
        pOutput,
        cbSize,
        pcbNeeded,
        pdwOptionsReturned,
      );

  int DrvUpgradeRegistrySetting(
    int hPrinter,
    Pointer<Utf8> pFeature,
    Pointer<Utf8> pOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Pointer<Utf8> pFeature,
            Pointer<Utf8> pOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            Pointer<Utf8> pFeature,
            Pointer<Utf8> pOption,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        pFeature,
        pOption,
      );

  int DrvUpdateUISetting(
    Pointer pci,
    Pointer pOptItem,
    int dwPreviousSelection,
    int dwMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pci,
            Pointer pOptItem,
            Uint32 dwPreviousSelection,
            Uint32 dwMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pci,
            Pointer pOptItem,
            int dwPreviousSelection,
            int dwMode,
          )>()(
        ptr.ref.lpVtbl,
        pci,
        pOptItem,
        dwPreviousSelection,
        dwMode,
      );
}
