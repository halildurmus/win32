// IFindReferenceTargetsCallback.dart

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
import '../../../system/winrt/xaml/IReferenceTrackerTarget.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IFindReferenceTargetsCallback =
    '{04B3486C-4687-4229-8D14-505AB584DD88}';

/// {@category Interface}
/// {@category com}
class IFindReferenceTargetsCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IFindReferenceTargetsCallback(Pointer<COMObject> ptr) : super(ptr);

  int FoundTrackerTarget(
    Pointer<COMObject> target,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> target,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> target,
          )>()(
        ptr.ref.lpVtbl,
        target,
      );
}
