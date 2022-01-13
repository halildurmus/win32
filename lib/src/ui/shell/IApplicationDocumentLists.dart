// IApplicationDocumentLists.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IApplicationDocumentLists = '{3C594F9F-9F30-47A1-979A-C9E83D3D0A06}';

/// {@category Interface}
/// {@category com}
class IApplicationDocumentLists extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IApplicationDocumentLists(Pointer<COMObject> ptr) : super(ptr);

  int SetAppID(
    Pointer<Utf16> pszAppID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>()(
        ptr.ref.lpVtbl,
        pszAppID,
      );

  int GetList(
    int listtype,
    int cItemsDesired,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 listtype,
            Uint32 cItemsDesired,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listtype,
            int cItemsDesired,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        listtype,
        cItemsDesired,
        riid,
        ppv,
      );
}

/// @nodoc
const CLSID_ApplicationDocumentLists = '{86BEC222-30F2-47E0-9F25-60D11CD75C28}';

/// {@category com}
class ApplicationDocumentLists extends IApplicationDocumentLists {
  ApplicationDocumentLists(Pointer<COMObject> ptr) : super(ptr);

  factory ApplicationDocumentLists.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ApplicationDocumentLists);
    final iid = calloc<GUID>()..ref.setGUID(IID_IApplicationDocumentLists);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ApplicationDocumentLists(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
