// IBackgroundCopyJob1.dart

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
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJob1 = '{59F5553C-2031-4629-BB18-2645A6970947}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJob1 extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IBackgroundCopyJob1(Pointer<COMObject> ptr) : super(ptr);

  int CancelJob() => ptr.ref.lpVtbl.value
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

  int GetProgress(
    int dwFlags,
    Pointer<Uint32> pdwProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Uint32> pdwProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Uint32> pdwProgress,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pdwProgress,
      );

  int GetStatus(
    Pointer<Uint32> pdwStatus,
    Pointer<Uint32> pdwWin32Result,
    Pointer<Uint32> pdwTransportResult,
    Pointer<Uint32> pdwNumOfRetries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
            Pointer<Uint32> pdwWin32Result,
            Pointer<Uint32> pdwTransportResult,
            Pointer<Uint32> pdwNumOfRetries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
            Pointer<Uint32> pdwWin32Result,
            Pointer<Uint32> pdwTransportResult,
            Pointer<Uint32> pdwNumOfRetries,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
        pdwWin32Result,
        pdwTransportResult,
        pdwNumOfRetries,
      );

  int AddFiles(
    int cFileCount,
    Pointer<Pointer<FILESETINFO>> ppFileSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFileCount,
            Pointer<Pointer<FILESETINFO>> ppFileSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFileCount,
            Pointer<Pointer<FILESETINFO>> ppFileSet,
          )>()(
        ptr.ref.lpVtbl,
        cFileCount,
        ppFileSet,
      );

  int GetFile(
    int cFileIndex,
    Pointer<FILESETINFO> pFileInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFileIndex,
            Pointer<FILESETINFO> pFileInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFileIndex,
            Pointer<FILESETINFO> pFileInfo,
          )>()(
        ptr.ref.lpVtbl,
        cFileIndex,
        pFileInfo,
      );

  int GetFileCount(
    Pointer<Uint32> pdwFileCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFileCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFileCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwFileCount,
      );

  int SwitchToForeground() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  GUID get JobID {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidJobID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidJobID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
