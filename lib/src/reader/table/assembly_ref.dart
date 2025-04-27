import '../../attributes.dart';
import '../../culture.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Contains references to assemblies that are used by the current assembly.
///
/// This class is used to declare a reference to an external assembly. For
/// example, the `Windows.Globalization` assembly may contain references to
/// objects in the `Windows.Foundation` assembly. The linkage is established
/// through an AssemblyRef entry.
///
/// The table has the following columns:
///  - MajorVersion (2-byte value)
///  - MinorVersion (2-byte value)
///  - BuildNumber (2-byte value)
///  - RevisionNumber (2-byte value)
///  - Flags (4-byte value, AssemblyFlags)
///  - PublicKeyOrToken (Blob Heap Index)
///  - Name (String Heap Index)
///  - Culture (String Heap Index)
///  - HashValue (Blob Heap Index)
///
/// The table is defined in the section `§II.22.5` of the ECMA-335 standard.
final class AssemblyRef extends Row {
  AssemblyRef(super.metadataIndex, super.readerIndex, super.position);

  static const metadataTable = MetadataTable.assemblyRef;

  @override
  MetadataTable get table => metadataTable;

  /// The major version of the assembly.
  late final majorVersion = readUint16(0);

  /// The minor version of the assembly.
  late final minorVersion = readUint16(0, 2);

  /// The build number of the assembly.
  late final buildNumber = readUint16(0, 4);

  /// The revision number of the assembly.
  late final revisionNumber = readUint16(0, 6);

  late final flags = AssemblyFlags(readUint(1));

  late final publicKeyOrToken = () {
    final blob = readBlob(2);
    if (blob.isEmpty) return null;
    return blob;
  }();

  /// The name of the assembly.
  late final name = readString(3);

  /// The culture of the assembly.
  late final culture = () {
    final culture = readString(4);
    if (culture.isEmpty) return null;
    return Culture(culture);
  }();

  /// The hash value of the assembly.
  late final hashValue = () {
    final blob = readBlob(5);
    if (blob.isEmpty) return null;
    return blob;
  }();

  /// The version of the assembly.
  late final version =
      '$majorVersion.$minorVersion.$buildNumber.$revisionNumber';

  @override
  String toString() => 'AssemblyRef(name: $name, version: $version)';
}

final class AssemblyRefCompanion extends RowCompanion<AssemblyRef> {
  const AssemblyRefCompanion();

  @override
  AssemblyRef Function(MetadataIndex, int, int) get constructor =>
      AssemblyRef.new;

  @override
  MetadataTable get table => AssemblyRef.metadataTable;
}
