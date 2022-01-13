// IDebugHelper.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/IDebugProperty.dart';
import '../../../system/diagnostics/debug/IDebugFormatter.dart';
import '../../../system/com/IDispatch.dart';
import '../../../system/diagnostics/debug/ISimpleConnectionPoint.dart';

/// @nodoc
const IID_IDebugHelper = '{51973C3F-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugHelper extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDebugHelper(Pointer<COMObject> ptr) : super(ptr);

  int CreatePropertyBrowser(
    Pointer<VARIANT> pvar,
    Pointer<Utf16> bstrName,
    Pointer<COMObject> pdat,
    Pointer<Pointer<COMObject>> ppdob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvar,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pdat,
            Pointer<Pointer<COMObject>> ppdob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvar,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pdat,
            Pointer<Pointer<COMObject>> ppdob,
          )>()(
        ptr.ref.lpVtbl,
        pvar,
        bstrName,
        pdat,
        ppdob,
      );

  int CreatePropertyBrowserEx(
    Pointer<VARIANT> pvar,
    Pointer<Utf16> bstrName,
    Pointer<COMObject> pdat,
    Pointer<COMObject> pdf,
    Pointer<Pointer<COMObject>> ppdob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvar,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pdat,
            Pointer<COMObject> pdf,
            Pointer<Pointer<COMObject>> ppdob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvar,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pdat,
            Pointer<COMObject> pdf,
            Pointer<Pointer<COMObject>> ppdob,
          )>()(
        ptr.ref.lpVtbl,
        pvar,
        bstrName,
        pdat,
        pdf,
        ppdob,
      );

  int CreateSimpleConnectionPoint(
    Pointer<COMObject> pdisp,
    Pointer<Pointer<COMObject>> ppscp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdisp,
            Pointer<Pointer<COMObject>> ppscp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdisp,
            Pointer<Pointer<COMObject>> ppscp,
          )>()(
        ptr.ref.lpVtbl,
        pdisp,
        ppscp,
      );
}

/// @nodoc
const CLSID_DebugHelper = '{0BFCC060-8C1D-11D0-ACCD-00AA0060275C}';

/// {@category com}
class DebugHelper extends IDebugHelper {
  DebugHelper(Pointer<COMObject> ptr) : super(ptr);

  factory DebugHelper.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DebugHelper);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDebugHelper);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DebugHelper(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
