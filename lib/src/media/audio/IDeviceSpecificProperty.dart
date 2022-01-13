// IDeviceSpecificProperty.dart

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
const IID_IDeviceSpecificProperty = '{3B22BCBF-2586-4AF0-8583-205D391B807C}';

/// {@category Interface}
/// {@category com}
class IDeviceSpecificProperty extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDeviceSpecificProperty(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<Uint16> pVType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pVType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pVType,
          )>()(
        ptr.ref.lpVtbl,
        pVType,
      );

  int GetValue(
    Pointer pvValue,
    Pointer<Uint32> pcbValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pvValue,
            Pointer<Uint32> pcbValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pvValue,
            Pointer<Uint32> pcbValue,
          )>()(
        ptr.ref.lpVtbl,
        pvValue,
        pcbValue,
      );

  int SetValue(
    Pointer pvValue,
    int cbValue,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pvValue,
            Uint32 cbValue,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pvValue,
            int cbValue,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        pvValue,
        cbValue,
        pguidEventContext,
      );

  int Get4BRange(
    Pointer<Int32> plMin,
    Pointer<Int32> plMax,
    Pointer<Int32> plStepping,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMin,
            Pointer<Int32> plMax,
            Pointer<Int32> plStepping,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMin,
            Pointer<Int32> plMax,
            Pointer<Int32> plStepping,
          )>()(
        ptr.ref.lpVtbl,
        plMin,
        plMax,
        plStepping,
      );
}
