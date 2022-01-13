// IPrintOemCommon.dart

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

/// @nodoc
const IID_IPrintOemCommon = '{7F42285E-91D5-11D1-8820-00C04FB961EC}';

/// {@category Interface}
/// {@category com}
class IPrintOemCommon extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPrintOemCommon(Pointer<COMObject> ptr) : super(ptr);

  int GetInfo(
    int dwMode,
    Pointer pBuffer,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMode,
            Pointer pBuffer,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMode,
            Pointer pBuffer,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        dwMode,
        pBuffer,
        cbSize,
        pcbNeeded,
      );

  int DevMode(
    int dwMode,
    Pointer<OEMDMPARAM> pOemDMParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMode,
            Pointer<OEMDMPARAM> pOemDMParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMode,
            Pointer<OEMDMPARAM> pOemDMParam,
          )>()(
        ptr.ref.lpVtbl,
        dwMode,
        pOemDMParam,
      );
}
