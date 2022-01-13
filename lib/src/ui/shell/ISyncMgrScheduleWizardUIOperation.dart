// ISyncMgrScheduleWizardUIOperation.dart

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

import '../../ui/shell/ISyncMgrUIOperation.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncMgrScheduleWizardUIOperation =
    '{459A6C84-21D2-4DDC-8A53-F023A46066F2}';

/// {@category Interface}
/// {@category com}
class ISyncMgrScheduleWizardUIOperation extends ISyncMgrUIOperation {
  // vtable begins at 4, is 1 entries long.
  ISyncMgrScheduleWizardUIOperation(Pointer<COMObject> ptr) : super(ptr);

  int InitWizard(
    Pointer<Utf16> pszHandlerID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
      );
}
