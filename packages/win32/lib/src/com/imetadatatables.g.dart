// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMetaDataTables = Guid.fromComponents(
  0xd8f579ab,
  0x402d,
  0x4b8e,
  Uint8List.fromList(const [0x82, 0xd9, 0x5d, 0x63, 0xb1, 0x6, 0x5c, 0x68]),
);

/// Provides methods for the storage and retrieval of metadata information in
/// tables.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadatatables>.
///
/// {@category com}
class IMetaDataTables extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMetaDataTables] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMetaDataTables]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMetaDataTables(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataTablesVtbl>().ref;

  /// Creates a new instance of [IMetaDataTables] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMetaDataTables] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMetaDataTables.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMetaDataTablesVtbl _vtable;
  late final _GetStringHeapSizeFn =
      _vtable.GetStringHeapSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetBlobHeapSizeFn =
      _vtable.GetBlobHeapSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetGuidHeapSizeFn =
      _vtable.GetGuidHeapSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetUserStringHeapSizeFn =
      _vtable.GetUserStringHeapSize.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetNumTablesFn = _vtable
      .GetNumTables.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetTableIndexFn =
      _vtable.GetTableIndex.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _GetTableInfoFn =
      _vtable.GetTableInfo.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Pointer<Int8>>,
        )
      >();
  late final _GetColumnInfoFn =
      _vtable.GetColumnInfo.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Pointer<Int8>>,
        )
      >();
  late final _GetCodedTokenInfoFn =
      _vtable.GetCodedTokenInfo.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Uint32>,
          Pointer<Pointer<Uint32>>,
          Pointer<Pointer<Int8>>,
        )
      >();
  late final _GetRowFn =
      _vtable.GetRow.asFunction<
        int Function(VTablePointer, int, int, Pointer<Pointer>)
      >();
  late final _GetColumnFn =
      _vtable.GetColumn.asFunction<
        int Function(VTablePointer, int, int, int, Pointer<Uint32>)
      >();
  late final _GetStringFn =
      _vtable.GetString.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<Int8>>)
      >();
  late final _GetBlobFn =
      _vtable.GetBlob.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>, Pointer<Pointer>)
      >();
  late final _GetGuidFn =
      _vtable.GetGuid.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<GUID>>)
      >();
  late final _GetUserStringFn =
      _vtable.GetUserString.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>, Pointer<Pointer>)
      >();
  late final _GetNextStringFn =
      _vtable.GetNextString.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _GetNextBlobFn =
      _vtable.GetNextBlob.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _GetNextGuidFn =
      _vtable.GetNextGuid.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _GetNextUserStringFn =
      _vtable.GetNextUserString.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();

  /// Gets the size, in bytes, of the string heap.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getstringheapsize>.
  @pragma('vm:prefer-inline')
  void getStringHeapSize(Pointer<Uint32> pcbStrings) {
    final hr$ = HRESULT(_GetStringHeapSizeFn(ptr, pcbStrings));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// A pointer to a pointer to the binary data retrieved.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getblobheapsize>.
  @pragma('vm:prefer-inline')
  void getBlobHeapSize(Pointer<Uint32> pcbBlobs) {
    final hr$ = HRESULT(_GetBlobHeapSizeFn(ptr, pcbBlobs));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the size, in bytes, of the GUID heap.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getguidheapsize>.
  @pragma('vm:prefer-inline')
  void getGuidHeapSize(Pointer<Uint32> pcbGuids) {
    final hr$ = HRESULT(_GetGuidHeapSizeFn(ptr, pcbGuids));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the size, in bytes, of the user string heap.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getuserstringheapsize>.
  @pragma('vm:prefer-inline')
  void getUserStringHeapSize(Pointer<Uint32> pcbBlobs) {
    final hr$ = HRESULT(_GetUserStringHeapSizeFn(ptr, pcbBlobs));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the number of tables in the scope of the current IMetaDataTables
  /// instance.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnumtables>.
  @pragma('vm:prefer-inline')
  void getNumTables(Pointer<Uint32> pcTables) {
    final hr$ = HRESULT(_GetNumTablesFn(ptr, pcTables));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the index for the table referenced by the specified token.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-gettableindex>.
  @pragma('vm:prefer-inline')
  void getTableIndex(int token, Pointer<Uint32> pixTbl) {
    final hr$ = HRESULT(_GetTableIndexFn(ptr, token, pixTbl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the name, row size, number of rows, number of columns, and key column
  /// index of the specified table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-gettableinfo>.
  @pragma('vm:prefer-inline')
  void getTableInfo(
    int ixTbl,
    Pointer<Uint32> pcbRow,
    Pointer<Uint32> pcRows,
    Pointer<Uint32> pcCols,
    Pointer<Uint32> piKey,
    Pointer<Pointer<Int8>> ppName,
  ) {
    final hr$ = HRESULT(
      _GetTableInfoFn(ptr, ixTbl, pcbRow, pcRows, pcCols, piKey, ppName),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets data about the specified column in the specified table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getcolumninfo>.
  @pragma('vm:prefer-inline')
  void getColumnInfo(
    int ixTbl,
    int ixCol,
    Pointer<Uint32> poCol,
    Pointer<Uint32> pcbCol,
    Pointer<Uint32> pType,
    Pointer<Pointer<Int8>> ppName,
  ) {
    final hr$ = HRESULT(
      _GetColumnInfoFn(ptr, ixTbl, ixCol, poCol, pcbCol, pType, ppName),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a pointer to an array of tokens associated with the specified row
  /// index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getcodedtokeninfo>.
  @pragma('vm:prefer-inline')
  void getCodedTokenInfo(
    int ixCdTkn,
    Pointer<Uint32> pcTokens,
    Pointer<Pointer<Uint32>> ppTokens,
    Pointer<Pointer<Int8>> ppName,
  ) {
    final hr$ = HRESULT(
      _GetCodedTokenInfoFn(ptr, ixCdTkn, pcTokens, ppTokens, ppName),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the row at the specified row index, in the table at the specified
  /// table index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getrow>.
  @pragma('vm:prefer-inline')
  void getRow(int ixTbl, int rid, Pointer<Pointer> ppRow) {
    final hr$ = HRESULT(_GetRowFn(ptr, ixTbl, rid, ppRow));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a pointer to the value contained in the cell of the specified column
  /// and row in the given table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getcolumn>.
  @pragma('vm:prefer-inline')
  void getColumn(int ixTbl, int ixCol, int rid, Pointer<Uint32> pVal) {
    final hr$ = HRESULT(_GetColumnFn(ptr, ixTbl, ixCol, rid, pVal));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the string at the specified index from the table column in the
  /// current reference scope.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getstring>.
  @pragma('vm:prefer-inline')
  void getString(int ixString, Pointer<Pointer<Int8>> ppString) {
    final hr$ = HRESULT(_GetStringFn(ptr, ixString, ppString));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a pointer to the binary large object (BLOB) at the specified column
  /// index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getblob>.
  @pragma('vm:prefer-inline')
  void getBlob(int ixBlob, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) {
    final hr$ = HRESULT(_GetBlobFn(ptr, ixBlob, pcbData, ppData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a GUID from the row at the specified index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getguid>.
  @pragma('vm:prefer-inline')
  void getGuid(int ixGuid, Pointer<Pointer<GUID>> ppGUID) {
    final hr$ = HRESULT(_GetGuidFn(ptr, ixGuid, ppGUID));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the hard-coded string at the specified index in the string column in
  /// the current scope.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getuserstring>.
  @pragma('vm:prefer-inline')
  void getUserString(
    int ixUserString,
    Pointer<Uint32> pcbData,
    Pointer<Pointer> ppData,
  ) {
    final hr$ = HRESULT(_GetUserStringFn(ptr, ixUserString, pcbData, ppData));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the index of the next string in the current table column.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextstring>.
  @pragma('vm:prefer-inline')
  void getNextString(int ixString, Pointer<Uint32> pNext) {
    final hr$ = HRESULT(_GetNextStringFn(ptr, ixString, pNext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the index of the next binary large object (BLOB) in the table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextblob>.
  @pragma('vm:prefer-inline')
  void getNextBlob(int ixBlob, Pointer<Uint32> pNext) {
    final hr$ = HRESULT(_GetNextBlobFn(ptr, ixBlob, pNext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the index of the next GUID value in the current table column.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextguid>.
  @pragma('vm:prefer-inline')
  void getNextGuid(int ixGuid, Pointer<Uint32> pNext) {
    final hr$ = HRESULT(_GetNextGuidFn(ptr, ixGuid, pNext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the index of the row that contains the next hard-coded string in the
  /// current table column.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextuserstring>.
  @pragma('vm:prefer-inline')
  void getNextUserString(int ixUserString, Pointer<Uint32> pNext) {
    final hr$ = HRESULT(_GetNextUserStringFn(ptr, ixUserString, pNext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMetaDataTables(ptr: $ptr)';
}

/// @nodoc
base class IMetaDataTablesVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pcbStrings)
    >
  >
  GetStringHeapSize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pcbBlobs)
    >
  >
  GetBlobHeapSize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pcbGuids)
    >
  >
  GetGuidHeapSize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pcbBlobs)
    >
  >
  GetUserStringHeapSize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pcTables)
    >
  >
  GetNumTables;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 token, Pointer<Uint32> pixTbl)
    >
  >
  GetTableIndex;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixTbl,
        Pointer<Uint32> pcbRow,
        Pointer<Uint32> pcRows,
        Pointer<Uint32> pcCols,
        Pointer<Uint32> piKey,
        Pointer<Pointer<Int8>> ppName,
      )
    >
  >
  GetTableInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixTbl,
        Uint32 ixCol,
        Pointer<Uint32> poCol,
        Pointer<Uint32> pcbCol,
        Pointer<Uint32> pType,
        Pointer<Pointer<Int8>> ppName,
      )
    >
  >
  GetColumnInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixCdTkn,
        Pointer<Uint32> pcTokens,
        Pointer<Pointer<Uint32>> ppTokens,
        Pointer<Pointer<Int8>> ppName,
      )
    >
  >
  GetCodedTokenInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixTbl,
        Uint32 rid,
        Pointer<Pointer> ppRow,
      )
    >
  >
  GetRow;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixTbl,
        Uint32 ixCol,
        Uint32 rid,
        Pointer<Uint32> pVal,
      )
    >
  >
  GetColumn;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixString,
        Pointer<Pointer<Int8>> ppString,
      )
    >
  >
  GetString;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixBlob,
        Pointer<Uint32> pcbData,
        Pointer<Pointer> ppData,
      )
    >
  >
  GetBlob;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixGuid,
        Pointer<Pointer<GUID>> ppGUID,
      )
    >
  >
  GetGuid;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixUserString,
        Pointer<Uint32> pcbData,
        Pointer<Pointer> ppData,
      )
    >
  >
  GetUserString;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixString,
        Pointer<Uint32> pNext,
      )
    >
  >
  GetNextString;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 ixBlob, Pointer<Uint32> pNext)
    >
  >
  GetNextBlob;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 ixGuid, Pointer<Uint32> pNext)
    >
  >
  GetNextGuid;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ixUserString,
        Pointer<Uint32> pNext,
      )
    >
  >
  GetNextUserString;
}

@internal
final class IMetaDataTablesCompanion extends ComCompanion<IMetaDataTables> {
  const IMetaDataTablesCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMetaDataTables Function(VTablePointer) get fromPointer =>
      IMetaDataTables.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMetaDataTables;
}
