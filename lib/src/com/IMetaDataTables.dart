// IMetaDataTables.dart

// coverage:ignore-file

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

typedef _GetStringHeapSize_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pcbStrings);
typedef _GetStringHeapSize_Dart = int Function(
    Pointer obj, Pointer<Uint32> pcbStrings);

typedef _GetBlobHeapSize_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pcbBlobs);
typedef _GetBlobHeapSize_Dart = int Function(
    Pointer obj, Pointer<Uint32> pcbBlobs);

typedef _GetGuidHeapSize_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pcbGuids);
typedef _GetGuidHeapSize_Dart = int Function(
    Pointer obj, Pointer<Uint32> pcbGuids);

typedef _GetUserStringHeapSize_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pcbUserStrings);
typedef _GetUserStringHeapSize_Dart = int Function(
    Pointer obj, Pointer<Uint32> pcbUserStrings);

typedef _GetNumTables_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pcTables);
typedef _GetNumTables_Dart = int Function(
    Pointer obj, Pointer<Uint32> pcTables);

typedef _GetTableIndex_Native = Int32 Function(
    Pointer obj, Uint32 token, Pointer<Uint32> pixTbl);
typedef _GetTableIndex_Dart = int Function(
    Pointer obj, int token, Pointer<Uint32> pixTbl);

typedef _GetTableInfo_Native = Int32 Function(
    Pointer obj,
    Uint32 ixTbl,
    Pointer<Uint32> pcbRow,
    Pointer<Uint32> pcRows,
    Pointer<Uint32> pcCols,
    Pointer<Uint32> piKey,
    Pointer<Utf16> ppName);
typedef _GetTableInfo_Dart = int Function(
    Pointer obj,
    int ixTbl,
    Pointer<Uint32> pcbRow,
    Pointer<Uint32> pcRows,
    Pointer<Uint32> pcCols,
    Pointer<Uint32> piKey,
    Pointer<Utf16> ppName);

typedef _GetColumnInfo_Native = Int32 Function(
    Pointer obj,
    Uint32 ixTbl,
    Uint32 ixCol,
    Pointer<Uint32> poCol,
    Pointer<Uint32> pcbCol,
    Pointer<Uint32> pType,
    Pointer<Utf16> ppName);
typedef _GetColumnInfo_Dart = int Function(
    Pointer obj,
    int ixTbl,
    int ixCol,
    Pointer<Uint32> poCol,
    Pointer<Uint32> pcbCol,
    Pointer<Uint32> pType,
    Pointer<Utf16> ppName);

typedef _GetCodedTokenInfo_Native = Int32 Function(Pointer obj, Uint32 ixCdTkn,
    Pointer<Uint32> pcTokens, Pointer<Pointer> ppTokens, Pointer<Utf16> ppName);
typedef _GetCodedTokenInfo_Dart = int Function(Pointer obj, int ixCdTkn,
    Pointer<Uint32> pcTokens, Pointer<Pointer> ppTokens, Pointer<Utf16> ppName);

typedef _GetRow_Native = Int32 Function(
    Pointer obj, Uint32 ixTbl, Uint32 rid, Pointer<Uint8> ppRow);
typedef _GetRow_Dart = int Function(
    Pointer obj, int ixTbl, int rid, Pointer<Uint8> ppRow);

typedef _GetColumn_Native = Int32 Function(
    Pointer obj, Uint32 ixTbl, Uint32 ixCol, Uint32 rid, Pointer<Uint32> pVal);
typedef _GetColumn_Dart = int Function(
    Pointer obj, int ixTbl, int ixCol, int rid, Pointer<Uint32> pVal);

typedef _GetString_Native = Int32 Function(
    Pointer obj, Uint32 ixString, Pointer<Utf16> ppString);
typedef _GetString_Dart = int Function(
    Pointer obj, int ixString, Pointer<Utf16> ppString);

typedef _GetBlob_Native = Int32 Function(Pointer obj, Uint32 ixBlob,
    Pointer<Uint32> pcbData, Pointer<Pointer> ppData);
typedef _GetBlob_Dart = int Function(
    Pointer obj, int ixBlob, Pointer<Uint32> pcbData, Pointer<Pointer> ppData);

typedef _GetGuid_Native = Int32 Function(
    Pointer obj, Uint32 ixGuid, Pointer<Pointer> ppGUID);
typedef _GetGuid_Dart = int Function(
    Pointer obj, int ixGuid, Pointer<Pointer> ppGUID);

typedef _GetUserString_Native = Int32 Function(Pointer obj, Uint32 ixUserString,
    Pointer<Uint32> pcbData, Pointer<Pointer> ppData);
typedef _GetUserString_Dart = int Function(Pointer obj, int ixUserString,
    Pointer<Uint32> pcbData, Pointer<Pointer> ppData);

typedef _GetNextString_Native = Int32 Function(
    Pointer obj, Uint32 ixString, Pointer<Uint32> pNext);
typedef _GetNextString_Dart = int Function(
    Pointer obj, int ixString, Pointer<Uint32> pNext);

typedef _GetNextBlob_Native = Int32 Function(
    Pointer obj, Uint32 ixBlob, Pointer<Uint32> pNext);
typedef _GetNextBlob_Dart = int Function(
    Pointer obj, int ixBlob, Pointer<Uint32> pNext);

typedef _GetNextGuid_Native = Int32 Function(
    Pointer obj, Uint32 ixGuid, Pointer<Uint32> pNext);
typedef _GetNextGuid_Dart = int Function(
    Pointer obj, int ixGuid, Pointer<Uint32> pNext);

typedef _GetNextUserString_Native = Int32 Function(
    Pointer obj, Uint32 ixUserString, Pointer<Uint32> pNext);
typedef _GetNextUserString_Dart = int Function(
    Pointer obj, int ixUserString, Pointer<Uint32> pNext);

/// {@category Interface}
/// {@category com}
class IMetaDataTables extends IUnknown {
  // vtable begins at 3, ends at 21

  static const IID = '{D8F579AB-402D-4B8E-82D9-5D63B1065C68}';

  IMetaDataTables(Pointer<COMObject> ptr) : super(ptr);

  int GetStringHeapSize(Pointer<Uint32> pcbStrings) =>
      Pointer<NativeFunction<_GetStringHeapSize_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetStringHeapSize_Dart>()(ptr.ref.lpVtbl, pcbStrings);

  int GetBlobHeapSize(Pointer<Uint32> pcbBlobs) =>
      Pointer<NativeFunction<_GetBlobHeapSize_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetBlobHeapSize_Dart>()(ptr.ref.lpVtbl, pcbBlobs);

  int GetGuidHeapSize(Pointer<Uint32> pcbGuids) =>
      Pointer<NativeFunction<_GetGuidHeapSize_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetGuidHeapSize_Dart>()(ptr.ref.lpVtbl, pcbGuids);

  int GetUserStringHeapSize(Pointer<Uint32> pcbUserStrings) =>
      Pointer<NativeFunction<_GetUserStringHeapSize_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_GetUserStringHeapSize_Dart>()(
          ptr.ref.lpVtbl, pcbUserStrings);

  int GetNumTables(Pointer<Uint32> pcTables) =>
      Pointer<NativeFunction<_GetNumTables_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetNumTables_Dart>()(ptr.ref.lpVtbl, pcTables);

  int GetTableIndex(int token, Pointer<Uint32> pixTbl) =>
      Pointer<NativeFunction<_GetTableIndex_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetTableIndex_Dart>()(ptr.ref.lpVtbl, token, pixTbl);

  int GetTableInfo(
          int ixTbl,
          Pointer<Uint32> pcbRow,
          Pointer<Uint32> pcRows,
          Pointer<Uint32> pcCols,
          Pointer<Uint32> piKey,
          Pointer<Utf16> ppName) =>
      Pointer<NativeFunction<_GetTableInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_GetTableInfo_Dart>()(
          ptr.ref.lpVtbl, ixTbl, pcbRow, pcRows, pcCols, piKey, ppName);

  int GetColumnInfo(
          int ixTbl,
          int ixCol,
          Pointer<Uint32> poCol,
          Pointer<Uint32> pcbCol,
          Pointer<Uint32> pType,
          Pointer<Utf16> ppName) =>
      Pointer<NativeFunction<_GetColumnInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_GetColumnInfo_Dart>()(
          ptr.ref.lpVtbl, ixTbl, ixCol, poCol, pcbCol, pType, ppName);

  int GetCodedTokenInfo(int ixCdTkn, Pointer<Uint32> pcTokens,
          Pointer<Pointer> ppTokens, Pointer<Utf16> ppName) =>
      Pointer<NativeFunction<_GetCodedTokenInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_GetCodedTokenInfo_Dart>()(
          ptr.ref.lpVtbl, ixCdTkn, pcTokens, ppTokens, ppName);

  int GetRow(int ixTbl, int rid, Pointer<Uint8> ppRow) =>
      Pointer<NativeFunction<_GetRow_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_GetRow_Dart>()(ptr.ref.lpVtbl, ixTbl, rid, ppRow);

  int GetColumn(int ixTbl, int ixCol, int rid, Pointer<Uint32> pVal) =>
      Pointer<NativeFunction<_GetColumn_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_GetColumn_Dart>()(
          ptr.ref.lpVtbl, ixTbl, ixCol, rid, pVal);

  int GetString(int ixString, Pointer<Utf16> ppString) =>
      Pointer<NativeFunction<_GetString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<_GetString_Dart>()(ptr.ref.lpVtbl, ixString, ppString);

  int GetBlob(int ixBlob, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      Pointer<NativeFunction<_GetBlob_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<_GetBlob_Dart>()(ptr.ref.lpVtbl, ixBlob, pcbData, ppData);

  int GetGuid(int ixGuid, Pointer<Pointer> ppGUID) =>
      Pointer<NativeFunction<_GetGuid_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<_GetGuid_Dart>()(ptr.ref.lpVtbl, ixGuid, ppGUID);

  int GetUserString(
          int ixUserString, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      Pointer<NativeFunction<_GetUserString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<_GetUserString_Dart>()(
          ptr.ref.lpVtbl, ixUserString, pcbData, ppData);

  int GetNextString(int ixString, Pointer<Uint32> pNext) =>
      Pointer<NativeFunction<_GetNextString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<_GetNextString_Dart>()(ptr.ref.lpVtbl, ixString, pNext);

  int GetNextBlob(int ixBlob, Pointer<Uint32> pNext) =>
      Pointer<NativeFunction<_GetNextBlob_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<_GetNextBlob_Dart>()(ptr.ref.lpVtbl, ixBlob, pNext);

  int GetNextGuid(int ixGuid, Pointer<Uint32> pNext) =>
      Pointer<NativeFunction<_GetNextGuid_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<_GetNextGuid_Dart>()(ptr.ref.lpVtbl, ixGuid, pNext);

  int GetNextUserString(int ixUserString, Pointer<Uint32> pNext) =>
      Pointer<NativeFunction<_GetNextUserString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(21).value)
              .asFunction<_GetNextUserString_Dart>()(
          ptr.ref.lpVtbl, ixUserString, pNext);
}
