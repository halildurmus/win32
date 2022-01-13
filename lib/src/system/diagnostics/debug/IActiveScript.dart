// IActiveScript.dart

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
import '../../../system/diagnostics/debug/IActiveScriptSite.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/com/IDispatch.dart';
import '../../../system/com/structs.g.dart';
import '../../../system/diagnostics/debug/IActiveScript.dart';

/// @nodoc
const IID_IActiveScript = '{BB1A2AE1-A4F9-11CF-8F20-00805F2CD064}';

/// {@category Interface}
/// {@category com}
class IActiveScript extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IActiveScript(Pointer<COMObject> ptr) : super(ptr);

  int SetScriptSite(
    Pointer<COMObject> pass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pass,
          )>()(
        ptr.ref.lpVtbl,
        pass,
      );

  int GetScriptSite(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvObject,
      );

  int SetScriptState(
    int ss,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ss,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ss,
          )>()(
        ptr.ref.lpVtbl,
        ss,
      );

  int GetScriptState(
    Pointer<Int32> pssState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pssState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pssState,
          )>()(
        ptr.ref.lpVtbl,
        pssState,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int AddNamedItem(
    Pointer<Utf16> pstrName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pstrName,
        dwFlags,
      );

  int AddTypeLib(
    Pointer<GUID> rguidTypeLib,
    int dwMajor,
    int dwMinor,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidTypeLib,
            Uint32 dwMajor,
            Uint32 dwMinor,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidTypeLib,
            int dwMajor,
            int dwMinor,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        rguidTypeLib,
        dwMajor,
        dwMinor,
        dwFlags,
      );

  int GetScriptDispatch(
    Pointer<Utf16> pstrItemName,
    Pointer<Pointer<COMObject>> ppdisp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrItemName,
            Pointer<Pointer<COMObject>> ppdisp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrItemName,
            Pointer<Pointer<COMObject>> ppdisp,
          )>()(
        ptr.ref.lpVtbl,
        pstrItemName,
        ppdisp,
      );

  int GetCurrentScriptThreadID(
    Pointer<Uint32> pstidThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pstidThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pstidThread,
          )>()(
        ptr.ref.lpVtbl,
        pstidThread,
      );

  int GetScriptThreadID(
    int dwWin32ThreadId,
    Pointer<Uint32> pstidThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWin32ThreadId,
            Pointer<Uint32> pstidThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWin32ThreadId,
            Pointer<Uint32> pstidThread,
          )>()(
        ptr.ref.lpVtbl,
        dwWin32ThreadId,
        pstidThread,
      );

  int GetScriptThreadState(
    int stidThread,
    Pointer<Int32> pstsState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stidThread,
            Pointer<Int32> pstsState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stidThread,
            Pointer<Int32> pstsState,
          )>()(
        ptr.ref.lpVtbl,
        stidThread,
        pstsState,
      );

  int InterruptScriptThread(
    int stidThread,
    Pointer<EXCEPINFO> pexcepinfo,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stidThread,
            Pointer<EXCEPINFO> pexcepinfo,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stidThread,
            Pointer<EXCEPINFO> pexcepinfo,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        stidThread,
        pexcepinfo,
        dwFlags,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppscript,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppscript,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppscript,
          )>()(
        ptr.ref.lpVtbl,
        ppscript,
      );
}
