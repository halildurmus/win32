import 'dart:convert';
import 'dart:ffi';

/// The magic signature for physical metadata as defined in ECMA-335
/// `§II.24.2.1`.
const metadataSignature = 0x424A5342;

/// See ECMA-335 `§II.24.2.1`.
final class MetadataHeader extends Struct {
  @Uint32()
  external int signature;

  @Uint16()
  external int majorVersion;

  @Uint16()
  external int minorVersion;

  @Uint32()
  external int reserved;

  @Uint32()
  external int length;

  @Array(20)
  external Array<Uint8> version;

  @Uint16()
  external int flags;

  @Uint16()
  external int streams;
}

/// Represents a metadata stream name within a .NET metadata file.
extension type const MetadataStream._(String _) implements String {
  /// The `#Blob` stream.
  static const blob = MetadataStream._('#Blob');

  /// The `#GUID` stream.
  static const guid = MetadataStream._('#GUID');

  /// The `#Strings` stream.
  static const string = MetadataStream._('#Strings');

  /// The `#~` stream.
  static const table = MetadataStream._('#~');

  /// The `#US` stream.
  static const userString = MetadataStream._('#US');
}

/// Represents a metadata table identifier within a .NET metadata file.
///
/// Each table is defined by the ECMA-335 standard and holds a specific kind
/// of metadata (e.g., types, methods, parameters). Tables are indexed by
/// numeric IDs from `0x00` to `0x2C`.
extension type const MetadataTableId._(int _) implements int {
  /// The `Module` table (`0x00`).
  static const module = MetadataTableId._(0x00);

  /// The `TypeRef` table (`0x01`).
  static const typeRef = MetadataTableId._(0x01);

  /// The `TypeDef` table (`0x02`).
  static const typeDef = MetadataTableId._(0x02);

  /// The `Field` table (`0x04`).
  static const field = MetadataTableId._(0x04);

  /// The `MethodDef` table (`0x06`).
  static const methodDef = MetadataTableId._(0x06);

  /// The `Param` table (`0x08`).
  static const param = MetadataTableId._(0x08);

  /// The `InterfaceImpl` table (`0x09`).
  static const interfaceImpl = MetadataTableId._(0x09);

  /// The `MemberRef` table (`0x0A`).
  static const memberRef = MetadataTableId._(0x0A);

  /// The `Constant` table (`0x0B`).
  static const constant = MetadataTableId._(0x0B);

  /// The `CustomAttribute` table (`0x0C`).
  static const customAttribute = MetadataTableId._(0x0C);

  /// The `FieldMarshal` table (`0x0D`).
  static const fieldMarshal = MetadataTableId._(0x0D);

  /// The `DeclSecurity` table (`0x0E`).
  static const declSecurity = MetadataTableId._(0x0E);

  /// The `ClassLayout` table (`0x0F`).
  static const classLayout = MetadataTableId._(0x0F);

  /// The `FieldLayout` table (`0x10`).
  static const fieldLayout = MetadataTableId._(0x10);

  /// The `StandAloneSig` table (`0x11`).
  static const standAloneSig = MetadataTableId._(0x11);

  /// The `EventMap` table (`0x12`).
  static const eventMap = MetadataTableId._(0x12);

  /// The `Event` table (`0x14`).
  static const event = MetadataTableId._(0x14);

  /// The `PropertyMap` table (`0x15`).
  static const propertyMap = MetadataTableId._(0x15);

  /// The `Property` table (`0x17`).
  static const property = MetadataTableId._(0x17);

  /// The `MethodSemantics` table (`0x18`).
  static const methodSemantics = MetadataTableId._(0x18);

  /// The `MethodImpl` table (`0x19`).
  static const methodImpl = MetadataTableId._(0x19);

  /// The `ModuleRef` table (`0x1A`).
  static const moduleRef = MetadataTableId._(0x1A);

  /// The `TypeSpec` table (`0x1B`).
  static const typeSpec = MetadataTableId._(0x1B);

  /// The `ImplMap` table (`0x1C`).
  static const implMap = MetadataTableId._(0x1C);

  /// The `FieldRVA` table (`0x1D`).
  static const fieldRVA = MetadataTableId._(0x1D);

  /// The `Assembly` table (`0x20`).
  static const assembly = MetadataTableId._(0x20);

  /// The `AssemblyProcessor` table (`0x21`).
  static const assemblyProcessor = MetadataTableId._(0x21);

  /// The `AssemblyOS` table (`0x22`).
  static const assemblyOS = MetadataTableId._(0x22);

  /// The `AssemblyRef` table (`0x23`).
  static const assemblyRef = MetadataTableId._(0x23);

  /// The `AssemblyRefProcessor` table (`0x24`).
  static const assemblyRefProcessor = MetadataTableId._(0x24);

  /// The `AssemblyRefOS` table (`0x25`).
  static const assemblyRefOS = MetadataTableId._(0x25);

  /// The `File` table (`0x26`).
  static const file = MetadataTableId._(0x26);

  /// The `ExportedType` table (`0x27`).
  static const exportedType = MetadataTableId._(0x27);

  /// The `ManifestResource` table (`0x28`).
  static const manifestResource = MetadataTableId._(0x28);

  /// The `NestedClass` table (`0x29`).
  static const nestedClass = MetadataTableId._(0x29);

  /// The `GenericParam` table (`0x2A`).
  static const genericParam = MetadataTableId._(0x2A);

  /// The `MethodSpec` table (`0x2B`).
  static const methodSpec = MetadataTableId._(0x2B);

  /// The `GenericParamConstraint` table (`0x2C`).
  static const genericParamConstraint = MetadataTableId._(0x2C);

  /// All known metadata table identifiers, ordered by their ID.
  static const values = [
    module,
    typeRef,
    typeDef,
    field,
    methodDef,
    param,
    interfaceImpl,
    memberRef,
    constant,
    customAttribute,
    fieldMarshal,
    declSecurity,
    classLayout,
    fieldLayout,
    standAloneSig,
    eventMap,
    event,
    propertyMap,
    property,
    methodSemantics,
    methodImpl,
    moduleRef,
    typeSpec,
    implMap,
    fieldRVA,
    assembly,
    assemblyProcessor,
    assemblyOS,
    assemblyRef,
    assemblyRefProcessor,
    assemblyRefOS,
    file,
    exportedType,
    manifestResource,
    nestedClass,
    genericParam,
    methodSpec,
    genericParamConstraint,
  ];
}

extension Uint8ArrayExtension on Array<Uint8> {
  /// Encodes the given [value] as UTF-8 and writes it to the array starting at
  /// index `0`.
  void setString(String value) => elements.setAll(0, utf8.encode(value));
}

/// Calculates the size, in bytes, required to store a coded index.
///
/// A coded index is a table index that can reference multiple tables.
/// Its size must be sufficient to accommodate an index into the largest
/// possible target table.
///
/// Returns either `2` or `4`, depending on the maximum row count across the
/// tables.
int codedIndexSize(List<int> tables) {
  bool small(int rowCount, int bits) => rowCount < (1 << (16 - bits));

  int bitsNeeded(int value) {
    var v = value - 1;
    var bits = 1;
    while ((v >>= 1) != 0) {
      bits++;
    }
    return bits;
  }

  final bitsNeededVal = bitsNeeded(tables.length);
  if (tables.every((table) => small(table, bitsNeededVal))) return 2;
  return 4;
}

/// Compares two lists for equality.
bool listEqual<T>(List<T> a, List<T> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
