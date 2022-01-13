// ITfLangBarMgr.dart

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
import '../../ui/textservices/ITfLangBarEventSink.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/textservices/ITfLangBarItemMgr.dart';
import '../../ui/textservices/ITfInputProcessorProfiles.dart';

/// @nodoc
const IID_ITfLangBarMgr = '{87955690-E627-11D2-8DDB-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfLangBarMgr extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ITfLangBarMgr(Pointer<COMObject> ptr) : super(ptr);

  int AdviseEventSink(
    Pointer<COMObject> pSink,
    int hwnd,
    int dwFlags,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
            IntPtr hwnd,
            Uint32 dwFlags,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
            int hwnd,
            int dwFlags,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
        hwnd,
        dwFlags,
        pdwCookie,
      );

  int UnadviseEventSink(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int GetThreadMarshalInterface(
    int dwThreadId,
    int dwType,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
            Uint32 dwType,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
            int dwType,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
        dwType,
        riid,
        ppunk,
      );

  int GetThreadLangBarItemMgr(
    int dwThreadId,
    Pointer<Pointer<COMObject>> pplbi,
    Pointer<Uint32> pdwThreadid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
            Pointer<Pointer<COMObject>> pplbi,
            Pointer<Uint32> pdwThreadid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
            Pointer<Pointer<COMObject>> pplbi,
            Pointer<Uint32> pdwThreadid,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
        pplbi,
        pdwThreadid,
      );

  int GetInputProcessorProfiles(
    int dwThreadId,
    Pointer<Pointer<COMObject>> ppaip,
    Pointer<Uint32> pdwThreadid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThreadId,
            Pointer<Pointer<COMObject>> ppaip,
            Pointer<Uint32> pdwThreadid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThreadId,
            Pointer<Pointer<COMObject>> ppaip,
            Pointer<Uint32> pdwThreadid,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
        ppaip,
        pdwThreadid,
      );

  int RestoreLastFocus(
    Pointer<Uint32> pdwThreadId,
    int fPrev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwThreadId,
            Int32 fPrev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwThreadId,
            int fPrev,
          )>()(
        ptr.ref.lpVtbl,
        pdwThreadId,
        fPrev,
      );

  int SetModalInput(
    Pointer<COMObject> pSink,
    int dwThreadId,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
            Uint32 dwThreadId,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
            int dwThreadId,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
        dwThreadId,
        dwFlags,
      );

  int ShowFloating(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetShowFloatingStatus(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );
}
