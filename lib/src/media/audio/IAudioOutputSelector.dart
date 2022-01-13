// IAudioOutputSelector.dart

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
const IID_IAudioOutputSelector = '{BB515F69-94A7-429E-8B9C-271B3F11A3AB}';

/// {@category Interface}
/// {@category com}
class IAudioOutputSelector extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioOutputSelector(Pointer<COMObject> ptr) : super(ptr);

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
