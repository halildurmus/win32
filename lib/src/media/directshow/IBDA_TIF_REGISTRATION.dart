// IBDA_TIF_REGISTRATION.dart

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
import '../../media/directshow/IPin.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_TIF_REGISTRATION = '{DFEF4A68-EE61-415F-9CCB-CD95F2F98A3A}';

/// {@category Interface}
/// {@category com}
class IBDA_TIF_REGISTRATION extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBDA_TIF_REGISTRATION(Pointer<COMObject> ptr) : super(ptr);

  int RegisterTIFEx(
    Pointer<COMObject> pTIFInputPin,
    Pointer<Uint32> ppvRegistrationContext,
    Pointer<Pointer<COMObject>> ppMpeg2DataControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTIFInputPin,
            Pointer<Uint32> ppvRegistrationContext,
            Pointer<Pointer<COMObject>> ppMpeg2DataControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTIFInputPin,
            Pointer<Uint32> ppvRegistrationContext,
            Pointer<Pointer<COMObject>> ppMpeg2DataControl,
          )>()(
        ptr.ref.lpVtbl,
        pTIFInputPin,
        ppvRegistrationContext,
        ppMpeg2DataControl,
      );

  int UnregisterTIF(
    int pvRegistrationContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pvRegistrationContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pvRegistrationContext,
          )>()(
        ptr.ref.lpVtbl,
        pvRegistrationContext,
      );
}
