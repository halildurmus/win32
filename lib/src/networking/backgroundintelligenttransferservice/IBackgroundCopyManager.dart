// IBackgroundCopyManager.dart

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
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob.dart';
import '../../networking/backgroundintelligenttransferservice/IEnumBackgroundCopyJobs.dart';

/// @nodoc
const IID_IBackgroundCopyManager = '{5CE34C0D-0DC9-4C1F-897C-DAA1B78CEE7C}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyManager extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IBackgroundCopyManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateJob(
    Pointer<Utf16> DisplayName,
    int Type,
    Pointer<GUID> pJobId,
    Pointer<Pointer<COMObject>> ppJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> DisplayName,
            Int32 Type,
            Pointer<GUID> pJobId,
            Pointer<Pointer<COMObject>> ppJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> DisplayName,
            int Type,
            Pointer<GUID> pJobId,
            Pointer<Pointer<COMObject>> ppJob,
          )>()(
        ptr.ref.lpVtbl,
        DisplayName,
        Type,
        pJobId,
        ppJob,
      );

  int GetJob(
    Pointer<GUID> jobID,
    Pointer<Pointer<COMObject>> ppJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> jobID,
            Pointer<Pointer<COMObject>> ppJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> jobID,
            Pointer<Pointer<COMObject>> ppJob,
          )>()(
        ptr.ref.lpVtbl,
        jobID,
        ppJob,
      );

  int EnumJobs(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppEnum,
      );

  int GetErrorDescription(
    int hResult,
    int LanguageId,
    Pointer<Pointer<Utf16>> pErrorDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
            Uint32 LanguageId,
            Pointer<Pointer<Utf16>> pErrorDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
            int LanguageId,
            Pointer<Pointer<Utf16>> pErrorDescription,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
        LanguageId,
        pErrorDescription,
      );
}

/// @nodoc
const CLSID_BackgroundCopyManager = '{4991D34B-80A1-4291-83B6-3328366B9097}';

/// {@category com}
class BackgroundCopyManager extends IBackgroundCopyManager {
  BackgroundCopyManager(Pointer<COMObject> ptr) : super(ptr);

  factory BackgroundCopyManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_BackgroundCopyManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IBackgroundCopyManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return BackgroundCopyManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
