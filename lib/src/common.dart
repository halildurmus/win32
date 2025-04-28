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
/// Metadata tables store structured metadata records, such as types, methods,
/// parameters, and assemblies. Each table has a unique numeric identifier
/// (sometimes called a "table number") defined by the ECMA-335 standard.
extension type const Table._(int number) implements int {
  /// The `Module` table.
  static const module = Table._(0x00);

  /// The `TypeRef` table.
  static const typeRef = Table._(0x01);

  /// The `TypeDef` table.
  static const typeDef = Table._(0x02);

  /// The `Field` table.
  static const field = Table._(0x04);

  /// The `MethodDef` table.
  static const methodDef = Table._(0x06);

  /// The `Param` table.
  static const param = Table._(0x08);

  /// The `InterfaceImpl` table.
  static const interfaceImpl = Table._(0x09);

  /// The `MemberRef` table.
  static const memberRef = Table._(0x0A);

  /// The `Constant` table.
  static const constant = Table._(0x0B);

  /// The `CustomAttribute` table.
  static const customAttribute = Table._(0x0C);

  /// The `FieldMarshal` table.
  static const fieldMarshal = Table._(0x0D);

  /// The `DeclSecurity` table.
  static const declSecurity = Table._(0x0E);

  /// The `ClassLayout` table.
  static const classLayout = Table._(0x0F);

  /// The `FieldLayout` table.
  static const fieldLayout = Table._(0x10);

  /// The `StandAloneSig` table.
  static const standAloneSig = Table._(0x11);

  /// The `EventMap` table.
  static const eventMap = Table._(0x12);

  /// The `Event` table.
  static const event = Table._(0x14);

  /// The `PropertyMap` table.
  static const propertyMap = Table._(0x15);

  /// The `Property` table.
  static const property = Table._(0x17);

  /// The `MethodSemantics` table.
  static const methodSemantics = Table._(0x18);

  /// The `MethodImpl` table.
  static const methodImpl = Table._(0x19);

  /// The `ModuleRef` table.
  static const moduleRef = Table._(0x1A);

  /// The `TypeSpec` table.
  static const typeSpec = Table._(0x1B);

  /// The `ImplMap` table.
  static const implMap = Table._(0x1C);

  /// The `FieldRVA` table.
  static const fieldRVA = Table._(0x1D);

  /// The `Assembly` table.
  static const assembly = Table._(0x20);

  /// The `AssemblyProcessor` table.
  static const assemblyProcessor = Table._(0x21);

  /// The `AssemblyOS` table.
  static const assemblyOS = Table._(0x22);

  /// The `AssemblyRef` table.
  static const assemblyRef = Table._(0x23);

  /// The `AssemblyRefProcessor` table.
  static const assemblyRefProcessor = Table._(0x24);

  /// The `AssemblyRefOS` table.
  static const assemblyRefOS = Table._(0x25);

  /// The `File` table.
  static const file = Table._(0x26);

  /// The `ExportedType` table.
  static const exportedType = Table._(0x27);

  /// The `ManifestResource` table.
  static const manifestResource = Table._(0x28);

  /// The `NestedClass` table.
  static const nestedClass = Table._(0x29);

  /// The `GenericParam` table.
  static const genericParam = Table._(0x2A);

  /// The `MethodSpec` table.
  static const methodSpec = Table._(0x2B);

  /// The `GenericParamConstraint` table.
  static const genericParamConstraint = Table._(0x2C);
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

/// Removes a trailing tick and digits from a [name], if present.
///
/// For example, a name like "IIterable`1" becomes "IIterable".
String trimTick(String name) {
  final indexOfTick = name.indexOf('`');
  if (indexOfTick == -1) return name;
  return name.substring(0, name.indexOf('`'));
}

/// Compares two lists for equality.
bool listsEqual<T>(List<T> a, List<T> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
