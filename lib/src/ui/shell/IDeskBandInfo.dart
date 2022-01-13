// IDeskBandInfo.dart

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
const IID_IDeskBandInfo = '{77E425FC-CBF9-4307-BA6A-BB5727745661}';

/// {@category Interface}
/// {@category com}
class IDeskBandInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDeskBandInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetDefaultBandWidth(
    int dwBandID,
    int dwViewMode,
    Pointer<Int32> pnWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBandID,
            Uint32 dwViewMode,
            Pointer<Int32> pnWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBandID,
            int dwViewMode,
            Pointer<Int32> pnWidth,
          )>()(
        ptr.ref.lpVtbl,
        dwBandID,
        dwViewMode,
        pnWidth,
      );
}
