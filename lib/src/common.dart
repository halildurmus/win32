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

extension type const MetadataStream._(String _) implements String {
  static const blob = MetadataStream._('#Blob');
  static const guid = MetadataStream._('#GUID');
  static const string = MetadataStream._('#Strings');
  static const table = MetadataStream._('#~');
  static const userString = MetadataStream._('#US');
}

extension type const Table._(int number) implements int {
  static const module = Table._(0x00);
  static const typeRef = Table._(0x01);
  static const typeDef = Table._(0x02);
  static const field = Table._(0x04);
  static const methodDef = Table._(0x06);
  static const param = Table._(0x08);
  static const interfaceImpl = Table._(0x09);
  static const memberRef = Table._(0x0A);
  static const constant = Table._(0x0B);
  static const customAttribute = Table._(0x0C);
  static const fieldMarshal = Table._(0x0D);
  static const declSecurity = Table._(0x0E);
  static const classLayout = Table._(0x0F);
  static const fieldLayout = Table._(0x10);
  static const standAloneSig = Table._(0x11);
  static const eventMap = Table._(0x12);
  static const event = Table._(0x14);
  static const propertyMap = Table._(0x15);
  static const property = Table._(0x17);
  static const methodSemantics = Table._(0x18);
  static const methodImpl = Table._(0x19);
  static const moduleRef = Table._(0x1A);
  static const typeSpec = Table._(0x1B);
  static const implMap = Table._(0x1C);
  static const fieldRVA = Table._(0x1D);
  static const assembly = Table._(0x20);
  static const assemblyProcessor = Table._(0x21);
  static const assemblyOS = Table._(0x22);
  static const assemblyRef = Table._(0x23);
  static const assemblyRefProcessor = Table._(0x24);
  static const assemblyRefOS = Table._(0x25);
  static const file = Table._(0x26);
  static const exportedType = Table._(0x27);
  static const manifestResource = Table._(0x28);
  static const nestedClass = Table._(0x29);
  static const genericParam = Table._(0x2A);
  static const methodSpec = Table._(0x2B);
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
