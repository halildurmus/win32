// ISpPhoneticAlphabetSelection.dart

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
const IID_ISpPhoneticAlphabetSelection =
    '{B2745EFD-42CE-48CA-81F1-A96E02538A90}';

/// {@category Interface}
/// {@category com}
class ISpPhoneticAlphabetSelection extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpPhoneticAlphabetSelection(Pointer<COMObject> ptr) : super(ptr);

  int IsAlphabetUPS(
    Pointer<Int32> pfIsUPS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsUPS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsUPS,
          )>()(
        ptr.ref.lpVtbl,
        pfIsUPS,
      );

  int SetAlphabetToUPS(
    int fForceUPS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fForceUPS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fForceUPS,
          )>()(
        ptr.ref.lpVtbl,
        fForceUPS,
      );
}
