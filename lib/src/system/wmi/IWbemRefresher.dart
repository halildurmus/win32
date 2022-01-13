// IWbemRefresher.dart

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
const IID_IWbemRefresher = '{49353C99-516B-11D1-AEA6-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemRefresher extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemRefresher(Pointer<COMObject> ptr) : super(ptr);

  int Refresh(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );
}

/// @nodoc
const CLSID_WbemRefresher = '{C71566F2-561E-11D1-AD87-00C04FD8FDFF}';

/// {@category com}
class WbemRefresher extends IWbemRefresher {
  WbemRefresher(Pointer<COMObject> ptr) : super(ptr);

  factory WbemRefresher.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemRefresher);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemRefresher);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemRefresher(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
