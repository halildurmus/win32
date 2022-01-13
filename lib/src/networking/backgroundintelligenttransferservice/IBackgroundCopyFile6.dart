// IBackgroundCopyFile6.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile5.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyFile6 = '{CF6784F7-D677-49FD-9368-CB47AEE9D1AD}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyFile6 extends IBackgroundCopyFile5 {
  // vtable begins at 15, is 3 entries long.
  IBackgroundCopyFile6(Pointer<COMObject> ptr) : super(ptr);

  int UpdateDownloadPosition(
    int offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int RequestFileRanges(
    int rangeCount,
    Pointer<BG_FILE_RANGE> ranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 rangeCount,
            Pointer<BG_FILE_RANGE> ranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rangeCount,
            Pointer<BG_FILE_RANGE> ranges,
          )>()(
        ptr.ref.lpVtbl,
        rangeCount,
        ranges,
      );

  int GetFilledFileRanges(
    Pointer<Uint32> rangeCount,
    Pointer<Pointer<BG_FILE_RANGE>> ranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> rangeCount,
            Pointer<Pointer<BG_FILE_RANGE>> ranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> rangeCount,
            Pointer<Pointer<BG_FILE_RANGE>> ranges,
          )>()(
        ptr.ref.lpVtbl,
        rangeCount,
        ranges,
      );
}
