// IAudioInputSelector.dart

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
const IID_IAudioInputSelector = '{4F03DC02-5E6E-4653-8F72-A030C123D598}';

/// {@category Interface}
/// {@category com}
class IAudioInputSelector extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioInputSelector(Pointer<COMObject> ptr) : super(ptr);

  int GetSelection(
    Pointer<Uint32> pnIdSelected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnIdSelected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnIdSelected,
          )>()(
        ptr.ref.lpVtbl,
        pnIdSelected,
      );

  int SetSelection(
    int nIdSelect,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIdSelect,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIdSelect,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        nIdSelect,
        pguidEventContext,
      );
}
