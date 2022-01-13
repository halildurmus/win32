// IActivateAudioInterfaceAsyncOperation.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IActivateAudioInterfaceAsyncOperation =
    '{72A22D78-CDE4-431D-B8CC-843A71199B6D}';

/// {@category Interface}
/// {@category com}
class IActivateAudioInterfaceAsyncOperation extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActivateAudioInterfaceAsyncOperation(Pointer<COMObject> ptr) : super(ptr);

  int GetActivateResult(
    Pointer<Int32> activateResult,
    Pointer<Pointer<COMObject>> activatedInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> activateResult,
            Pointer<Pointer<COMObject>> activatedInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> activateResult,
            Pointer<Pointer<COMObject>> activatedInterface,
          )>()(
        ptr.ref.lpVtbl,
        activateResult,
        activatedInterface,
      );
}
