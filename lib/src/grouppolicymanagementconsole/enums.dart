/// {@category Enum}
class GPMRSOPMode {
  static const rsopUnknown = 0x00000000;
  static const rsopPlanning = 0x00000001;
  static const rsopLogging = 0x00000002;
}

/// {@category Enum}
class GPMPermissionType {
  static const permGPOApply = 0x00010000;
  static const permGPORead = 0x00010100;
  static const permGPOEdit = 0x00010101;
  static const permGPOEditSecurityAndDelete = 0x00010102;
  static const permGPOCustom = 0x00010103;
  static const permWMIFilterEdit = 0x00020000;
  static const permWMIFilterFullControl = 0x00020001;
  static const permWMIFilterCustom = 0x00020002;
  static const permSOMLink = 0x001c0000;
  static const permSOMLogging = 0x00180100;
  static const permSOMPlanning = 0x00180200;
  static const permSOMWMICreate = 0x00100300;
  static const permSOMWMIFullControl = 0x00100301;
  static const permSOMGPOCreate = 0x00100400;
  static const permStarterGPORead = 0x00030500;
  static const permStarterGPOEdit = 0x00030501;
  static const permStarterGPOFullControl = 0x00030502;
  static const permStarterGPOCustom = 0x00030503;
  static const permSOMStarterGPOCreate = 0x00100500;
}

/// {@category Enum}
class GPMSearchProperty {
  static const gpoPermissions = 0x00000000;
  static const gpoEffectivePermissions = 0x00000001;
  static const gpoDisplayName = 0x00000002;
  static const gpoWMIFilter = 0x00000003;
  static const gpoID = 0x00000004;
  static const gpoComputerExtensions = 0x00000005;
  static const gpoUserExtensions = 0x00000006;
  static const somLinks = 0x00000007;
  static const gpoDomain = 0x00000008;
  static const backupMostRecent = 0x00000009;
  static const starterGPOPermissions = 0x0000000a;
  static const starterGPOEffectivePermissions = 0x0000000b;
  static const starterGPODisplayName = 0x0000000c;
  static const starterGPOID = 0x0000000d;
  static const starterGPODomain = 0x0000000e;
}

/// {@category Enum}
class GPMSearchOperation {
  static const opEquals = 0x00000000;
  static const opContains = 0x00000001;
  static const opNotContains = 0x00000002;
  static const opNotEquals = 0x00000003;
}

/// {@category Enum}
class GPMReportType {
  static const repXML = 0x00000000;
  static const repHTML = 0x00000001;
  static const repInfraXML = 0x00000002;
  static const repInfraRefreshXML = 0x00000003;
  static const repClientHealthXML = 0x00000004;
  static const repClientHealthRefreshXML = 0x00000005;
}

/// {@category Enum}
class GPMEntryType {
  static const typeUser = 0x00000000;
  static const typeComputer = 0x00000001;
  static const typeLocalGroup = 0x00000002;
  static const typeGlobalGroup = 0x00000003;
  static const typeUniversalGroup = 0x00000004;
  static const typeUNCPath = 0x00000005;
  static const typeUnknown = 0x00000006;
}

/// {@category Enum}
class GPMDestinationOption {
  static const opDestinationSameAsSource = 0x00000000;
  static const opDestinationNone = 0x00000001;
  static const opDestinationByRelativeName = 0x00000002;
  static const opDestinationSet = 0x00000003;
}

/// {@category Enum}
class GPMReportingOptions {
  static const opReportLegacy = 0x00000000;
  static const opReportComments = 0x00000001;
}

/// {@category Enum}
class GPMSOMType {
  static const somSite = 0x00000000;
  static const somDomain = 0x00000001;
  static const somOU = 0x00000002;
}

/// {@category Enum}
class GPMBackupType {
  static const typeGPO = 0x00000000;
  static const typeStarterGPO = 0x00000001;
}

/// {@category Enum}
class GPMStarterGPOType {
  static const typeSystem = 0x00000000;
  static const typeCustom = 0x00000001;
}

