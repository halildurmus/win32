// IQueryCancelAutoPlay.dart

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
const IID_IQueryCancelAutoPlay = '{DDEFE873-6997-4E68-BE26-39B633ADBE12}';

/// {@category Interface}
/// {@category com}
class IQueryCancelAutoPlay extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IQueryCancelAutoPlay(Pointer<COMObject> ptr) : super(ptr);

  int AllowAutoPlay(
    Pointer<Utf16> pszPath,
    int dwContentType,
    Pointer<Utf16> pszLabel,
    int dwSerialNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Uint32 dwContentType,
            Pointer<Utf16> pszLabel,
            Uint32 dwSerialNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int dwContentType,
            Pointer<Utf16> pszLabel,
            int dwSerialNumber,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        dwContentType,
        pszLabel,
        dwSerialNumber,
      );
}

/// @nodoc
const CLSID_QueryCancelAutoPlay = '{331F1768-05A9-4DDD-B86E-DAE34DDC998A}';

/// {@category com}
class QueryCancelAutoPlay extends IQueryCancelAutoPlay {
  QueryCancelAutoPlay(Pointer<COMObject> ptr) : super(ptr);

  factory QueryCancelAutoPlay.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_QueryCancelAutoPlay);
    final iid = calloc<GUID>()..ref.setGUID(IID_IQueryCancelAutoPlay);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return QueryCancelAutoPlay(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
