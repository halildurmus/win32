// ishelllinkdatalist.dart

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
const IID_IShellLinkDataList = '{45e2b4ae-b1c3-11d0-b92f-00a0c90312e1}';

/// Exposes methods that allow an application to attach extra data blocks to
/// a Shell link. These methods add, copy, or remove data blocks.
///
/// {@category com}
class IShellLinkDataList extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IShellLinkDataList(super.ptr);

  factory IShellLinkDataList.from(IUnknown interface) =>
      IShellLinkDataList(interface.toInterface(IID_IShellLinkDataList));

  int addDataBlock(Pointer pDataBlock) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer pDataBlock)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer pDataBlock)>()(
    ptr.ref.lpVtbl,
    pDataBlock,
  );

  int copyDataBlock(int dwSig, Pointer<Pointer> ppDataBlock) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 dwSig,
                  Pointer<Pointer> ppDataBlock,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, int dwSig, Pointer<Pointer> ppDataBlock)
          >()(ptr.ref.lpVtbl, dwSig, ppDataBlock);

  int removeDataBlock(int dwSig) => (ptr.ref.vtable + 5)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwSig)>>>()
      .value
      .asFunction<int Function(Pointer, int dwSig)>()(ptr.ref.lpVtbl, dwSig);

  int getFlags(Pointer<Uint32> pdwFlags) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwFlags)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pdwFlags)>()(
    ptr.ref.lpVtbl,
    pdwFlags,
  );

  int setFlags(int dwFlags) => (ptr.ref.vtable + 7)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwFlags)>>>()
      .value
      .asFunction<int Function(Pointer, int dwFlags)>()(
    ptr.ref.lpVtbl,
    dwFlags,
  );
}
