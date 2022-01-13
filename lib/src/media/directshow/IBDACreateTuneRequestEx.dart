// IBDACreateTuneRequestEx.dart

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
import '../../media/directshow/ITuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDACreateTuneRequestEx = '{C0A4A1D4-2B3C-491A-BA22-499FBADD4D12}';

/// {@category Interface}
/// {@category com}
class IBDACreateTuneRequestEx extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBDACreateTuneRequestEx(Pointer<COMObject> ptr) : super(ptr);

  int CreateTuneRequestEx(
    Pointer<GUID> TuneRequestIID,
    Pointer<Pointer<COMObject>> TuneRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> TuneRequestIID,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> TuneRequestIID,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>()(
        ptr.ref.lpVtbl,
        TuneRequestIID,
        TuneRequest,
      );
}
