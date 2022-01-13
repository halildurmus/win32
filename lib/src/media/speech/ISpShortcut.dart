// ISpShortcut.dart

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
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpShortcut = '{3DF681E2-EA56-11D9-8BDE-F66BAD1E3F3A}';

/// {@category Interface}
/// {@category com}
class ISpShortcut extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISpShortcut(Pointer<COMObject> ptr) : super(ptr);

  int AddShortcut(
    Pointer<Utf16> pszDisplay,
    int LangID,
    Pointer<Utf16> pszSpoken,
    int shType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDisplay,
            Uint16 LangID,
            Pointer<Utf16> pszSpoken,
            Int32 shType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDisplay,
            int LangID,
            Pointer<Utf16> pszSpoken,
            int shType,
          )>()(
        ptr.ref.lpVtbl,
        pszDisplay,
        LangID,
        pszSpoken,
        shType,
      );

  int RemoveShortcut(
    Pointer<Utf16> pszDisplay,
    int LangID,
    Pointer<Utf16> pszSpoken,
    int shType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDisplay,
            Uint16 LangID,
            Pointer<Utf16> pszSpoken,
            Int32 shType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDisplay,
            int LangID,
            Pointer<Utf16> pszSpoken,
            int shType,
          )>()(
        ptr.ref.lpVtbl,
        pszDisplay,
        LangID,
        pszSpoken,
        shType,
      );

  int GetShortcuts(
    int LangID,
    Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 LangID,
            Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LangID,
            Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
          )>()(
        ptr.ref.lpVtbl,
        LangID,
        pShortcutpairList,
      );

  int GetGeneration(
    Pointer<Uint32> pdwGeneration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
          )>()(
        ptr.ref.lpVtbl,
        pdwGeneration,
      );

  int GetWordsFromGenerationChange(
    Pointer<Uint32> pdwGeneration,
    Pointer<SPWORDLIST> pWordList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<SPWORDLIST> pWordList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<SPWORDLIST> pWordList,
          )>()(
        ptr.ref.lpVtbl,
        pdwGeneration,
        pWordList,
      );

  int GetWords(
    Pointer<Uint32> pdwGeneration,
    Pointer<Uint32> pdwCookie,
    Pointer<SPWORDLIST> pWordList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<Uint32> pdwCookie,
            Pointer<SPWORDLIST> pWordList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<Uint32> pdwCookie,
            Pointer<SPWORDLIST> pWordList,
          )>()(
        ptr.ref.lpVtbl,
        pdwGeneration,
        pdwCookie,
        pWordList,
      );

  int GetShortcutsForGeneration(
    Pointer<Uint32> pdwGeneration,
    Pointer<Uint32> pdwCookie,
    Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<Uint32> pdwCookie,
            Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<Uint32> pdwCookie,
            Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
          )>()(
        ptr.ref.lpVtbl,
        pdwGeneration,
        pdwCookie,
        pShortcutpairList,
      );

  int GetGenerationChange(
    Pointer<Uint32> pdwGeneration,
    Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
            Pointer<SPSHORTCUTPAIRLIST> pShortcutpairList,
          )>()(
        ptr.ref.lpVtbl,
        pdwGeneration,
        pShortcutpairList,
      );
}

/// @nodoc
const CLSID_SpShortcut = '{0D722F1A-9FCF-4E62-96D8-6DF8F01A26AA}';

/// {@category com}
class SpShortcut extends ISpShortcut {
  SpShortcut(Pointer<COMObject> ptr) : super(ptr);

  factory SpShortcut.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpShortcut);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpShortcut);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpShortcut(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
