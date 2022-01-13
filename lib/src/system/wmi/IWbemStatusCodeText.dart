// IWbemStatusCodeText.dart

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
const IID_IWbemStatusCodeText = '{EB87E1BC-3233-11D2-AEC9-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemStatusCodeText extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWbemStatusCodeText(Pointer<COMObject> ptr) : super(ptr);

  int GetErrorCodeText(
    int hRes,
    int LocaleId,
    int lFlags,
    Pointer<Pointer<Utf16>> MessageText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hRes,
            Uint32 LocaleId,
            Int32 lFlags,
            Pointer<Pointer<Utf16>> MessageText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hRes,
            int LocaleId,
            int lFlags,
            Pointer<Pointer<Utf16>> MessageText,
          )>()(
        ptr.ref.lpVtbl,
        hRes,
        LocaleId,
        lFlags,
        MessageText,
      );

  int GetFacilityCodeText(
    int hRes,
    int LocaleId,
    int lFlags,
    Pointer<Pointer<Utf16>> MessageText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hRes,
            Uint32 LocaleId,
            Int32 lFlags,
            Pointer<Pointer<Utf16>> MessageText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hRes,
            int LocaleId,
            int lFlags,
            Pointer<Pointer<Utf16>> MessageText,
          )>()(
        ptr.ref.lpVtbl,
        hRes,
        LocaleId,
        lFlags,
        MessageText,
      );
}

/// @nodoc
const CLSID_WbemStatusCodeText = '{EB87E1BD-3233-11D2-AEC9-00C04FB68820}';

/// {@category com}
class WbemStatusCodeText extends IWbemStatusCodeText {
  WbemStatusCodeText(Pointer<COMObject> ptr) : super(ptr);

  factory WbemStatusCodeText.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemStatusCodeText);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemStatusCodeText);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemStatusCodeText(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
