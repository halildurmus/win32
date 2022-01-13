// ITfContextOwnerCompositionServices.dart

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

import '../../ui/textservices/ITfContextComposition.dart';
import '../../ui/textservices/ITfCompositionView.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfContextOwnerCompositionServices =
    '{86462810-593B-4916-9764-19C08E9CE110}';

/// {@category Interface}
/// {@category com}
class ITfContextOwnerCompositionServices extends ITfContextComposition {
  // vtable begins at 7, is 1 entries long.
  ITfContextOwnerCompositionServices(Pointer<COMObject> ptr) : super(ptr);

  int TerminateComposition(
    Pointer<COMObject> pComposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pComposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pComposition,
          )>()(
        ptr.ref.lpVtbl,
        pComposition,
      );
}
