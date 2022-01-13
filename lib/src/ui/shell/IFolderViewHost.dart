// IFolderViewHost.dart

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
import '../../system/com/IDataObject.dart';

/// @nodoc
const IID_IFolderViewHost = '{1EA58F02-D55A-411D-B09E-9E65AC21605B}';

/// {@category Interface}
/// {@category com}
class IFolderViewHost extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IFolderViewHost(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hwndParent,
    Pointer<COMObject> pdo,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<COMObject> pdo,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<COMObject> pdo,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        pdo,
        prc,
      );
}

/// @nodoc
const CLSID_FolderViewHost = '{20B1CB23-6968-4EB9-B7D4-A66D00D07CEE}';

/// {@category com}
class FolderViewHost extends IFolderViewHost {
  FolderViewHost(Pointer<COMObject> ptr) : super(ptr);

  factory FolderViewHost.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FolderViewHost);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFolderViewHost);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FolderViewHost(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
