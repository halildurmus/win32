// ISyncMergeTombstoneChange.dart

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
const IID_ISyncMergeTombstoneChange = '{6EC62597-0903-484C-AD61-36D6E938F47B}';

/// {@category Interface}
/// {@category com}
class ISyncMergeTombstoneChange extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncMergeTombstoneChange(Pointer<COMObject> ptr) : super(ptr);

  int GetWinnerItemId(
    Pointer<Uint8> pbWinnerItemId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbWinnerItemId,
        pcbIdSize,
      );
}
