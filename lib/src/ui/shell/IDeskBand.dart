// IDeskBand.dart

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

import '../../ui/shell/IDockingWindow.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDeskBand = '{EB0FE172-1A3A-11D0-89B3-00A0C90A90AC}';

/// {@category Interface}
/// {@category com}
class IDeskBand extends IDockingWindow {
  // vtable begins at 8, is 1 entries long.
  IDeskBand(Pointer<COMObject> ptr) : super(ptr);

  int GetBandInfo(
    int dwBandID,
    int dwViewMode,
    Pointer<DESKBANDINFO> pdbi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBandID,
            Uint32 dwViewMode,
            Pointer<DESKBANDINFO> pdbi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBandID,
            int dwViewMode,
            Pointer<DESKBANDINFO> pdbi,
          )>()(
        ptr.ref.lpVtbl,
        dwBandID,
        dwViewMode,
        pdbi,
      );
}
