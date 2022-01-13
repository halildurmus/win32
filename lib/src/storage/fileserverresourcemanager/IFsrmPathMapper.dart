// IFsrmPathMapper.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IFsrmPathMapper = '{6F4DBFFF-6920-4821-A6C3-B7E94C1FD60C}';

/// {@category Interface}
/// {@category com}
class IFsrmPathMapper extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IFsrmPathMapper(Pointer<COMObject> ptr) : super(ptr);

  int GetSharePathsForLocalPath(
    Pointer<Utf16> localPath,
    Pointer<Pointer<SAFEARRAY>> sharePaths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> localPath,
            Pointer<Pointer<SAFEARRAY>> sharePaths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> localPath,
            Pointer<Pointer<SAFEARRAY>> sharePaths,
          )>()(
        ptr.ref.lpVtbl,
        localPath,
        sharePaths,
      );
}

/// @nodoc
const CLSID_FsrmPathMapper = '{F3BE42BD-8AC2-409E-BBD8-FAF9B6B41FEB}';

/// {@category com}
class FsrmPathMapper extends IFsrmPathMapper {
  FsrmPathMapper(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmPathMapper.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmPathMapper);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmPathMapper);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmPathMapper(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
