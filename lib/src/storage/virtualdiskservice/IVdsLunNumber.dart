// IVdsLunNumber.dart

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
const IID_IVdsLunNumber = '{D3F95E46-54B3-41F9-B678-0F1871443A08}';

/// {@category Interface}
/// {@category com}
class IVdsLunNumber extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVdsLunNumber(Pointer<COMObject> ptr) : super(ptr);

  int GetLunNumber(
    Pointer<Uint32> pulLunNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulLunNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulLunNumber,
          )>()(
        ptr.ref.lpVtbl,
        pulLunNumber,
      );
}
