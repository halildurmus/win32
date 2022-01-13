// IBackgroundCopyJob3.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob2.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJob3 = '{443C8934-90FF-48ED-BCDE-26F5C7450042}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJob3 extends IBackgroundCopyJob2 {
  // vtable begins at 43, is 4 entries long.
  IBackgroundCopyJob3(Pointer<COMObject> ptr) : super(ptr);

  int ReplaceRemotePrefix(
    Pointer<Utf16> OldPrefix,
    Pointer<Utf16> NewPrefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> OldPrefix,
            Pointer<Utf16> NewPrefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> OldPrefix,
            Pointer<Utf16> NewPrefix,
          )>()(
        ptr.ref.lpVtbl,
        OldPrefix,
        NewPrefix,
      );

  int AddFileWithRanges(
    Pointer<Utf16> RemoteUrl,
    Pointer<Utf16> LocalName,
    int RangeCount,
    Pointer<BG_FILE_RANGE> Ranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RemoteUrl,
            Pointer<Utf16> LocalName,
            Uint32 RangeCount,
            Pointer<BG_FILE_RANGE> Ranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RemoteUrl,
            Pointer<Utf16> LocalName,
            int RangeCount,
            Pointer<BG_FILE_RANGE> Ranges,
          )>()(
        ptr.ref.lpVtbl,
        RemoteUrl,
        LocalName,
        RangeCount,
        Ranges,
      );

  int SetFileACLFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int GetFileACLFlags(
    Pointer<Uint32> Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );
}
