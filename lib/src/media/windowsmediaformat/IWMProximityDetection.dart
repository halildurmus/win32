// IWMProximityDetection.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../media/windowsmediaformat/IWMStatusCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMProximityDetection = '{6A9FD8EE-B651-4BF0-B849-7D4ECE79A2B1}';

/// {@category Interface}
/// {@category com}
class IWMProximityDetection extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMProximityDetection(Pointer<COMObject> ptr) : super(ptr);

  int StartDetection(
    Pointer<Uint8> pbRegistrationMsg,
    int cbRegistrationMsg,
    Pointer<Uint8> pbLocalAddress,
    int cbLocalAddress,
    int dwExtraPortsAllowed,
    Pointer<Pointer<COMObject>> ppRegistrationResponseMsg,
    Pointer<COMObject> pCallback,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbRegistrationMsg,
            Uint32 cbRegistrationMsg,
            Pointer<Uint8> pbLocalAddress,
            Uint32 cbLocalAddress,
            Uint32 dwExtraPortsAllowed,
            Pointer<Pointer<COMObject>> ppRegistrationResponseMsg,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbRegistrationMsg,
            int cbRegistrationMsg,
            Pointer<Uint8> pbLocalAddress,
            int cbLocalAddress,
            int dwExtraPortsAllowed,
            Pointer<Pointer<COMObject>> ppRegistrationResponseMsg,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        pbRegistrationMsg,
        cbRegistrationMsg,
        pbLocalAddress,
        cbLocalAddress,
        dwExtraPortsAllowed,
        ppRegistrationResponseMsg,
        pCallback,
        pvContext,
      );
}
