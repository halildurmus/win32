// IShellWindows.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellWindows = '{85CB6900-4D95-11CF-960C-0080C7F4EE85}';

/// {@category Interface}
/// {@category com}
class IShellWindows extends IDispatch {
  // vtable begins at 7, is 11 entries long.
  IShellWindows(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Item(
    VARIANT index,
    Pointer<Pointer<COMObject>> Folder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> Folder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> Folder,
          )>()(
        ptr.ref.lpVtbl,
        index,
        Folder,
      );

  int NewEnum(
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        ppunk,
      );

  int Register(
    Pointer<COMObject> pid,
    int hwnd,
    int swClass,
    Pointer<Int32> plCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pid,
            Int32 hwnd,
            Int32 swClass,
            Pointer<Int32> plCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pid,
            int hwnd,
            int swClass,
            Pointer<Int32> plCookie,
          )>()(
        ptr.ref.lpVtbl,
        pid,
        hwnd,
        swClass,
        plCookie,
      );

  int RegisterPending(
    int lThreadId,
    Pointer<VARIANT> pvarloc,
    Pointer<VARIANT> pvarlocRoot,
    int swClass,
    Pointer<Int32> plCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lThreadId,
            Pointer<VARIANT> pvarloc,
            Pointer<VARIANT> pvarlocRoot,
            Int32 swClass,
            Pointer<Int32> plCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lThreadId,
            Pointer<VARIANT> pvarloc,
            Pointer<VARIANT> pvarlocRoot,
            int swClass,
            Pointer<Int32> plCookie,
          )>()(
        ptr.ref.lpVtbl,
        lThreadId,
        pvarloc,
        pvarlocRoot,
        swClass,
        plCookie,
      );

  int Revoke(
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        lCookie,
      );

  int OnNavigate(
    int lCookie,
    Pointer<VARIANT> pvarLoc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCookie,
            Pointer<VARIANT> pvarLoc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCookie,
            Pointer<VARIANT> pvarLoc,
          )>()(
        ptr.ref.lpVtbl,
        lCookie,
        pvarLoc,
      );

  int OnActivated(
    int lCookie,
    int fActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCookie,
            Int16 fActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCookie,
            int fActive,
          )>()(
        ptr.ref.lpVtbl,
        lCookie,
        fActive,
      );

  int FindWindowSW(
    Pointer<VARIANT> pvarLoc,
    Pointer<VARIANT> pvarLocRoot,
    int swClass,
    Pointer<Int32> phwnd,
    int swfwOptions,
    Pointer<Pointer<COMObject>> ppdispOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarLoc,
            Pointer<VARIANT> pvarLocRoot,
            Int32 swClass,
            Pointer<Int32> phwnd,
            Int32 swfwOptions,
            Pointer<Pointer<COMObject>> ppdispOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarLoc,
            Pointer<VARIANT> pvarLocRoot,
            int swClass,
            Pointer<Int32> phwnd,
            int swfwOptions,
            Pointer<Pointer<COMObject>> ppdispOut,
          )>()(
        ptr.ref.lpVtbl,
        pvarLoc,
        pvarLocRoot,
        swClass,
        phwnd,
        swfwOptions,
        ppdispOut,
      );

  int OnCreated(
    int lCookie,
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCookie,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCookie,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        lCookie,
        punk,
      );

  int ProcessAttachDetach(
    int fAttach,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fAttach,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fAttach,
          )>()(
        ptr.ref.lpVtbl,
        fAttach,
      );
}

/// @nodoc
const CLSID_ShellWindows = '{9BA05972-F6A8-11CF-A442-00A0C90A8F39}';

/// {@category com}
class ShellWindows extends IShellWindows {
  ShellWindows(Pointer<COMObject> ptr) : super(ptr);

  factory ShellWindows.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ShellWindows);
    final iid = calloc<GUID>()..ref.setGUID(IID_IShellWindows);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ShellWindows(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
