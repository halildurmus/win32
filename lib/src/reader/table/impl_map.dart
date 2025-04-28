import 'package:meta/meta.dart';

import '../../attributes.dart';
import '../../exception.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';
import 'module_ref.dart';

/// Represents a row in the `ImplMap` metadata table, describing a mapping
/// between a managed method and an unmanaged function implementation, typically
/// used in P/Invoke scenarios.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.22`.
///
/// The `ImplMap` table has the following columns:
///  - **MappingFlags** (2-byte bitmask of PInvokeAttributes)
///  - **MemberForwarded** (MemberForwarded Coded Index)
///  - **ImportName** (String Heap Index)
///  - **ImportScope** (ModuleRef Index)
final class ImplMap extends Row {
  ImplMap(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.implMap;

  /// The flags describing how the unmanaged call should be performed.
  late final flags = PInvokeAttributes(readUint(0));

  /// The character set used when marshaling strings for the unmanaged call.
  late final charSet = switch (flags & PInvokeAttributes.charSetMask) {
    PInvokeAttributes.charSetAnsi => CharSet.ansi,
    PInvokeAttributes.charSetUnicode => CharSet.unicode,
    PInvokeAttributes.charSetAuto => CharSet.auto,
    _ => CharSet.notSpecified,
  };

  /// The calling convention used by the unmanaged function.
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

  /// The managed member that is forwarded to an unmanaged implementation.
  late final memberForwarded = decode<MemberForwarded>(1);

  /// The name of the unmanaged function being imported.
  late final importName = readString(2);

  /// The external module that contains the unmanaged function.
  late final importScope = readRow<ModuleRef>(3);

  @override
  String toString() => 'ImplMap(importName: $importName)';
}

@internal
final class ImplMapCompanion extends RowCompanion<ImplMap> {
  const ImplMapCompanion();

  @override
  ImplMap Function(MetadataIndex, int, int) get constructor => ImplMap.new;

  @override
  MetadataTable get table => MetadataTable.implMap;
}
