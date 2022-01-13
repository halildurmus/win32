// IWMDMLogger.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMLogger = '{110A3200-5A79-11D3-8D78-444553540000}';

/// {@category Interface}
/// {@category com}
class IWMDMLogger extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IWMDMLogger(Pointer<COMObject> ptr) : super(ptr);

  int IsEnabled(
    Pointer<Int32> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfEnabled,
      );

  int Enable(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int GetLogFileName(
    Pointer<Utf8> pszFilename,
    int nMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszFilename,
            Uint32 nMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszFilename,
            int nMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        pszFilename,
        nMaxChars,
      );

  int SetLogFileName(
    Pointer<Utf8> pszFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszFilename,
          )>()(
        ptr.ref.lpVtbl,
        pszFilename,
      );

  int LogString(
    int dwFlags,
    Pointer<Utf8> pszSrcName,
    Pointer<Utf8> pszLog,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf8> pszSrcName,
            Pointer<Utf8> pszLog,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf8> pszSrcName,
            Pointer<Utf8> pszLog,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszSrcName,
        pszLog,
      );

  int LogDword(
    int dwFlags,
    Pointer<Utf8> pszSrcName,
    Pointer<Utf8> pszLogFormat,
    int dwLog,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf8> pszSrcName,
            Pointer<Utf8> pszLogFormat,
            Uint32 dwLog,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf8> pszSrcName,
            Pointer<Utf8> pszLogFormat,
            int dwLog,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pszSrcName,
        pszLogFormat,
        dwLog,
      );

  int Reset() => ptr.ref.lpVtbl.value
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

  int GetSizeParams(
    Pointer<Uint32> pdwMaxSize,
    Pointer<Uint32> pdwShrinkToSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxSize,
            Pointer<Uint32> pdwShrinkToSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxSize,
            Pointer<Uint32> pdwShrinkToSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxSize,
        pdwShrinkToSize,
      );

  int SetSizeParams(
    int dwMaxSize,
    int dwShrinkToSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxSize,
            Uint32 dwShrinkToSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxSize,
            int dwShrinkToSize,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxSize,
        dwShrinkToSize,
      );
}

/// @nodoc
const CLSID_WMDMLogger = '{110A3202-5A79-11D3-8D78-444553540000}';

/// {@category com}
class WMDMLogger extends IWMDMLogger {
  WMDMLogger(Pointer<COMObject> ptr) : super(ptr);

  factory WMDMLogger.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WMDMLogger);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWMDMLogger);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WMDMLogger(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
