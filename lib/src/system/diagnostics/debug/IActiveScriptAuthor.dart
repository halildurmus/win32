// IActiveScriptAuthor.dart

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
import '../../../system/com/IDispatch.dart';
import '../../../system/diagnostics/debug/IScriptNode.dart';
import '../../../system/diagnostics/debug/IScriptEntry.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IActiveScriptAuthor = '{9C109DA0-7006-11D1-B36C-00A0C911E8B2}';

/// {@category Interface}
/// {@category com}
class IActiveScriptAuthor extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IActiveScriptAuthor(Pointer<COMObject> ptr) : super(ptr);

  int AddNamedItem(
    Pointer<Utf16> pszName,
    int dwFlags,
    Pointer<COMObject> pdisp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Uint32 dwFlags,
            Pointer<COMObject> pdisp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            int dwFlags,
            Pointer<COMObject> pdisp,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        dwFlags,
        pdisp,
      );

  int AddScriptlet(
    Pointer<Utf16> pszDefaultName,
    Pointer<Utf16> pszCode,
    Pointer<Utf16> pszItemName,
    Pointer<Utf16> pszSubItemName,
    Pointer<Utf16> pszEventName,
    Pointer<Utf16> pszDelimiter,
    int dwCookie,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDefaultName,
            Pointer<Utf16> pszCode,
            Pointer<Utf16> pszItemName,
            Pointer<Utf16> pszSubItemName,
            Pointer<Utf16> pszEventName,
            Pointer<Utf16> pszDelimiter,
            Uint32 dwCookie,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDefaultName,
            Pointer<Utf16> pszCode,
            Pointer<Utf16> pszItemName,
            Pointer<Utf16> pszSubItemName,
            Pointer<Utf16> pszEventName,
            Pointer<Utf16> pszDelimiter,
            int dwCookie,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszDefaultName,
        pszCode,
        pszItemName,
        pszSubItemName,
        pszEventName,
        pszDelimiter,
        dwCookie,
        dwFlags,
      );

  int ParseScriptText(
    Pointer<Utf16> pszCode,
    Pointer<Utf16> pszItemName,
    Pointer<Utf16> pszDelimiter,
    int dwCookie,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCode,
            Pointer<Utf16> pszItemName,
            Pointer<Utf16> pszDelimiter,
            Uint32 dwCookie,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCode,
            Pointer<Utf16> pszItemName,
            Pointer<Utf16> pszDelimiter,
            int dwCookie,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszCode,
        pszItemName,
        pszDelimiter,
        dwCookie,
        dwFlags,
      );

  int GetScriptTextAttributes(
    Pointer<Utf16> pszCode,
    int cch,
    Pointer<Utf16> pszDelimiter,
    int dwFlags,
    Pointer<Uint16> pattr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCode,
            Uint32 cch,
            Pointer<Utf16> pszDelimiter,
            Uint32 dwFlags,
            Pointer<Uint16> pattr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCode,
            int cch,
            Pointer<Utf16> pszDelimiter,
            int dwFlags,
            Pointer<Uint16> pattr,
          )>()(
        ptr.ref.lpVtbl,
        pszCode,
        cch,
        pszDelimiter,
        dwFlags,
        pattr,
      );

  int GetScriptletTextAttributes(
    Pointer<Utf16> pszCode,
    int cch,
    Pointer<Utf16> pszDelimiter,
    int dwFlags,
    Pointer<Uint16> pattr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCode,
            Uint32 cch,
            Pointer<Utf16> pszDelimiter,
            Uint32 dwFlags,
            Pointer<Uint16> pattr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCode,
            int cch,
            Pointer<Utf16> pszDelimiter,
            int dwFlags,
            Pointer<Uint16> pattr,
          )>()(
        ptr.ref.lpVtbl,
        pszCode,
        cch,
        pszDelimiter,
        dwFlags,
        pattr,
      );

  int GetRoot(
    Pointer<Pointer<COMObject>> ppsp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsp,
          )>()(
        ptr.ref.lpVtbl,
        ppsp,
      );

  int GetLanguageFlags(
    Pointer<Uint32> pgrfasa,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pgrfasa,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pgrfasa,
          )>()(
        ptr.ref.lpVtbl,
        pgrfasa,
      );

  int GetEventHandler(
    Pointer<COMObject> pdisp,
    Pointer<Utf16> pszItem,
    Pointer<Utf16> pszSubItem,
    Pointer<Utf16> pszEvent,
    Pointer<Pointer<COMObject>> ppse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdisp,
            Pointer<Utf16> pszItem,
            Pointer<Utf16> pszSubItem,
            Pointer<Utf16> pszEvent,
            Pointer<Pointer<COMObject>> ppse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdisp,
            Pointer<Utf16> pszItem,
            Pointer<Utf16> pszSubItem,
            Pointer<Utf16> pszEvent,
            Pointer<Pointer<COMObject>> ppse,
          )>()(
        ptr.ref.lpVtbl,
        pdisp,
        pszItem,
        pszSubItem,
        pszEvent,
        ppse,
      );

  int RemoveNamedItem(
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
      );

  int AddTypeLib(
    Pointer<GUID> rguidTypeLib,
    int dwMajor,
    int dwMinor,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidTypeLib,
            Uint32 dwMajor,
            Uint32 dwMinor,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidTypeLib,
            int dwMajor,
            int dwMinor,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        rguidTypeLib,
        dwMajor,
        dwMinor,
        dwFlags,
      );

  int RemoveTypeLib(
    Pointer<GUID> rguidTypeLib,
    int dwMajor,
    int dwMinor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidTypeLib,
            Uint32 dwMajor,
            Uint32 dwMinor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidTypeLib,
            int dwMajor,
            int dwMinor,
          )>()(
        ptr.ref.lpVtbl,
        rguidTypeLib,
        dwMajor,
        dwMinor,
      );

  int GetChars(
    int fRequestedList,
    Pointer<Pointer<Utf16>> pbstrChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fRequestedList,
            Pointer<Pointer<Utf16>> pbstrChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRequestedList,
            Pointer<Pointer<Utf16>> pbstrChars,
          )>()(
        ptr.ref.lpVtbl,
        fRequestedList,
        pbstrChars,
      );

  int GetInfoFromContext(
    Pointer<Utf16> pszCode,
    int cchCode,
    int ichCurrentPosition,
    int dwListTypesRequested,
    Pointer<Uint32> pdwListTypesProvided,
    Pointer<Uint32> pichListAnchorPosition,
    Pointer<Uint32> pichFuncAnchorPosition,
    Pointer<Int32> pmemid,
    Pointer<Int32> piCurrentParameter,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCode,
            Uint32 cchCode,
            Uint32 ichCurrentPosition,
            Uint32 dwListTypesRequested,
            Pointer<Uint32> pdwListTypesProvided,
            Pointer<Uint32> pichListAnchorPosition,
            Pointer<Uint32> pichFuncAnchorPosition,
            Pointer<Int32> pmemid,
            Pointer<Int32> piCurrentParameter,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCode,
            int cchCode,
            int ichCurrentPosition,
            int dwListTypesRequested,
            Pointer<Uint32> pdwListTypesProvided,
            Pointer<Uint32> pichListAnchorPosition,
            Pointer<Uint32> pichFuncAnchorPosition,
            Pointer<Int32> pmemid,
            Pointer<Int32> piCurrentParameter,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        pszCode,
        cchCode,
        ichCurrentPosition,
        dwListTypesRequested,
        pdwListTypesProvided,
        pichListAnchorPosition,
        pichFuncAnchorPosition,
        pmemid,
        piCurrentParameter,
        ppunk,
      );

  int IsCommitChar(
    int ch,
    Pointer<Int32> pfcommit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 ch,
            Pointer<Int32> pfcommit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ch,
            Pointer<Int32> pfcommit,
          )>()(
        ptr.ref.lpVtbl,
        ch,
        pfcommit,
      );
}
