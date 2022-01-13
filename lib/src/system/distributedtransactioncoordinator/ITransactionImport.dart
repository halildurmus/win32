// ITransactionImport.dart

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
const IID_ITransactionImport = '{E1CF9B5A-8745-11CE-A9BA-00AA006C3706}';

/// {@category Interface}
/// {@category com}
class ITransactionImport extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITransactionImport(Pointer<COMObject> ptr) : super(ptr);

  int Import(
    int cbTransactionCookie,
    Pointer<Uint8> rgbTransactionCookie,
    Pointer<GUID> piid,
    Pointer<Pointer> ppvTransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbTransactionCookie,
            Pointer<Uint8> rgbTransactionCookie,
            Pointer<GUID> piid,
            Pointer<Pointer> ppvTransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbTransactionCookie,
            Pointer<Uint8> rgbTransactionCookie,
            Pointer<GUID> piid,
            Pointer<Pointer> ppvTransaction,
          )>()(
        ptr.ref.lpVtbl,
        cbTransactionCookie,
        rgbTransactionCookie,
        piid,
        ppvTransaction,
      );
}
