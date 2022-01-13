// IPrintCoreHelperUni2.dart

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

import '../../graphics/printing/IPrintCoreHelperUni.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintCoreHelperUni2 = '{6C8AFDFC-EAD0-4D2D-8071-9BF0175A6C3A}';

/// {@category Interface}
/// {@category com}
class IPrintCoreHelperUni2 extends IPrintCoreHelperUni {
  // vtable begins at 14, is 1 entries long.
  IPrintCoreHelperUni2(Pointer<COMObject> ptr) : super(ptr);

  int GetNamedCommand(
    Pointer<DEVMODE> pDevmode,
    int cbSize,
    Pointer<Utf16> pszCommandName,
    Pointer<Pointer<Uint8>> ppCommandBytes,
    Pointer<Uint32> pcbCommandSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            Uint32 cbSize,
            Pointer<Utf16> pszCommandName,
            Pointer<Pointer<Uint8>> ppCommandBytes,
            Pointer<Uint32> pcbCommandSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            int cbSize,
            Pointer<Utf16> pszCommandName,
            Pointer<Pointer<Uint8>> ppCommandBytes,
            Pointer<Uint32> pcbCommandSize,
          )>()(
        ptr.ref.lpVtbl,
        pDevmode,
        cbSize,
        pszCommandName,
        ppCommandBytes,
        pcbCommandSize,
      );
}
