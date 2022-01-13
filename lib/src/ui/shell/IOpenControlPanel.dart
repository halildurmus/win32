// IOpenControlPanel.dart

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
import '../../specialTypes.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IOpenControlPanel = '{D11AD862-66DE-4DF4-BF6C-1F5621996AF1}';

/// {@category Interface}
/// {@category com}
class IOpenControlPanel extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOpenControlPanel(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> pszName,
    Pointer<Utf16> pszPage,
    Pointer<COMObject> punkSite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszPage,
            Pointer<COMObject> punkSite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszPage,
            Pointer<COMObject> punkSite,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pszPage,
        punkSite,
      );

  int GetPath(
    Pointer<Utf16> pszName,
    Pointer<Utf16> pszPath,
    int cchPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszPath,
            Uint32 cchPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszPath,
            int cchPath,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pszPath,
        cchPath,
      );

  int GetCurrentView(
    Pointer<Int32> pView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pView,
          )>()(
        ptr.ref.lpVtbl,
        pView,
      );
}

/// @nodoc
const CLSID_OpenControlPanel = '{06622D85-6856-4460-8DE1-A81921B41C4B}';

/// {@category com}
class OpenControlPanel extends IOpenControlPanel {
  OpenControlPanel(Pointer<COMObject> ptr) : super(ptr);

  factory OpenControlPanel.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_OpenControlPanel);
    final iid = calloc<GUID>()..ref.setGUID(IID_IOpenControlPanel);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return OpenControlPanel(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
