// IActiveScriptSite.dart

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
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/ITypeInfo.dart';
import '../../../system/com/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IActiveScriptError.dart';

/// @nodoc
const IID_IActiveScriptSite = '{DB01A1E3-A42B-11CF-8F20-00805F2CD064}';

/// {@category Interface}
/// {@category com}
class IActiveScriptSite extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IActiveScriptSite(Pointer<COMObject> ptr) : super(ptr);

  int GetLCID(
    Pointer<Uint32> plcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> plcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> plcid,
          )>()(
        ptr.ref.lpVtbl,
        plcid,
      );

  int GetItemInfo(
    Pointer<Utf16> pstrName,
    int dwReturnMask,
    Pointer<Pointer<COMObject>> ppiunkItem,
    Pointer<Pointer<COMObject>> ppti,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrName,
            Uint32 dwReturnMask,
            Pointer<Pointer<COMObject>> ppiunkItem,
            Pointer<Pointer<COMObject>> ppti,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrName,
            int dwReturnMask,
            Pointer<Pointer<COMObject>> ppiunkItem,
            Pointer<Pointer<COMObject>> ppti,
          )>()(
        ptr.ref.lpVtbl,
        pstrName,
        dwReturnMask,
        ppiunkItem,
        ppti,
      );

  int GetDocVersionString(
    Pointer<Pointer<Utf16>> pbstrVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrVersion,
          )>()(
        ptr.ref.lpVtbl,
        pbstrVersion,
      );

  int OnScriptTerminate(
    Pointer<VARIANT> pvarResult,
    Pointer<EXCEPINFO> pexcepinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarResult,
            Pointer<EXCEPINFO> pexcepinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarResult,
            Pointer<EXCEPINFO> pexcepinfo,
          )>()(
        ptr.ref.lpVtbl,
        pvarResult,
        pexcepinfo,
      );

  int OnStateChange(
    int ssScriptState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ssScriptState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ssScriptState,
          )>()(
        ptr.ref.lpVtbl,
        ssScriptState,
      );

  int OnScriptError(
    Pointer<COMObject> pscripterror,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pscripterror,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pscripterror,
          )>()(
        ptr.ref.lpVtbl,
        pscripterror,
      );

  int OnEnterScript() => ptr.ref.lpVtbl.value
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

  int OnLeaveScript() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
