// IDebugDocumentHelper64.dart

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
import '../../../system/diagnostics/debug/IDebugApplication64.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugDocumentHelper64.dart';
import '../../../system/diagnostics/debug/IDebugDocumentHost.dart';
import '../../../system/diagnostics/debug/IActiveScript.dart';
import '../../../system/diagnostics/debug/IDebugApplicationNode.dart';
import '../../../system/diagnostics/debug/IDebugDocumentContext.dart';

/// @nodoc
const IID_IDebugDocumentHelper64 = '{C4C7363C-20FD-47F9-BD82-4855E0150871}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentHelper64 extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IDebugDocumentHelper64(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<COMObject> pda,
    Pointer<Utf16> pszShortName,
    Pointer<Utf16> pszLongName,
    int docAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pda,
            Pointer<Utf16> pszShortName,
            Pointer<Utf16> pszLongName,
            Uint32 docAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pda,
            Pointer<Utf16> pszShortName,
            Pointer<Utf16> pszLongName,
            int docAttr,
          )>()(
        ptr.ref.lpVtbl,
        pda,
        pszShortName,
        pszLongName,
        docAttr,
      );

  int Attach(
    Pointer<COMObject> pddhParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pddhParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pddhParent,
          )>()(
        ptr.ref.lpVtbl,
        pddhParent,
      );

  int Detach() => ptr.ref.lpVtbl.value
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

  int AddUnicodeText(
    Pointer<Utf16> pszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszText,
          )>()(
        ptr.ref.lpVtbl,
        pszText,
      );

  int AddDBCSText(
    Pointer<Utf8> pszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszText,
          )>()(
        ptr.ref.lpVtbl,
        pszText,
      );

  int SetDebugDocumentHost(
    Pointer<COMObject> pddh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pddh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pddh,
          )>()(
        ptr.ref.lpVtbl,
        pddh,
      );

  int AddDeferredText(
    int cChars,
    int dwTextStartCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cChars,
            Uint32 dwTextStartCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cChars,
            int dwTextStartCookie,
          )>()(
        ptr.ref.lpVtbl,
        cChars,
        dwTextStartCookie,
      );

  int DefineScriptBlock(
    int ulCharOffset,
    int cChars,
    Pointer<COMObject> pas,
    int fScriptlet,
    Pointer<Uint64> pdwSourceContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCharOffset,
            Uint32 cChars,
            Pointer<COMObject> pas,
            Int32 fScriptlet,
            Pointer<Uint64> pdwSourceContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCharOffset,
            int cChars,
            Pointer<COMObject> pas,
            int fScriptlet,
            Pointer<Uint64> pdwSourceContext,
          )>()(
        ptr.ref.lpVtbl,
        ulCharOffset,
        cChars,
        pas,
        fScriptlet,
        pdwSourceContext,
      );

  int SetDefaultTextAttr(
    int staTextAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 staTextAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int staTextAttr,
          )>()(
        ptr.ref.lpVtbl,
        staTextAttr,
      );

  int SetTextAttributes(
    int ulCharOffset,
    int cChars,
    Pointer<Uint16> pstaTextAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCharOffset,
            Uint32 cChars,
            Pointer<Uint16> pstaTextAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCharOffset,
            int cChars,
            Pointer<Uint16> pstaTextAttr,
          )>()(
        ptr.ref.lpVtbl,
        ulCharOffset,
        cChars,
        pstaTextAttr,
      );

  int SetLongName(
    Pointer<Utf16> pszLongName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszLongName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszLongName,
          )>()(
        ptr.ref.lpVtbl,
        pszLongName,
      );

  int SetShortName(
    Pointer<Utf16> pszShortName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszShortName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszShortName,
          )>()(
        ptr.ref.lpVtbl,
        pszShortName,
      );

  int SetDocumentAttr(
    int pszAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pszAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pszAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pszAttributes,
      );

  int GetDebugApplicationNode(
    Pointer<Pointer<COMObject>> ppdan,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdan,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdan,
          )>()(
        ptr.ref.lpVtbl,
        ppdan,
      );

  int GetScriptBlockInfo(
    int dwSourceContext,
    Pointer<Pointer<COMObject>> ppasd,
    Pointer<Uint32> piCharPos,
    Pointer<Uint32> pcChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dwSourceContext,
            Pointer<Pointer<COMObject>> ppasd,
            Pointer<Uint32> piCharPos,
            Pointer<Uint32> pcChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceContext,
            Pointer<Pointer<COMObject>> ppasd,
            Pointer<Uint32> piCharPos,
            Pointer<Uint32> pcChars,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceContext,
        ppasd,
        piCharPos,
        pcChars,
      );

  int CreateDebugDocumentContext(
    int iCharPos,
    int cChars,
    Pointer<Pointer<COMObject>> ppddc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iCharPos,
            Uint32 cChars,
            Pointer<Pointer<COMObject>> ppddc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iCharPos,
            int cChars,
            Pointer<Pointer<COMObject>> ppddc,
          )>()(
        ptr.ref.lpVtbl,
        iCharPos,
        cChars,
        ppddc,
      );

  int BringDocumentToTop() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int BringDocumentContextToTop(
    Pointer<COMObject> pddc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pddc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pddc,
          )>()(
        ptr.ref.lpVtbl,
        pddc,
      );
}
