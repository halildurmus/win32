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
import 'index.dart';
import 'stream.dart';
import 'table/assembly.dart';
import 'table/assembly_ref.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/generic_param.dart';
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

final class MetadataWriter {
  /// Creates a minimal ECMA-335 file representation.
  factory MetadataWriter(
    String name, {
    int majorVersion = 0xFF,
    int minorVersion = 0xFF,
    int buildNumber = 0xFF,
    int revisionNumber = 0xFF,
    AssemblyFlags flags = AssemblyFlags.windowsRuntime,
    Guid? mvid,
  }) {
    final writer = MetadataWriter._();

    // This assembly.
    writer._tableStream.assembly.add(
      Assembly(
        hashAlgId: AssemblyHashAlgorithm.sha1,
        majorVersion: majorVersion,
        minorVersion: minorVersion,
        buildNumber: buildNumber,
        revisionNumber: revisionNumber,
        flags: flags,
        name: writer._stringHeap.insert(name),
      ),
    );

    // This module.
    writer._tableStream.module.add(
      ModuleRecord(
        name: writer._stringHeap.insert(name),
        mvid: writer._guidHeap.insert(mvid ?? Guid.generate()),
      ),
    );

    writer
      // Some parsers will fail to read without a "mscorlib" reference implied
      // by "System" types.
      ..writeAssemblyRef(namespace: 'System')
      // The parent type of "globals" expected by most parsers.
      ..writeTypeDef(namespace: '', name: '<Module>');

    return writer;
  }

  MetadataWriter._()
    : _blobHeap = BlobHeap.empty(),
      _guidHeap = GuidHeap.empty(),
      _stringHeap = StringHeap.empty(),
      _tableStream = TableStream(),
      _userStringHeap = UserStringHeap.empty(),
      _typeRefs = HashMap(),
      _assemblyRefs = HashMap(),
      _moduleRefs = HashMap(),
      _memberRefs = HashMap(),
      _constants = SplayTreeMap((a, b) => a.encode().compareTo(b.encode())),
      _customAttributes = SplayTreeMap(
        (a, b) => a.encode().compareTo(b.encode()),
      ),
      _fieldLayouts = SplayTreeMap((a, b) => a.index.compareTo(b.index)),
      _genericParams = SplayTreeMap((a, b) => a.encode().compareTo(b.encode())),
      _levelTwoNamespaces = HashSet();

  final BlobHeap _blobHeap;
  final GuidHeap _guidHeap;
  final StringHeap _stringHeap;
  final TableStream _tableStream;
  final UserStringHeap _userStringHeap;

  // Indexes for fast lookup of preexisting rows.
  final HashMap<String, AssemblyRefIndex> _assemblyRefs;
  final HashMap<MemberRef, MemberRefIndex> _memberRefs;
  final HashMap<String, ModuleRefIndex> _moduleRefs;
  final HashMap<String, HashMap<String, TypeRefIndex>> _typeRefs;

  // Staging for sorted rows before these can be written.
  final SplayTreeMap<HasConstant, Constant> _constants;
  final SplayTreeMap<HasCustomAttribute, List<CustomAttribute>>
  _customAttributes;
  final SplayTreeMap<FieldIndex, FieldLayout> _fieldLayouts;
  final SplayTreeMap<TypeOrMethodDef, List<GenericParam>> _genericParams;

  final HashSet<String> _levelTwoNamespaces;

  /// Adds an `AssemblyRef` row representing the given namespace to the file,
  /// returning the row offset.
  AssemblyRefIndex writeAssemblyRef({required String namespace}) {
    // This generates a synthetic `AssemblyRef` for every 2 level namespace, but
    // the alternative requires a lot more contextual information.
    final rootNamespace = namespace.split('.').take(2).join('.');
    if (_assemblyRefs.isNotEmpty && rootNamespace.startsWith('System')) {
      return _assemblyRefs['System']!;
    }
    if (_assemblyRefs[rootNamespace] case final existing?) return existing;
    final index = AssemblyRefIndex(_tableStream.assemblyRef.length);
    final assemblyRef = rootNamespace.startsWith('System')
        ? AssemblyRef(
            name: _stringHeap.insert('mscorlib'),
            majorVersion: 4,
            publicKeyOrToken: _blobHeap.insert(
              Uint8List.fromList([
                0xB7, 0x7A, 0x5C, 0x56, 0x19, 0x34, 0xE0, 0x89, //
              ]),
            ),
          )
        : AssemblyRef(
            name: _stringHeap.insert(rootNamespace),
            majorVersion: 0xFF,
            minorVersion: 0xFF,
            buildNumber: 0xFF,
            revisionNumber: 0xFF,
            flags: AssemblyFlags.windowsRuntime,
          );
    _tableStream.assemblyRef.add(assemblyRef);
    if (rootNamespace.startsWith('System')) {
      _assemblyRefs['System'] = index;
    } else {
      _assemblyRefs[rootNamespace] = index;
    }
    return index;
  }

  void writeClassLayout({
    required TypeDefIndex parent,
    int packingSize = 0,
    int classSize = 0,
  }) {
    _tableStream.classLayout.add(
      ClassLayout(
        packingSize: packingSize,
        classSize: classSize,
        parent: parent,
      ),
    );
  }

  /// Adds a `CustomAttribute` row to the file.
  ///
  /// This is a sorted table so the row offset is not yet available.
  void writeCustomAttribute({
    required HasCustomAttribute parent,
    required CustomAttributeType type,
    List<FixedArg> fixedArgs = const [],
    List<NamedArg> namedArgs = const [],
  }) {
    final value = _writeAttributeValue(fixedArgs, namedArgs);
    _customAttributes
        .putIfAbsent(parent, () => [])
        .add(CustomAttribute(parent: parent, type: type, value: value));
  }

  /// Adds a `Field` row to the file, returning the row offset.
  FieldIndex writeField({
    required String name,
    required MetadataType type,
    FieldAttributes flags = const FieldAttributes(0),
    MetadataValue? defaultValue,
    int? offset,
  }) {
    final signature = _writeFieldSig(type);
    final index = FieldIndex(_tableStream.field.length);
    _tableStream.field.add(
      Field(flags: flags, name: _stringHeap.insert(name), signature: signature),
    );
    if (defaultValue != null) {
      _writeConstant(parent: HasConstant.field(index), value: defaultValue);
    }
    if (offset != null) {
      _fieldLayouts[index] = FieldLayout(offset: offset, field: index);
    }
    return index;
  }

  void writeGenericParam({
    required int number,
    required TypeOrMethodDef owner,
    required String name,
    GenericParamAttributes flags = const GenericParamAttributes(0),
  }) {
    _genericParams
        .putIfAbsent(owner, () => [])
        .add(
          GenericParam(
            number: number,
            flags: flags,
            owner: owner,
            name: _stringHeap.insert(name),
          ),
        );
  }

  void writeImplMap({
    required MethodDefIndex method,
    required String importName,
    required String importScope,
    PInvokeAttributes flags = const PInvokeAttributes(0),
  }) {
    final scope = writeModuleRef(name: importScope);
    _tableStream.implMap.add(
      ImplMap(
        mappingFlags: flags,
        memberForwarded: MemberForwarded.methodDef(method),
        importName: _stringHeap.insert(importName),
        importScope: scope,
      ),
    );
  }

  InterfaceImplIndex writeInterfaceImpl({
    required TypeDefIndex class$,
    required MetadataType interface,
  }) {
    if (interface is! NamedType) throw ArgumentError('Invalid interface type');
    final typeName = interface.typeName;
    final interfaceType = typeName.generics.isEmpty
        ? TypeDefOrRef.typeRef(
            writeTypeRef(namespace: typeName.namespace, name: typeName.name),
          )
        : TypeDefOrRef.typeSpec(
            writeTypeSpec(
              namespace: typeName.namespace,
              name: typeName.name,
              generics: typeName.generics,
            ),
          );
    final index = InterfaceImplIndex(_tableStream.interfaceImpl.length);
    _tableStream.interfaceImpl.add(
      InterfaceImpl(class$: class$, interface: interfaceType),
    );
    return index;
  }

  MemberRefIndex writeMemberRef({
    required MemberRefParent parent,
    required String name,
    MethodSignature signature = const MethodSignature(),
  }) {
    final methodDefSig = _writeMethodDefSig(signature);
    final record = MemberRef(
      parent: parent,
      name: _stringHeap.insert(name),
      signature: methodDefSig,
    );
    if (_memberRefs[record] case final memberRef?) return memberRef;
    final index = MemberRefIndex(_tableStream.memberRef.length);
    _tableStream.memberRef.add(record);
    _memberRefs[record] = index;
    return index;
  }

  /// Adds a `MethodDef` row to the file, returning the row offset.
  MethodDefIndex writeMethodDef({
    required String name,
    MethodSignature signature = const MethodSignature(),
    MethodAttributes flags = const MethodAttributes(0),
    MethodImplAttributes implFlags = const MethodImplAttributes(0),
  }) {
    final methodDefSig = _writeMethodDefSig(signature);
    final index = MethodDefIndex(_tableStream.methodDef.length);
    _tableStream.methodDef.add(
      MethodDef(
        rva: 0,
        implFlags: implFlags,
        flags: flags,
        name: _stringHeap.insert(name),
        signature: methodDefSig,
        paramList: ParamIndex(_tableStream.param.length),
      ),
    );
    return index;
  }

  ModuleRefIndex writeModuleRef({required String name}) {
    if (_moduleRefs[name] case final moduleRef?) return moduleRef;
    final index = ModuleRefIndex(_tableStream.moduleRef.length);
    _tableStream.moduleRef.add(ModuleRef(_stringHeap.insert(name)));
    _moduleRefs[name] = index;
    return index;
  }

  void writeNestedClass({
    required TypeDefIndex inner,
    required TypeDefIndex outer,
  }) {
    assert(
      inner.index > outer.index,
      'Expected inner class index "${inner.index}" to be greater than outer '
      'class index "${outer.index}".',
    );
    _tableStream.nestedClass.add(
      NestedClass(nestedClass: inner, enclosingClass: outer),
    );
  }

  /// Adds a `Param` row to the file, returning the row offset.
  ParamIndex writeParam({
    required int sequence,
    required String name,
    ParamAttributes flags = const ParamAttributes(0),
  }) {
    final index = ParamIndex(_tableStream.param.length);
    _tableStream.param.add(
      Param(flags: flags, sequence: sequence, name: _stringHeap.insert(name)),
    );
    return index;
  }

  /// Adds a `TypeDef` row to the file, returning the row offset.
  TypeDefIndex writeTypeDef({
    required String namespace,
    required String name,
    TypeAttributes flags = const TypeAttributes(0),
    TypeDefOrRef extends$ = TypeDefOrRef.none,
  }) {
    if (namespace.contains('.')) {
      _levelTwoNamespaces.add(namespace.split('.').take(2).join('.'));
    }
    final index = TypeDefIndex(_tableStream.typeDef.length);
    _tableStream.typeDef.add(
      TypeDef(
        flags: flags,
        name: _stringHeap.insert(name),
        namespace: _stringHeap.insert(namespace),
        extends$: extends$,
        fieldList: FieldIndex(_tableStream.field.length),
        methodList: MethodDefIndex(_tableStream.methodDef.length),
      ),
    );
    return index;
  }

  /// Adds a `TypeRef` row to the file, returning the row offset.
  TypeRefIndex writeTypeRef({required String name, String namespace = ''}) {
    if (_typeRefs[namespace]?[name] case final typeRef?) return typeRef;
    final index = TypeRefIndex(_tableStream.typeRef.length);
    final scope = ResolutionScope.assemblyRef(
      writeAssemblyRef(namespace: namespace),
    );
    _tableStream.typeRef.add(
      TypeRef(
        resolutionScope: scope,
        name: _stringHeap.insert(name),
        namespace: _stringHeap.insert(namespace),
      ),
    );
    _typeRefs
        .putIfAbsent(namespace, HashMap.new)
        .putIfAbsent(name, () => index);
    return index;
  }

  TypeSpecIndex writeTypeSpec({
    required String name,
    String namespace = '',
    List<MetadataType> generics = const [],
  }) {
    assert(
      generics.isNotEmpty,
      'Expected generics to be non-empty, got $generics.',
    );
    final typeRef = writeTypeRef(namespace: namespace, name: name);
    final buffer = BytesBuilder()
      ..addByte(ELEMENT_TYPE_GENERICINST)
      ..addByte(ELEMENT_TYPE_CLASS)
      ..add(CompressedInteger.encode(TypeDefOrRef.typeRef(typeRef).encode()))
      ..add(CompressedInteger.encode(generics.length));
    for (final type in generics) {
      _encodeType(type, buffer);
    }
    final index = TypeSpecIndex(_tableStream.typeSpec.length);
    _tableStream.typeSpec.add(
      TypeSpec(signature: _blobHeap.insert(buffer.takeBytes())),
    );
    return index;
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
        final index = writeTypeRef(
          namespace: 'System.Runtime.CompilerServices',
          name: 'IsConst',
        );
        buffer.add(
          CompressedInteger.encode(TypeDefOrRef.typeRef(index).encode()),
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
        final index = writeTypeRef(
          namespace: 'System.Runtime.CompilerServices',
          name: 'IsConst',
        );
        buffer.add(
          CompressedInteger.encode(TypeDefOrRef.typeRef(index).encode()),
        );
        for (var i = 0; i < depth; i++) {
          buffer.add(CompressedInteger.encode(ELEMENT_TYPE_PTR));
        }
        _encodeType(pointee, buffer);
    }
  }

  BlobIndex _writeAttributeValue(
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

    return _blobHeap.insert(buffer.takeBytes());
  }

  void _writeConstant({
    required HasConstant parent,
    required MetadataValue value,
  }) {
    final type = value.type.code;
    final constantValue = _writeConstantValue(value);
    _constants[parent] = Constant(
      type: type,
      parent: parent,
      value: constantValue,
    );
  }

  BlobIndex _writeConstantValue(MetadataValue value) {
    final buffer = BytesBuilder()..writeValue(value);
    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Writes the [type] into a `FieldSig` and stores it in the blob heap,
  /// returning the blob index.
  BlobIndex _writeFieldSig(MetadataType type) {
    final buffer = BytesBuilder()..addByte(0x6); // FIELD
    _encodeType(type, buffer);
    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Writes the method [signature] into a `MethodDefSig` and stores it in the
  /// blob heap, returning the blob index.
  BlobIndex _writeMethodDefSig(MethodSignature signature) {
    final buffer = BytesBuilder()
      ..addByte(signature.flags)
      ..add(CompressedInteger.encode(signature.types.length));
    _encodeType(signature.returnType, buffer);
    for (final type in signature.types) {
      _encodeType(type, buffer);
    }
    return _blobHeap.insert(buffer.takeBytes());
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

    final index = writeTypeRef(namespace: namespace, name: name);
    // Technically this should be ELEMENT_TYPE_CLASS if the type is not a value
    // type but that requires more contextual information.
    buffer
      ..addByte(ELEMENT_TYPE_VALUETYPE)
      ..add(CompressedInteger.encode(TypeDefOrRef.typeRef(index).encode()));

    if (generics.isNotEmpty) {
      buffer.add(CompressedInteger.encode(generics.length));
      for (final type in generics) {
        _encodeType(type, buffer);
      }
    }
  }

  Uint8List toBytes() {
    // Remove redundant assembly references.
    final indexesToRemove = <int>[];
    var removedAssemblyRefs = 0;
    for (final MapEntry(key: assemblyRefName, value: AssemblyRefIndex(:index))
        in _assemblyRefs.entries) {
      if (index == 0) continue; // Skip the `mscorlib` assembly reference.
      if (_levelTwoNamespaces.contains(assemblyRefName)) {
        indexesToRemove.add(index);
      }
    }
    indexesToRemove.sort();
    for (final index in indexesToRemove) {
      _tableStream.assemblyRef.rows.removeAt(index - removedAssemblyRefs);
      removedAssemblyRefs++;
    }

    // Flatten sorted rows...
    _tableStream.constant.addAll(_constants.values);
    _tableStream.customAttribute.addAll(
      _customAttributes.values.expand((e) => e),
    );
    _tableStream.fieldLayout.addAll(_fieldLayouts.values);
    _tableStream.genericParam.addAll(_genericParams.values.expand((e) => e));

    // Test sorted order...
    assert(
      _isSorted(_tableStream.classLayout.rows.map((r) => r.parent.index)),
      'ClassLayout.parent is not sorted',
    );
    assert(
      _isSorted(_tableStream.constant.rows.map((r) => r.parent.encode())),
      'Constant.parent is not sorted',
    );
    assert(
      _isSorted(
        _tableStream.customAttribute.rows.map((r) => r.parent.encode()),
      ),
      'CustomAttribute.parent is not sorted',
    );
    assert(
      _isSorted(_tableStream.fieldLayout.rows.map((r) => r.field.index)),
      'FieldLayout.field is not sorted',
    );
    assert(
      _isSorted(_tableStream.genericParam.rows.map((r) => r.owner.encode())),
      'GenericParam.owner is not sorted',
    );
    assert(
      _isSorted(
        _tableStream.implMap.rows.map((r) => r.memberForwarded.encode()),
      ),
      'ImplMap.memberForwarded is not sorted',
    );
    assert(
      _isSorted(_tableStream.nestedClass.rows.map((r) => r.nestedClass.index)),
      'NestedClass.nestedClass is not sorted',
    );

    // Serialize...
    final blobHeapBytes = _blobHeap.toBytes();
    final guidHeapBytes = _guidHeap.toBytes();
    final stringHeapBytes = _stringHeap.toBytes();
    _tableStream.setHeapSizes(
      blobHeapSize: blobHeapBytes.length,
      guidHeapSize: guidHeapBytes.length,
      stringHeapSize: blobHeapBytes.length,
    );
    final tableStreamBytes = _tableStream.toBytes();
    final userStringHeapBytes = _userStringHeap.toBytes();

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
      ..TimeDateStamp = DateTime.now().millisecondsSinceEpoch ~/ 1000
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

    optional.SizeOfImage = alignTo(sizeOfImage, optional.SectionAlignment);
    section.Misc.VirtualSize = sizeOfImage - optional.FileAlignment;
    section.SizeOfRawData = alignTo(
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
