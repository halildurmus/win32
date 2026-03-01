import 'dart:ffi';
import 'dart:typed_data';

import '../bindings.dart';
import '../common.dart';
import '../exception.dart';
import '../guid.dart';
import 'extensions.dart';
import 'heap/blob.dart';
import 'heap/guid.dart';
import 'heap/string.dart';
import 'heap/user_string.dart';
import 'metadata_table.dart';
import 'table_stream.dart';

/// Provides functionality to read a valid `.winmd` or ECMA-335 metadata file,
/// including metadata tables, heaps, and system-level assembly references.
///
/// A [MetadataReader] is responsible for interpreting the raw binary data
/// of metadata streams, enabling retrieval of strings, GUIDs, blobs, and
/// various table records in a structured manner.
///
/// Use [MetadataReader.read] to parse metadata from a [Uint8List].
final class MetadataReader {
  /// Parses metadata from the given [data].
  factory MetadataReader.read(Uint8List data) {
    final dos = Struct.create<IMAGE_DOS_HEADER>(data);

    if (dos.e_magic != IMAGE_DOS_SIGNATURE ||
        data.readUint32(dos.e_lfanew) != IMAGE_NT_SIGNATURE) {
      throw const WinmdException('Invalid PE file');
    }

    final fileOffset = dos.e_lfanew + sizeOf<Uint32>();
    final fileHeader = Struct.create<IMAGE_FILE_HEADER>(data, fileOffset);

    final optionalOffset = fileOffset + sizeOf<IMAGE_FILE_HEADER>();
    final int comVirtualAddress;
    final List<IMAGE_SECTION_HEADER> sections;

    switch (data.readUint16(optionalOffset)) {
      case IMAGE_NT_OPTIONAL_HDR32_MAGIC:
        final optionalHeader = Struct.create<IMAGE_OPTIONAL_HEADER32>(
          data,
          optionalOffset,
        );
        comVirtualAddress = optionalHeader
            .DataDirectory[IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR]
            .VirtualAddress;
        sections = List.generate(
          fileHeader.NumberOfSections,
          (i) => Struct.create<IMAGE_SECTION_HEADER>(
            data,
            optionalOffset +
                sizeOf<IMAGE_OPTIONAL_HEADER32>() +
                i * sizeOf<IMAGE_SECTION_HEADER>(),
          ),
          growable: false,
        );

      case IMAGE_NT_OPTIONAL_HDR64_MAGIC:
        final optional = Struct.create<IMAGE_OPTIONAL_HEADER64>(
          data,
          optionalOffset,
        );
        comVirtualAddress = optional
            .DataDirectory[IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR]
            .VirtualAddress;
        sections = .generate(
          fileHeader.NumberOfSections,
          (i) => Struct.create<IMAGE_SECTION_HEADER>(
            data,
            optionalOffset +
                sizeOf<IMAGE_OPTIONAL_HEADER64>() +
                i * sizeOf<IMAGE_SECTION_HEADER>(),
          ),
          growable: false,
        );

      default:
        throw const WinmdException('Invalid PE file');
    }

    int offsetFromRva(IMAGE_SECTION_HEADER section, int rva) =>
        rva - section.VirtualAddress + section.PointerToRawData;

    IMAGE_SECTION_HEADER? sectionFromRva(
      List<IMAGE_SECTION_HEADER> sections,
      int rva,
    ) => sections
        .where(
          (s) =>
              rva >= s.VirtualAddress &&
              rva < s.VirtualAddress + s.Misc.VirtualSize,
        )
        .firstOrNull;

    final clr = Struct.create<IMAGE_COR20_HEADER>(
      data,
      offsetFromRva(
        sectionFromRva(sections, comVirtualAddress)!,
        comVirtualAddress,
      ),
    );
    if (clr.cb != sizeOf<IMAGE_COR20_HEADER>()) {
      throw const WinmdException('Invalid CLR header');
    }

    final metadataOffset = offsetFromRva(
      sectionFromRva(sections, clr.MetaData.VirtualAddress)!,
      clr.MetaData.VirtualAddress,
    );
    final metadataHeader = Struct.create<MetadataHeader>(data, metadataOffset);
    if (metadataHeader.signature != metadataSignature) {
      throw const WinmdException('Invalid metadata signature');
    }

    final streams = data.readUint16(
      metadataOffset + metadataHeader.length + 18,
    );
    if (streams > 5) {
      throw WinmdException('Invalid number of streams: $streams');
    }

    // Start reading the metadata streams.
    var offset = metadataOffset + metadataHeader.length + 20;

    var blobStreamOffset = 0;
    var blobStreamSize = 0;
    var guidStreamOffset = 0;
    var guidStreamSize = 0;
    var stringStreamOffset = 0;
    var stringStreamSize = 0;
    var tableStreamOffset = 0;
    var userStringStreamOffset = 0;
    var userStringStreamSize = 0;

    for (var i = 0; i < streams; i++) {
      final streamOffset = data.readUint32(offset);
      final streamSize = data.readUint32(offset + 4);
      final streamName = data.readString(offset + 8);
      switch (streamName) {
        case MetadataStream.blob:
          if (blobStreamOffset != 0) {
            throw const WinmdException('Duplicate blob stream');
          }
          blobStreamOffset = metadataOffset + streamOffset;
          blobStreamSize = streamSize;

        case MetadataStream.guid:
          if (guidStreamOffset != 0) {
            throw const WinmdException('Duplicate guid stream');
          }
          guidStreamOffset = metadataOffset + streamOffset;
          guidStreamSize = streamSize;

        case MetadataStream.string:
          if (stringStreamOffset != 0) {
            throw const WinmdException('Duplicate strings stream');
          }
          stringStreamOffset = metadataOffset + streamOffset;
          stringStreamSize = streamSize;

        case MetadataStream.table:
          if (tableStreamOffset != 0) {
            throw const WinmdException('Duplicate tables stream');
          }
          tableStreamOffset = metadataOffset + streamOffset;

        case MetadataStream.userString:
          if (userStringStreamOffset != 0) {
            throw const WinmdException('Duplicate user strings stream');
          }
          userStringStreamOffset = metadataOffset + streamOffset;
          userStringStreamSize = streamSize;

        default:
          throw WinmdException('Unknown stream name: $streamName');
      }
      var padding = 4 - streamName.length % 4;
      if (padding == 0) {
        padding = 4;
      }
      offset += 8 + streamName.length + padding;
    }

    final blobHeap = BlobHeap(
      .sublistView(data, blobStreamOffset, blobStreamOffset + blobStreamSize),
    );
    final guidHeap = GuidHeap(
      .sublistView(data, guidStreamOffset, guidStreamOffset + guidStreamSize),
    );
    final stringHeap = StringHeap(
      .sublistView(
        data,
        stringStreamOffset,
        stringStreamOffset + stringStreamSize,
      ),
    );
    final tableStream = TableStream();
    final userStringHeap = UserStringHeap(
      .sublistView(
        data,
        userStringStreamOffset,
        userStringStreamOffset + userStringStreamSize,
      ),
    );

    final reserved = data.readUint32(tableStreamOffset);
    assert(reserved == 0, 'Reserved value should be 0, but got $reserved');
    final majorVersion = data.readUint8(tableStreamOffset + 4);
    assert(
      majorVersion == 2,
      'Major version should be 2, but got $majorVersion',
    );
    final minorVersion = data.readUint8(tableStreamOffset + 5);
    assert(
      minorVersion == 0,
      'Minor version should be 0, but got $minorVersion',
    );
    final heapSizes = data.readUint8(tableStreamOffset + 6);
    final stringIndexSize = heapSizes & 1 == 1 ? 4 : 2;
    final guidIndexSize = (heapSizes >> 1) & 1 == 1 ? 4 : 2;
    final blobIndexSize = (heapSizes >> 2) & 1 == 1 ? 4 : 2;
    final validBits = data.readUint64(tableStreamOffset + 8);
    offset = tableStreamOffset + 24;

    for (var i = 0; i < 64; i++) {
      if ((validBits >> i) & 1 == 0) continue;

      final rows = data.readUint32(offset);
      offset += 4;

      switch (i) {
        case MetadataTableId.module:
          tableStream[.module].rows = rows;
        case MetadataTableId.typeRef:
          tableStream[.typeRef].rows = rows;
        case MetadataTableId.typeDef:
          tableStream[.typeDef].rows = rows;
        case MetadataTableId.field:
          tableStream[.field].rows = rows;
        case MetadataTableId.methodDef:
          tableStream[.methodDef].rows = rows;
        case MetadataTableId.param:
          tableStream[.param].rows = rows;
        case MetadataTableId.interfaceImpl:
          tableStream[.interfaceImpl].rows = rows;
        case MetadataTableId.memberRef:
          tableStream[.memberRef].rows = rows;
        case MetadataTableId.constant:
          tableStream[.constant].rows = rows;
        case MetadataTableId.customAttribute:
          tableStream[.customAttribute].rows = rows;
        case MetadataTableId.fieldMarshal:
          tableStream[.fieldMarshal].rows = rows;
        case MetadataTableId.declSecurity:
          tableStream[.declSecurity].rows = rows;
        case MetadataTableId.classLayout:
          tableStream[.classLayout].rows = rows;
        case MetadataTableId.fieldLayout:
          tableStream[.fieldLayout].rows = rows;
        case MetadataTableId.standAloneSig:
          tableStream[.standAloneSig].rows = rows;
        case MetadataTableId.eventMap:
          tableStream[.eventMap].rows = rows;
        case MetadataTableId.event:
          tableStream[.event].rows = rows;
        case MetadataTableId.propertyMap:
          tableStream[.propertyMap].rows = rows;
        case MetadataTableId.property:
          tableStream[.property].rows = rows;
        case MetadataTableId.methodSemantics:
          tableStream[.methodSemantics].rows = rows;
        case MetadataTableId.methodImpl:
          tableStream[.methodImpl].rows = rows;
        case MetadataTableId.moduleRef:
          tableStream[.moduleRef].rows = rows;
        case MetadataTableId.typeSpec:
          tableStream[.typeSpec].rows = rows;
        case MetadataTableId.implMap:
          tableStream[.implMap].rows = rows;
        case MetadataTableId.fieldRVA:
          tableStream[.fieldRVA].rows = rows;
        case MetadataTableId.assembly:
          tableStream[.assembly].rows = rows;
        case MetadataTableId.assemblyProcessor:
          tableStream[.assemblyProcessor].rows = rows;
        case MetadataTableId.assemblyOS:
          tableStream[.assemblyOS].rows = rows;
        case MetadataTableId.assemblyRef:
          tableStream[.assemblyRef].rows = rows;
        case MetadataTableId.assemblyRefProcessor:
          tableStream[.assemblyRefProcessor].rows = rows;
        case MetadataTableId.assemblyRefOS:
          tableStream[.assemblyRefOS].rows = rows;
        case MetadataTableId.file:
          tableStream[.file].rows = rows;
        case MetadataTableId.exportedType:
          tableStream[.exportedType].rows = rows;
        case MetadataTableId.manifestResource:
          tableStream[.manifestResource].rows = rows;
        case MetadataTableId.nestedClass:
          tableStream[.nestedClass].rows = rows;
        case MetadataTableId.genericParam:
          tableStream[.genericParam].rows = rows;
        case MetadataTableId.methodSpec:
          tableStream[.methodSpec].rows = rows;
        case MetadataTableId.genericParamConstraint:
          tableStream[.genericParamConstraint].rows = rows;
        default:
          throw const WinmdException('Unknown table index');
      }
    }

    final customAttributeType = codedIndexSize([
      0,
      tableStream[.methodDef].rows,
      tableStream[.memberRef].rows,
      0,
      0,
    ]);
    final hasConstant = codedIndexSize([
      tableStream[.field].rows,
      tableStream[.param].rows,
      tableStream[.property].rows,
    ]);
    final hasCustomAttribute = codedIndexSize([
      tableStream[.methodDef].rows,
      tableStream[.field].rows,
      tableStream[.typeRef].rows,
      tableStream[.typeDef].rows,
      tableStream[.param].rows,
      tableStream[.interfaceImpl].rows,
      tableStream[.memberRef].rows,
      tableStream[.module].rows,
      tableStream[.property].rows,
      tableStream[.event].rows,
      tableStream[.standAloneSig].rows,
      tableStream[.moduleRef].rows,
      tableStream[.typeSpec].rows,
      tableStream[.assembly].rows,
      tableStream[.assemblyRef].rows,
      tableStream[.file].rows,
      tableStream[.exportedType].rows,
      tableStream[.manifestResource].rows,
      tableStream[.genericParam].rows,
      tableStream[.genericParamConstraint].rows,
      tableStream[.methodSpec].rows,
    ]);
    final hasDeclSecurity = codedIndexSize([
      tableStream[.typeDef].rows,
      tableStream[.methodDef].rows,
      tableStream[.assembly].rows,
    ]);
    final hasFieldMarshal = codedIndexSize([
      tableStream[.field].rows,
      tableStream[.param].rows,
    ]);
    final hasSemantics = codedIndexSize([
      tableStream[.event].rows,
      tableStream[.property].rows,
    ]);
    final implementation = codedIndexSize([
      tableStream[.file].rows,
      tableStream[.assemblyRef].rows,
      tableStream[.exportedType].rows,
    ]);
    final memberForwarded = codedIndexSize([
      tableStream[.field].rows,
      tableStream[.methodDef].rows,
    ]);
    final memberRefParent = codedIndexSize([
      tableStream[.typeDef].rows,
      tableStream[.typeRef].rows,
      tableStream[.moduleRef].rows,
      tableStream[.methodDef].rows,
      tableStream[.typeSpec].rows,
    ]);
    final methodDefOrRef = codedIndexSize([
      tableStream[.methodDef].rows,
      tableStream[.memberRef].rows,
    ]);
    final resolutionScope = codedIndexSize([
      tableStream[.module].rows,
      tableStream[.moduleRef].rows,
      tableStream[.assemblyRef].rows,
      tableStream[.typeRef].rows,
    ]);
    final typeDefOrRef = codedIndexSize([
      tableStream[.typeDef].rows,
      tableStream[.typeRef].rows,
      tableStream[.typeSpec].rows,
    ]);
    final typeOrMethodDef = codedIndexSize([
      tableStream[.typeDef].rows,
      tableStream[.methodDef].rows,
    ]);

    tableStream[.assembly]._setColumns(
      4,
      8,
      4,
      blobIndexSize,
      stringIndexSize,
      stringIndexSize,
    );
    tableStream[.assemblyOS]._setColumns(4, 4, 4);
    tableStream[.assemblyProcessor]._setColumns(4);
    tableStream[.assemblyRef]._setColumns(
      8,
      4,
      blobIndexSize,
      stringIndexSize,
      stringIndexSize,
      blobIndexSize,
    );
    tableStream[.assemblyRefOS]._setColumns(
      4,
      4,
      4,
      tableStream[.assemblyRef]._indexWidth,
    );
    tableStream[.assemblyRefProcessor]._setColumns(
      4,
      tableStream[.assemblyRef]._indexWidth,
    );
    tableStream[.classLayout]._setColumns(
      2,
      4,
      tableStream[.typeDef]._indexWidth,
    );
    tableStream[.constant]._setColumns(2, hasConstant, blobIndexSize);
    tableStream[.customAttribute]._setColumns(
      hasCustomAttribute,
      customAttributeType,
      blobIndexSize,
    );
    tableStream[.declSecurity]._setColumns(2, hasDeclSecurity, blobIndexSize);
    tableStream[.eventMap]._setColumns(
      tableStream[.typeDef]._indexWidth,
      tableStream[.event]._indexWidth,
    );
    tableStream[.event]._setColumns(2, stringIndexSize, typeDefOrRef);
    tableStream[.exportedType]._setColumns(
      4,
      tableStream[.typeDef]._indexWidth,
      stringIndexSize,
      stringIndexSize,
      implementation,
    );
    tableStream[.field]._setColumns(2, stringIndexSize, blobIndexSize);
    tableStream[.fieldLayout]._setColumns(4, tableStream[.field]._indexWidth);
    tableStream[.fieldMarshal]._setColumns(hasFieldMarshal, blobIndexSize);
    tableStream[.fieldRVA]._setColumns(4, tableStream[.field]._indexWidth);
    tableStream[.file]._setColumns(4, stringIndexSize, blobIndexSize);
    tableStream[.genericParam]._setColumns(
      2,
      2,
      typeOrMethodDef,
      stringIndexSize,
    );
    tableStream[.genericParamConstraint]._setColumns(
      tableStream[.genericParam]._indexWidth,
      typeDefOrRef,
    );
    tableStream[.implMap]._setColumns(
      2,
      memberForwarded,
      stringIndexSize,
      tableStream[.moduleRef]._indexWidth,
    );
    tableStream[.interfaceImpl]._setColumns(
      tableStream[.typeDef]._indexWidth,
      typeDefOrRef,
    );
    tableStream[.manifestResource]._setColumns(
      4,
      4,
      stringIndexSize,
      implementation,
    );
    tableStream[.memberRef]._setColumns(
      memberRefParent,
      stringIndexSize,
      blobIndexSize,
    );
    tableStream[.methodDef]._setColumns(
      4,
      2,
      2,
      stringIndexSize,
      blobIndexSize,
      tableStream[.param]._indexWidth,
    );
    tableStream[.methodImpl]._setColumns(
      tableStream[.typeDef]._indexWidth,
      methodDefOrRef,
      methodDefOrRef,
    );
    tableStream[.methodSemantics]._setColumns(
      2,
      tableStream[.methodDef]._indexWidth,
      hasSemantics,
    );
    tableStream[.methodSpec]._setColumns(methodDefOrRef, blobIndexSize);
    tableStream[.module]._setColumns(
      2,
      stringIndexSize,
      guidIndexSize,
      guidIndexSize,
      guidIndexSize,
    );
    tableStream[.moduleRef]._setColumns(stringIndexSize);
    tableStream[.nestedClass]._setColumns(
      tableStream[.typeDef]._indexWidth,
      tableStream[.typeDef]._indexWidth,
    );
    tableStream[.param]._setColumns(2, 2, stringIndexSize);
    tableStream[.property]._setColumns(2, stringIndexSize, blobIndexSize);
    tableStream[.propertyMap]._setColumns(
      tableStream[.typeDef]._indexWidth,
      tableStream[.property]._indexWidth,
    );
    tableStream[.standAloneSig]._setColumns(blobIndexSize);
    tableStream[.typeDef]._setColumns(
      4,
      stringIndexSize,
      stringIndexSize,
      typeDefOrRef,
      tableStream[.field]._indexWidth,
      tableStream[.methodDef]._indexWidth,
    );
    tableStream[.typeRef]._setColumns(
      resolutionScope,
      stringIndexSize,
      stringIndexSize,
    );
    tableStream[.typeSpec]._setColumns(blobIndexSize);

    offset = tableStream[.module]._setOffset(offset);
    offset = tableStream[.typeRef]._setOffset(offset);
    offset = tableStream[.typeDef]._setOffset(offset);
    offset = tableStream[.field]._setOffset(offset);
    offset = tableStream[.methodDef]._setOffset(offset);
    offset = tableStream[.param]._setOffset(offset);
    offset = tableStream[.interfaceImpl]._setOffset(offset);
    offset = tableStream[.memberRef]._setOffset(offset);
    offset = tableStream[.constant]._setOffset(offset);
    offset = tableStream[.customAttribute]._setOffset(offset);
    offset = tableStream[.fieldMarshal]._setOffset(offset);
    offset = tableStream[.declSecurity]._setOffset(offset);
    offset = tableStream[.classLayout]._setOffset(offset);
    offset = tableStream[.fieldLayout]._setOffset(offset);
    offset = tableStream[.standAloneSig]._setOffset(offset);
    offset = tableStream[.eventMap]._setOffset(offset);
    offset = tableStream[.event]._setOffset(offset);
    offset = tableStream[.propertyMap]._setOffset(offset);
    offset = tableStream[.property]._setOffset(offset);
    offset = tableStream[.methodSemantics]._setOffset(offset);
    offset = tableStream[.methodImpl]._setOffset(offset);
    offset = tableStream[.moduleRef]._setOffset(offset);
    offset = tableStream[.typeSpec]._setOffset(offset);
    offset = tableStream[.implMap]._setOffset(offset);
    offset = tableStream[.fieldRVA]._setOffset(offset);
    offset = tableStream[.assembly]._setOffset(offset);
    offset = tableStream[.assemblyProcessor]._setOffset(offset);
    offset = tableStream[.assemblyOS]._setOffset(offset);
    offset = tableStream[.assemblyRef]._setOffset(offset);
    offset = tableStream[.assemblyRefProcessor]._setOffset(offset);
    offset = tableStream[.assemblyRefOS]._setOffset(offset);
    offset = tableStream[.file]._setOffset(offset);
    offset = tableStream[.exportedType]._setOffset(offset);
    offset = tableStream[.manifestResource]._setOffset(offset);
    offset = tableStream[.nestedClass]._setOffset(offset);
    offset = tableStream[.genericParam]._setOffset(offset);
    offset = tableStream[.methodSpec]._setOffset(offset);
    offset = tableStream[.genericParamConstraint]._setOffset(offset);

    return MetadataReader._(
      data.asUnmodifiableView(),
      blobHeap,
      guidHeap,
      stringHeap,
      tableStream,
      userStringHeap,
    );
  }

  const MetadataReader._(
    this.data,
    this.blobHeap,
    this.guidHeap,
    this.stringHeap,
    this.tableStream,
    this.userStringHeap,
  );

  /// The raw metadata binary data.
  final Uint8List data;

  /// The heap containing blobs.
  final BlobHeap blobHeap;

  /// The heap containing [Guid]s.
  final GuidHeap guidHeap;

  /// The heap containing strings.
  final StringHeap stringHeap;

  /// The metadata table stream containing structured metadata tables.
  final TableStream tableStream;

  /// The heap containing user-defined strings.
  final UserStringHeap userStringHeap;

  /// The module's name.
  String get moduleName => readString(0, .module, 1);

  /// The Module Version ID (MVID), a GUID that uniquely identifies the version
  /// of the module.
  Guid get moduleMvid => readGuid(0, .module, 2);

  /// Reads a blob from the specified [row] and [column] of [table].
  @pragma('vm:prefer-inline')
  Uint8List readBlob(int row, MetadataTable table, int column) =>
      blobHeap[readUint(row, table, column)];

  /// Reads a [Guid] from the specified [row] and [column] of [table].
  @pragma('vm:prefer-inline')
  Guid readGuid(int row, MetadataTable table, int column) =>
      guidHeap[readUint(row, table, column) - 1];

  /// Reads a string from the specified [row] and [column] of [table].
  @pragma('vm:prefer-inline')
  String readString(int row, MetadataTable table, int column) =>
      stringHeap[readUint(row, table, column)];

  /// Reads an unsigned integer from the specified [row] and [column] of [table].
  int readUint(int row, MetadataTable table, int column) {
    final table$ = tableStream[table];
    final column$ = table$.columns[column];
    final offset = table$.offset + row * table$.width + column$.offset;
    return switch (column$.width) {
      1 => data.readUint8(offset),
      2 => data.readUint16(offset),
      4 => data.readUint32(offset),
      8 => data.readUint64(offset),
      _ => throw WinmdException('Invalid column width: ${column$.width}'),
    };
  }

  /// Reads an unsigned 8-bit integer from the specified [row] and [column] of
  /// [table], with an optional [offset].
  @pragma('vm:prefer-inline')
  int readUint8(int row, MetadataTable table, int column, [int offset = 0]) =>
      data.readUint8(_calculateOffset(row, table, column) + offset);

  /// Reads an unsigned 16-bit integer from the specified [row] and [column] of
  /// [table], with an optional [offset].
  @pragma('vm:prefer-inline')
  int readUint16(int row, MetadataTable table, int column, [int offset = 0]) =>
      data.readUint16(_calculateOffset(row, table, column) + offset);

  /// Reads an unsigned 32-bit integer from the specified [row] and [column] of
  /// [table], with an optional [offset].
  @pragma('vm:prefer-inline')
  int readUint32(int row, MetadataTable table, int column, [int offset = 0]) =>
      data.readUint32(_calculateOffset(row, table, column) + offset);

  /// Reads an unsigned 64-bit integer from the specified [row] and [column] of
  /// [table], with an optional [offset].
  @pragma('vm:prefer-inline')
  int readUint64(int row, MetadataTable table, int column, [int offset = 0]) =>
      data.readUint64(_calculateOffset(row, table, column) + offset);

  /// Calculates the byte offset for the specified [row], [table], and [column].
  @pragma('vm:prefer-inline')
  int _calculateOffset(int row, MetadataTable table, int column) {
    final table$ = tableStream[table];
    final column$ = table$.columns[column];
    return table$.offset + row * table$.width + column$.offset;
  }

  /// Returns an iterable of rows where the specified [column] matches [value].
  Iterable<int> getEqualRange(MetadataTable table, int column, int value) {
    var first = 0;
    var last = tableStream[table].rows;

    while (first < last) {
      final middle = first + (last - first) ~/ 2;
      final middleValue = readUint(middle, table, column);

      if (middleValue < value) {
        first = middle + 1;
      } else if (middleValue > value) {
        last = middle;
      } else {
        // Value matches, now adjust bounds.
        final lower = _lowerBound(table, first, middle, column, value);
        final upper = _upperBound(table, middle + 1, last, column, value);
        return .generate(upper - lower, (i) => lower + i);
      }
    }

    return const .empty();
  }

  /// Returns an iterable of row indices between two related tables.
  Iterable<int> getList(
    int row,
    MetadataTable table,
    int column,
    MetadataTable otherTable,
  ) {
    final first = readUint(row, table, column) - 1;
    final next = row + 1;
    final last = next < tableStream[table].rows
        ? readUint(next, table, column) - 1
        : tableStream[otherTable].rows;
    if (last <= first) return const .empty();
    return .generate(last - first, (i) => first + i);
  }

  /// Returns the parent row index for the specified [row] within a [table].
  int getParentRow(int row, MetadataTable table, int column) =>
      _upperBound(table, 0, tableStream[table].rows, column, row + 1) - 1;

  /// Performs a lower bound binary search.
  int _lowerBound(
    MetadataTable table,
    int first,
    int last,
    int column,
    int value,
  ) {
    var low = first;
    var high = last;
    while (low < high) {
      final middle = low + (high - low) ~/ 2;
      if (readUint(middle, table, column) < value) {
        low = middle + 1;
      } else {
        high = middle;
      }
    }
    return low;
  }

  /// Performs an upper bound binary search.
  int _upperBound(
    MetadataTable table,
    int first,
    int last,
    int column,
    int value,
  ) {
    var low = first;
    var high = last;
    while (low < high) {
      final middle = low + (high - low) ~/ 2;
      if (value < readUint(middle, table, column)) {
        high = middle;
      } else {
        low = middle + 1;
      }
    }
    return low;
  }

  @override
  String toString() =>
      'MetadataReader(moduleName: $moduleName, moduleMvid: $moduleMvid)';
}

/// Represents a single metadata table, including layout and column data.
final class TableData {
  /// Creates a [TableData] instance with the specified layout.
  TableData({
    required this.offset,
    required this.rows,
    required this.width,
    required this.columns,
  });

  /// Creates an empty [TableData] with no rows and default column layouts.
  factory TableData.empty() => .new(
    offset: 0,
    rows: 0,
    width: 0,
    columns: .generate(6, (i) => .new(offset: 0, width: 0), growable: false),
  );

  /// Byte offset of the table within the metadata stream.
  int offset;

  /// Total number of rows in the table.
  int rows;

  /// Total width (in bytes) of each row.
  int width;

  /// The columns of the table.
  final List<TableColumn> columns;

  @pragma('vm:prefer-inline')
  int get _indexWidth => rows < 0x10000 ? 2 : 4;

  /// Sets the layout for columns based on provided widths.
  void _setColumns(
    int a, [
    int b = 0,
    int c = 0,
    int d = 0,
    int e = 0,
    int f = 0,
  ]) {
    width = a + b + c + d + e + f;
    columns[0]
      ..offset = 0
      ..width = a;
    if (b != 0) {
      columns[1]
        ..offset = a
        ..width = b;
    }
    if (c != 0) {
      columns[2]
        ..offset = a + b
        ..width = c;
    }
    if (d != 0) {
      columns[3]
        ..offset = a + b + c
        ..width = d;
    }
    if (e != 0) {
      columns[4]
        ..offset = a + b + c + d
        ..width = e;
    }
    if (f != 0) {
      columns[5]
        ..offset = a + b + c + d + e
        ..width = f;
    }
  }

  /// Sets the table offset, returning the next available offset.
  int _setOffset(int offset) {
    if (rows == 0) return offset;
    final next = offset + rows * width;
    this.offset = offset;
    return next;
  }

  @override
  String toString() =>
      'TableData(offset: $offset, rows: $rows, width: $width, '
      'columns: $columns)';
}

/// Describes a single column in a metadata table.
final class TableColumn {
  /// Creates a [TableColumn] with the specified [offset] and [width].
  TableColumn({required this.offset, required this.width});

  /// The offset of the column relative to the start of a row.
  int offset;

  /// The width of the column in bytes.
  int width;

  @override
  String toString() => 'TableColumn(offset: $offset, width: $width)';
}
