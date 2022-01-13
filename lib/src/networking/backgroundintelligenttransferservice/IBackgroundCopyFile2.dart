// IBackgroundCopyFile2.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyFile2 = '{83E81B93-0873-474D-8A8C-F2018B1A939C}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyFile2 extends IBackgroundCopyFile {
  // vtable begins at 6, is 2 entries long.
  IBackgroundCopyFile2(Pointer<COMObject> ptr) : super(ptr);

  int GetFileRanges(
    Pointer<Uint32> RangeCount,
    Pointer<Pointer<BG_FILE_RANGE>> Ranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> RangeCount,
            Pointer<Pointer<BG_FILE_RANGE>> Ranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> RangeCount,
            Pointer<Pointer<BG_FILE_RANGE>> Ranges,
          )>()(
        ptr.ref.lpVtbl,
        RangeCount,
        Ranges,
      );

  int SetRemoteName(
    Pointer<Utf16> Val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Val,
          )>()(
        ptr.ref.lpVtbl,
        Val,
      );
}
