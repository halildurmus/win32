import 'dart:collection';
import 'dart:ffi';
import 'dart:typed_data';

import '../attribute_arg.dart';
import '../attributes.dart';
import '../bindings.dart';
import '../common.dart';
import '../compressed_integer.dart';
import '../exception.dart';
import '../guid.dart';
import '../metadata_type.dart';
import '../metadata_value.dart';
import '../method_signature.dart';
import 'codes.dart';
import 'heap/blob.dart';
import 'heap/guid.dart';
import 'heap/string.dart';
import 'heap/user_string.dart';
import 'helpers.dart';
import 'id.dart';
import 'stream.dart';
import 'table_stream.dart';

final class MetadataWriter {
  /// Creates a minimal ECMA-335 file representation.
  factory MetadataWriter(
    String name, {
    int majorVersion = 0xFF,
    int minorVersion = 0xFF,
    int buildNumber = 0xFF,
    int revisionNumber = 0xFF,
    AssemblyFlags flags = AssemblyFlags.windowsRuntime,
  }) {
    final writer = MetadataWriter._();

    // This assembly.
    writer.tableStream.assembly.add(
      AssemblyRecord(
        name: writer.stringHeap.insert(name),
        hashAlgId: 0x00008004,
        majorVersion: majorVersion,
        minorVersion: minorVersion,
        buildNumber: buildNumber,
        revisionNumber: revisionNumber,
        flags: flags,
      ),
    );

    // This module.
    writer.tableStream.module.add(
      ModuleRecord(name: writer.stringHeap.insert(name), mvid: 1),
    );

    writer
      // Some parsers will fail to read without a "mscorlib" reference implied
      // by "System" types.
      ..addAssemblyRef('System')
      // The parent type of "globals" expected by most parsers.
      ..addTypeDef('', '<Module>', null, const TypeAttributes(0));

    return writer;
  }

  MetadataWriter._()
    : blobHeap = BlobHeap.empty(),
      guidHeap = GuidHeap.empty()..insert(Guid.generate()),
      stringHeap = StringHeap.empty(),
      tableStream = TableStream(),
      userStringHeap = UserStringHeap.empty(),
      _typeRefs = HashMap<String, HashMap<String, TypeRef>>(),
      _assemblyRefs = HashMap<String, AssemblyRef>(),
      _moduleRefs = HashMap<String, ModuleRef>(),
      _memberRefs = HashMap<MemberRefRecord, MemberRef>(),
      _constants = SplayTreeMap<HasConstant, ConstantRecord>(
        (a, b) => a.encode().compareTo(b.encode()),
      ),
      _attributes =
          SplayTreeMap<HasCustomAttribute, List<CustomAttributeRecord>>(
            (a, b) => a.encode().compareTo(b.encode()),
          ),
      _genericParams = SplayTreeMap<TypeOrMethodDef, List<GenericParamRecord>>(
        (a, b) => a.encode().compareTo(b.encode()),
      );

  final BlobHeap blobHeap;
  final GuidHeap guidHeap;
  final StringHeap stringHeap;
  final TableStream tableStream;
  final UserStringHeap userStringHeap;

  // Indexes for fast lookup of preexisting rows.
  final HashMap<String, HashMap<String, TypeRef>> _typeRefs;
  final HashMap<String, AssemblyRef> _assemblyRefs;
  final HashMap<String, ModuleRef> _moduleRefs;
  final HashMap<MemberRefRecord, MemberRef> _memberRefs;

  // Staging for sorted rows before these records can be written.
  final SplayTreeMap<HasConstant, ConstantRecord> _constants;
  final SplayTreeMap<HasCustomAttribute, List<CustomAttributeRecord>>
  _attributes;
  final SplayTreeMap<TypeOrMethodDef, List<GenericParamRecord>> _genericParams;

  ModuleRef addModuleRef(String name) {
    if (_moduleRefs[name] case final moduleRef?) return moduleRef;
    final position = ModuleRef(tableStream.moduleRef.length);
    tableStream.moduleRef.add(ModuleRefRecord(stringHeap.insert(name)));
    _moduleRefs[name] = position;
    return position;
  }

  void addImplMap(
    MethodDef method,
    PInvokeAttributes flags,
    String importName,
    String importScope,
  ) {
    final scope = addModuleRef(importScope);
    tableStream.implMap.add(
      ImplMapRecord(
        mappingFlags: flags,
        memberForwarded: MemberForwarded.methodDef(method),
        importName: stringHeap.insert(importName),
        importScope: scope,
      ),
    );
  }

  /// Adds an `AssemblyRef` row representing the given namespace to the file,
  /// returning the row offset.
  AssemblyRef addAssemblyRef(String namespace) {
    // This generates a synthetic `AssemblyRef` for every root namespace, but
    // the alternative requires a lot more contextual information.
    final rootNamespace = namespace.split('.')[0];

    if (_assemblyRefs[rootNamespace] case final assemblyRef?) {
      return assemblyRef;
    }

    final position = AssemblyRef(tableStream.assemblyRef.length);
    final assemblyRef = rootNamespace == 'System'
        ? AssemblyRefRecord(
            name: stringHeap.insert('mscorlib'),
            majorVersion: 4,
            publicKeyOrToken: blobHeap.insert(
              Uint8List.fromList([
                0xB7, 0x7A, 0x5C, 0x56, 0x19, 0x34, 0xE0, 0x89, //
              ]),
            ),
          )
        : AssemblyRefRecord(
            name: stringHeap.insert(namespace),
            majorVersion: 0xFF,
            minorVersion: 0xFF,
            buildNumber: 0xFF,
            revisionNumber: 0xFF,
            flags: AssemblyFlags.windowsRuntime,
          );
    tableStream.assemblyRef.add(assemblyRef);
    _assemblyRefs[namespace] = position;
    return position;
  }

  /// Adds a `TypeDef` row to the file, returning the row offset.
  TypeDef addTypeDef(
    String namespace,
    String name,
    TypeDefOrRef? extend,
    TypeAttributes flags,
  ) {
    final position = TypeDef(tableStream.typeDef.length);
    tableStream.typeDef.add(
      TypeDefRecord(
        name: stringHeap.insert(name),
        namespace: stringHeap.insert(namespace),
        flags: flags,
        extend: extend ?? TypeDefOrRef.none,
        fieldList: tableStream.field.length,
        methodList: tableStream.methodDef.length,
      ),
    );
    return position;
  }

  /// Adds a `TypeRef` row to the file, returning the row offset.
  TypeRef addTypeRef(String namespace, String name) {
    if (_typeRefs[namespace]?[name] case final typeRef?) return typeRef;

    final position = TypeRef(tableStream.typeRef.length);
    final scope = ResolutionScope.assemblyRef(addAssemblyRef(namespace));
    tableStream.typeRef.add(
      TypeRefRecord(
        name: stringHeap.insert(name),
        namespace: stringHeap.insert(namespace),
        resolutionScope: scope,
      ),
    );
    _typeRefs
        .putIfAbsent(namespace, HashMap.new)
        .putIfAbsent(name, () => position);

    return position;
  }

  TypeSpec addTypeSpec(
    String namespace,
    String name,
    List<MetadataType> generics,
  ) {
    assert(
      generics.isNotEmpty,
      'Expected generics to be non-empty, got $generics.',
    );
    final typeRef = addTypeRef(namespace, name);
    final buffer = BytesBuilder()
      ..addByte(ELEMENT_TYPE_GENERICINST)
      ..addByte(ELEMENT_TYPE_CLASS)
      ..add(CompressedInteger.encode(TypeDefOrRef.typeRef(typeRef).encode()))
      ..add(CompressedInteger.encode(generics.length));
    for (final type in generics) {
      _encodeType(type, buffer);
    }
    final position = TypeSpec(tableStream.typeSpec.length);
    tableStream.typeSpec.add(
      TypeSpecRecord(signature: blobHeap.insert(buffer.takeBytes())),
    );
    return position;
  }

  /// Adds a `Field` row to the file, returning the row offset.
  Field addField(String name, MetadataType type, FieldAttributes flags) {
    final signature = _writeFieldSig(type);
    final position = Field(tableStream.field.length);
    tableStream.field.add(
      FieldRecord(
        name: stringHeap.insert(name),
        flags: flags,
        signature: signature,
      ),
    );
    return position;
  }

  /// Adds a `MethodDef` row to the file, returning the row offset.
  MethodDef addMethodDef(
    String name,
    MethodSignature signature,
    MethodAttributes flags,
    MethodImplAttributes implFlags,
  ) {
    final methodDefSig = _writeMethodDefSig(signature);
    final position = MethodDef(tableStream.methodDef.length);
    tableStream.methodDef.add(
      MethodDefRecord(
        rva: 0,
        implFlags: implFlags,
        flags: flags,
        name: stringHeap.insert(name),
        signature: methodDefSig,
        paramList: tableStream.param.length,
      ),
    );
    return position;
  }

  MemberRef addMemberRef(
    String name,
    MethodSignature signature,
    MemberRefParent parent,
  ) {
    final methodDefSig = _writeMethodDefSig(signature);
    final record = MemberRefRecord(
      name: stringHeap.insert(name),
      signature: methodDefSig,
      parent: parent,
    );

    if (_memberRefs[record] case final memberRef?) return memberRef;

    final position = MemberRef(tableStream.memberRef.length);
    tableStream.memberRef.add(record);
    _memberRefs[record] = position;
    return position;
  }

  /// Adds a `Param` row to the file, returning the row offset.
  Param addParam(String name, int sequence, ParamAttributes flags) {
    final position = Param(tableStream.param.length);
    tableStream.param.add(
      ParamRecord(
        flags: flags,
        sequence: sequence,
        name: stringHeap.insert(name),
      ),
    );
    return position;
  }

  /// Adds a `CustomAttribute` row to the file.
  ///
  /// This is a sorted table so the row offset is not yet available.
  void addCustomAttribute(
    HasCustomAttribute parent,
    CustomAttributeType type,
    List<FixedArg> fixedArgs,
    List<NamedArg> namedArgs,
  ) {
    final attributeValue = _writeAttributeValue(fixedArgs, namedArgs);
    _attributes
        .putIfAbsent(parent, () => [])
        .add(
          CustomAttributeRecord(
            parent: parent,
            type: type,
            value: attributeValue,
          ),
        );
  }

  void addConstant(HasConstant parent, MetadataValue value) {
    final type = value.type.code;
    final constantValue = _writeConstantValue(value);
    _constants[parent] = ConstantRecord(
      parent: parent,
      type: type,
      value: constantValue,
    );
  }

  void addGenericParam(
    String name,
    TypeOrMethodDef owner,
    int number,
    GenericParamAttributes flags,
  ) {
    _genericParams
        .putIfAbsent(owner, () => [])
        .add(
          GenericParamRecord(
            name: stringHeap.insert(name),
            number: number,
            owner: owner,
            flags: flags,
          ),
        );
  }

  void addClassLayout(TypeDef parent, int packingSize, int classSize) {
    tableStream.classLayout.add(
      ClassLayoutRecord(
        packingSize: packingSize,
        classSize: classSize,
        parent: parent.value,
      ),
    );
  }

  void addNestedClass(TypeDef inner, TypeDef outer) {
    assert(
      inner.value > outer.value,
      'Expected inner class ${inner.value} to be greater than outer '
      'class ${outer.value}.',
    );
    tableStream.nestedClass.add(
      NestedClassRecord(nestedClass: inner.value, enclosingClass: outer.value),
    );
  }

  InterfaceImpl addInterfaceImpl(TypeDef class$, MetadataType interface) {
    if (interface is! NamedType) throw ArgumentError('Invalid interface type');
    final typeName = interface.typeName;
    final interfaceType = typeName.generics.isEmpty
        ? TypeDefOrRef.typeRef(addTypeRef(typeName.namespace, typeName.name))
        : TypeDefOrRef.typeSpec(
            addTypeSpec(typeName.namespace, typeName.name, typeName.generics),
          );
    final position = InterfaceImpl(tableStream.interfaceImpl.length);
    tableStream.interfaceImpl.add(
      InterfaceImplRecord(class$: class$, interface: interfaceType),
    );
    return position;
  }

  /// Encodes the `Type` in the buffer.
  ///
  /// Any required `TypeRef` rows will be added to the file, returning the blob
  /// offset.
  void _encodeType(MetadataType type, BytesBuilder buffer) {
    switch (type) {
      case VoidType(:final code):
        buffer.addByte(code);
      case BoolType(:final code):
        buffer.addByte(code);
      case CharType(:final code):
        buffer.addByte(code);
      case Int8Type(:final code):
        buffer.addByte(code);
      case Uint8Type(:final code):
        buffer.addByte(code);
      case Int16Type(:final code):
        buffer.addByte(code);
      case Uint16Type(:final code):
        buffer.addByte(code);
      case Int32Type(:final code):
        buffer.addByte(code);
      case Uint32Type(:final code):
        buffer.addByte(code);
      case Int64Type(:final code):
        buffer.addByte(code);
      case Uint64Type(:final code):
        buffer.addByte(code);
      case Float32Type(:final code):
        buffer.addByte(code);
      case Float64Type(:final code):
        buffer.addByte(code);
      case IntPtrType(:final code):
        buffer.addByte(code);
      case UintPtrType(:final code):
        buffer.addByte(code);
      case NamedType(:final typeName):
        _writeTypeName(
          typeName.namespace,
          typeName.name,
          typeName.generics,
          buffer,
        );
      case ObjectType(:final code):
        buffer.addByte(code);
      case StringType(:final code):
        buffer.addByte(code);
      case NullReferenceType(:final code):
        buffer.addByte(code);
      case AttributeEnumType(:final code):
        buffer.addByte(code);
      case ArrayType(:final code, :final element):
        buffer.addByte(code);
        _encodeType(element, buffer);
      case FixedArrayType(:final code, :final element, :final length):
        // See §II.23.2.13 ArrayShape
        buffer.addByte(code);
        _encodeType(element, buffer);
        buffer.add(CompressedInteger.encode(1)); // Rank
        buffer.add(CompressedInteger.encode(1)); // NumSizes
        buffer.add(CompressedInteger.encode(length)); // Size
        buffer.add(CompressedInteger.encode(0)); // NumLoBounds
      case ArrayReferenceType(:final element):
        buffer.addByte(ELEMENT_TYPE_BYREF);
        buffer.addByte(ELEMENT_TYPE_SZARRAY);
        _encodeType(element, buffer);
      case ConstReferenceType(:final element):
        buffer.add(CompressedInteger.encode(ELEMENT_TYPE_CMOD_REQD));
        final position = addTypeRef(
          'System.Runtime.CompilerServices',
          'IsConst',
        );
        buffer.add(
          CompressedInteger.encode(TypeDefOrRef.typeRef(position).encode()),
        );
        _encodeType(element, buffer);
      case GenericParameterType(:final code, :final parameterIndex):
        buffer.addByte(code);
        buffer.add(CompressedInteger.encode(parameterIndex));
      case MutablePointerType(:final pointee, :final depth):
        for (var i = 0; i < depth; i++) {
          buffer.add(CompressedInteger.encode(ELEMENT_TYPE_PTR));
        }
        _encodeType(pointee, buffer);
      case ConstPointerType(:final pointee, :final depth):
        buffer.add(CompressedInteger.encode(ELEMENT_TYPE_CMOD_REQD));
        final position = addTypeRef(
          'System.Runtime.CompilerServices',
          'IsConst',
        );
        buffer.add(
          CompressedInteger.encode(TypeDefOrRef.typeRef(position).encode()),
        );
        for (var i = 0; i < depth; i++) {
          buffer.add(CompressedInteger.encode(ELEMENT_TYPE_PTR));
        }
        _encodeType(pointee, buffer);
    }
  }

  void _writeTypeName(
    String namespace,
    String name,
    List<MetadataType> generics,
    BytesBuilder buffer,
  ) {
    if (generics.isNotEmpty) {
      buffer.addByte(ELEMENT_TYPE_GENERICINST);
    }

    final position = addTypeRef(namespace, name);
    // Technically this should be ELEMENT_TYPE_CLASS if the type is not a value
    // type but that requires more contextual information.
    buffer
      ..addByte(ELEMENT_TYPE_VALUETYPE)
      ..add(CompressedInteger.encode(TypeDefOrRef.typeRef(position).encode()));

    if (generics.isNotEmpty) {
      buffer.add(CompressedInteger.encode(generics.length));
      for (final type in generics) {
        _encodeType(type, buffer);
      }
    }
  }

  /// Writes the `Type` into a `FileSig` buffer and stores it in the file,
  /// returning the blob offset.
  BlobId _writeFieldSig(MetadataType type) {
    final buffer = BytesBuilder()..addByte(0x6); // FIELD
    _encodeType(type, buffer);
    return blobHeap.insert(buffer.takeBytes());
  }

  /// Writes the method signature into a `MethodDefSig` buffer and stores it in
  /// the file, returning the blob offset.
  BlobId _writeMethodDefSig(MethodSignature signature) {
    final buffer = BytesBuilder()
      ..addByte(signature.flags)
      ..add(CompressedInteger.encode(signature.types.length));
    _encodeType(signature.returnType, buffer);
    for (final type in signature.types) {
      _encodeType(type, buffer);
    }
    return blobHeap.insert(buffer.takeBytes());
  }

  BlobId _writeConstantValue(MetadataValue value) {
    final buffer = BytesBuilder()..writeValue(value);
    return blobHeap.insert(buffer.takeBytes());
  }

  BlobId _writeAttributeValue(
    List<FixedArg> fixedArgs,
    List<NamedArg> namedArgs,
  ) {
    final buffer = BytesBuilder()..writeUint16(1); // prolog

    for (final fixedArg in fixedArgs) {
      buffer.writeValue(fixedArg.value);
    }

    buffer.writeUint16(namedArgs.length);

    for (final NamedArg(:name, :value) in namedArgs) {
      buffer
        ..addByte(ELEMENT_TYPE_FIELD)
        ..addByte(value.type.code);

      if (value case AttributeEnumValue(:final name)) {
        buffer
          ..add(CompressedInteger.encode(name.length))
          ..add(name.codeUnits);
      }

      buffer
        ..add(CompressedInteger.encode(name.length))
        ..add(name.codeUnits)
        ..writeValue(value);
    }

    return blobHeap.insert(buffer.takeBytes());
  }

  Uint8List toBytes() {
    // Flatten sorted records...
    tableStream.constant.addAll(_constants.values);
    tableStream.customAttribute.addAll(_attributes.values.expand((e) => e));
    tableStream.genericParam.addAll(_genericParams.values.expand((e) => e));

    // Test sorted order...
    assert(
      _isSorted(tableStream.classLayout.map((r) => r.parent)),
      'ClassLayout.parent is not sorted',
    );
    assert(
      _isSorted(tableStream.constant.map((r) => r.parent.encode())),
      'Constant.parent is not sorted',
    );
    assert(
      _isSorted(tableStream.customAttribute.map((r) => r.parent.encode())),
      'CustomAttribute.parent is not sorted',
    );
    assert(
      _isSorted(tableStream.genericParam.map((r) => r.owner.encode())),
      'GenericParam.owner is not sorted',
    );
    assert(
      _isSorted(tableStream.implMap.map((r) => r.memberForwarded.encode())),
      'ImplMap.memberForwarded is not sorted',
    );
    assert(
      _isSorted(tableStream.nestedClass.map((r) => r.nestedClass)),
      'NestedClass.nestedClass is not sorted',
    );

    // Serialize...
    final blobHeapBytes = blobHeap.toBytes();
    final guidHeapBytes = guidHeap.toBytes();
    final stringHeapBytes = stringHeap.toBytes();
    final tableStreamBytes = tableStream.toBytes();
    final userStringHeapBytes = userStringHeap.toBytes();

    if ([
      blobHeapBytes.length,
      guidHeapBytes.length,
      stringHeapBytes.length,
      tableStreamBytes.length,
      userStringHeapBytes.length,
    ].any((length) => length > 4_294_967_295)) {
      throw const WinmdException('Heap too large');
    }

    final sizeOfStreams =
        blobHeapBytes.length +
        guidHeapBytes.length +
        stringHeapBytes.length +
        tableStreamBytes.length +
        userStringHeapBytes.length;

    final dosByteData = Uint8List(sizeOf<IMAGE_DOS_HEADER>());
    Struct.create<IMAGE_DOS_HEADER>(dosByteData)
      ..e_magic = IMAGE_DOS_SIGNATURE
      ..e_lfarlc = 64
      ..e_lfanew = sizeOf<IMAGE_DOS_HEADER>();

    final fileByteData = Uint8List(sizeOf<IMAGE_FILE_HEADER>());
    Struct.create<IMAGE_FILE_HEADER>(fileByteData)
      ..Machine = IMAGE_FILE_MACHINE_I386
      ..NumberOfSections = 1
      ..SizeOfOptionalHeader = sizeOf<IMAGE_OPTIONAL_HEADER32>()
      ..Characteristics =
          IMAGE_FILE_DLL |
          IMAGE_FILE_32BIT_MACHINE |
          IMAGE_FILE_EXECUTABLE_IMAGE;

    final optionalByteData = Uint8List(sizeOf<IMAGE_OPTIONAL_HEADER32>());
    final optional = Struct.create<IMAGE_OPTIONAL_HEADER32>(optionalByteData)
      ..Magic = IMAGE_NT_OPTIONAL_HDR32_MAGIC
      ..MajorLinkerVersion = 11
      ..SizeOfInitializedData = 1024
      ..ImageBase = 0x400000
      ..SectionAlignment = sectionAlignment
      ..FileAlignment = 512
      ..MajorOperatingSystemVersion = 6
      ..MinorOperatingSystemVersion = 2
      ..MajorSubsystemVersion = 6
      ..MinorSubsystemVersion = 2
      ..SizeOfHeaders = 512
      ..Subsystem = IMAGE_SUBSYSTEM_WINDOWS_CUI
      ..DllCharacteristics =
          IMAGE_DLLCHARACTERISTICS_NX_COMPAT |
          IMAGE_DLLCHARACTERISTICS_NO_SEH |
          IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE
      ..SizeOfStackReserve = 0x100000
      ..SizeOfHeapReserve = 4096
      ..LoaderFlags = 0x100000
      ..NumberOfRvaAndSizes = 16;

    final sectionByteData = Uint8List(sizeOf<IMAGE_SECTION_HEADER>());
    final section = Struct.create<IMAGE_SECTION_HEADER>(sectionByteData)
      ..Name.setString('.text\x00\x00\x00')
      ..Characteristics = const IMAGE_SECTION_CHARACTERISTICS(0x4000_0020)
      ..VirtualAddress = sectionAlignment;

    final clrByteData = Uint8List(sizeOf<IMAGE_COR20_HEADER>());
    final clr = Struct.create<IMAGE_COR20_HEADER>(clrByteData)
      ..cb = sizeOf<IMAGE_COR20_HEADER>()
      ..MajorRuntimeVersion = 2
      ..MinorRuntimeVersion = 5
      ..Flags = 1;

    final metadataByteData = Uint8List(sizeOf<MetadataHeader>());
    Struct.create<MetadataHeader>(metadataByteData)
      ..signature = metadataSignature
      ..majorVersion = 1
      ..minorVersion = 1
      ..length = 20
      ..version.setString('WindowsRuntime 1.4\x00\x00')
      ..streams = 5;

    final sizeOfStreamHeaders =
        sizeOf<BlobStreamHeader>() +
        sizeOf<GuidStreamHeader>() +
        sizeOf<StringStreamHeader>() +
        sizeOf<TableStreamHeader>() +
        sizeOf<UserStringStreamHeader>();

    final sizeOfImage =
        optional.FileAlignment +
        sizeOf<IMAGE_COR20_HEADER>() +
        sizeOf<MetadataHeader>() +
        sizeOfStreamHeaders +
        sizeOfStreams;

    optional.SizeOfImage = round(sizeOfImage, optional.SectionAlignment);
    section.Misc.VirtualSize = sizeOfImage - optional.FileAlignment;
    section.SizeOfRawData = round(
      section.Misc.VirtualSize,
      optional.FileAlignment,
    );
    optional.DataDirectory.elements[14]
      ..VirtualAddress = sectionAlignment
      ..Size = sizeOf<IMAGE_COR20_HEADER>();
    section.PointerToRawData = optional.FileAlignment;
    clr.MetaData.VirtualAddress =
        sectionAlignment + sizeOf<IMAGE_COR20_HEADER>();
    clr.MetaData.Size = section.Misc.VirtualSize - sizeOf<IMAGE_COR20_HEADER>();

    final buffer = BytesBuilder()
      ..add(dosByteData)
      ..writeUint32(IMAGE_NT_SIGNATURE)
      ..add(fileByteData)
      ..add(optionalByteData)
      ..add(sectionByteData);
    assert(
      buffer.length < optional.FileAlignment,
      'Expected ${buffer.length} to be smaller than ${optional.FileAlignment}.',
    );
    buffer
      ..add(Uint8List(optional.FileAlignment - buffer.length))
      ..add(clrByteData);
    final metadataOffset = buffer.length;
    buffer.add(metadataByteData);

    final streamOffset = buffer.length - metadataOffset + sizeOfStreamHeaders;

    final blobStreamHeaderByteData = Uint8List(sizeOf<BlobStreamHeader>());
    final blobStreamHeader =
        Struct.create<BlobStreamHeader>(blobStreamHeaderByteData)
          ..offset = streamOffset
          ..size = blobHeapBytes.length
          ..name.setString('${MetadataStream.blob}\x00\x00\x00');

    final guidStreamHeaderByteData = Uint8List(sizeOf<GuidStreamHeader>());
    final guidStreamHeader =
        Struct.create<GuidStreamHeader>(guidStreamHeaderByteData)
          ..offset = blobStreamHeader.nextOffset
          ..size = guidHeapBytes.length
          ..name.setString('${MetadataStream.guid}\x00\x00\x00');

    final stringStreamHeaderByteData = Uint8List(sizeOf<StringStreamHeader>());
    final stringStreamHeader =
        Struct.create<StringStreamHeader>(stringStreamHeaderByteData)
          ..offset = guidStreamHeader.nextOffset
          ..size = stringHeapBytes.length
          ..name.setString('${MetadataStream.string}\x00\x00');

    final tableStreamHeaderByteData = Uint8List(sizeOf<TableStreamHeader>());
    final tableStreamHeader =
        Struct.create<TableStreamHeader>(tableStreamHeaderByteData)
          ..offset = stringStreamHeader.nextOffset
          ..size = tableStreamBytes.length
          ..name.setString('${MetadataStream.table}\x00\x00');

    final userStringStreamHeaderByteData = Uint8List(
      sizeOf<UserStringStreamHeader>(),
    );
    Struct.create<UserStringStreamHeader>(userStringStreamHeaderByteData)
      ..offset = tableStreamHeader.nextOffset
      ..size = userStringHeapBytes.length
      ..name.setString('${MetadataStream.userString}\x00');

    buffer
      ..add(blobStreamHeaderByteData)
      ..add(guidStreamHeaderByteData)
      ..add(stringStreamHeaderByteData)
      ..add(tableStreamHeaderByteData)
      ..add(userStringStreamHeaderByteData)
      ..add(blobHeapBytes)
      ..add(guidHeapBytes)
      ..add(stringHeapBytes)
      ..add(tableStreamBytes)
      ..add(userStringHeapBytes);

    assert(
      clr.MetaData.Size == buffer.length - metadataOffset,
      'Expected ${clr.MetaData.Size}, got ${buffer.length - metadataOffset}.',
    );
    assert(
      sizeOfImage == buffer.length,
      'Expected $sizeOfImage, got ${buffer.length}.',
    );

    return buffer.takeBytes();
  }
}

bool _isSorted(Iterable<int> iterable) {
  final list = iterable.toList();
  for (var i = 1; i < list.length; i++) {
    if (list[i - 1] > list[i]) return false;
  }
  return true;
}
