// ICreatingProcess.dart

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
import '../../ui/shell/ICreateProcessInputs.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICreatingProcess = '{C2B937A9-3110-4398-8A56-F34C6342D244}';

/// {@category Interface}
/// {@category com}
class ICreatingProcess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICreatingProcess(Pointer<COMObject> ptr) : super(ptr);

  int OnCreating(
    Pointer<COMObject> pcpi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpi,
          )>()(
        ptr.ref.lpVtbl,
        pcpi,
      );
}
