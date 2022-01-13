// IDocWrap.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDocWrap = '{DCD285FE-0BE0-43BD-99C9-AAAEC513C555}';

/// {@category Interface}
/// {@category com}
class IDocWrap extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDocWrap(Pointer<COMObject> ptr) : super(ptr);

  int SetDoc(
    Pointer<GUID> riid,
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        punk,
      );

  int GetWrappedDoc(
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
const CLSID_DocWrap = '{BF426F7E-7A5E-44D6-830C-A390EA9462A3}';

/// {@category com}
class DocWrap extends IDocWrap {
  DocWrap(Pointer<COMObject> ptr) : super(ptr);

  factory DocWrap.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DocWrap);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDocWrap);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DocWrap(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
