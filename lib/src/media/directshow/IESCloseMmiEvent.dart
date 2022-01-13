// IESCloseMmiEvent.dart

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

import '../../media/directshow/IESEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IESCloseMmiEvent = '{6B80E96F-55E2-45AA-B754-0C23C8E7D5C1}';

/// {@category Interface}
/// {@category com}
class IESCloseMmiEvent extends IESEvent {
  // vtable begins at 8, is 1 entries long.
  IESCloseMmiEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetDialogNumber(
    Pointer<Uint32> pDialogNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pDialogNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pDialogNumber,
          )>()(
        ptr.ref.lpVtbl,
        pDialogNumber,
      );
}
