// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

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
import 'table/assembly_ref.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/impl_map.dart';
import 'table/interface_impl.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';
import 'table_stream.dart';

final class MetadataReader {
  factory MetadataReader.read(Uint8List data) {
    final dos = Struct.create<IMAGE_DOS_HEADER>(data);

    if (dos.e_magic != IMAGE_DOS_SIGNATURE ||
        data.readUint32(dos.e_lfanew) != IMAGE_NT_SIGNATURE) {
      throw const WinmdException('Invalid PE file');
    }

    final fileOffset = dos.e_lfanew + sizeOf<Uint32>();
    final file = Struct.create<IMAGE_FILE_HEADER>(data, fileOffset);

    final optionalOffset = fileOffset + sizeOf<IMAGE_FILE_HEADER>();

    final int comVirtualAddress;
    final List<IMAGE_SECTION_HEADER> sections;

    switch (data.readUint16(optionalOffset)) {
      case IMAGE_NT_OPTIONAL_HDR32_MAGIC:
        final optional = Struct.create<IMAGE_OPTIONAL_HEADER32>(
          data,
          optionalOffset,
        );
        comVirtualAddress = optional
            .DataDirectory[IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR]
            .VirtualAddress;
        sections = List.generate(
          file.NumberOfSections,
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
        sections = List.generate(
          file.NumberOfSections,
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

    int offsetFromRva(IMAGE_SECTION_HEADER section, int rva) =>
        rva - section.VirtualAddress + section.PointerToRawData;

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
    final metadata = Struct.create<MetadataHeader>(data, metadataOffset);
    if (metadata.signature != metadataSignature) {
      throw const WinmdException('Invalid metadata signature');
    }

    // The METADATA_HEADER struct is not a fixed size so have to offset a little
    // more carefully.
    var offset = metadataOffset + metadata.length + 20;

    final numStreams = data.readUint16(metadataOffset + metadata.length + 18);
    if (numStreams > 5) {
      throw WinmdException('Invalid number of streams: $numStreams');
    }

    var blobStreamOffset = 0;
    var blobStreamSize = 0;
    var guidStreamOffset = 0;
    var guidStreamSize = 0;
    var stringStreamOffset = 0;
    var stringStreamSize = 0;
    var tableStreamOffset = 0;
    var userStringStreamOffset = 0;
    var userStringStreamSize = 0;

    for (var i = 0; i < numStreams; i++) {
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
      Uint8List.sublistView(
        data,
        blobStreamOffset,
        blobStreamOffset + blobStreamSize,
      ),
    );
    final guidHeap = GuidHeap(
      Uint8List.sublistView(
        data,
        guidStreamOffset,
        guidStreamOffset + guidStreamSize,
      ),
    );
    final stringHeap = StringHeap(
      Uint8List.sublistView(
        data,
        stringStreamOffset,
        stringStreamOffset + stringStreamSize,
      ),
    );
    final tableStream = TableStream();
    final userStringHeap = UserStringHeap(
      Uint8List.sublistView(
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

    // These tables are unused by the reader, but needed temporarily to
    // calculate sizes and offsets for subsequent tables.
    final unusedEmpty = TableData.empty();
    final unusedAssembly = TableData.empty();
    final unusedAssemblyOs = TableData.empty();
    final unusedAssemblyProcessor = TableData.empty();
    final unusedAssemblyRefOs = TableData.empty();
    final unusedAssemblyRefProcessor = TableData.empty();
    final unusedDeclSecurity = TableData.empty();
    final unusedEvent = TableData.empty();
    final unusedEventMap = TableData.empty();
    final unusedExportedType = TableData.empty();
    final unusedFieldMarshal = TableData.empty();
    final unusedFieldRva = TableData.empty();
    final unusedFile = TableData.empty();
    final unusedGenericParamConstraint = TableData.empty();
    final unusedManifestResource = TableData.empty();
    final unusedMethodImpl = TableData.empty();
    final unusedMethodSemantics = TableData.empty();
    final unusedMethodSpec = TableData.empty();
    final unusedProperty = TableData.empty();
    final unusedPropertyMap = TableData.empty();
    final unusedStandaloneSig = TableData.empty();

    for (var i = 0; i < 64; i++) {
      if ((validBits >> i) & 1 == 0) continue;

      final rows = data.readUint32(offset);
      offset += 4;

      switch (i) {
        case Table.module:
          tableStream[Module.metadataTable].rows = rows;
        case Table.typeRef:
          tableStream[TypeRef.metadataTable].rows = rows;
        case Table.typeDef:
          tableStream[TypeDef.metadataTable].rows = rows;
        case Table.field:
          tableStream[Field.metadataTable].rows = rows;
        case Table.methodDef:
          tableStream[MethodDef.metadataTable].rows = rows;
        case Table.param:
          tableStream[Param.metadataTable].rows = rows;
        case Table.interfaceImpl:
          tableStream[InterfaceImpl.metadataTable].rows = rows;
        case Table.memberRef:
          tableStream[MemberRef.metadataTable].rows = rows;
        case Table.constant:
          tableStream[Constant.metadataTable].rows = rows;
        case Table.customAttribute:
          tableStream[CustomAttribute.metadataTable].rows = rows;
        case Table.fieldMarshal:
          unusedFieldMarshal.rows = rows;
        case Table.declSecurity:
          unusedDeclSecurity.rows = rows;
        case Table.classLayout:
          tableStream[ClassLayout.metadataTable].rows = rows;
        case Table.fieldLayout:
          tableStream[FieldLayout.metadataTable].rows = rows;
        case Table.standAloneSig:
          unusedStandaloneSig.rows = rows;
        case Table.eventMap:
          unusedEventMap.rows = rows;
        case Table.event:
          unusedEvent.rows = rows;
        case Table.propertyMap:
          unusedPropertyMap.rows = rows;
        case Table.property:
          unusedProperty.rows = rows;
        case Table.methodSemantics:
          unusedMethodSemantics.rows = rows;
        case Table.methodImpl:
          unusedMethodImpl.rows = rows;
        case Table.moduleRef:
          tableStream[ModuleRef.metadataTable].rows = rows;
        case Table.typeSpec:
          tableStream[TypeSpec.metadataTable].rows = rows;
        case Table.implMap:
          tableStream[ImplMap.metadataTable].rows = rows;
        case Table.fieldRVA:
          unusedFieldRva.rows = rows;
        case Table.assembly:
          unusedAssembly.rows = rows;
        case Table.assemblyProcessor:
          unusedAssemblyProcessor.rows = rows;
        case Table.assemblyOS:
          unusedAssemblyOs.rows = rows;
        case Table.assemblyRef:
          tableStream[AssemblyRef.metadataTable].rows = rows;
        case Table.assemblyRefProcessor:
          unusedAssemblyRefProcessor.rows = rows;
        case Table.assemblyRefOS:
          unusedAssemblyRefOs.rows = rows;
        case Table.file:
          unusedFile.rows = rows;
        case Table.exportedType:
          unusedExportedType.rows = rows;
        case Table.manifestResource:
          unusedManifestResource.rows = rows;
        case Table.nestedClass:
          tableStream[NestedClass.metadataTable].rows = rows;
        case Table.genericParam:
          tableStream[GenericParam.metadataTable].rows = rows;
        case Table.methodSpec:
          unusedMethodSpec.rows = rows;
        case Table.genericParamConstraint:
          unusedGenericParamConstraint.rows = rows;
        default:
          throw const WinmdException('Unknown table index');
      }
    }

    final typeDefOrRef = codedIndexSize([
      tableStream[TypeDef.metadataTable].rows,
      tableStream[TypeRef.metadataTable].rows,
      tableStream[TypeSpec.metadataTable].rows,
    ]);
    final hasConstant = codedIndexSize([
      tableStream[Field.metadataTable].rows,
      tableStream[Param.metadataTable].rows,
      unusedProperty.rows,
    ]);
    final hasFieldMarshal = codedIndexSize([
      tableStream[Field.metadataTable].rows,
      tableStream[Param.metadataTable].rows,
    ]);
    final hasDeclSecurity = codedIndexSize([
      tableStream[TypeDef.metadataTable].rows,
      tableStream[MethodDef.metadataTable].rows,
      unusedAssembly.rows,
    ]);
    final memberRefParent = codedIndexSize([
      tableStream[TypeDef.metadataTable].rows,
      tableStream[TypeRef.metadataTable].rows,
      tableStream[ModuleRef.metadataTable].rows,
      tableStream[MethodDef.metadataTable].rows,
      tableStream[TypeSpec.metadataTable].rows,
    ]);
    final hasSemantics = codedIndexSize([
      unusedEvent.rows,
      unusedProperty.rows,
    ]);
    final methodDefOrRef = codedIndexSize([
      tableStream[MethodDef.metadataTable].rows,
      tableStream[MemberRef.metadataTable].rows,
    ]);
    final memberForwarded = codedIndexSize([
      tableStream[Field.metadataTable].rows,
      tableStream[MethodDef.metadataTable].rows,
    ]);
    final implementation = codedIndexSize([
      unusedFile.rows,
      tableStream[AssemblyRef.metadataTable].rows,
      unusedExportedType.rows,
    ]);
    final customAttributeType = codedIndexSize([
      unusedEmpty.rows,
      tableStream[MethodDef.metadataTable].rows,
      tableStream[MemberRef.metadataTable].rows,
      unusedEmpty.rows,
      unusedEmpty.rows,
    ]);
    final resolutionScope = codedIndexSize([
      tableStream[Module.metadataTable].rows,
      tableStream[ModuleRef.metadataTable].rows,
      tableStream[AssemblyRef.metadataTable].rows,
      tableStream[TypeRef.metadataTable].rows,
    ]);
    final typeOrMethodDef = codedIndexSize([
      tableStream[TypeDef.metadataTable].rows,
      tableStream[MethodDef.metadataTable].rows,
    ]);
    final hasCustomAttribute = codedIndexSize([
      tableStream[MethodDef.metadataTable].rows,
      tableStream[Field.metadataTable].rows,
      tableStream[TypeRef.metadataTable].rows,
      tableStream[TypeDef.metadataTable].rows,
      tableStream[Param.metadataTable].rows,
      tableStream[InterfaceImpl.metadataTable].rows,
      tableStream[MemberRef.metadataTable].rows,
      tableStream[Module.metadataTable].rows,
      unusedProperty.rows,
      unusedEvent.rows,
      unusedStandaloneSig.rows,
      tableStream[ModuleRef.metadataTable].rows,
      tableStream[TypeSpec.metadataTable].rows,
      unusedAssembly.rows,
      tableStream[AssemblyRef.metadataTable].rows,
      unusedFile.rows,
      unusedExportedType.rows,
      unusedManifestResource.rows,
      tableStream[GenericParam.metadataTable].rows,
      unusedGenericParamConstraint.rows,
      unusedMethodSpec.rows,
    ]);

    unusedAssembly._setColumns(
      4,
      8,
      4,
      blobIndexSize,
      stringIndexSize,
      stringIndexSize,
    );
    unusedAssemblyOs._setColumns(4, 4, 4);
    unusedAssemblyProcessor._setColumns(4);
    tableStream[AssemblyRef.metadataTable]._setColumns(
      8,
      4,
      blobIndexSize,
      stringIndexSize,
      stringIndexSize,
      blobIndexSize,
    );
    unusedAssemblyRefOs._setColumns(
      4,
      4,
      4,
      tableStream[AssemblyRef.metadataTable]._indexWidth,
    );
    unusedAssemblyRefProcessor._setColumns(
      4,
      tableStream[AssemblyRef.metadataTable]._indexWidth,
    );
    tableStream[ClassLayout.metadataTable]._setColumns(
      2,
      4,
      tableStream[TypeDef.metadataTable]._indexWidth,
    );
    tableStream[Constant.metadataTable]._setColumns(
      2,
      hasConstant,
      blobIndexSize,
    );
    tableStream[CustomAttribute.metadataTable]._setColumns(
      hasCustomAttribute,
      customAttributeType,
      blobIndexSize,
    );
    unusedDeclSecurity._setColumns(2, hasDeclSecurity, blobIndexSize);
    unusedEventMap._setColumns(
      tableStream[TypeDef.metadataTable]._indexWidth,
      unusedEvent._indexWidth,
    );
    unusedEvent._setColumns(2, stringIndexSize, typeDefOrRef);
    unusedExportedType._setColumns(
      4,
      4,
      stringIndexSize,
      stringIndexSize,
      implementation,
    );
    tableStream[Field.metadataTable]._setColumns(
      2,
      stringIndexSize,
      blobIndexSize,
    );
    tableStream[FieldLayout.metadataTable]._setColumns(
      4,
      tableStream[Field.metadataTable]._indexWidth,
    );
    unusedFieldMarshal._setColumns(hasFieldMarshal, blobIndexSize);
    unusedFieldRva._setColumns(4, tableStream[Field.metadataTable]._indexWidth);
    unusedFile._setColumns(4, stringIndexSize, blobIndexSize);
    tableStream[GenericParam.metadataTable]._setColumns(
      2,
      2,
      typeOrMethodDef,
      stringIndexSize,
    );
    unusedGenericParamConstraint._setColumns(
      tableStream[GenericParam.metadataTable]._indexWidth,
      typeDefOrRef,
    );
    tableStream[ImplMap.metadataTable]._setColumns(
      2,
      memberForwarded,
      stringIndexSize,
      tableStream[ModuleRef.metadataTable]._indexWidth,
    );
    tableStream[InterfaceImpl.metadataTable]._setColumns(
      tableStream[TypeDef.metadataTable]._indexWidth,
      typeDefOrRef,
    );
    unusedManifestResource._setColumns(4, 4, stringIndexSize, implementation);
    tableStream[MemberRef.metadataTable]._setColumns(
      memberRefParent,
      stringIndexSize,
      blobIndexSize,
    );
    tableStream[MethodDef.metadataTable]._setColumns(
      4,
      2,
      2,
      stringIndexSize,
      blobIndexSize,
      tableStream[Param.metadataTable]._indexWidth,
    );
    unusedMethodImpl._setColumns(
      tableStream[TypeDef.metadataTable]._indexWidth,
      methodDefOrRef,
      methodDefOrRef,
    );
    unusedMethodSemantics._setColumns(
      2,
      tableStream[MethodDef.metadataTable]._indexWidth,
      hasSemantics,
    );
    unusedMethodSpec._setColumns(methodDefOrRef, blobIndexSize);
    tableStream[Module.metadataTable]._setColumns(
      2,
      stringIndexSize,
      guidIndexSize,
      guidIndexSize,
      guidIndexSize,
    );
    tableStream[ModuleRef.metadataTable]._setColumns(stringIndexSize);
    tableStream[NestedClass.metadataTable]._setColumns(
      tableStream[TypeDef.metadataTable]._indexWidth,
      tableStream[TypeDef.metadataTable]._indexWidth,
    );
    tableStream[Param.metadataTable]._setColumns(2, 2, stringIndexSize);
    unusedProperty._setColumns(2, stringIndexSize, blobIndexSize);
    unusedPropertyMap._setColumns(
      tableStream[TypeDef.metadataTable]._indexWidth,
      unusedProperty._indexWidth,
    );
    unusedStandaloneSig._setColumns(blobIndexSize);
    tableStream[TypeDef.metadataTable]._setColumns(
      4,
      stringIndexSize,
      stringIndexSize,
      typeDefOrRef,
      tableStream[Field.metadataTable]._indexWidth,
      tableStream[MethodDef.metadataTable]._indexWidth,
    );
    tableStream[TypeRef.metadataTable]._setColumns(
      resolutionScope,
      stringIndexSize,
      stringIndexSize,
    );
    tableStream[TypeSpec.metadataTable]._setColumns(blobIndexSize);

    offset = tableStream[Module.metadataTable]._setOffset(offset);
    offset = tableStream[TypeRef.metadataTable]._setOffset(offset);
    offset = tableStream[TypeDef.metadataTable]._setOffset(offset);
    offset = tableStream[Field.metadataTable]._setOffset(offset);
    offset = tableStream[MethodDef.metadataTable]._setOffset(offset);
    offset = tableStream[Param.metadataTable]._setOffset(offset);
    offset = tableStream[InterfaceImpl.metadataTable]._setOffset(offset);
    offset = tableStream[MemberRef.metadataTable]._setOffset(offset);
    offset = tableStream[Constant.metadataTable]._setOffset(offset);
    offset = tableStream[CustomAttribute.metadataTable]._setOffset(offset);
    offset = unusedFieldMarshal._setOffset(offset);
    offset = unusedDeclSecurity._setOffset(offset);
    offset = tableStream[ClassLayout.metadataTable]._setOffset(offset);
    offset = tableStream[FieldLayout.metadataTable]._setOffset(offset);
    offset = unusedStandaloneSig._setOffset(offset);
    offset = unusedEventMap._setOffset(offset);
    offset = unusedEvent._setOffset(offset);
    offset = unusedPropertyMap._setOffset(offset);
    offset = unusedProperty._setOffset(offset);
    offset = unusedMethodSemantics._setOffset(offset);
    offset = unusedMethodImpl._setOffset(offset);
    offset = tableStream[ModuleRef.metadataTable]._setOffset(offset);
    offset = tableStream[TypeSpec.metadataTable]._setOffset(offset);
    offset = tableStream[ImplMap.metadataTable]._setOffset(offset);
    offset = unusedFieldRva._setOffset(offset);
    offset = unusedAssembly._setOffset(offset);
    offset = unusedAssemblyProcessor._setOffset(offset);
    offset = unusedAssemblyOs._setOffset(offset);
    offset = tableStream[AssemblyRef.metadataTable]._setOffset(offset);
    offset = unusedAssemblyRefProcessor._setOffset(offset);
    offset = unusedAssemblyRefOs._setOffset(offset);
    offset = unusedFile._setOffset(offset);
    offset = unusedExportedType._setOffset(offset);
    offset = unusedManifestResource._setOffset(offset);
    offset = tableStream[NestedClass.metadataTable]._setOffset(offset);
    offset = tableStream[GenericParam.metadataTable]._setOffset(offset);

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
    this._data,
    this.blobHeap,
    this.guidHeap,
    this.stringHeap,
    this.tableStream,
    this.userStringHeap,
  );

  final Uint8List _data;
  final BlobHeap blobHeap;
  final GuidHeap guidHeap;
  final StringHeap stringHeap;
  final TableStream tableStream;
  final UserStringHeap userStringHeap;

  String get name => readString(0, MetadataTable.module, 1);

  Guid get mvid => readGuid(0, MetadataTable.module, 2);

  @pragma('vm:prefer-inline')
  Uint8List readBlob(int row, MetadataTable table, int column) =>
      blobHeap[readUint(row, table, column)];

  @pragma('vm:prefer-inline')
  Guid readGuid(int row, MetadataTable table, int column) =>
      guidHeap[readUint(row, table, column) - 1];

  @pragma('vm:prefer-inline')
  String readString(int row, MetadataTable table, int column) =>
      stringHeap[readUint(row, table, column)];

  @pragma('vm:prefer-inline')
  String readUserString(int row, MetadataTable table, int column) =>
      userStringHeap[readUint(row, table, column)];

  int readUint(int row, MetadataTable table, int column) {
    final table$ = tableStream[table];
    final column$ = table$.columns[column];
    final offset = table$.offset + row * table$.width + column$.offset;
    return switch (column$.width) {
      1 => _data.readUint8(offset),
      2 => _data.readUint16(offset),
      4 => _data.readUint32(offset),
      8 => _data.readUint64(offset),
      _ => throw WinmdException('Invalid column width: ${column$.width}'),
    };
  }

  @pragma('vm:prefer-inline')
  int readUint8(int row, MetadataTable table, int column, int offset) =>
      _data.readUint8(_calculateOffset(row, table, column) + offset);

  @pragma('vm:prefer-inline')
  int readUint16(int row, MetadataTable table, int column, int offset) =>
      _data.readUint16(_calculateOffset(row, table, column) + offset);

  @pragma('vm:prefer-inline')
  int readUint32(int row, MetadataTable table, int column, int offset) =>
      _data.readUint32(_calculateOffset(row, table, column) + offset);

  @pragma('vm:prefer-inline')
  int readUint64(int row, MetadataTable table, int column, int offset) =>
      _data.readUint64(_calculateOffset(row, table, column) + offset);

  @pragma('vm:prefer-inline')
  int _calculateOffset(int row, MetadataTable table, int column) {
    final table$ = tableStream[table];
    final column$ = table$.columns[column];
    return table$.offset + row * table$.width + column$.offset;
  }

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
    if (last <= first) return const Iterable.empty();
    return Iterable.generate(last - first, (i) => first + i);
  }

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
        return Iterable.generate(upper - lower, (i) => lower + i);
      }
    }

    return const Iterable.empty();
  }

  int getParentRow(int row, MetadataTable table, int column) =>
      _upperBound(table, 0, tableStream[table].rows, column, row + 1) - 1;

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

  Iterable<int> get assemblyRefs =>
      Iterable.generate(tableStream[AssemblyRef.metadataTable].rows);

  Iterable<int> get classLayouts =>
      Iterable.generate(tableStream[ClassLayout.metadataTable].rows);

  Iterable<int> get constants =>
      Iterable.generate(tableStream[Constant.metadataTable].rows);

  Iterable<int> get customAttributes =>
      Iterable.generate(tableStream[CustomAttribute.metadataTable].rows);

  Iterable<int> get fields =>
      Iterable.generate(tableStream[Field.metadataTable].rows);

  Iterable<int> get fieldLayouts =>
      Iterable.generate(tableStream[FieldLayout.metadataTable].rows);

  Iterable<int> get genericParams =>
      Iterable.generate(tableStream[GenericParam.metadataTable].rows);

  Iterable<int> get genericParamConstraints =>
      Iterable.generate(tableStream[GenericParamConstraint.metadataTable].rows);

  Iterable<int> get implMaps =>
      Iterable.generate(tableStream[ImplMap.metadataTable].rows);

  Iterable<int> get interfaceImpls =>
      Iterable.generate(tableStream[InterfaceImpl.metadataTable].rows);

  Iterable<int> get memberRefs =>
      Iterable.generate(tableStream[MemberRef.metadataTable].rows);

  Iterable<int> get methodDefs =>
      Iterable.generate(tableStream[MethodDef.metadataTable].rows);

  Iterable<int> get modules =>
      Iterable.generate(tableStream[Module.metadataTable].rows);

  Iterable<int> get moduleRefs =>
      Iterable.generate(tableStream[ModuleRef.metadataTable].rows);

  Iterable<int> get nestedClasses =>
      Iterable.generate(tableStream[NestedClass.metadataTable].rows);

  Iterable<int> get params =>
      Iterable.generate(tableStream[Param.metadataTable].rows);

  Iterable<int> get typeDefs =>
      Iterable.generate(tableStream[TypeDef.metadataTable].rows);

  Iterable<int> get typeRefs =>
      Iterable.generate(tableStream[TypeRef.metadataTable].rows);

  Iterable<int> get typeSpecs =>
      Iterable.generate(tableStream[TypeSpec.metadataTable].rows);

  @override
  String toString() => 'MetadataReader(name: $name, mvid: $mvid)';
}

final class TableData {
  TableData({
    required this.offset,
    required this.rows,
    required this.width,
    required this.columns,
  });

  factory TableData.empty() => TableData(
    offset: 0,
    rows: 0,
    width: 0,
    columns: List.generate(
      6,
      (i) => TableColumn(offset: 0, width: 0),
      growable: false,
    ),
  );

  /// The offset of the table in the metadata stream.
  int offset;

  /// The number of rows in the table.
  int rows;

  /// The width of the table in bytes.
  int width;

  /// The columns of the table.
  final List<TableColumn> columns;

  @pragma('vm:prefer-inline')
  int get _indexWidth {
    if (rows < (1 << 16)) return 2;
    return 4;
  }

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

/// A table column.
final class TableColumn {
  TableColumn({required this.offset, required this.width});

  /// The offset of the column in the table.
  int offset;

  /// The width of the column in bytes.
  int width;

  @override
  String toString() => 'TableColumn(offset: $offset, width: $width)';
}
