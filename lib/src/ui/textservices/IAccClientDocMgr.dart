// IAccClientDocMgr.dart

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
import '../../system/com/IEnumUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAccClientDocMgr = '{4C896039-7B6D-49E6-A8C1-45116A98292B}';

/// {@category Interface}
/// {@category com}
class IAccClientDocMgr extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAccClientDocMgr(Pointer<COMObject> ptr) : super(ptr);

  int GetDocuments(
    Pointer<Pointer<COMObject>> enumUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumUnknown,
          )>()(
        ptr.ref.lpVtbl,
        enumUnknown,
      );

  int LookupByHWND(
    int hWnd,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        riid,
        ppunk,
      );

  int LookupByPoint(
    POINT pt,
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
            POINT pt,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT pt,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        pt,
        riid,
        ppunk,
      );

  int GetFocused(
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppunk,
      );
}

/// @nodoc
const CLSID_AccClientDocMgr = '{FC48CC30-4F3E-4FA1-803B-AD0E196A83B1}';

/// {@category com}
class AccClientDocMgr extends IAccClientDocMgr {
  AccClientDocMgr(Pointer<COMObject> ptr) : super(ptr);

  factory AccClientDocMgr.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AccClientDocMgr);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAccClientDocMgr);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AccClientDocMgr(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
