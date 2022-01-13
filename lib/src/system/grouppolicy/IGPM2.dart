// IGPM2.dart

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

import '../../system/grouppolicy/IGPM.dart';
import '../../foundation/structs.g.dart';
import '../../system/grouppolicy/structs.g.dart';
import '../../system/grouppolicy/IGPMBackupDirEx.dart';

/// @nodoc
const IID_IGPM2 = '{00238F8A-3D86-41AC-8F5E-06A6638A634A}';

/// {@category Interface}
/// {@category com}
class IGPM2 extends IGPM {
  // vtable begins at 19, is 2 entries long.
  IGPM2(Pointer<COMObject> ptr) : super(ptr);

  int GetBackupDirEx(
    Pointer<Utf16> bstrBackupDir,
    int backupDirType,
    Pointer<Pointer<COMObject>> ppIGPMBackupDirEx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrBackupDir,
            Int32 backupDirType,
            Pointer<Pointer<COMObject>> ppIGPMBackupDirEx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrBackupDir,
            int backupDirType,
            Pointer<Pointer<COMObject>> ppIGPMBackupDirEx,
          )>()(
        ptr.ref.lpVtbl,
        bstrBackupDir,
        backupDirType,
        ppIGPMBackupDirEx,
      );

  int InitializeReportingEx(
    Pointer<Utf16> bstrAdmPath,
    int reportingOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAdmPath,
            Int32 reportingOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAdmPath,
            int reportingOptions,
          )>()(
        ptr.ref.lpVtbl,
        bstrAdmPath,
        reportingOptions,
      );
}
