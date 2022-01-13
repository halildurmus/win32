// IBackgroundCopyCallback3.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyCallback2.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyCallback3 = '{98C97BD2-E32B-4AD8-A528-95FD8B16BD42}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyCallback3 extends IBackgroundCopyCallback2 {
  // vtable begins at 7, is 1 entries long.
  IBackgroundCopyCallback3(Pointer<COMObject> ptr) : super(ptr);

  int FileRangesTransferred(
    Pointer<COMObject> job,
    Pointer<COMObject> file,
    int rangeCount,
    Pointer<BG_FILE_RANGE> ranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> job,
            Pointer<COMObject> file,
            Uint32 rangeCount,
            Pointer<BG_FILE_RANGE> ranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> job,
            Pointer<COMObject> file,
            int rangeCount,
            Pointer<BG_FILE_RANGE> ranges,
          )>()(
        ptr.ref.lpVtbl,
        job,
        file,
        rangeCount,
        ranges,
      );
}
