import 'dart:typed_data';

import '../attributes.dart';
import '../common.dart';
import 'codes.dart';
import 'helpers.dart';
import 'id.dart';

final class TableStream {
  final assembly = <AssemblyRecord>[];
  final assemblyRef = <AssemblyRefRecord>[];
  final customAttribute = <CustomAttributeRecord>[];
  final classLayout = <ClassLayoutRecord>[];
  final constant = <ConstantRecord>[];
  final field = <FieldRecord>[];
  final genericParam = <GenericParamRecord>[];
  final implMap = <ImplMapRecord>[];
  final interfaceImpl = <InterfaceImplRecord>[];
  final memberRef = <MemberRefRecord>[];
  final methodDef = <MethodDefRecord>[];
  final module = <ModuleRecord>[];
  final moduleRef = <ModuleRefRecord>[];
  final nestedClass = <NestedClassRecord>[];
  final param = <ParamRecord>[];
  final typeDef = <TypeDefRecord>[];
  final typeRef = <TypeRefRecord>[];
  final typeSpec = <TypeSpecRecord>[];

  Uint8List toBytes() {
    final resolutionScope = codedIndexSize([
      module.length,
      moduleRef.length,
      assemblyRef.length,
      typeRef.length,
    ]);
    final typeDefOrRef = codedIndexSize([
      typeDef.length,
      typeRef.length,
      typeSpec.length,
    ]);
    final hasConstant = codedIndexSize([field.length, param.length, 0]);
    final typeOrMethodDef = codedIndexSize([typeDef.length, methodDef.length]);
    final memberRefParent = codedIndexSize([
      typeDef.length,
      typeRef.length,
      moduleRef.length,
      methodDef.length,
      typeSpec.length,
    ]);
    final customAttributeType = codedIndexSize([
      methodDef.length,
      memberRef.length,
      0,
      0,
      0,
    ]);
    final hasCustomAttribute = codedIndexSize([
      methodDef.length,
      field.length,
      typeRef.length,
      typeDef.length,
      param.length,
      interfaceImpl.length,
      memberRef.length,
      module.length,
      0,
      0,
      0,
      moduleRef.length,
      typeSpec.length,
      0,
      assemblyRef.length,
      0,
      0,
      0,
      genericParam.length,
      0,
      0,
    ]);
    final memberForwarded = codedIndexSize([field.length, methodDef.length]);

    const validTables =
        (1 << MetadataTableId.module) |
        (1 << MetadataTableId.typeRef) |
        (1 << MetadataTableId.typeDef) |
        (1 << MetadataTableId.field) |
        (1 << MetadataTableId.methodDef) |
        (1 << MetadataTableId.param) |
        (1 << MetadataTableId.interfaceImpl) |
        (1 << MetadataTableId.memberRef) |
        (1 << MetadataTableId.constant) |
        (1 << MetadataTableId.customAttribute) |
        (1 << MetadataTableId.classLayout) |
        (1 << MetadataTableId.moduleRef) |
        (1 << MetadataTableId.typeSpec) |
        (1 << MetadataTableId.implMap) |
        (1 << MetadataTableId.assembly) |
        (1 << MetadataTableId.assemblyRef) |
        (1 << MetadataTableId.nestedClass) |
        (1 << MetadataTableId.genericParam);

    // The table stream header...

    final buffer = BytesBuilder()
      ..writeUint32(0) // Reserved (4 bytes, zeroed out)
      ..addByte(2) // MajorVersion
      ..addByte(0) // MinorVersion
      ..addByte(7) // HeapSizes
      ..addByte(0) // Reserved
      ..writeUint64(validTables)
      ..writeUint64(0) // Sorted
      // Followed by the length of each of the valid tables...
      ..writeUint32(module.length)
      ..writeUint32(typeRef.length)
      ..writeUint32(typeDef.length)
      ..writeUint32(field.length)
      ..writeUint32(methodDef.length)
      ..writeUint32(param.length)
      ..writeUint32(interfaceImpl.length)
      ..writeUint32(memberRef.length)
      ..writeUint32(constant.length)
      ..writeUint32(customAttribute.length)
      ..writeUint32(classLayout.length)
      ..writeUint32(moduleRef.length)
      ..writeUint32(typeSpec.length)
      ..writeUint32(implMap.length)
      ..writeUint32(assembly.length)
      ..writeUint32(assemblyRef.length)
      ..writeUint32(nestedClass.length)
      ..writeUint32(genericParam.length);

    // Followed by each table's rows...

    for (final r in module) {
      buffer
        ..writeUint16(r.generation)
        ..writeUint32(r.name.value)
        ..writeUint32(r.mvid)
        ..writeUint32(r.encId)
        ..writeUint32(r.encBaseId);
    }

    for (final r in typeRef) {
      buffer
        ..writeCode(r.resolutionScope.encode(), resolutionScope)
        ..writeUint32(r.name.value)
        ..writeUint32(r.namespace.value);
    }

    for (final r in typeDef) {
      buffer
        ..writeUint32(r.flags)
        ..writeUint32(r.name.value)
        ..writeUint32(r.namespace.value)
        ..writeCode(r.extend.encode(), typeDefOrRef)
        ..writeIndex(r.fieldList, field.length)
        ..writeIndex(r.methodList, methodDef.length);
    }

    for (final r in field) {
      buffer
        ..writeUint16(r.flags)
        ..writeUint32(r.name.value)
        ..writeUint32(r.signature.value);
    }

    for (final r in methodDef) {
      buffer
        ..writeUint32(r.rva)
        ..writeUint16(r.implFlags)
        ..writeUint16(r.flags)
        ..writeUint32(r.name.value)
        ..writeUint32(r.signature.value)
        ..writeIndex(r.paramList, param.length);
    }

    for (final r in param) {
      buffer
        ..writeUint16(r.flags)
        ..writeUint16(r.sequence)
        ..writeUint32(r.name.value);
    }

    for (final r in interfaceImpl) {
      buffer
        ..writeIndex(r.class$.value, typeDef.length)
        ..writeCode(r.interface.encode(), typeDefOrRef);
    }

    for (final r in memberRef) {
      buffer
        ..writeCode(r.parent.encode(), memberRefParent)
        ..writeUint32(r.name.value)
        ..writeUint32(r.signature.value);
    }

    for (final r in constant) {
      buffer
        ..addByte(r.type)
        ..addByte(0)
        ..writeCode(r.parent.encode(), hasConstant)
        ..writeUint32(r.value.value);
    }

    for (final r in customAttribute) {
      buffer
        ..writeCode(r.parent.encode(), hasCustomAttribute)
        ..writeCode(r.type.encode(), customAttributeType)
        ..writeUint32(r.value.value);
    }

    for (final r in classLayout) {
      buffer
        ..writeUint16(r.packingSize)
        ..writeUint32(r.classSize)
        ..writeIndex(r.parent, typeDef.length);
    }

    for (final r in moduleRef) {
      buffer.writeUint32(r.name.value);
    }

    for (final r in typeSpec) {
      buffer.writeUint32(r.signature.value);
    }

    for (final r in implMap) {
      buffer
        ..writeUint16(r.mappingFlags)
        ..writeCode(r.memberForwarded.encode(), memberForwarded)
        ..writeUint32(r.importName.value)
        ..writeIndex(r.importScope.value, moduleRef.length);
    }

    for (final r in assembly) {
      buffer
        ..writeUint32(r.hashAlgId)
        ..writeUint16(r.majorVersion)
        ..writeUint16(r.minorVersion)
        ..writeUint16(r.buildNumber)
        ..writeUint16(r.revisionNumber)
        ..writeUint32(r.flags)
        ..writeUint32(r.publicKey)
        ..writeUint32(r.name.value)
        ..writeUint32(r.culture);
    }

    for (final r in assemblyRef) {
      buffer
        ..writeUint16(r.majorVersion)
        ..writeUint16(r.minorVersion)
        ..writeUint16(r.buildNumber)
        ..writeUint16(r.revisionNumber)
        ..writeUint32(r.flags)
        ..writeUint32(r.publicKeyOrToken.value)
        ..writeUint32(r.name.value)
        ..writeUint32(r.culture)
        ..writeUint32(r.hashValue);
    }

    for (final r in nestedClass) {
      buffer
        ..writeIndex(r.nestedClass, typeDef.length)
        ..writeIndex(r.enclosingClass, typeDef.length);
    }

    for (final r in genericParam) {
      buffer
        ..writeUint16(r.number)
        ..writeUint16(r.flags)
        ..writeCode(r.owner.encode(), typeOrMethodDef)
        ..writeUint32(r.name.value);
    }

    return buffer.takeBytes().toBytesPadded();
  }
}

final class TypeSpecRecord {
  const TypeSpecRecord({required this.signature});

  final BlobId signature;
}

final class NestedClassRecord {
  const NestedClassRecord({
    required this.nestedClass,
    required this.enclosingClass,
  });

  final int nestedClass;
  final int enclosingClass;
}

final class ModuleRefRecord {
  const ModuleRefRecord(this.name);

  final StringId name;
}

final class AssemblyRecord {
  const AssemblyRecord({
    this.hashAlgId = 0,
    this.majorVersion = 0,
    this.minorVersion = 0,
    this.buildNumber = 0,
    this.revisionNumber = 0,
    this.flags = const AssemblyFlags(0),
    this.publicKey = 0,
    this.name = const StringId(0),
    this.culture = 0,
  });

  final int hashAlgId;
  final int majorVersion;
  final int minorVersion;
  final int buildNumber;
  final int revisionNumber;
  final AssemblyFlags flags;
  final int publicKey;
  final StringId name;
  final int culture;
}

final class InterfaceImplRecord {
  const InterfaceImplRecord({required this.class$, required this.interface});

  final TypeDef class$;
  final TypeDefOrRef interface;
}

final class ImplMapRecord {
  const ImplMapRecord({
    required this.mappingFlags,
    required this.memberForwarded,
    required this.importName,
    required this.importScope,
  });

  final PInvokeAttributes mappingFlags;
  final MemberForwarded memberForwarded;
  final StringId importName;
  final ModuleRef importScope;
}

final class AssemblyRefRecord {
  const AssemblyRefRecord({
    this.majorVersion = 0,
    this.minorVersion = 0,
    this.buildNumber = 0,
    this.revisionNumber = 0,
    this.flags = const AssemblyFlags(0),
    this.publicKeyOrToken = const BlobId(0),
    this.name = const StringId(0),
    this.culture = 0,
    this.hashValue = 0,
  });

  final int majorVersion;
  final int minorVersion;
  final int buildNumber;
  final int revisionNumber;
  final AssemblyFlags flags;
  final BlobId publicKeyOrToken;
  final StringId name;
  final int culture;
  final int hashValue;
}

final class ClassLayoutRecord {
  const ClassLayoutRecord({
    required this.packingSize,
    required this.classSize,
    required this.parent,
  });

  final int packingSize;
  final int classSize;
  final int parent;
}

final class ConstantRecord {
  const ConstantRecord({
    required this.type,
    required this.parent,
    required this.value,
  });

  final int type;
  final HasConstant parent;
  final BlobId value;
}

final class FieldRecord {
  const FieldRecord({
    required this.flags,
    required this.name,
    required this.signature,
  });

  final FieldAttributes flags;
  final StringId name;
  final BlobId signature;
}

final class MethodDefRecord {
  const MethodDefRecord({
    required this.rva,
    required this.implFlags,
    required this.flags,
    required this.name,
    required this.signature,
    required this.paramList,
  });

  final int rva;
  final MethodImplAttributes implFlags;
  final MethodAttributes flags;
  final StringId name;
  final BlobId signature;
  final int paramList;
}

final class ModuleRecord {
  const ModuleRecord({this.name = const StringId(0), this.mvid = 0})
    : generation = 0,
      encId = 0,
      encBaseId = 0;

  final int generation;
  final StringId name;
  final int mvid;
  final int encId;
  final int encBaseId;
}

final class GenericParamRecord {
  const GenericParamRecord({
    required this.number,
    required this.flags,
    required this.owner,
    required this.name,
  });

  final int number;
  final GenericParamAttributes flags;
  final TypeOrMethodDef owner;
  final StringId name;
}

final class ParamRecord {
  const ParamRecord({
    required this.flags,
    required this.sequence,
    required this.name,
  });

  final ParamAttributes flags;
  final int sequence;
  final StringId name;
}

final class TypeDefRecord {
  const TypeDefRecord({
    required this.flags,
    required this.name,
    required this.namespace,
    required this.extend,
    required this.fieldList,
    required this.methodList,
  });

  final TypeAttributes flags;
  final StringId name;
  final StringId namespace;
  final TypeDefOrRef extend;
  final int fieldList;
  final int methodList;
}

final class TypeRefRecord {
  const TypeRefRecord({
    required this.resolutionScope,
    required this.name,
    required this.namespace,
  });

  final ResolutionScope resolutionScope;
  final StringId name;
  final StringId namespace;
}

final class CustomAttributeRecord {
  const CustomAttributeRecord({
    required this.parent,
    required this.type,
    required this.value,
  });

  final HasCustomAttribute parent;
  final CustomAttributeType type;
  final BlobId value;
}

final class MemberRefRecord {
  const MemberRefRecord({
    required this.parent,
    required this.name,
    required this.signature,
  });

  final MemberRefParent parent;
  final StringId name;
  final BlobId signature;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRefRecord &&
          parent == other.parent &&
          name == other.name &&
          signature == other.signature;

  @override
  int get hashCode => Object.hash(parent, name, signature);
}
