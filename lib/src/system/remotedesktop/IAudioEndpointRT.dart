// IAudioEndpointRT.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioEndpointRT = '{DFD2005F-A6E5-4D39-A265-939ADA9FBB4D}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointRT extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAudioEndpointRT(Pointer<COMObject> ptr) : super(ptr);

  void GetCurrentPadding(
    Pointer<Int64> pPadding,
    Pointer<AE_CURRENT_POSITION> pAeCurrentPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Int64> pPadding,
            Pointer<AE_CURRENT_POSITION> pAeCurrentPosition,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Int64> pPadding,
            Pointer<AE_CURRENT_POSITION> pAeCurrentPosition,
          )>()(
        ptr.ref.lpVtbl,
        pPadding,
        pAeCurrentPosition,
      );

  void ProcessingComplete() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetPinInactive() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetPinActive() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
