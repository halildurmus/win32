// IUPnPDeviceControl.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IDispatch.dart';

/// @nodoc
const IID_IUPnPDeviceControl = '{204810BA-73B2-11D4-BF42-00B0D0118B56}';

/// {@category Interface}
/// {@category com}
class IUPnPDeviceControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUPnPDeviceControl(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> bstrXMLDesc,
    Pointer<Utf16> bstrDeviceIdentifier,
    Pointer<Utf16> bstrInitString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXMLDesc,
            Pointer<Utf16> bstrDeviceIdentifier,
            Pointer<Utf16> bstrInitString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXMLDesc,
            Pointer<Utf16> bstrDeviceIdentifier,
            Pointer<Utf16> bstrInitString,
          )>()(
        ptr.ref.lpVtbl,
        bstrXMLDesc,
        bstrDeviceIdentifier,
        bstrInitString,
      );

  int GetServiceObject(
    Pointer<Utf16> bstrUDN,
    Pointer<Utf16> bstrServiceId,
    Pointer<Pointer<COMObject>> ppdispService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Utf16> bstrServiceId,
            Pointer<Pointer<COMObject>> ppdispService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Utf16> bstrServiceId,
            Pointer<Pointer<COMObject>> ppdispService,
          )>()(
        ptr.ref.lpVtbl,
        bstrUDN,
        bstrServiceId,
        ppdispService,
      );
}
