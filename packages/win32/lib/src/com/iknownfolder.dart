// iknownfolder.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IKnownFolder = '{3aa7af7e-9b36-420c-a8e3-f77d4674a488}';

/// Exposes methods that allow an application to retrieve information about
/// a known folder's category, type, GUID, pointer to an item identifier
/// list (PIDL) value, redirection capabilities, and definition. It provides
/// a method for the retrieval of a known folder's `IShellItem` object. It
/// also provides methods to get or set the path of the known folder.
///
/// {@category com}
class IKnownFolder extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IKnownFolder(super.ptr);

  factory IKnownFolder.from(IUnknown interface) =>
      IKnownFolder(interface.toInterface(IID_IKnownFolder));

  int getId(Pointer<GUID> pkfid) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> pkfid)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pkfid)>()(
    ptr.ref.lpVtbl,
    pkfid,
  );

  int getCategory(Pointer<Int32> pCategory) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pCategory)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pCategory)>()(
    ptr.ref.lpVtbl,
    pCategory,
  );

  int getShellItem(int dwFlags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 dwFlags,
                  Pointer<GUID> riid,
                  Pointer<Pointer> ppv,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int dwFlags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv,
            )
          >()(ptr.ref.lpVtbl, dwFlags, riid, ppv);

  int getPath(int dwFlags, Pointer<Pointer<Utf16>> ppszPath) =>
      (ptr.ref.vtable + 6)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 dwFlags,
                  Pointer<Pointer<Utf16>> ppszPath,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, int dwFlags, Pointer<Pointer<Utf16>> ppszPath)
          >()(ptr.ref.lpVtbl, dwFlags, ppszPath);

  int setPath(int dwFlags, Pointer<Utf16> pszPath) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Uint32 dwFlags, Pointer<Utf16> pszPath)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, int dwFlags, Pointer<Utf16> pszPath)>()(
    ptr.ref.lpVtbl,
    dwFlags,
    pszPath,
  );

  int getIDList(int dwFlags, Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 dwFlags,
                  Pointer<Pointer<ITEMIDLIST>> ppidl,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int dwFlags,
              Pointer<Pointer<ITEMIDLIST>> ppidl,
            )
          >()(ptr.ref.lpVtbl, dwFlags, ppidl);

  int getFolderType(Pointer<GUID> pftid) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> pftid)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pftid)>()(
    ptr.ref.lpVtbl,
    pftid,
  );

  int getRedirectionCapabilities(
    Pointer<Uint32> pCapabilities,
  ) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pCapabilities)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pCapabilities)>()(
    ptr.ref.lpVtbl,
    pCapabilities,
  );

  int getFolderDefinition(Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      (ptr.ref.vtable + 11)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<KNOWNFOLDER_DEFINITION> pKFD)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<KNOWNFOLDER_DEFINITION> pKFD)
          >()(ptr.ref.lpVtbl, pKFD);
}
