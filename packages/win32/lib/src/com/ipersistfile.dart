// ipersistfile.dart

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
import 'ipersist.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IPersistFile = '{0000010b-0000-0000-c000-000000000046}';

/// Enables an object to be loaded from or saved to a disk file, rather than
/// a storage object or stream. Because the information needed to open a
/// file varies greatly from one application to another, the implementation
/// of `IPersistFile::Load`on the object must also open its disk file.
///
/// {@category com}
class IPersistFile extends IPersist {
  // vtable begins at 4, is 5 entries long.
  IPersistFile(super.ptr);

  factory IPersistFile.from(IUnknown interface) =>
      IPersistFile(interface.toInterface(IID_IPersistFile));

  int isDirty() => (ptr.ref.vtable + 4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int load(Pointer<Utf16> pszFileName, int dwMode) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Utf16> pszFileName, Uint32 dwMode)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Utf16> pszFileName, int dwMode)
      >()(ptr.ref.lpVtbl, pszFileName, dwMode);

  int save(Pointer<Utf16> pszFileName, int fRemember) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Utf16> pszFileName, Int32 fRemember)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Utf16> pszFileName, int fRemember)
      >()(ptr.ref.lpVtbl, pszFileName, fRemember);

  int saveCompleted(Pointer<Utf16> pszFileName) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszFileName)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> pszFileName)>()(
    ptr.ref.lpVtbl,
    pszFileName,
  );

  int getCurFile(Pointer<Pointer<Utf16>> ppszFileName) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> ppszFileName)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<Utf16>> ppszFileName)
      >()(ptr.ref.lpVtbl, ppszFileName);
}
