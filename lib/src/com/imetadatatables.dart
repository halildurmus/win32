// imetadatatables.dart

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
const IID_IMetaDataTables = '{d8f579ab-402d-4b8e-82d9-5d63b1065c68}';

/// Provides methods for the storage and retrieval of metadata information
/// in tables.
///
/// {@category com}
class IMetaDataTables extends IUnknown {
  // vtable begins at 3, is 19 entries long.
  IMetaDataTables(super.ptr);

  factory IMetaDataTables.from(IUnknown interface) =>
      IMetaDataTables(interface.toInterface(IID_IMetaDataTables));

  int getStringHeapSize(Pointer<Uint32> pcbStrings) => ptr.ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pcbStrings)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pcbStrings)>()(
      ptr.ref.lpVtbl, pcbStrings);

  int getBlobHeapSize(Pointer<Uint32> pcbBlobs) => ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pcbBlobs)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pcbBlobs)>()(
      ptr.ref.lpVtbl, pcbBlobs);

  int getGuidHeapSize(Pointer<Uint32> pcbGuids) => ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pcbGuids)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pcbGuids)>()(
      ptr.ref.lpVtbl, pcbGuids);

  int getUserStringHeapSize(Pointer<Uint32> pcbBlobs) => ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pcbBlobs)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pcbBlobs)>()(
      ptr.ref.lpVtbl, pcbBlobs);

  int getNumTables(Pointer<Uint32> pcTables) => ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pcTables)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pcTables)>()(
      ptr.ref.lpVtbl, pcTables);

  int getTableIndex(int token, Pointer<Uint32> pixTbl) => ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Uint32 token, Pointer<Uint32> pixTbl)>>>()
          .value
          .asFunction<
              int Function(Pointer, int token, Pointer<Uint32> pixTbl)>()(
      ptr.ref.lpVtbl, token, pixTbl);

  int getTableInfo(
          int ixTbl,
          Pointer<Uint32> pcbRow,
          Pointer<Uint32> pcRows,
          Pointer<Uint32> pcCols,
          Pointer<Uint32> piKey,
          Pointer<Pointer<Int8>> ppName) =>
      ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 ixTbl,
                              Pointer<Uint32> pcbRow,
                              Pointer<Uint32> pcRows,
                              Pointer<Uint32> pcCols,
                              Pointer<Uint32> piKey,
                              Pointer<Pointer<Int8>> ppName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int ixTbl,
                      Pointer<Uint32> pcbRow,
                      Pointer<Uint32> pcRows,
                      Pointer<Uint32> pcCols,
                      Pointer<Uint32> piKey,
                      Pointer<Pointer<Int8>> ppName)>()(
          ptr.ref.lpVtbl, ixTbl, pcbRow, pcRows, pcCols, piKey, ppName);

  int getColumnInfo(
          int ixTbl,
          int ixCol,
          Pointer<Uint32> poCol,
          Pointer<Uint32> pcbCol,
          Pointer<Uint32> pType,
          Pointer<Pointer<Int8>> ppName) =>
      ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 ixTbl,
                              Uint32 ixCol,
                              Pointer<Uint32> poCol,
                              Pointer<Uint32> pcbCol,
                              Pointer<Uint32> pType,
                              Pointer<Pointer<Int8>> ppName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int ixTbl,
                      int ixCol,
                      Pointer<Uint32> poCol,
                      Pointer<Uint32> pcbCol,
                      Pointer<Uint32> pType,
                      Pointer<Pointer<Int8>> ppName)>()(
          ptr.ref.lpVtbl, ixTbl, ixCol, poCol, pcbCol, pType, ppName);

  int getCodedTokenInfo(int ixCdTkn, Pointer<Uint32> pcTokens,
          Pointer<Pointer<Uint32>> ppTokens, Pointer<Pointer<Int8>> ppName) =>
      ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 ixCdTkn,
                              Pointer<Uint32> pcTokens,
                              Pointer<Pointer<Uint32>> ppTokens,
                              Pointer<Pointer<Int8>> ppName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int ixCdTkn,
                      Pointer<Uint32> pcTokens,
                      Pointer<Pointer<Uint32>> ppTokens,
                      Pointer<Pointer<Int8>> ppName)>()(
          ptr.ref.lpVtbl, ixCdTkn, pcTokens, ppTokens, ppName);

  int getRow(int ixTbl, int rid, Pointer<Pointer> ppRow) => ptr.ref.vtable
      .elementAt(12)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Uint32 ixTbl, Uint32 rid,
                      Pointer<Pointer> ppRow)>>>()
      .value
      .asFunction<
          int Function(Pointer, int ixTbl, int rid,
              Pointer<Pointer> ppRow)>()(ptr.ref.lpVtbl, ixTbl, rid, ppRow);

  int getColumn(int ixTbl, int ixCol, int rid, Pointer<Uint32> pVal) => ptr
      .ref.vtable
      .elementAt(13)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Uint32 ixTbl, Uint32 ixCol,
                      Uint32 rid, Pointer<Uint32> pVal)>>>()
      .value
      .asFunction<
          int Function(Pointer, int ixTbl, int ixCol, int rid,
              Pointer<Uint32> pVal)>()(ptr.ref.lpVtbl, ixTbl, ixCol, rid, pVal);

  int getString(int ixString, Pointer<Pointer<Int8>> ppString) => ptr.ref.vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Uint32 ixString,
                          Pointer<Pointer<Int8>> ppString)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, int ixString, Pointer<Pointer<Int8>> ppString)>()(
      ptr.ref.lpVtbl, ixString, ppString);

  int getBlob(int ixBlob, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      ptr.ref.vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Uint32 ixBlob,
                          Pointer<Uint32> pcbData, Pointer<Pointer> ppData)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  int ixBlob,
                  Pointer<Uint32> pcbData,
                  Pointer<Pointer>
                      ppData)>()(ptr.ref.lpVtbl, ixBlob, pcbData, ppData);

  int getGuid(int ixGuid, Pointer<Pointer<GUID>> ppGUID) => ptr.ref.vtable
      .elementAt(16)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Uint32 ixGuid,
                      Pointer<Pointer<GUID>> ppGUID)>>>()
      .value
      .asFunction<
          int Function(Pointer, int ixGuid,
              Pointer<Pointer<GUID>> ppGUID)>()(ptr.ref.lpVtbl, ixGuid, ppGUID);

  int getUserString(
          int ixUserString, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      ptr.ref.vtable
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Uint32 ixUserString,
                          Pointer<Uint32> pcbData, Pointer<Pointer> ppData)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  int ixUserString,
                  Pointer<Uint32> pcbData,
                  Pointer<Pointer>
                      ppData)>()(ptr.ref.lpVtbl, ixUserString, pcbData, ppData);

  int getNextString(int ixString, Pointer<Uint32> pNext) => ptr.ref.vtable
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Uint32 ixString, Pointer<Uint32> pNext)>>>()
          .value
          .asFunction<
              int Function(Pointer, int ixString, Pointer<Uint32> pNext)>()(
      ptr.ref.lpVtbl, ixString, pNext);

  int getNextBlob(int ixBlob, Pointer<Uint32> pNext) => ptr.ref.vtable
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Uint32 ixBlob, Pointer<Uint32> pNext)>>>()
          .value
          .asFunction<
              int Function(Pointer, int ixBlob, Pointer<Uint32> pNext)>()(
      ptr.ref.lpVtbl, ixBlob, pNext);

  int getNextGuid(int ixGuid, Pointer<Uint32> pNext) => ptr.ref.vtable
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Uint32 ixGuid, Pointer<Uint32> pNext)>>>()
          .value
          .asFunction<
              int Function(Pointer, int ixGuid, Pointer<Uint32> pNext)>()(
      ptr.ref.lpVtbl, ixGuid, pNext);

  int getNextUserString(int ixUserString, Pointer<Uint32> pNext) => ptr
      .ref.vtable
      .elementAt(21)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer, Uint32 ixUserString, Pointer<Uint32> pNext)>>>()
      .value
      .asFunction<
          int Function(Pointer, int ixUserString,
              Pointer<Uint32> pNext)>()(ptr.ref.lpVtbl, ixUserString, pNext);
}
