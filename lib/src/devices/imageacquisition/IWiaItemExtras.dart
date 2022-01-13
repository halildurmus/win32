// IWiaItemExtras.dart

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
const IID_IWiaItemExtras = '{6291EF2C-36EF-4532-876A-8E132593778D}';

/// {@category Interface}
/// {@category com}
class IWiaItemExtras extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWiaItemExtras(Pointer<COMObject> ptr) : super(ptr);

  int GetExtendedErrorInfo(
    Pointer<Pointer<Utf16>> bstrErrorText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrErrorText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrErrorText,
          )>()(
        ptr.ref.lpVtbl,
        bstrErrorText,
      );

  int Escape(
    int dwEscapeCode,
    Pointer<Uint8> lpInData,
    int cbInDataSize,
    Pointer<Uint8> pOutData,
    int dwOutDataSize,
    Pointer<Uint32> pdwActualDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEscapeCode,
            Pointer<Uint8> lpInData,
            Uint32 cbInDataSize,
            Pointer<Uint8> pOutData,
            Uint32 dwOutDataSize,
            Pointer<Uint32> pdwActualDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEscapeCode,
            Pointer<Uint8> lpInData,
            int cbInDataSize,
            Pointer<Uint8> pOutData,
            int dwOutDataSize,
            Pointer<Uint32> pdwActualDataSize,
          )>()(
        ptr.ref.lpVtbl,
        dwEscapeCode,
        lpInData,
        cbInDataSize,
        pOutData,
        dwOutDataSize,
        pdwActualDataSize,
      );

  int CancelPendingIO() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
