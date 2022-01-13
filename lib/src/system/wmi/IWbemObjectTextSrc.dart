// IWbemObjectTextSrc.dart

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
import '../../system/wmi/IWbemClassObject.dart';
import '../../system/wmi/IWbemContext.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWbemObjectTextSrc = '{BFBF883A-CAD7-11D3-A11B-00105A1F515A}';

/// {@category Interface}
/// {@category com}
class IWbemObjectTextSrc extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWbemObjectTextSrc(Pointer<COMObject> ptr) : super(ptr);

  int GetText(
    int lFlags,
    Pointer<COMObject> pObj,
    int uObjTextFormat,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<Utf16>> strText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pObj,
            Uint32 uObjTextFormat,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<Utf16>> strText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pObj,
            int uObjTextFormat,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<Utf16>> strText,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pObj,
        uObjTextFormat,
        pCtx,
        strText,
      );

  int CreateFromText(
    int lFlags,
    Pointer<Utf16> strText,
    int uObjTextFormat,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> pNewObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> strText,
            Uint32 uObjTextFormat,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<COMObject>> pNewObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> strText,
            int uObjTextFormat,
            Pointer<COMObject> pCtx,
            Pointer<Pointer<COMObject>> pNewObj,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        strText,
        uObjTextFormat,
        pCtx,
        pNewObj,
      );
}

/// @nodoc
const CLSID_WbemObjectTextSrc = '{8D1C559D-84F0-4BB3-A7D5-56A7435A9BA6}';

/// {@category com}
class WbemObjectTextSrc extends IWbemObjectTextSrc {
  WbemObjectTextSrc(Pointer<COMObject> ptr) : super(ptr);

  factory WbemObjectTextSrc.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemObjectTextSrc);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemObjectTextSrc);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemObjectTextSrc(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
