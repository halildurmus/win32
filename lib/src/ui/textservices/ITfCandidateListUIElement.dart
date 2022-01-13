// ITfCandidateListUIElement.dart

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

import '../../ui/textservices/ITfUIElement.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfDocumentMgr.dart';

/// @nodoc
const IID_ITfCandidateListUIElement = '{EA1EA138-19DF-11D7-A6D2-00065B84435C}';

/// {@category Interface}
/// {@category com}
class ITfCandidateListUIElement extends ITfUIElement {
  // vtable begins at 7, is 8 entries long.
  ITfCandidateListUIElement(Pointer<COMObject> ptr) : super(ptr);

  int GetUpdatedFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int GetDocumentMgr(
    Pointer<Pointer<COMObject>> ppdim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdim,
          )>()(
        ptr.ref.lpVtbl,
        ppdim,
      );

  int GetCount(
    Pointer<Uint32> puCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>()(
        ptr.ref.lpVtbl,
        puCount,
      );

  int GetSelection(
    Pointer<Uint32> puIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puIndex,
          )>()(
        ptr.ref.lpVtbl,
        puIndex,
      );

  int GetString(
    int uIndex,
    Pointer<Pointer<Utf16>> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<Utf16>> pstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<Utf16>> pstr,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pstr,
      );

  int GetPageIndex(
    Pointer<Uint32> pIndex,
    int uSize,
    Pointer<Uint32> puPageCnt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pIndex,
            Uint32 uSize,
            Pointer<Uint32> puPageCnt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pIndex,
            int uSize,
            Pointer<Uint32> puPageCnt,
          )>()(
        ptr.ref.lpVtbl,
        pIndex,
        uSize,
        puPageCnt,
      );

  int SetPageIndex(
    Pointer<Uint32> pIndex,
    int uPageCnt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pIndex,
            Uint32 uPageCnt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pIndex,
            int uPageCnt,
          )>()(
        ptr.ref.lpVtbl,
        pIndex,
        uPageCnt,
      );

  int GetCurrentPage(
    Pointer<Uint32> puPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puPage,
          )>()(
        ptr.ref.lpVtbl,
        puPage,
      );
}
