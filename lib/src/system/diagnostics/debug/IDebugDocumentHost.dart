// IDebugDocumentHost.dart

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
import '../../../specialTypes.dart';

/// @nodoc
const IID_IDebugDocumentHost = '{51973C27-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentHost extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDebugDocumentHost(Pointer<COMObject> ptr) : super(ptr);

  int GetDeferredText(
    int dwTextStartCookie,
    Pointer<Utf16> pcharText,
    Pointer<Uint16> pstaTextAttr,
    Pointer<Uint32> pcNumChars,
    int cMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTextStartCookie,
            Pointer<Utf16> pcharText,
            Pointer<Uint16> pstaTextAttr,
            Pointer<Uint32> pcNumChars,
            Uint32 cMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTextStartCookie,
            Pointer<Utf16> pcharText,
            Pointer<Uint16> pstaTextAttr,
            Pointer<Uint32> pcNumChars,
            int cMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        dwTextStartCookie,
        pcharText,
        pstaTextAttr,
        pcNumChars,
        cMaxChars,
      );

  int GetScriptTextAttributes(
    Pointer<Utf16> pstrCode,
    int uNumCodeChars,
    Pointer<Utf16> pstrDelimiter,
    int dwFlags,
    Pointer<Uint16> pattr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            Uint32 uNumCodeChars,
            Pointer<Utf16> pstrDelimiter,
            Uint32 dwFlags,
            Pointer<Uint16> pattr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrCode,
            int uNumCodeChars,
            Pointer<Utf16> pstrDelimiter,
            int dwFlags,
            Pointer<Uint16> pattr,
          )>()(
        ptr.ref.lpVtbl,
        pstrCode,
        uNumCodeChars,
        pstrDelimiter,
        dwFlags,
        pattr,
      );

  int OnCreateDocumentContext(
    Pointer<Pointer<COMObject>> ppunkOuter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkOuter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkOuter,
          )>()(
        ptr.ref.lpVtbl,
        ppunkOuter,
      );

  int GetPathName(
    Pointer<Pointer<Utf16>> pbstrLongName,
    Pointer<Int32> pfIsOriginalFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLongName,
            Pointer<Int32> pfIsOriginalFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLongName,
            Pointer<Int32> pfIsOriginalFile,
          )>()(
        ptr.ref.lpVtbl,
        pbstrLongName,
        pfIsOriginalFile,
      );

  int GetFileName(
    Pointer<Pointer<Utf16>> pbstrShortName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrShortName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrShortName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrShortName,
      );

  int NotifyChanged() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
