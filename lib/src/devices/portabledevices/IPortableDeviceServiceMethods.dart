// IPortableDeviceServiceMethods.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../foundation/structs.g.dart';
import '../../devices/portabledevices/IPortableDeviceServiceMethodCallback.dart';

/// @nodoc
const IID_IPortableDeviceServiceMethods =
    '{E20333C9-FD34-412D-A381-CC6F2D820DF7}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceServiceMethods extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPortableDeviceServiceMethods(Pointer<COMObject> ptr) : super(ptr);

  int Invoke(
    Pointer<GUID> Method,
    Pointer<COMObject> pParameters,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<COMObject> pParameters,
            Pointer<Pointer<COMObject>> ppResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<COMObject> pParameters,
            Pointer<Pointer<COMObject>> ppResults,
          )>()(
        ptr.ref.lpVtbl,
        Method,
        pParameters,
        ppResults,
      );

  int InvokeAsync(
    Pointer<GUID> Method,
    Pointer<COMObject> pParameters,
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<COMObject> pParameters,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Method,
            Pointer<COMObject> pParameters,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        Method,
        pParameters,
        pCallback,
      );

  int Cancel(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );
}
