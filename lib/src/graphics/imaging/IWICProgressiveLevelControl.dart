// IWICProgressiveLevelControl.dart

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
const IID_IWICProgressiveLevelControl =
    '{DAAC296F-7AA5-4DBF-8D15-225C5976F891}';

/// {@category Interface}
/// {@category com}
class IWICProgressiveLevelControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWICProgressiveLevelControl(Pointer<COMObject> ptr) : super(ptr);

  int GetLevelCount(
    Pointer<Uint32> pcLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcLevels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcLevels,
          )>()(
        ptr.ref.lpVtbl,
        pcLevels,
      );

  int GetCurrentLevel(
    Pointer<Uint32> pnLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnLevel,
          )>()(
        ptr.ref.lpVtbl,
        pnLevel,
      );

  int SetCurrentLevel(
    int nLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nLevel,
          )>()(
        ptr.ref.lpVtbl,
        nLevel,
      );
}
