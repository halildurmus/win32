// IWbemQuery.dart

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
const IID_IWbemQuery = '{81166F58-DD98-11D3-A120-00105A1F515A}';

/// {@category Interface}
/// {@category com}
class IWbemQuery extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IWbemQuery(Pointer<COMObject> ptr) : super(ptr);

  int Empty() => ptr.ref.lpVtbl.value
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

  int SetLanguageFeatures(
    int uFlags,
    int uArraySize,
    Pointer<Uint32> puFeatures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
            Uint32 uArraySize,
            Pointer<Uint32> puFeatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
            int uArraySize,
            Pointer<Uint32> puFeatures,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
        uArraySize,
        puFeatures,
      );

  int TestLanguageFeatures(
    int uFlags,
    Pointer<Uint32> uArraySize,
    Pointer<Uint32> puFeatures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
            Pointer<Uint32> uArraySize,
            Pointer<Uint32> puFeatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
            Pointer<Uint32> uArraySize,
            Pointer<Uint32> puFeatures,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
        uArraySize,
        puFeatures,
      );

  int Parse(
    Pointer<Utf16> pszLang,
    Pointer<Utf16> pszQuery,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszLang,
            Pointer<Utf16> pszQuery,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszLang,
            Pointer<Utf16> pszQuery,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszLang,
        pszQuery,
        uFlags,
      );

  int GetAnalysis(
    int uAnalysisType,
    int uFlags,
    Pointer<Pointer> pAnalysis,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uAnalysisType,
            Uint32 uFlags,
            Pointer<Pointer> pAnalysis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uAnalysisType,
            int uFlags,
            Pointer<Pointer> pAnalysis,
          )>()(
        ptr.ref.lpVtbl,
        uAnalysisType,
        uFlags,
        pAnalysis,
      );

  int FreeMemory(
    Pointer pMem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pMem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pMem,
          )>()(
        ptr.ref.lpVtbl,
        pMem,
      );

  int GetQueryInfo(
    int uAnalysisType,
    int uInfoId,
    int uBufSize,
    Pointer pDestBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uAnalysisType,
            Uint32 uInfoId,
            Uint32 uBufSize,
            Pointer pDestBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uAnalysisType,
            int uInfoId,
            int uBufSize,
            Pointer pDestBuf,
          )>()(
        ptr.ref.lpVtbl,
        uAnalysisType,
        uInfoId,
        uBufSize,
        pDestBuf,
      );
}

/// @nodoc
const CLSID_WbemQuery = '{EAC8A024-21E2-4523-AD73-A71A0AA2F56A}';

/// {@category com}
class WbemQuery extends IWbemQuery {
  WbemQuery(Pointer<COMObject> ptr) : super(ptr);

  factory WbemQuery.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemQuery);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemQuery);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemQuery(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
