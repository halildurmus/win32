// IPrintDocumentPackageTarget.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintDocumentPackageTarget =
    '{1B8EFEC4-3019-4C27-964E-367202156906}';

/// {@category Interface}
/// {@category com}
class IPrintDocumentPackageTarget extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPrintDocumentPackageTarget(Pointer<COMObject> ptr) : super(ptr);

  int GetPackageTargetTypes(
    Pointer<Uint32> targetCount,
    Pointer<Pointer<GUID>> targetTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> targetCount,
            Pointer<Pointer<GUID>> targetTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> targetCount,
            Pointer<Pointer<GUID>> targetTypes,
          )>()(
        ptr.ref.lpVtbl,
        targetCount,
        targetTypes,
      );

  int GetPackageTarget(
    Pointer<GUID> guidTargetType,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidTargetType,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidTargetType,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvTarget,
          )>()(
        ptr.ref.lpVtbl,
        guidTargetType,
        riid,
        ppvTarget,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
const CLSID_PrintDocumentPackageTarget =
    '{4842669E-9947-46EA-8BA2-D8CCE432C2CA}';

/// {@category com}
class PrintDocumentPackageTarget extends IPrintDocumentPackageTarget {
  PrintDocumentPackageTarget(Pointer<COMObject> ptr) : super(ptr);

  factory PrintDocumentPackageTarget.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PrintDocumentPackageTarget);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPrintDocumentPackageTarget);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PrintDocumentPackageTarget(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
