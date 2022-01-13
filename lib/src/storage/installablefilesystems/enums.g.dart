/// {@category Enum}
class FILTER_INFORMATION_CLASS {
  static const FilterFullInformation = 0x00000000;
  static const FilterAggregateBasicInformation = 0x00000001;
  static const FilterAggregateStandardInformation = 0x00000002;
}

/// {@category Enum}
class FILTER_VOLUME_INFORMATION_CLASS {
  static const FilterVolumeBasicInformation = 0x00000000;
  static const FilterVolumeStandardInformation = 0x00000001;
}

/// {@category Enum}
class FLT_FILESYSTEM_TYPE {
  static const FLT_FSTYPE_UNKNOWN = 0x00000000;
  static const FLT_FSTYPE_RAW = 0x00000001;
  static const FLT_FSTYPE_NTFS = 0x00000002;
  static const FLT_FSTYPE_FAT = 0x00000003;
  static const FLT_FSTYPE_CDFS = 0x00000004;
  static const FLT_FSTYPE_UDFS = 0x00000005;
  static const FLT_FSTYPE_LANMAN = 0x00000006;
  static const FLT_FSTYPE_WEBDAV = 0x00000007;
  static const FLT_FSTYPE_RDPDR = 0x00000008;
  static const FLT_FSTYPE_NFS = 0x00000009;
  static const FLT_FSTYPE_MS_NETWARE = 0x0000000a;
  static const FLT_FSTYPE_NETWARE = 0x0000000b;
  static const FLT_FSTYPE_BSUDF = 0x0000000c;
  static const FLT_FSTYPE_MUP = 0x0000000d;
  static const FLT_FSTYPE_RSFX = 0x0000000e;
  static const FLT_FSTYPE_ROXIO_UDF1 = 0x0000000f;
  static const FLT_FSTYPE_ROXIO_UDF2 = 0x00000010;
  static const FLT_FSTYPE_ROXIO_UDF3 = 0x00000011;
  static const FLT_FSTYPE_TACIT = 0x00000012;
  static const FLT_FSTYPE_FS_REC = 0x00000013;
  static const FLT_FSTYPE_INCD = 0x00000014;
  static const FLT_FSTYPE_INCD_FAT = 0x00000015;
  static const FLT_FSTYPE_EXFAT = 0x00000016;
  static const FLT_FSTYPE_PSFS = 0x00000017;
  static const FLT_FSTYPE_GPFS = 0x00000018;
  static const FLT_FSTYPE_NPFS = 0x00000019;
  static const FLT_FSTYPE_MSFS = 0x0000001a;
  static const FLT_FSTYPE_CSVFS = 0x0000001b;
  static const FLT_FSTYPE_REFS = 0x0000001c;
  static const FLT_FSTYPE_OPENAFS = 0x0000001d;
  static const FLT_FSTYPE_CIMFS = 0x0000001e;
}

/// {@category Enum}
class INSTANCE_INFORMATION_CLASS {
  static const InstanceBasicInformation = 0x00000000;
  static const InstancePartialInformation = 0x00000001;
  static const InstanceFullInformation = 0x00000002;
  static const InstanceAggregateStandardInformation = 0x00000003;
}
