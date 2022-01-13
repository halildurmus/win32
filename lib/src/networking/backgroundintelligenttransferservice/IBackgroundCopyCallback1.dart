// IBackgroundCopyCallback1.dart

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
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyGroup.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyCallback1 = '{084F6593-3800-4E08-9B59-99FA59ADDF82}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyCallback1 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBackgroundCopyCallback1(Pointer<COMObject> ptr) : super(ptr);

  int OnStatus(
    Pointer<COMObject> pGroup,
    Pointer<COMObject> pJob,
    int dwFileIndex,
    int dwStatus,
    int dwNumOfRetries,
    int dwWin32Result,
    int dwTransportResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGroup,
            Pointer<COMObject> pJob,
            Uint32 dwFileIndex,
            Uint32 dwStatus,
            Uint32 dwNumOfRetries,
            Uint32 dwWin32Result,
            Uint32 dwTransportResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGroup,
            Pointer<COMObject> pJob,
            int dwFileIndex,
            int dwStatus,
            int dwNumOfRetries,
            int dwWin32Result,
            int dwTransportResult,
          )>()(
        ptr.ref.lpVtbl,
        pGroup,
        pJob,
        dwFileIndex,
        dwStatus,
        dwNumOfRetries,
        dwWin32Result,
        dwTransportResult,
      );

  int OnProgress(
    int ProgressType,
    Pointer<COMObject> pGroup,
    Pointer<COMObject> pJob,
    int dwFileIndex,
    int dwProgressValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ProgressType,
            Pointer<COMObject> pGroup,
            Pointer<COMObject> pJob,
            Uint32 dwFileIndex,
            Uint32 dwProgressValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProgressType,
            Pointer<COMObject> pGroup,
            Pointer<COMObject> pJob,
            int dwFileIndex,
            int dwProgressValue,
          )>()(
        ptr.ref.lpVtbl,
        ProgressType,
        pGroup,
        pJob,
        dwFileIndex,
        dwProgressValue,
      );

  int OnProgressEx(
    int ProgressType,
    Pointer<COMObject> pGroup,
    Pointer<COMObject> pJob,
    int dwFileIndex,
    int dwProgressValue,
    int dwByteArraySize,
    Pointer<Uint8> pByte,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ProgressType,
            Pointer<COMObject> pGroup,
            Pointer<COMObject> pJob,
            Uint32 dwFileIndex,
            Uint32 dwProgressValue,
            Uint32 dwByteArraySize,
            Pointer<Uint8> pByte,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProgressType,
            Pointer<COMObject> pGroup,
            Pointer<COMObject> pJob,
            int dwFileIndex,
            int dwProgressValue,
            int dwByteArraySize,
            Pointer<Uint8> pByte,
          )>()(
        ptr.ref.lpVtbl,
        ProgressType,
        pGroup,
        pJob,
        dwFileIndex,
        dwProgressValue,
        dwByteArraySize,
        pByte,
      );
}
