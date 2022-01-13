// IEmptyVolumeCacheCallBack.dart

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
const IID_IEmptyVolumeCacheCallBack = '{6E793361-73C6-11D0-8469-00AA00442901}';

/// {@category Interface}
/// {@category com}
class IEmptyVolumeCacheCallBack extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEmptyVolumeCacheCallBack(Pointer<COMObject> ptr) : super(ptr);

  int ScanProgress(
    int dwlSpaceUsed,
    int dwFlags,
    Pointer<Utf16> pcwszStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dwlSpaceUsed,
            Uint32 dwFlags,
            Pointer<Utf16> pcwszStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwlSpaceUsed,
            int dwFlags,
            Pointer<Utf16> pcwszStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwlSpaceUsed,
        dwFlags,
        pcwszStatus,
      );

  int PurgeProgress(
    int dwlSpaceFreed,
    int dwlSpaceToFree,
    int dwFlags,
    Pointer<Utf16> pcwszStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dwlSpaceFreed,
            Uint64 dwlSpaceToFree,
            Uint32 dwFlags,
            Pointer<Utf16> pcwszStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwlSpaceFreed,
            int dwlSpaceToFree,
            int dwFlags,
            Pointer<Utf16> pcwszStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwlSpaceFreed,
        dwlSpaceToFree,
        dwFlags,
        pcwszStatus,
      );
}
