// imetadatatables2.dart

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
import 'imetadatatables.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataTables2 = '{badb5f70-58da-43a9-a1c6-d74819f19b15}';

/// Extends IMetaDataTables to include methods for working with metadata
/// streams.
///
/// {@category com}
class IMetaDataTables2 extends IMetaDataTables {
  // vtable begins at 22, is 2 entries long.
  IMetaDataTables2(super.ptr);

  factory IMetaDataTables2.from(IUnknown interface) =>
      IMetaDataTables2(interface.toInterface(IID_IMetaDataTables2));

  int getMetaDataStorage(Pointer<Pointer> ppvMd, Pointer<Uint32> pcbMd) =>
      (ptr.ref.vtable + 22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Pointer> ppvMd,
                          Pointer<Uint32> pcbMd)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer> ppvMd,
                  Pointer<Uint32> pcbMd)>()(ptr.ref.lpVtbl, ppvMd, pcbMd);

  int getMetaDataStreamInfo(int ix, Pointer<Pointer<Int8>> ppchName,
          Pointer<Pointer> ppv, Pointer<Uint32> pcb) =>
      (ptr.ref.vtable + 23)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 ix,
                              Pointer<Pointer<Int8>> ppchName,
                              Pointer<Pointer> ppv,
                              Pointer<Uint32> pcb)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int ix, Pointer<Pointer<Int8>> ppchName,
                      Pointer<Pointer> ppv, Pointer<Uint32> pcb)>()(
          ptr.ref.lpVtbl, ix, ppchName, ppv, pcb);
}
