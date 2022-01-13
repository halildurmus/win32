// ITfKeystrokeMgr.dart

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
import '../../ui/textservices/ITfKeyEventSink.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfContext.dart';
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_ITfKeystrokeMgr = '{AA80E7F0-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfKeystrokeMgr extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  ITfKeystrokeMgr(Pointer<COMObject> ptr) : super(ptr);

  int AdviseKeyEventSink(
    int tid,
    Pointer<COMObject> pSink,
    int fForeground,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<COMObject> pSink,
            Int32 fForeground,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<COMObject> pSink,
            int fForeground,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        pSink,
        fForeground,
      );

  int UnadviseKeyEventSink(
    int tid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
          )>()(
        ptr.ref.lpVtbl,
        tid,
      );

  int GetForeground(
    Pointer<GUID> pclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>()(
        ptr.ref.lpVtbl,
        pclsid,
      );

  int TestKeyDown(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int TestKeyUp(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int KeyDown(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int KeyUp(
    int wParam,
    int lParam,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
        pfEaten,
      );

  int GetPreservedKey(
    Pointer<COMObject> pic,
    Pointer<TF_PRESERVEDKEY> pprekey,
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<TF_PRESERVEDKEY> pprekey,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<TF_PRESERVEDKEY> pprekey,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        pprekey,
        pguid,
      );

  int IsPreservedKey(
    Pointer<GUID> rguid,
    Pointer<TF_PRESERVEDKEY> pprekey,
    Pointer<Int32> pfRegistered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<TF_PRESERVEDKEY> pprekey,
            Pointer<Int32> pfRegistered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<TF_PRESERVEDKEY> pprekey,
            Pointer<Int32> pfRegistered,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pprekey,
        pfRegistered,
      );

  int PreserveKey(
    int tid,
    Pointer<GUID> rguid,
    Pointer<TF_PRESERVEDKEY> prekey,
    Pointer<Utf16> pchDesc,
    int cchDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<GUID> rguid,
            Pointer<TF_PRESERVEDKEY> prekey,
            Pointer<Utf16> pchDesc,
            Uint32 cchDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<GUID> rguid,
            Pointer<TF_PRESERVEDKEY> prekey,
            Pointer<Utf16> pchDesc,
            int cchDesc,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        rguid,
        prekey,
        pchDesc,
        cchDesc,
      );

  int UnpreserveKey(
    Pointer<GUID> rguid,
    Pointer<TF_PRESERVEDKEY> pprekey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<TF_PRESERVEDKEY> pprekey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<TF_PRESERVEDKEY> pprekey,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pprekey,
      );

  int SetPreservedKeyDescription(
    Pointer<GUID> rguid,
    Pointer<Utf16> pchDesc,
    int cchDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Utf16> pchDesc,
            Uint32 cchDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Utf16> pchDesc,
            int cchDesc,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pchDesc,
        cchDesc,
      );

  int GetPreservedKeyDescription(
    Pointer<GUID> rguid,
    Pointer<Pointer<Utf16>> pbstrDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        pbstrDesc,
      );

  int SimulatePreservedKey(
    Pointer<COMObject> pic,
    Pointer<GUID> rguid,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<GUID> rguid,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<GUID> rguid,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        rguid,
        pfEaten,
      );
}
