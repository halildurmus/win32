// IBackgroundCopyCallback2.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyCallback.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyCallback2 = '{659CDEAC-489E-11D9-A9CD-000D56965251}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyCallback2 extends IBackgroundCopyCallback {
  // vtable begins at 6, is 1 entries long.
  IBackgroundCopyCallback2(Pointer<COMObject> ptr) : super(ptr);

  int FileTransferred(
    Pointer<COMObject> pJob,
    Pointer<COMObject> pFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pJob,
            Pointer<COMObject> pFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pJob,
            Pointer<COMObject> pFile,
          )>()(
        ptr.ref.lpVtbl,
        pJob,
        pFile,
      );
}
