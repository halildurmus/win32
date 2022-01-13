// IBDA_AUX.dart

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
const IID_IBDA_AUX = '{7DEF4C09-6E66-4567-A819-F0E17F4A81AB}';

/// {@category Interface}
/// {@category com}
class IBDA_AUX extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBDA_AUX(Pointer<COMObject> ptr) : super(ptr);

  int QueryCapabilities(
    Pointer<Uint32> pdwNumAuxInputsBSTR,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumAuxInputsBSTR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumAuxInputsBSTR,
          )>()(
        ptr.ref.lpVtbl,
        pdwNumAuxInputsBSTR,
      );

  int EnumCapability(
    int dwIndex,
    Pointer<Uint32> dwInputID,
    Pointer<GUID> pConnectorType,
    Pointer<Uint32> ConnTypeNum,
    Pointer<Uint32> NumVideoStds,
    Pointer<Uint64> AnalogStds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Uint32> dwInputID,
            Pointer<GUID> pConnectorType,
            Pointer<Uint32> ConnTypeNum,
            Pointer<Uint32> NumVideoStds,
            Pointer<Uint64> AnalogStds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Uint32> dwInputID,
            Pointer<GUID> pConnectorType,
            Pointer<Uint32> ConnTypeNum,
            Pointer<Uint32> NumVideoStds,
            Pointer<Uint64> AnalogStds,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        dwInputID,
        pConnectorType,
        ConnTypeNum,
        NumVideoStds,
        AnalogStds,
      );
}
