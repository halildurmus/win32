// IEVRVideoStreamControl.dart

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
const IID_IEVRVideoStreamControl = '{D0CFE38B-93E7-4772-8957-0400C49A4485}';

/// {@category Interface}
/// {@category com}
class IEVRVideoStreamControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEVRVideoStreamControl(Pointer<COMObject> ptr) : super(ptr);

  int SetStreamActiveState(
    int fActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fActive,
          )>()(
        ptr.ref.lpVtbl,
        fActive,
      );

  int GetStreamActiveState(
    Pointer<Int32> lpfActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpfActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpfActive,
          )>()(
        ptr.ref.lpVtbl,
        lpfActive,
      );
}
