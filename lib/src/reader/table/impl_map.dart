import '../../attributes.dart';
import '../../exception.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'module_ref.dart';

/// Used to define the mapping between a managed member and an unmanaged
/// function.
///
/// This is particularly useful for P/Invoke scenarios where a managed function
/// needs to call an unmanaged function.
///
/// The table has the following columns:
///  - MappingFlags (2-byte bitmask of PInvokeAttributes)
///  - MemberForwarded (MemberForwarded Coded Index)
///  - ImportName (String Heap Index)
///  - ImportScope (ModuleRef Index)
///
/// The table is defined in the section `§II.22.22` of the ECMA-335 standard.
final class ImplMap extends Row {
  ImplMap(super.metadataIndex, super.readerIndex, super.position);

  static const metadataTable = MetadataTable.implMap;

  @override
  MetadataTable get table => metadataTable;

  late final flags = PInvokeAttributes(readUint(0));

  late final charSet = switch (flags & PInvokeAttributes.charSetMask) {
    PInvokeAttributes.charSetAnsi => CharSet.ansi,
    PInvokeAttributes.charSetUnicode => CharSet.unicode,
    PInvokeAttributes.charSetAuto => CharSet.auto,
    _ => CharSet.notSpecified,
  };

  late final callingConvention = switch (flags &
      PInvokeAttributes.callConvMask) {
    PInvokeAttributes.callConvPlatformApi => CallingConvention.platformApi,
    PInvokeAttributes.callConvCdecl => CallingConvention.cdecl,
    PInvokeAttributes.callConvStdCall => CallingConvention.stdcall,
    PInvokeAttributes.callConvThisCall => CallingConvention.thiscall,
    PInvokeAttributes.callConvFastCall => CallingConvention.fastcall,
    _ => throw WinmdException(
      'Unknown calling convention: ${flags & PInvokeAttributes.callConvMask}',
    ),
  };

  late final memberForwarded = decode<MemberForwarded>(1);

  late final importName = readString(2);

  late final importScope = readRow<ModuleRef>(3);

  @override
  String toString() => 'ImplMap(importName: $importName)';
}

final class ImplMapCompanion extends RowCompanion<ImplMap> {
  const ImplMapCompanion();

  @override
  ImplMap Function(MetadataIndex, int, int) get constructor => ImplMap.new;

  @override
  MetadataTable get table => ImplMap.metadataTable;
}
