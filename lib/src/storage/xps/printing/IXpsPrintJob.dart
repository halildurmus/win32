// IXpsPrintJob.dart

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
import '../../../storage/xps/printing/structs.g.dart';

/// @nodoc
const IID_IXpsPrintJob = '{5AB89B06-8194-425F-AB3B-D7A96E350161}';

/// {@category Interface}
/// {@category com}
class IXpsPrintJob extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IXpsPrintJob(Pointer<COMObject> ptr) : super(ptr);

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetJobStatus(
    Pointer<XPS_JOB_STATUS> jobStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_JOB_STATUS> jobStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_JOB_STATUS> jobStatus,
          )>()(
        ptr.ref.lpVtbl,
        jobStatus,
      );
}
