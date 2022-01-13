// IDvbSiParser2.dart

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

import '../../media/directshow/IDvbSiParser.dart';
import '../../media/directshow/IDVB_EIT2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDvbSiParser2 = '{0AC5525F-F816-42F4-93BA-4C0F32F46E54}';

/// {@category Interface}
/// {@category com}
class IDvbSiParser2 extends IDvbSiParser {
  // vtable begins at 18, is 1 entries long.
  IDvbSiParser2(Pointer<COMObject> ptr) : super(ptr);

  int GetEIT2(
    int tableId,
    Pointer<Uint16> pwServiceId,
    Pointer<Uint8> pbSegment,
    Pointer<Pointer<COMObject>> ppEIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 tableId,
            Pointer<Uint16> pwServiceId,
            Pointer<Uint8> pbSegment,
            Pointer<Pointer<COMObject>> ppEIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tableId,
            Pointer<Uint16> pwServiceId,
            Pointer<Uint8> pbSegment,
            Pointer<Pointer<COMObject>> ppEIT,
          )>()(
        ptr.ref.lpVtbl,
        tableId,
        pwServiceId,
        pbSegment,
        ppEIT,
      );
}
