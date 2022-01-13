// IPropertyUI.dart

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
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IPropertyUI = '{757A7D9F-919A-4118-99D7-DBB208C8CC66}';

/// {@category Interface}
/// {@category com}
class IPropertyUI extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IPropertyUI(Pointer<COMObject> ptr) : super(ptr);

  int ParsePropertyName(
    Pointer<Utf16> pszName,
    Pointer<GUID> pfmtid,
    Pointer<Uint32> ppid,
    Pointer<Uint32> pchEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<GUID> pfmtid,
            Pointer<Uint32> ppid,
            Pointer<Uint32> pchEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<GUID> pfmtid,
            Pointer<Uint32> ppid,
            Pointer<Uint32> pchEaten,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pfmtid,
        ppid,
        pchEaten,
      );

  int GetCannonicalName(
    Pointer<GUID> fmtid,
    int pid,
    Pointer<Utf16> pwszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> fmtid,
            Uint32 pid,
            Pointer<Utf16> pwszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> fmtid,
            int pid,
            Pointer<Utf16> pwszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        fmtid,
        pid,
        pwszText,
        cchText,
      );

  int GetDisplayName(
    Pointer<GUID> fmtid,
    int pid,
    int flags,
    Pointer<Utf16> pwszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> fmtid,
            Uint32 pid,
            Uint32 flags,
            Pointer<Utf16> pwszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> fmtid,
            int pid,
            int flags,
            Pointer<Utf16> pwszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        fmtid,
        pid,
        flags,
        pwszText,
        cchText,
      );

  int GetPropertyDescription(
    Pointer<GUID> fmtid,
    int pid,
    Pointer<Utf16> pwszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> fmtid,
            Uint32 pid,
            Pointer<Utf16> pwszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> fmtid,
            int pid,
            Pointer<Utf16> pwszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        fmtid,
        pid,
        pwszText,
        cchText,
      );

  int GetDefaultWidth(
    Pointer<GUID> fmtid,
    int pid,
    Pointer<Uint32> pcxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> fmtid,
            Uint32 pid,
            Pointer<Uint32> pcxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> fmtid,
            int pid,
            Pointer<Uint32> pcxChars,
          )>()(
        ptr.ref.lpVtbl,
        fmtid,
        pid,
        pcxChars,
      );

  int GetFlags(
    Pointer<GUID> fmtid,
    int pid,
    Pointer<Uint32> pflags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> fmtid,
            Uint32 pid,
            Pointer<Uint32> pflags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> fmtid,
            int pid,
            Pointer<Uint32> pflags,
          )>()(
        ptr.ref.lpVtbl,
        fmtid,
        pid,
        pflags,
      );

  int FormatForDisplay(
    Pointer<GUID> fmtid,
    int pid,
    Pointer<PROPVARIANT> ppropvar,
    int puiff,
    Pointer<Utf16> pwszText,
    int cchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> fmtid,
            Uint32 pid,
            Pointer<PROPVARIANT> ppropvar,
            Uint32 puiff,
            Pointer<Utf16> pwszText,
            Uint32 cchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> fmtid,
            int pid,
            Pointer<PROPVARIANT> ppropvar,
            int puiff,
            Pointer<Utf16> pwszText,
            int cchText,
          )>()(
        ptr.ref.lpVtbl,
        fmtid,
        pid,
        ppropvar,
        puiff,
        pwszText,
        cchText,
      );

  int GetHelpInfo(
    Pointer<GUID> fmtid,
    int pid,
    Pointer<Utf16> pwszHelpFile,
    int cch,
    Pointer<Uint32> puHelpID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> fmtid,
            Uint32 pid,
            Pointer<Utf16> pwszHelpFile,
            Uint32 cch,
            Pointer<Uint32> puHelpID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> fmtid,
            int pid,
            Pointer<Utf16> pwszHelpFile,
            int cch,
            Pointer<Uint32> puHelpID,
          )>()(
        ptr.ref.lpVtbl,
        fmtid,
        pid,
        pwszHelpFile,
        cch,
        puHelpID,
      );
}
