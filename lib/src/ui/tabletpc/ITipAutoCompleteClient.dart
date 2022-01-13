// ITipAutoCompleteClient.dart

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
import '../../ui/tabletpc/ITipAutoCompleteProvider.dart';

/// @nodoc
const IID_ITipAutoCompleteClient = '{5E078E03-8265-4BBE-9487-D242EDBEF910}';

/// {@category Interface}
/// {@category com}
class ITipAutoCompleteClient extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITipAutoCompleteClient(Pointer<COMObject> ptr) : super(ptr);

  int AdviseProvider(
    int hWndField,
    Pointer<COMObject> pIProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndField,
            Pointer<COMObject> pIProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndField,
            Pointer<COMObject> pIProvider,
          )>()(
        ptr.ref.lpVtbl,
        hWndField,
        pIProvider,
      );

  int UnadviseProvider(
    int hWndField,
    Pointer<COMObject> pIProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndField,
            Pointer<COMObject> pIProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndField,
            Pointer<COMObject> pIProvider,
          )>()(
        ptr.ref.lpVtbl,
        hWndField,
        pIProvider,
      );

  int UserSelection() => ptr.ref.lpVtbl.value
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

  int PreferredRects(
    Pointer<RECT> prcACList,
    Pointer<RECT> prcField,
    Pointer<RECT> prcModifiedACList,
    Pointer<Int32> pfShownAboveTip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcACList,
            Pointer<RECT> prcField,
            Pointer<RECT> prcModifiedACList,
            Pointer<Int32> pfShownAboveTip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcACList,
            Pointer<RECT> prcField,
            Pointer<RECT> prcModifiedACList,
            Pointer<Int32> pfShownAboveTip,
          )>()(
        ptr.ref.lpVtbl,
        prcACList,
        prcField,
        prcModifiedACList,
        pfShownAboveTip,
      );

  int RequestShowUI(
    int hWndList,
    Pointer<Int32> pfAllowShowing,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndList,
            Pointer<Int32> pfAllowShowing,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndList,
            Pointer<Int32> pfAllowShowing,
          )>()(
        ptr.ref.lpVtbl,
        hWndList,
        pfAllowShowing,
      );
}

/// @nodoc
const CLSID_TipAutoCompleteClient = '{807C1E6C-1D00-453F-B920-B61BB7CDD997}';

/// {@category com}
class TipAutoCompleteClient extends ITipAutoCompleteClient {
  TipAutoCompleteClient(Pointer<COMObject> ptr) : super(ptr);

  factory TipAutoCompleteClient.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_TipAutoCompleteClient);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITipAutoCompleteClient);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TipAutoCompleteClient(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
