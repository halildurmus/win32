// IMofCompiler.dart

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
import '../../system/wmi/structs.g.dart';

/// @nodoc
const IID_IMofCompiler = '{6DAF974E-2E37-11D2-AEC9-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IMofCompiler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMofCompiler(Pointer<COMObject> ptr) : super(ptr);

  int CompileFile(
    Pointer<Utf16> FileName,
    Pointer<Utf16> ServerAndNamespace,
    Pointer<Utf16> User,
    Pointer<Utf16> Authority,
    Pointer<Utf16> Password,
    int lOptionFlags,
    int lClassFlags,
    int lInstanceFlags,
    Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileName,
            Pointer<Utf16> ServerAndNamespace,
            Pointer<Utf16> User,
            Pointer<Utf16> Authority,
            Pointer<Utf16> Password,
            Int32 lOptionFlags,
            Int32 lClassFlags,
            Int32 lInstanceFlags,
            Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileName,
            Pointer<Utf16> ServerAndNamespace,
            Pointer<Utf16> User,
            Pointer<Utf16> Authority,
            Pointer<Utf16> Password,
            int lOptionFlags,
            int lClassFlags,
            int lInstanceFlags,
            Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
        ServerAndNamespace,
        User,
        Authority,
        Password,
        lOptionFlags,
        lClassFlags,
        lInstanceFlags,
        pInfo,
      );

  int CompileBuffer(
    int BuffSize,
    Pointer<Uint8> pBuffer,
    Pointer<Utf16> ServerAndNamespace,
    Pointer<Utf16> User,
    Pointer<Utf16> Authority,
    Pointer<Utf16> Password,
    int lOptionFlags,
    int lClassFlags,
    int lInstanceFlags,
    Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 BuffSize,
            Pointer<Uint8> pBuffer,
            Pointer<Utf16> ServerAndNamespace,
            Pointer<Utf16> User,
            Pointer<Utf16> Authority,
            Pointer<Utf16> Password,
            Int32 lOptionFlags,
            Int32 lClassFlags,
            Int32 lInstanceFlags,
            Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BuffSize,
            Pointer<Uint8> pBuffer,
            Pointer<Utf16> ServerAndNamespace,
            Pointer<Utf16> User,
            Pointer<Utf16> Authority,
            Pointer<Utf16> Password,
            int lOptionFlags,
            int lClassFlags,
            int lInstanceFlags,
            Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        BuffSize,
        pBuffer,
        ServerAndNamespace,
        User,
        Authority,
        Password,
        lOptionFlags,
        lClassFlags,
        lInstanceFlags,
        pInfo,
      );

  int CreateBMOF(
    Pointer<Utf16> TextFileName,
    Pointer<Utf16> BMOFFileName,
    Pointer<Utf16> ServerAndNamespace,
    int lOptionFlags,
    int lClassFlags,
    int lInstanceFlags,
    Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TextFileName,
            Pointer<Utf16> BMOFFileName,
            Pointer<Utf16> ServerAndNamespace,
            Int32 lOptionFlags,
            Int32 lClassFlags,
            Int32 lInstanceFlags,
            Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TextFileName,
            Pointer<Utf16> BMOFFileName,
            Pointer<Utf16> ServerAndNamespace,
            int lOptionFlags,
            int lClassFlags,
            int lInstanceFlags,
            Pointer<WBEM_COMPILE_STATUS_INFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        TextFileName,
        BMOFFileName,
        ServerAndNamespace,
        lOptionFlags,
        lClassFlags,
        lInstanceFlags,
        pInfo,
      );
}

/// @nodoc
const CLSID_MofCompiler = '{6DAF9757-2E37-11D2-AEC9-00C04FB68820}';

/// {@category com}
class MofCompiler extends IMofCompiler {
  MofCompiler(Pointer<COMObject> ptr) : super(ptr);

  factory MofCompiler.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MofCompiler);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMofCompiler);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MofCompiler(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
