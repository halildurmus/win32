// IEnumItemIds.dart

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
const IID_IEnumItemIds = '{43AA3F61-4B2E-4B60-83DF-B110D3E148F1}';

/// {@category Interface}
/// {@category com}
class IEnumItemIds extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IEnumItemIds(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    Pointer<Uint8> pbItemId,
    Pointer<Uint32> pcbItemIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbItemIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbItemIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pcbItemIdSize,
      );
}
