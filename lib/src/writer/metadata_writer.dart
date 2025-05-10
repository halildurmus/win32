import 'dart:collection';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:path/path.dart' as p;

import '../attribute_arg.dart';
import '../attributes.dart';
import '../bindings.dart';
import '../common.dart';
import '../compressed_integer.dart';
import '../exception.dart';
import '../guid.dart';
import '../marshalling_descriptor.dart';
import '../member_ref_signature.dart';
import '../metadata_type.dart';
import '../metadata_value.dart';
import '../method_def_sig.dart';
import '../property_sig.dart';
import '../stand_alone_signature.dart';
import '../type_name.dart';
import 'codes.dart';
import 'heap/blob.dart';
import 'heap/guid.dart';
import 'heap/metadata_heap.dart';
import 'heap/string.dart';
import 'heap/user_string.dart';
import 'helpers.dart';
import 'stream.dart';
import 'table/assembly.dart';
import 'table/assembly_ref.dart';
import 'table/class_layout.dart';
import 'table/constant.dart';
import 'table/custom_attribute.dart';
import 'table/event.dart';
import 'table/event_map.dart';
import 'table/field.dart';
import 'table/field_layout.dart';
import 'table/field_marshal.dart';
import 'table/field_rva.dart';
import 'table/generic_param.dart';
import 'table/generic_param_constraint.dart';
import 'table/impl_map.dart';
import 'table/index.dart';
import 'table/interface_impl.dart';
import 'table/member_ref.dart';
import 'table/method_def.dart';
import 'table/method_semantics.dart';
import 'table/method_spec.dart';
import 'table/module.dart';
import 'table/module_ref.dart';
import 'table/nested_class.dart';
import 'table/param.dart';
import 'table/property.dart';
import 'table/property_map.dart';
import 'table/stand_alone_sig.dart';
import 'table/type_def.dart';
import 'table/type_ref.dart';
import 'table/type_spec.dart';
import 'table_stream.dart';

final class MetadataWriter {
  /// Creates a minimal ECMA-335 file representation.
  factory MetadataWriter({
    required String name,
    int majorVersion = 0xFF,
    int minorVersion = 0xFF,
    int buildNumber = 0xFF,
    int revisionNumber = 0xFF,
    AssemblyFlags flags = AssemblyFlags.windowsRuntime,
    Guid? mvid,
  }) {
    final writer = MetadataWriter._();

    // This assembly.
    writer._tableStream[MetadataTableId.assembly].add(
      Assembly(
        hashAlgId: AssemblyHashAlgorithm.sha1,
        majorVersion: majorVersion,
        minorVersion: minorVersion,
        buildNumber: buildNumber,
        revisionNumber: revisionNumber,
        flags: flags,
        name: writer._stringHeap.insert(p.basenameWithoutExtension(name)),
      ),
    );

    // This module.
    writer._tableStream[MetadataTableId.module].add(
      Module(
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
      _assemblyRefs = HashMap(),
      _memberRefs = HashMap(),
      _moduleRefs = HashMap(),
      _typeRefs = HashMap(),
      _typeSpecs = HashMap(),
      _constants = SplayTreeMap((a, b) => a.encode().compareTo(b.encode())),
      _customAttributes = SplayTreeMap(
        (a, b) => a.encode().compareTo(b.encode()),
      ),
      _fieldLayouts = SplayTreeMap((a, b) => a.index.compareTo(b.index)),
      _fieldMarshals = SplayTreeMap((a, b) => a.encode().compareTo(b.encode())),
      _fieldRVAs = SplayTreeMap((a, b) => a.index.compareTo(b.index)),
      _genericParams = SplayTreeMap((a, b) => a.encode().compareTo(b.encode())),
      _genericParamConstraints = SplayTreeMap(
        (a, b) => a.index.compareTo(b.index),
      ),
      _methodSemantics = SplayTreeMap(
        (a, b) => a.encode().compareTo(b.encode()),
      ),
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
  final HashMap<String, HashMap<_TypeSpecKey, TypeSpecIndex>> _typeSpecs;

  // Staging for sorted rows before these can be written.
  final SplayTreeMap<HasConstant, Constant> _constants;
  final SplayTreeMap<HasCustomAttribute, List<CustomAttribute>>
  _customAttributes;
  final SplayTreeMap<FieldIndex, FieldLayout> _fieldLayouts;
  final SplayTreeMap<HasFieldMarshal, FieldMarshal> _fieldMarshals;
  final SplayTreeMap<FieldIndex, FieldRVA> _fieldRVAs;
  final SplayTreeMap<TypeOrMethodDef, List<GenericParam>> _genericParams;
  final SplayTreeMap<GenericParamIndex, GenericParamConstraint>
  _genericParamConstraints;
  final SplayTreeMap<HasSemantics, List<MethodSemantics>> _methodSemantics;

  final HashSet<String> _levelTwoNamespaces;

  /// Adds an `AssemblyRef` row representing the given namespace to the file,
  /// returning its row index.
  ///
  /// This method generates a synthetic `AssemblyRef` for every two-level
  /// namespace (e.g., `Windows.Foundation`) to avoid requiring full assembly
  /// resolution. Namespaces starting with `System` are mapped to `mscorlib`.
  ///
  /// Note that when [toBytes] is called, the redundant `AssemblyRef` rows will
  /// be removed and the `TypeRef` resolution scopes will be updated to point
  /// to the `Module` instead of the `AssemblyRef`.
  AssemblyRefIndex writeAssemblyRef({required String namespace}) {
    final rootNamespace = namespace.split('.').take(2).join('.');

    // Use a shared reference for System.*
    if (_assemblyRefs.isNotEmpty && rootNamespace.startsWith('System')) {
      return _assemblyRefs['System']!;
    }

    // Return existing reference if present
    if (_assemblyRefs[rootNamespace] case final existing?) return existing;

    final table = _tableStream[MetadataTableId.assemblyRef];
    final index = AssemblyRefIndex(table.length);

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
    table.add(assemblyRef);

    _assemblyRefs[rootNamespace.startsWith('System')
            ? 'System'
            : rootNamespace] =
        index;

    return index;
  }

  /// Writes a `ClassLayout` row.
  void writeClassLayout({
    required TypeDefIndex parent,
    int packingSize = 0,
    int classSize = 0,
  }) {
    _tableStream[MetadataTableId.classLayout].add(
      ClassLayout(
        packingSize: packingSize,
        classSize: classSize,
        parent: parent,
      ),
    );
  }

  /// Writes a `Constant` row.
  void writeConstant({
    required HasConstant parent,
    required MetadataValue value,
  }) {
    _constants[parent] = Constant(
      type: value.type.code,
      parent: parent,
      value: _writeConstantValue(value),
    );
  }

  /// Writes a `CustomAttribute` row.
  void writeCustomAttribute({
    required HasCustomAttribute parent,
    required CustomAttributeType type,
    List<FixedArg> fixedArgs = const [],
    List<NamedArg> namedArgs = const [],
  }) {
    _customAttributes
        .putIfAbsent(parent, () => [])
        .add(
          CustomAttribute(
            parent: parent,
            type: type,
            value: _writeCustomAttributeValue(fixedArgs, namedArgs),
          ),
        );
  }

  // TODO(halildurmus): writeDeclSecurity

  /// Writes an `Event` row, returning the corresponding index.
  EventIndex writeEvent({
    required String name,
    MetadataType? eventType,
    EventAttributes flags = const EventAttributes(0),
  }) {
    if (eventType is! NamedType) {
      throw WinmdException('Expected type to be a NamedType, got $eventType.');
    }

    final table = _tableStream[MetadataTableId.event];
    final index = EventIndex(table.length);
    table.add(
      Event(
        eventFlags: flags,
        name: _stringHeap.insert(name),
        eventType: _toTypeDefOrRef(eventType),
      ),
    );
    return index;
  }

  /// Associates a `TypeDef` with the first event in its event list.
  ///
  /// This must be called before writing any `Event` rows for the given
  /// [parent].
  void writeEventMap({required TypeDefIndex parent}) {
    final firstEvent = EventIndex(_tableStream[MetadataTableId.event].length);
    _tableStream[MetadataTableId.eventMap].add(
      EventMap(parent: parent, eventList: firstEvent),
    );
  }

  /// Writes a `Field` row, returning the corresponding index.
  FieldIndex writeField({
    required String name,
    required FieldSig signature,
    FieldAttributes flags = const FieldAttributes(0),
  }) {
    final table = _tableStream[MetadataTableId.field];
    final index = FieldIndex(table.length);
    table.add(
      Field(
        flags: flags,
        name: _stringHeap.insert(name),
        signature: _writeFieldSig(signature),
      ),
    );
    return index;
  }

  // TODO(halildurmus): writeExportedType

  /// Writes a `FieldLayout` row.
  void writeFieldLayout({required int offset, required FieldIndex field}) {
    _fieldLayouts[field] = FieldLayout(offset: offset, field: field);
  }

  /// Writes a `FieldMarshal` row.
  void writeFieldMarshal({
    required HasFieldMarshal parent,
    required MarshallingDescriptor descriptor,
  }) {
    final nativeType = _writeMarshallingDescriptor(descriptor);
    _fieldMarshals[parent] = FieldMarshal(
      parent: parent,
      nativeType: _blobHeap.insert(nativeType),
    );
  }

  /// Writes a `FieldRVA` row.
  void writeFieldRVA({required FieldIndex field, required int rva}) {
    _fieldRVAs[field] = FieldRVA(field: field, rva: rva);
  }

  // TODO(halildurmus): writeFile

  /// Writes a `GenericParam` row.
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

  /// Writes a `GenericParamConstraint` row.
  void writeGenericParamConstraint({
    required GenericParamIndex owner,
    required TypeDefOrRef constraint,
  }) {
    _genericParamConstraints[owner] = GenericParamConstraint(
      owner: owner,
      constraint: constraint,
    );
  }

  /// Writes an `ImplMap` row.
  void writeImplMap({
    required MethodDefIndex method,
    required String importName,
    required String importScope,
    PInvokeAttributes flags = const PInvokeAttributes(0),
  }) {
    final scope = writeModuleRef(name: importScope);
    _tableStream[MetadataTableId.implMap].add(
      ImplMap(
        mappingFlags: flags,
        memberForwarded: MemberForwarded.methodDef(method),
        importName: _stringHeap.insert(importName),
        importScope: scope,
      ),
    );
  }

  /// Writes an `InterfaceImpl` row, returning the corresponding index.
  InterfaceImplIndex writeInterfaceImpl({
    required TypeDefIndex class$,
    required MetadataType interface,
  }) {
    if (interface is! NamedType) {
      throw WinmdException(
        'Expected interface to be a NamedType, got $interface.',
      );
    }

    final table = _tableStream[MetadataTableId.interfaceImpl];
    final index = InterfaceImplIndex(table.length);
    table.add(
      InterfaceImpl(class$: class$, interface: _toTypeDefOrRef(interface)),
    );
    return index;
  }

  /// Writes a `MemberRef` row, returning the corresponding index.
  ///
  /// If a matching entry already exists, returns the existing index.
  MemberRefIndex writeMemberRef({
    required MemberRefParent parent,
    required String name,
    required MemberRefSignature signature,
  }) {
    final memberRef = MemberRef(
      parent: parent,
      name: _stringHeap.insert(name),
      signature: _writeMemberRefSig(signature),
    );

    return _memberRefs.putIfAbsent(memberRef, () {
      final table = _tableStream[MetadataTableId.memberRef];
      final index = MemberRefIndex(table.length);
      table.add(memberRef);
      return index;
    });
  }

  /// Writes a `MethodDef` row, returning the corresponding index.
  MethodDefIndex writeMethodDef({
    required String name,
    MethodDefSig signature = const MethodDefSig(),
    MethodAttributes flags = const MethodAttributes(0),
    MethodImplAttributes implFlags = const MethodImplAttributes(0),
  }) {
    final table = _tableStream[MetadataTableId.methodDef];
    final index = MethodDefIndex(table.length);
    table.add(
      MethodDef(
        rva: 0,
        implFlags: implFlags,
        flags: flags,
        name: _stringHeap.insert(name),
        signature: _writeMethodDefSig(signature),
        paramList: ParamIndex(_tableStream[MetadataTableId.param].length),
      ),
    );
    return index;
  }

  // TODO(halildurmus): writeMethodImpl

  /// Adds a `MethodSemantics` row associating a method with a property or
  /// event.
  void writeMethodSemantics({
    required MethodSemanticsAttributes semantics,
    required MethodDefIndex method,
    required HasSemantics association,
  }) {
    _methodSemantics
        .putIfAbsent(association, () => [])
        .add(
          MethodSemantics(
            semantics: semantics,
            method: method,
            association: association,
          ),
        );
  }

  /// Writes a `MethodSpec` row, returning the corresponding index.
  MethodSpecIndex writeMethodSpec({
    required MethodDefOrRef method,
    required List<MetadataType> generics,
  }) {
    assert(
      generics.isNotEmpty,
      'MethodSpec requires at least one generic argument.',
    );

    final buffer = BytesBuilder(copy: false)
      ..addByte(ELEMENT_TYPE_GENERICINST)
      ..add(CompressedInteger.encode(generics.length));

    for (final genericType in generics) {
      _encodeType(genericType, buffer);
    }

    final table = _tableStream[MetadataTableId.methodSpec];
    final index = MethodSpecIndex(table.length);
    table.add(
      MethodSpec(
        method: method,
        instantiation: _blobHeap.insert(buffer.takeBytes()),
      ),
    );
    return index;
  }

  /// Writes a `ModuleRef` row, returning the corresponding index.
  ///
  /// If a matching entry already exists, returns the existing index.
  ModuleRefIndex writeModuleRef({required String name}) =>
      _moduleRefs.putIfAbsent(name, () {
        final table = _tableStream[MetadataTableId.moduleRef];
        final index = ModuleRefIndex(table.length);
        table.add(ModuleRef(name: _stringHeap.insert(name)));
        return index;
      });

  /// Adds a `NestedClass` row associating an inner class with its outer class.
  void writeNestedClass({
    required TypeDefIndex inner,
    required TypeDefIndex outer,
  }) {
    assert(
      inner.index > outer.index,
      'Inner class index (${inner.index}) must be greater than outer class '
      'index (${outer.index}).',
    );
    _tableStream[MetadataTableId.nestedClass].add(
      NestedClass(nestedClass: inner, enclosingClass: outer),
    );
  }

  /// Writes a `Param` row, returning the corresponding index.
  ParamIndex writeParam({
    required int sequence,
    required String name,
    ParamAttributes flags = const ParamAttributes(0),
  }) {
    final table = _tableStream[MetadataTableId.param];
    final index = ParamIndex(table.length);
    table.add(
      Param(flags: flags, sequence: sequence, name: _stringHeap.insert(name)),
    );
    return index;
  }

  /// Writes a `Property` row, returning the corresponding index.
  PropertyIndex writeProperty({
    required String name,
    required PropertySig signature,
    PropertyAttributes flags = const PropertyAttributes(0),
  }) {
    final table = _tableStream[MetadataTableId.property];
    final index = PropertyIndex(table.length);
    table.add(
      Property(
        flags: flags,
        name: _stringHeap.insert(name),
        type: _writePropertySig(signature),
      ),
    );
    return index;
  }

  /// Associates a `TypeDef` with the first property in its property list.
  ///
  /// This must be called before writing any `Property` rows for the given
  /// [parent].
  void writePropertyMap({required TypeDefIndex parent}) {
    final firstProperty = PropertyIndex(
      _tableStream[MetadataTableId.property].length,
    );
    _tableStream[MetadataTableId.propertyMap].add(
      PropertyMap(parent: parent, propertyList: firstProperty),
    );
  }

  /// Writes a `StandAloneSig` row, returning the corresponding index.
  StandAloneSigIndex writeStandAloneSig({
    required StandAloneSignature signature,
  }) {
    final table = _tableStream[MetadataTableId.standAloneSig];
    final index = StandAloneSigIndex(table.length);
    table.add(
      StandAloneSig(
        signature: _blobHeap.insert(_writeStandAloneSignature(signature)),
      ),
    );
    return index;
  }

  /// Writes a `TypeDef` row, returning the corresponding index.
  TypeDefIndex writeTypeDef({
    required String namespace,
    required String name,
    TypeAttributes flags = const TypeAttributes(0),
    TypeDefOrRef extends$ = TypeDefOrRef.none,
  }) {
    // Track root namespaces like "Windows.Foundation".
    if (namespace.contains('.')) {
      _levelTwoNamespaces.add(namespace.split('.').take(2).join('.'));
    }

    final table = _tableStream[MetadataTableId.typeDef];
    final index = TypeDefIndex(table.length);
    table.add(
      TypeDef(
        flags: flags,
        name: _stringHeap.insert(name),
        namespace: _stringHeap.insert(namespace),
        extends$: extends$,
        fieldList: FieldIndex(_tableStream[MetadataTableId.field].length),
        methodList: MethodDefIndex(
          _tableStream[MetadataTableId.methodDef].length,
        ),
      ),
    );
    return index;
  }

  /// Writes a `TypeRef` row, returning the corresponding index.
  ///
  /// If a `TypeRef` with the given [namespace] and [name] already exists, the
  /// cached index is returned.
  TypeRefIndex writeTypeRef({required String name, String namespace = ''}) {
    // Return cached reference if it exists.
    if (_typeRefs[namespace]?[name] case final typeRef?) return typeRef;

    final table = _tableStream[MetadataTableId.typeRef];
    final index = TypeRefIndex(table.length);
    table.add(
      TypeRef(
        resolutionScope: ResolutionScope.assemblyRef(
          writeAssemblyRef(namespace: namespace),
        ),
        name: _stringHeap.insert(name),
        namespace: _stringHeap.insert(namespace),
      ),
    );
    _typeRefs
        .putIfAbsent(namespace, HashMap.new)
        .putIfAbsent(name, () => index);

    return index;
  }

  /// Writes a `TypeSpec` row, returning the corresponding index.
  ///
  /// If a `TypeSpec` with the given [namespace], [name], and [generics] already
  /// exists, the cached index is returned.
  TypeSpecIndex writeTypeSpec({
    required String namespace,
    required String name,
    List<MetadataType> generics = const [],
  }) {
    assert(
      generics.isNotEmpty,
      'TypeSpec requires at least one generic argument.',
    );

    final key = _TypeSpecKey(name, generics);

    // Return cached reference if it exists.
    if (_typeSpecs[namespace]?[key] case final typeSpec?) return typeSpec;

    final buffer = BytesBuilder(copy: false)
      ..addByte(ELEMENT_TYPE_GENERICINST)
      ..addByte(ELEMENT_TYPE_CLASS)
      ..add(
        CompressedInteger.encode(
          TypeDefOrRef.typeRef(
            writeTypeRef(namespace: namespace, name: name),
          ).encode(),
        ),
      )
      ..add(CompressedInteger.encode(generics.length));
    for (final genericType in generics) {
      _encodeType(genericType, buffer);
    }

    final table = _tableStream[MetadataTableId.typeSpec];
    final index = TypeSpecIndex(table.length);
    table.add(TypeSpec(signature: _blobHeap.insert(buffer.takeBytes())));
    _typeSpecs
        .putIfAbsent(namespace, HashMap.new)
        .putIfAbsent(key, () => index);

    return index;
  }

  /// Encodes the `Type` in the buffer.
  ///
  /// Any required `TypeRef` rows will be created, returning the blob offset.
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
      case NamedType():
        _writeNamedType(type, buffer);
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

  /// Converts a [NamedType] into its corresponding [TypeDefOrRef] encoding.
  ///
  /// If [type] is `null`, returns [TypeDefOrRef.none].
  ///
  /// For non-generic types, returns a [TypeDefOrRef.typeRef] by emitting a
  /// `TypeRef`.
  ///
  /// For generic types, returns a [TypeDefOrRef.typeSpec] by emitting a
  /// `TypeSpec`.
  TypeDefOrRef _toTypeDefOrRef(NamedType? type) {
    if (type == null) return TypeDefOrRef.none;
    final TypeName(:namespace, :name, :generics) = type.typeName;
    return generics.isEmpty
        ? TypeDefOrRef.typeRef(writeTypeRef(namespace: namespace, name: name))
        : TypeDefOrRef.typeSpec(
            writeTypeSpec(namespace: namespace, name: name, generics: generics),
          );
  }

  /// Encodes a custom attribute value, consisting of fixed and named arguments,
  /// into a blob, and inserts it into the blob heap, returning the blob index.
  ///
  /// See ECMA-335 `§II.23.3` for details.
  BlobIndex _writeCustomAttributeValue(
    List<FixedArg> fixedArgs,
    List<NamedArg> namedArgs,
  ) {
    final buffer = BytesBuilder(copy: false)..writeUint16(0x0001); // Prolog

    // Write the fixed arguments.
    for (final fixedArg in fixedArgs) {
      buffer.writeValue(fixedArg.value);
    }

    buffer.writeUint16(namedArgs.length); // Number of named arguments.

    // Write the named arguments.
    for (final NamedArg(:name, :value) in namedArgs) {
      buffer
        ..addByte(ELEMENT_TYPE_FIELD)
        ..addByte(value.type.code);

      if (value case AttributeEnumValue(:final name)) {
        buffer
          // For enum values, encode the enum type name as a SerString
          ..add(CompressedInteger.encode(name.length))
          ..add(name.codeUnits);
      }

      buffer
        // Name of the argument (SerString).
        ..add(CompressedInteger.encode(name.length))
        ..add(name.codeUnits)
        // Value of the argument.
        ..writeValue(value);
    }

    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Encodes a constant value and stores it into the blob heap, returning the
  /// blob index.
  BlobIndex _writeConstantValue(MetadataValue value) {
    final buffer = BytesBuilder(copy: false)..writeValue(value);
    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Encodes the [signature] and stores it in the blob heap, returning the blob
  /// index.
  BlobIndex _writeFieldSig(FieldSig signature) {
    final buffer = BytesBuilder(copy: false)..addByte(0x6 /* FIELD */);
    _encodeType(signature.type, buffer);
    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Writes a binary blob representing a [MarshallingDescriptor], which encodes
  /// how a field or parameter is marshaled to or from unmanaged code.
  ///
  /// This binary format follows the ECMA-335 `§II.23.4`.
  Uint8List _writeMarshallingDescriptor(MarshallingDescriptor descriptor) {
    final buffer = BytesBuilder(copy: false);

    switch (descriptor) {
      case ArrayMarshallingDescriptor(
        :final nativeType,
        :final arrayElementType,
        :final sizeParameterIndex,
        :final numElements,
      ):
        buffer
          ..addByte(nativeType)
          ..addByte(arrayElementType);
        if (sizeParameterIndex != null) {
          buffer.add(CompressedInteger.encode(sizeParameterIndex));
        }
        if (numElements != null) {
          buffer.add(CompressedInteger.encode(numElements));
        }

      case SimpleMarshallingDescriptor(:final nativeType):
        buffer.addByte(nativeType);
    }

    return buffer.takeBytes();
  }

  /// Encodes the [signature] and stores it in the blob heap, returning the blob
  /// index.
  BlobIndex _writeMemberRefSig(MemberRefSignature signature) {
    final buffer = BytesBuilder(copy: false);

    switch (signature) {
      case FieldSig(:final type):
        buffer.addByte(0x6 /* FIELD */);
        _encodeType(type, buffer);

      case MethodRefSig(:final flags, :final returnType, :final types):
        buffer
          ..addByte(flags)
          ..add(CompressedInteger.encode(types.length));
        _encodeType(returnType, buffer);
        for (final type in types) {
          _encodeType(type, buffer);
        }
    }

    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Encodes the [signature] and stores it in the blob heap, returning the blob
  /// index.
  BlobIndex _writeMethodDefSig(MethodDefSig signature) {
    final buffer = BytesBuilder(copy: false)
      ..addByte(signature.flags)
      ..add(CompressedInteger.encode(signature.types.length));
    _encodeType(signature.returnType, buffer);
    for (final type in signature.types) {
      _encodeType(type, buffer);
    }
    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Serializes a [NamedType] into the given [buffer], emitting a type
  /// signature that encodes the type's namespace, name, and generic
  /// arguments (if any).
  void _writeNamedType(NamedType type, BytesBuilder buffer) {
    final TypeName(:namespace, :name, :generics) = type.typeName;

    if (generics.isNotEmpty) {
      buffer.addByte(ELEMENT_TYPE_GENERICINST);
    }

    final index = writeTypeRef(namespace: namespace, name: name);

    buffer
      ..addByte(type.code)
      ..add(CompressedInteger.encode(TypeDefOrRef.typeRef(index).encode()));

    if (generics.isNotEmpty) {
      buffer.add(CompressedInteger.encode(generics.length));
      for (final genericType in generics) {
        _encodeType(genericType, buffer);
      }
    }
  }

  /// Encodes the [signature] and stores it in the blob heap, returning the blob
  /// index.
  BlobIndex _writePropertySig(PropertySig signature) {
    final buffer = BytesBuilder(copy: false);
    if (signature.flags == PropertyFlags.default$) {
      buffer.addByte(0x8 /* PROPERTY */);
    } else if (signature.flags == PropertyFlags.hasThis) {
      buffer.addByte(0x8 /* PROPERTY */ | PropertyFlags.hasThis);
    }
    buffer.add(CompressedInteger.encode(signature.types.length));
    _encodeType(signature.returnType, buffer);
    for (final type in signature.types) {
      _encodeType(type, buffer);
    }
    return _blobHeap.insert(buffer.takeBytes());
  }

  /// Encodes the [signature] and stores it in the blob heap, returning the blob
  /// index.
  Uint8List _writeStandAloneSignature(StandAloneSignature signature) {
    final buffer = BytesBuilder(copy: false);

    switch (signature) {
      case LocalVarSig(:final locals):
        buffer
          ..addByte(0x7 /* LOCAL_SIG */)
          ..add(CompressedInteger.encode(locals.length));
        for (final type in locals) {
          _encodeType(type, buffer);
        }

      case StandAloneMethodSig(:final flags, :final returnType, :final types):
        buffer
          ..addByte(flags)
          ..add(CompressedInteger.encode(types.length));
        _encodeType(returnType, buffer);
        for (final type in types) {
          _encodeType(type, buffer);
        }
    }

    return buffer.takeBytes();
  }

  /// Serializes all metadata structures into a portable executable (PE) format,
  /// as specified by the Windows metadata (`.winmd`) specification.
  ///
  /// Returns a [Uint8List] containing the serialized binary representation of
  /// of the metadata, ready for use in creating `.winmd` files.
  Uint8List toBytes() {
    _removeRedundantAssemblyRefsAndFixTypeRefs();
    _finalizeAndValidateSortedTables();

    final blobHeapBytes = _blobHeap.toBytes();
    final guidHeapBytes = _guidHeap.toBytes();
    final stringHeapBytes = _stringHeap.toBytes();
    final userStringHeapBytes = _userStringHeap.toBytes();

    _tableStream.setHeapSizes(
      blobHeapSize: blobHeapBytes.length,
      guidHeapSize: guidHeapBytes.length,
      stringHeapSize: stringHeapBytes.length,
      userStringHeapSize: userStringHeapBytes.length,
    );

    final tableStreamBytes = _tableStream.toBytes();

    _ensureHeapSizesFit32Bit([
      blobHeapBytes,
      guidHeapBytes,
      stringHeapBytes,
      userStringHeapBytes,
      tableStreamBytes,
    ]);

    return _composePEFile(
      blobHeap: blobHeapBytes,
      guidHeap: guidHeapBytes,
      stringHeap: stringHeapBytes,
      userStringHeap: userStringHeapBytes,
      tableStream: tableStreamBytes,
    );
  }

  /// Removes redundant [AssemblyRef] entries and updates [TypeRef] resolution
  /// scopes that referred to them.
  void _removeRedundantAssemblyRefsAndFixTypeRefs() {
    final indexesToRemove = <int>[];
    var removed = 0;

    for (final MapEntry(key: assemblyRefName, value: AssemblyRefIndex(:index))
        in _assemblyRefs.entries) {
      if (index == 0) continue; // Preserve the `mscorlib` reference.
      if (_levelTwoNamespaces.contains(assemblyRefName)) {
        indexesToRemove.add(index);
      }
    }

    indexesToRemove.sort();
    for (final index in indexesToRemove) {
      _tableStream[MetadataTableId.assemblyRef].rows.removeAt(index - removed);
      removed++;
    }

    for (final typeRef in _tableStream.get<TypeRef>().rows) {
      if (typeRef.resolutionScope case ResolutionScopeAssemblyRef(
        value: AssemblyRefIndex(:final index),
      )) {
        if (indexesToRemove.contains(index)) {
          typeRef.resolutionScope = const ResolutionScope.module(
            ModuleIndex(0),
          );
        }
      }
    }
  }

  /// Appends and verifies all deferred metadata table entries, and ensures
  /// tables with ordering constraints are sorted.
  void _finalizeAndValidateSortedTables() {
    _tableStream.get<Constant>().addAll(_constants.values);
    _tableStream.get<CustomAttribute>().addAll(
      _customAttributes.values.expand((e) => e),
    );
    _tableStream.get<FieldLayout>().addAll(_fieldLayouts.values);
    _tableStream.get<FieldMarshal>().addAll(_fieldMarshals.values);
    _tableStream.get<FieldRVA>().addAll(_fieldRVAs.values);
    _tableStream.get<GenericParam>().addAll(
      _genericParams.values.expand((e) => e),
    );
    _tableStream.get<GenericParamConstraint>().addAll(
      _genericParamConstraints.values,
    );
    _tableStream.get<MethodSemantics>().addAll(
      _methodSemantics.values.expand((e) => e),
    );

    assert(
      isSorted(_tableStream.get<ClassLayout>().rows.map((r) => r.parent.index)),
      'ClassLayout.parent is not sorted',
    );
    assert(
      isSorted(_tableStream.get<Constant>().rows.map((r) => r.parent.encode())),
      'Constant.parent is not sorted',
    );
    assert(
      isSorted(
        _tableStream.get<CustomAttribute>().rows.map((r) => r.parent.encode()),
      ),
      'CustomAttribute.parent is not sorted',
    );
    assert(
      isSorted(_tableStream.get<FieldLayout>().rows.map((r) => r.field.index)),
      'FieldLayout.field is not sorted',
    );
    assert(
      isSorted(
        _tableStream.get<FieldMarshal>().rows.map((r) => r.parent.encode()),
      ),
      'FieldMarshal.parent is not sorted',
    );
    assert(
      isSorted(_tableStream.get<FieldRVA>().rows.map((r) => r.field.index)),
      'FieldRVA.field is not sorted',
    );
    assert(
      isSorted(
        _tableStream.get<GenericParam>().rows.map((r) => r.owner.encode()),
      ),
      'GenericParam.owner is not sorted',
    );
    assert(
      isSorted(
        _tableStream.get<GenericParamConstraint>().rows.map(
          (r) => r.owner.index,
        ),
      ),
      'GenericParamConstraint.owner is not sorted',
    );
    assert(
      isSorted(
        _tableStream.get<ImplMap>().rows.map((r) => r.memberForwarded.encode()),
      ),
      'ImplMap.memberForwarded is not sorted',
    );
    assert(
      isSorted(
        _tableStream.get<NestedClass>().rows.map((r) => r.nestedClass.index),
      ),
      'NestedClass.nestedClass is not sorted',
    );
    assert(
      isSorted(
        _tableStream.get<MethodSemantics>().rows.map(
          (r) => r.association.encode(),
        ),
      ),
      'MethodSemantics.association is not sorted',
    );
  }

  /// Throws a [WinmdException] if any of the serialized heaps exceeds the
  /// 32-bit addressable size limit.
  void _ensureHeapSizesFit32Bit(List<Uint8List> heaps) {
    if (heaps.any((heap) => heap.length > 0xFFFFFFFF)) {
      throw const WinmdException('Heap too large');
    }
  }

  /// Composes all PE and CLR structures and appending serialized metadata
  /// streams.
  Uint8List _composePEFile({
    required Uint8List blobHeap,
    required Uint8List guidHeap,
    required Uint8List stringHeap,
    required Uint8List userStringHeap,
    required Uint8List tableStream,
  }) {
    const numberOfStreams = 5; // #Blob, #GUID, #Strings, #US, #~

    final sizeOfStreams =
        blobHeap.length +
        guidHeap.length +
        stringHeap.length +
        tableStream.length +
        userStringHeap.length;

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
      ..streams = numberOfStreams;

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

    final buffer = BytesBuilder(copy: false)
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
          ..size = blobHeap.length
          ..name.setString('${MetadataStream.blob}\x00\x00\x00');

    final guidStreamHeaderByteData = Uint8List(sizeOf<GuidStreamHeader>());
    final guidStreamHeader =
        Struct.create<GuidStreamHeader>(guidStreamHeaderByteData)
          ..offset = blobStreamHeader.nextOffset
          ..size = guidHeap.length
          ..name.setString('${MetadataStream.guid}\x00\x00\x00');

    final stringStreamHeaderByteData = Uint8List(sizeOf<StringStreamHeader>());
    final stringStreamHeader =
        Struct.create<StringStreamHeader>(stringStreamHeaderByteData)
          ..offset = guidStreamHeader.nextOffset
          ..size = stringHeap.length
          ..name.setString('${MetadataStream.string}\x00\x00');

    final tableStreamHeaderByteData = Uint8List(sizeOf<TableStreamHeader>());
    final tableStreamHeader =
        Struct.create<TableStreamHeader>(tableStreamHeaderByteData)
          ..offset = stringStreamHeader.nextOffset
          ..size = tableStream.length
          ..name.setString('${MetadataStream.table}\x00\x00');

    final userStringStreamHeaderByteData = Uint8List(
      sizeOf<UserStringStreamHeader>(),
    );
    Struct.create<UserStringStreamHeader>(userStringStreamHeaderByteData)
      ..offset = tableStreamHeader.nextOffset
      ..size = userStringHeap.length
      ..name.setString('${MetadataStream.userString}\x00');

    buffer
      ..add(blobStreamHeaderByteData)
      ..add(guidStreamHeaderByteData)
      ..add(stringStreamHeaderByteData)
      ..add(tableStreamHeaderByteData)
      ..add(userStringStreamHeaderByteData)
      ..add(blobHeap)
      ..add(guidHeap)
      ..add(stringHeap)
      ..add(tableStream)
      ..add(userStringHeap);

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

final class _TypeSpecKey {
  const _TypeSpecKey(this.name, this.generics);

  final String name;
  final List<MetadataType> generics;

  @override
  bool operator ==(Object other) =>
      other is _TypeSpecKey &&
      other.name == name &&
      listEqual(other.generics, generics);

  @override
  int get hashCode => Object.hash(name, Object.hashAll(generics));

  @override
  String toString() => '$name<${generics.join(', ')}>';
}
