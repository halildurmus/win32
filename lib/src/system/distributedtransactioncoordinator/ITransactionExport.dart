// ITransactionExport.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionExport = '{0141FDA5-8FC0-11CE-BD18-204C4F4F5020}';

/// {@category Interface}
/// {@category com}
class ITransactionExport extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransactionExport(Pointer<COMObject> ptr) : super(ptr);

  int Export(
    Pointer<COMObject> punkTransaction,
    Pointer<Uint32> pcbTransactionCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkTransaction,
            Pointer<Uint32> pcbTransactionCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkTransaction,
            Pointer<Uint32> pcbTransactionCookie,
          )>()(
        ptr.ref.lpVtbl,
        punkTransaction,
        pcbTransactionCookie,
      );

  int GetTransactionCookie(
    Pointer<COMObject> punkTransaction,
    int cbTransactionCookie,
    Pointer<Uint8> rgbTransactionCookie,
    Pointer<Uint32> pcbUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkTransaction,
            Uint32 cbTransactionCookie,
            Pointer<Uint8> rgbTransactionCookie,
            Pointer<Uint32> pcbUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkTransaction,
            int cbTransactionCookie,
            Pointer<Uint8> rgbTransactionCookie,
            Pointer<Uint32> pcbUsed,
          )>()(
        ptr.ref.lpVtbl,
        punkTransaction,
        cbTransactionCookie,
        rgbTransactionCookie,
        pcbUsed,
      );
}
