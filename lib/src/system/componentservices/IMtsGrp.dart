// IMtsGrp.dart

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
const IID_IMtsGrp = '{4B2E958C-0393-11D1-B1AB-00AA00BA3258}';

/// {@category Interface}
/// {@category com}
class IMtsGrp extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IMtsGrp(Pointer<COMObject> ptr) : super(ptr);

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
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Item(
    int lIndex,
    Pointer<Pointer<COMObject>> ppUnkDispatcher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<COMObject>> ppUnkDispatcher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<COMObject>> ppUnkDispatcher,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        ppUnkDispatcher,
      );

  int Refresh() => ptr.ref.lpVtbl.value
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
}

/// @nodoc
const CLSID_MtsGrp = '{4B2E958D-0393-11D1-B1AB-00AA00BA3258}';

/// {@category com}
class MtsGrp extends IMtsGrp {
  MtsGrp(Pointer<COMObject> ptr) : super(ptr);

  factory MtsGrp.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MtsGrp);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMtsGrp);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MtsGrp(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
