// ipersistmemory.dart

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
const IID_IPersistMemory = '{bd1ae5e0-a6ae-11ce-bd37-504200c10000}';

/// Saves and loads objects from a stream.
///
/// {@category com}
class IPersistMemory extends IPersist {
  // vtable begins at 4, is 5 entries long.
  IPersistMemory(super.ptr);

  factory IPersistMemory.from(IUnknown interface) =>
      IPersistMemory(interface.toInterface(IID_IPersistMemory));

  int isDirty() => (ptr.ref.vtable + 4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int load(Pointer pMem, int cbSize) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer pMem, Uint32 cbSize)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer pMem, int cbSize)>()(
    ptr.ref.lpVtbl,
    pMem,
    cbSize,
  );

  int save(Pointer pMem, int fClearDirty, int cbSize) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer pMem,
              Int32 fClearDirty,
              Uint32 cbSize,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer pMem, int fClearDirty, int cbSize)
      >()(ptr.ref.lpVtbl, pMem, fClearDirty, cbSize);

  int getSizeMax(Pointer<Uint32> pCbSize) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pCbSize)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pCbSize)>()(
    ptr.ref.lpVtbl,
    pCbSize,
  );

  int initNew() => (ptr.ref.vtable + 8)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
