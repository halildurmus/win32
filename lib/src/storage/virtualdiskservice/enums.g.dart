/// {@category Enum}
class VDS_ASYNC_OUTPUT_TYPE {
  static const VDS_ASYNCOUT_UNKNOWN = 0x00000000;
  static const VDS_ASYNCOUT_CREATEVOLUME = 0x00000001;
  static const VDS_ASYNCOUT_EXTENDVOLUME = 0x00000002;
  static const VDS_ASYNCOUT_SHRINKVOLUME = 0x00000003;
  static const VDS_ASYNCOUT_ADDVOLUMEPLEX = 0x00000004;
  static const VDS_ASYNCOUT_BREAKVOLUMEPLEX = 0x00000005;
  static const VDS_ASYNCOUT_REMOVEVOLUMEPLEX = 0x00000006;
  static const VDS_ASYNCOUT_REPAIRVOLUMEPLEX = 0x00000007;
  static const VDS_ASYNCOUT_RECOVERPACK = 0x00000008;
  static const VDS_ASYNCOUT_REPLACEDISK = 0x00000009;
  static const VDS_ASYNCOUT_CREATEPARTITION = 0x0000000a;
  static const VDS_ASYNCOUT_CLEAN = 0x0000000b;
  static const VDS_ASYNCOUT_CREATELUN = 0x00000032;
  static const VDS_ASYNCOUT_ADDLUNPLEX = 0x00000034;
  static const VDS_ASYNCOUT_REMOVELUNPLEX = 0x00000035;
  static const VDS_ASYNCOUT_EXTENDLUN = 0x00000036;
  static const VDS_ASYNCOUT_SHRINKLUN = 0x00000037;
  static const VDS_ASYNCOUT_RECOVERLUN = 0x00000038;
  static const VDS_ASYNCOUT_LOGINTOTARGET = 0x0000003c;
  static const VDS_ASYNCOUT_LOGOUTFROMTARGET = 0x0000003d;
  static const VDS_ASYNCOUT_CREATETARGET = 0x0000003e;
  static const VDS_ASYNCOUT_CREATEPORTALGROUP = 0x0000003f;
  static const VDS_ASYNCOUT_DELETETARGET = 0x00000040;
  static const VDS_ASYNCOUT_ADDPORTAL = 0x00000041;
  static const VDS_ASYNCOUT_REMOVEPORTAL = 0x00000042;
  static const VDS_ASYNCOUT_DELETEPORTALGROUP = 0x00000043;
  static const VDS_ASYNCOUT_FORMAT = 0x00000065;
  static const VDS_ASYNCOUT_CREATE_VDISK = 0x000000c8;
  static const VDS_ASYNCOUT_ATTACH_VDISK = 0x000000c9;
  static const VDS_ASYNCOUT_COMPACT_VDISK = 0x000000ca;
  static const VDS_ASYNCOUT_MERGE_VDISK = 0x000000cb;
  static const VDS_ASYNCOUT_EXPAND_VDISK = 0x000000cc;
}

/// {@category Enum}
class VDS_CONTROLLER_STATUS {
  static const VDS_CS_UNKNOWN = 0x00000000;
  static const VDS_CS_ONLINE = 0x00000001;
  static const VDS_CS_NOT_READY = 0x00000002;
  static const VDS_CS_OFFLINE = 0x00000004;
  static const VDS_CS_FAILED = 0x00000005;
  static const VDS_CS_REMOVED = 0x00000008;
}

/// {@category Enum}
class VDS_DRIVE_FLAG {
  static const VDS_DRF_HOTSPARE = 0x00000001;
  static const VDS_DRF_ASSIGNED = 0x00000002;
  static const VDS_DRF_UNASSIGNED = 0x00000004;
  static const VDS_DRF_HOTSPARE_IN_USE = 0x00000008;
  static const VDS_DRF_HOTSPARE_STANDBY = 0x00000010;
}

/// {@category Enum}
class VDS_DRIVE_STATUS {
  static const VDS_DRS_UNKNOWN = 0x00000000;
  static const VDS_DRS_ONLINE = 0x00000001;
  static const VDS_DRS_NOT_READY = 0x00000002;
  static const VDS_DRS_OFFLINE = 0x00000004;
  static const VDS_DRS_FAILED = 0x00000005;
  static const VDS_DRS_REMOVED = 0x00000008;
}

/// {@category Enum}
class VDS_FILE_SYSTEM_TYPE {
  static const VDS_FST_UNKNOWN = 0x00000000;
  static const VDS_FST_RAW = 0x00000001;
  static const VDS_FST_FAT = 0x00000002;
  static const VDS_FST_FAT32 = 0x00000003;
  static const VDS_FST_NTFS = 0x00000004;
  static const VDS_FST_CDFS = 0x00000005;
  static const VDS_FST_UDF = 0x00000006;
  static const VDS_FST_EXFAT = 0x00000007;
  static const VDS_FST_CSVFS = 0x00000008;
  static const VDS_FST_REFS = 0x00000009;
}

/// {@category Enum}
class VDS_HBAPORT_SPEED_FLAG {
  static const VDS_HSF_UNKNOWN = 0x00000000;
  static const VDS_HSF_1GBIT = 0x00000001;
  static const VDS_HSF_2GBIT = 0x00000002;
  static const VDS_HSF_10GBIT = 0x00000004;
  static const VDS_HSF_4GBIT = 0x00000008;
  static const VDS_HSF_NOT_NEGOTIATED = 0x00008000;
}

/// {@category Enum}
class VDS_HBAPORT_STATUS {
  static const VDS_HPS_UNKNOWN = 0x00000001;
  static const VDS_HPS_ONLINE = 0x00000002;
  static const VDS_HPS_OFFLINE = 0x00000003;
  static const VDS_HPS_BYPASSED = 0x00000004;
  static const VDS_HPS_DIAGNOSTICS = 0x00000005;
  static const VDS_HPS_LINKDOWN = 0x00000006;
  static const VDS_HPS_ERROR = 0x00000007;
  static const VDS_HPS_LOOPBACK = 0x00000008;
}

/// {@category Enum}
class VDS_HBAPORT_TYPE {
  static const VDS_HPT_UNKNOWN = 0x00000001;
  static const VDS_HPT_OTHER = 0x00000002;
  static const VDS_HPT_NOTPRESENT = 0x00000003;
  static const VDS_HPT_NPORT = 0x00000005;
  static const VDS_HPT_NLPORT = 0x00000006;
  static const VDS_HPT_FLPORT = 0x00000007;
  static const VDS_HPT_FPORT = 0x00000008;
  static const VDS_HPT_EPORT = 0x00000009;
  static const VDS_HPT_GPORT = 0x0000000a;
  static const VDS_HPT_LPORT = 0x00000014;
  static const VDS_HPT_PTP = 0x00000015;
}

/// {@category Enum}
class VDS_HEALTH {
  static const VDS_H_UNKNOWN = 0x00000000;
  static const VDS_H_HEALTHY = 0x00000001;
  static const VDS_H_REBUILDING = 0x00000002;
  static const VDS_H_STALE = 0x00000003;
  static const VDS_H_FAILING = 0x00000004;
  static const VDS_H_FAILING_REDUNDANCY = 0x00000005;
  static const VDS_H_FAILED_REDUNDANCY = 0x00000006;
  static const VDS_H_FAILED_REDUNDANCY_FAILING = 0x00000007;
  static const VDS_H_FAILED = 0x00000008;
  static const VDS_H_REPLACED = 0x00000009;
  static const VDS_H_PENDING_FAILURE = 0x0000000a;
  static const VDS_H_DEGRADED = 0x0000000b;
}

/// {@category Enum}
class VDS_HWPROVIDER_TYPE {
  static const VDS_HWT_UNKNOWN = 0x00000000;
  static const VDS_HWT_PCI_RAID = 0x00000001;
  static const VDS_HWT_FIBRE_CHANNEL = 0x00000002;
  static const VDS_HWT_ISCSI = 0x00000003;
  static const VDS_HWT_SAS = 0x00000004;
  static const VDS_HWT_HYBRID = 0x00000005;
}

/// {@category Enum}
class VDS_INTERCONNECT_ADDRESS_TYPE {
  static const VDS_IA_UNKNOWN = 0x00000000;
  static const VDS_IA_FCFS = 0x00000001;
  static const VDS_IA_FCPH = 0x00000002;
  static const VDS_IA_FCPH3 = 0x00000003;
  static const VDS_IA_MAC = 0x00000004;
  static const VDS_IA_SCSI = 0x00000005;
}

/// {@category Enum}
class VDS_INTERCONNECT_FLAG {
  static const VDS_ITF_PCI_RAID = 0x00000001;
  static const VDS_ITF_FIBRE_CHANNEL = 0x00000002;
  static const VDS_ITF_ISCSI = 0x00000004;
  static const VDS_ITF_SAS = 0x00000008;
}

/// {@category Enum}
class VDS_IPADDRESS_TYPE {
  static const VDS_IPT_TEXT = 0x00000000;
  static const VDS_IPT_IPV4 = 0x00000001;
  static const VDS_IPT_IPV6 = 0x00000002;
  static const VDS_IPT_EMPTY = 0x00000003;
}

/// {@category Enum}
class VDS_ISCSI_AUTH_TYPE {
  static const VDS_IAT_NONE = 0x00000000;
  static const VDS_IAT_CHAP = 0x00000001;
  static const VDS_IAT_MUTUAL_CHAP = 0x00000002;
}

/// {@category Enum}
class VDS_ISCSI_IPSEC_FLAG {
  static const VDS_IIF_VALID = 0x00000001;
  static const VDS_IIF_IKE = 0x00000002;
  static const VDS_IIF_MAIN_MODE = 0x00000004;
  static const VDS_IIF_AGGRESSIVE_MODE = 0x00000008;
  static const VDS_IIF_PFS_ENABLE = 0x00000010;
  static const VDS_IIF_TRANSPORT_MODE_PREFERRED = 0x00000020;
  static const VDS_IIF_TUNNEL_MODE_PREFERRED = 0x00000040;
}

/// {@category Enum}
class VDS_ISCSI_LOGIN_FLAG {
  static const VDS_ILF_REQUIRE_IPSEC = 0x00000001;
  static const VDS_ILF_MULTIPATH_ENABLED = 0x00000002;
}

/// {@category Enum}
class VDS_ISCSI_LOGIN_TYPE {
  static const VDS_ILT_MANUAL = 0x00000000;
  static const VDS_ILT_PERSISTENT = 0x00000001;
  static const VDS_ILT_BOOT = 0x00000002;
}

/// {@category Enum}
class VDS_ISCSI_PORTAL_STATUS {
  static const VDS_IPS_UNKNOWN = 0x00000000;
  static const VDS_IPS_ONLINE = 0x00000001;
  static const VDS_IPS_NOT_READY = 0x00000002;
  static const VDS_IPS_OFFLINE = 0x00000004;
  static const VDS_IPS_FAILED = 0x00000005;
}

/// {@category Enum}
class VDS_LOADBALANCE_POLICY_ENUM {
  static const VDS_LBP_UNKNOWN = 0x00000000;
  static const VDS_LBP_FAILOVER = 0x00000001;
  static const VDS_LBP_ROUND_ROBIN = 0x00000002;
  static const VDS_LBP_ROUND_ROBIN_WITH_SUBSET = 0x00000003;
  static const VDS_LBP_DYN_LEAST_QUEUE_DEPTH = 0x00000004;
  static const VDS_LBP_WEIGHTED_PATHS = 0x00000005;
  static const VDS_LBP_LEAST_BLOCKS = 0x00000006;
  static const VDS_LBP_VENDOR_SPECIFIC = 0x00000007;
}

/// {@category Enum}
class VDS_LUN_FLAG {
  static const VDS_LF_LBN_REMAP_ENABLED = 0x00000001;
  static const VDS_LF_READ_BACK_VERIFY_ENABLED = 0x00000002;
  static const VDS_LF_WRITE_THROUGH_CACHING_ENABLED = 0x00000004;
  static const VDS_LF_HARDWARE_CHECKSUM_ENABLED = 0x00000008;
  static const VDS_LF_READ_CACHE_ENABLED = 0x00000010;
  static const VDS_LF_WRITE_CACHE_ENABLED = 0x00000020;
  static const VDS_LF_MEDIA_SCAN_ENABLED = 0x00000040;
  static const VDS_LF_CONSISTENCY_CHECK_ENABLED = 0x00000080;
  static const VDS_LF_SNAPSHOT = 0x00000100;
}

/// {@category Enum}
class VDS_LUN_PLEX_FLAG {
  static const VDS_LPF_LBN_REMAP_ENABLED = 0x00000001;
}

/// {@category Enum}
class VDS_LUN_PLEX_STATUS {
  static const VDS_LPS_UNKNOWN = 0x00000000;
  static const VDS_LPS_ONLINE = 0x00000001;
  static const VDS_LPS_NOT_READY = 0x00000002;
  static const VDS_LPS_OFFLINE = 0x00000004;
  static const VDS_LPS_FAILED = 0x00000005;
}

/// {@category Enum}
class VDS_LUN_PLEX_TYPE {
  static const VDS_LPT_UNKNOWN = 0x00000000;
  static const VDS_LPT_SIMPLE = 0x0000000a;
  static const VDS_LPT_SPAN = 0x0000000b;
  static const VDS_LPT_STRIPE = 0x0000000c;
  static const VDS_LPT_PARITY = 0x0000000e;
  static const VDS_LPT_RAID2 = 0x0000000f;
  static const VDS_LPT_RAID3 = 0x00000010;
  static const VDS_LPT_RAID4 = 0x00000011;
  static const VDS_LPT_RAID5 = 0x00000012;
  static const VDS_LPT_RAID6 = 0x00000013;
  static const VDS_LPT_RAID03 = 0x00000015;
  static const VDS_LPT_RAID05 = 0x00000016;
  static const VDS_LPT_RAID10 = 0x00000017;
  static const VDS_LPT_RAID15 = 0x00000018;
  static const VDS_LPT_RAID30 = 0x00000019;
  static const VDS_LPT_RAID50 = 0x0000001a;
  static const VDS_LPT_RAID53 = 0x0000001c;
  static const VDS_LPT_RAID60 = 0x0000001d;
}

/// {@category Enum}
class VDS_LUN_STATUS {
  static const VDS_LS_UNKNOWN = 0x00000000;
  static const VDS_LS_ONLINE = 0x00000001;
  static const VDS_LS_NOT_READY = 0x00000002;
  static const VDS_LS_OFFLINE = 0x00000004;
  static const VDS_LS_FAILED = 0x00000005;
}

/// {@category Enum}
class VDS_LUN_TYPE {
  static const VDS_LT_UNKNOWN = 0x00000000;
  static const VDS_LT_DEFAULT = 0x00000001;
  static const VDS_LT_FAULT_TOLERANT = 0x00000002;
  static const VDS_LT_NON_FAULT_TOLERANT = 0x00000003;
  static const VDS_LT_SIMPLE = 0x0000000a;
  static const VDS_LT_SPAN = 0x0000000b;
  static const VDS_LT_STRIPE = 0x0000000c;
  static const VDS_LT_MIRROR = 0x0000000d;
  static const VDS_LT_PARITY = 0x0000000e;
  static const VDS_LT_RAID2 = 0x0000000f;
  static const VDS_LT_RAID3 = 0x00000010;
  static const VDS_LT_RAID4 = 0x00000011;
  static const VDS_LT_RAID5 = 0x00000012;
  static const VDS_LT_RAID6 = 0x00000013;
  static const VDS_LT_RAID01 = 0x00000014;
  static const VDS_LT_RAID03 = 0x00000015;
  static const VDS_LT_RAID05 = 0x00000016;
  static const VDS_LT_RAID10 = 0x00000017;
  static const VDS_LT_RAID15 = 0x00000018;
  static const VDS_LT_RAID30 = 0x00000019;
  static const VDS_LT_RAID50 = 0x0000001a;
  static const VDS_LT_RAID51 = 0x0000001b;
  static const VDS_LT_RAID53 = 0x0000001c;
  static const VDS_LT_RAID60 = 0x0000001d;
  static const VDS_LT_RAID61 = 0x0000001e;
}

/// {@category Enum}
class VDS_MAINTENANCE_OPERATION {
  static const BlinkLight = 0x00000001;
  static const BeepAlarm = 0x00000002;
  static const SpinDown = 0x00000003;
  static const SpinUp = 0x00000004;
  static const Ping = 0x00000005;
}

/// {@category Enum}
class VDS_NF_CONTROLLER {
  static const VDS_NF_CONTROLLER_ARRIVE = 0x00000067;
  static const VDS_NF_CONTROLLER_DEPART = 0x00000068;
  static const VDS_NF_CONTROLLER_MODIFY = 0x0000015e;
  static const VDS_NF_CONTROLLER_REMOVED = 0x0000015f;
}

/// {@category Enum}
class VDS_NF_DISK {
  static const VDS_NF_DISK_ARRIVE = 0x00000008;
  static const VDS_NF_DISK_DEPART = 0x00000009;
  static const VDS_NF_DISK_MODIFY = 0x0000000a;
}

/// {@category Enum}
class VDS_NF_DRIVE {
  static const VDS_NF_DRIVE_ARRIVE = 0x00000069;
  static const VDS_NF_DRIVE_DEPART = 0x0000006a;
  static const VDS_NF_DRIVE_MODIFY = 0x0000006b;
  static const VDS_NF_DRIVE_REMOVED = 0x00000162;
}

/// {@category Enum}
class VDS_NF_FILE_SYSTEM {
  static const VDS_NF_FILE_SYSTEM_MODIFY = 0x000000cb;
  static const VDS_NF_FILE_SYSTEM_FORMAT_PROGRESS = 0x000000cc;
}

/// {@category Enum}
class VDS_NF_LUN {
  static const VDS_NF_LUN_ARRIVE = 0x0000006c;
  static const VDS_NF_LUN_DEPART = 0x0000006d;
  static const VDS_NF_LUN_MODIFY = 0x0000006e;
}

/// {@category Enum}
class VDS_NF_PACK {
  static const VDS_NF_PACK_ARRIVE = 0x00000001;
  static const VDS_NF_PACK_DEPART = 0x00000002;
  static const VDS_NF_PACK_MODIFY = 0x00000003;
}

/// {@category Enum}
class VDS_NF_PORT {
  static const VDS_NF_PORT_ARRIVE = 0x00000079;
  static const VDS_NF_PORT_DEPART = 0x0000007a;
  static const VDS_NF_PORT_MODIFY = 0x00000160;
  static const VDS_NF_PORT_REMOVED = 0x00000161;
}

/// {@category Enum}
class VDS_NOTIFICATION_TARGET_TYPE {
  static const VDS_NTT_UNKNOWN = 0x00000000;
  static const VDS_NTT_PACK = 0x0000000a;
  static const VDS_NTT_VOLUME = 0x0000000b;
  static const VDS_NTT_DISK = 0x0000000d;
  static const VDS_NTT_PARTITION = 0x0000003c;
  static const VDS_NTT_DRIVE_LETTER = 0x0000003d;
  static const VDS_NTT_FILE_SYSTEM = 0x0000003e;
  static const VDS_NTT_MOUNT_POINT = 0x0000003f;
  static const VDS_NTT_SUB_SYSTEM = 0x0000001e;
  static const VDS_NTT_CONTROLLER = 0x0000001f;
  static const VDS_NTT_DRIVE = 0x00000020;
  static const VDS_NTT_LUN = 0x00000021;
  static const VDS_NTT_PORT = 0x00000023;
  static const VDS_NTT_PORTAL = 0x00000024;
  static const VDS_NTT_TARGET = 0x00000025;
  static const VDS_NTT_PORTAL_GROUP = 0x00000026;
  static const VDS_NTT_SERVICE = 0x000000c8;
}

/// {@category Enum}
class VDS_OBJECT_TYPE {
  static const VDS_OT_UNKNOWN = 0x00000000;
  static const VDS_OT_PROVIDER = 0x00000001;
  static const VDS_OT_PACK = 0x0000000a;
  static const VDS_OT_VOLUME = 0x0000000b;
  static const VDS_OT_VOLUME_PLEX = 0x0000000c;
  static const VDS_OT_DISK = 0x0000000d;
  static const VDS_OT_SUB_SYSTEM = 0x0000001e;
  static const VDS_OT_CONTROLLER = 0x0000001f;
  static const VDS_OT_DRIVE = 0x00000020;
  static const VDS_OT_LUN = 0x00000021;
  static const VDS_OT_LUN_PLEX = 0x00000022;
  static const VDS_OT_PORT = 0x00000023;
  static const VDS_OT_PORTAL = 0x00000024;
  static const VDS_OT_TARGET = 0x00000025;
  static const VDS_OT_PORTAL_GROUP = 0x00000026;
  static const VDS_OT_STORAGE_POOL = 0x00000027;
  static const VDS_OT_HBAPORT = 0x0000005a;
  static const VDS_OT_INIT_ADAPTER = 0x0000005b;
  static const VDS_OT_INIT_PORTAL = 0x0000005c;
  static const VDS_OT_ASYNC = 0x00000064;
  static const VDS_OT_ENUM = 0x00000065;
  static const VDS_OT_VDISK = 0x000000c8;
  static const VDS_OT_OPEN_VDISK = 0x000000c9;
}

/// {@category Enum}
class VDS_PATH_STATUS {
  static const VDS_MPS_UNKNOWN = 0x00000000;
  static const VDS_MPS_ONLINE = 0x00000001;
  static const VDS_MPS_FAILED = 0x00000005;
  static const VDS_MPS_STANDBY = 0x00000007;
}

/// {@category Enum}
class VDS_PORT_STATUS {
  static const VDS_PRS_UNKNOWN = 0x00000000;
  static const VDS_PRS_ONLINE = 0x00000001;
  static const VDS_PRS_NOT_READY = 0x00000002;
  static const VDS_PRS_OFFLINE = 0x00000004;
  static const VDS_PRS_FAILED = 0x00000005;
  static const VDS_PRS_REMOVED = 0x00000008;
}

/// {@category Enum}
class VDS_PROVIDER_FLAG {
  static const VDS_PF_DYNAMIC = 0x00000001;
  static const VDS_PF_INTERNAL_HARDWARE_PROVIDER = 0x00000002;
  static const VDS_PF_ONE_DISK_ONLY_PER_PACK = 0x00000004;
  static const VDS_PF_ONE_PACK_ONLINE_ONLY = 0x00000008;
  static const VDS_PF_VOLUME_SPACE_MUST_BE_CONTIGUOUS = 0x00000010;
  static const VDS_PF_SUPPORT_DYNAMIC = 0x80000000;
  static const VDS_PF_SUPPORT_FAULT_TOLERANT = 0x40000000;
  static const VDS_PF_SUPPORT_DYNAMIC_1394 = 0x20000000;
  static const VDS_PF_SUPPORT_MIRROR = 0x00000020;
  static const VDS_PF_SUPPORT_RAID5 = 0x00000040;
}

/// {@category Enum}
class VDS_PROVIDER_LBSUPPORT_FLAG {
  static const VDS_LBF_FAILOVER = 0x00000001;
  static const VDS_LBF_ROUND_ROBIN = 0x00000002;
  static const VDS_LBF_ROUND_ROBIN_WITH_SUBSET = 0x00000004;
  static const VDS_LBF_DYN_LEAST_QUEUE_DEPTH = 0x00000008;
  static const VDS_LBF_WEIGHTED_PATHS = 0x00000010;
  static const VDS_LBF_LEAST_BLOCKS = 0x00000020;
  static const VDS_LBF_VENDOR_SPECIFIC = 0x00000040;
}

/// {@category Enum}
class VDS_PROVIDER_TYPE {
  static const VDS_PT_UNKNOWN = 0x00000000;
  static const VDS_PT_SOFTWARE = 0x00000001;
  static const VDS_PT_HARDWARE = 0x00000002;
  static const VDS_PT_VIRTUALDISK = 0x00000003;
  static const VDS_PT_MAX = 0x00000004;
}

/// {@category Enum}
class VDS_RAID_TYPE {
  static const VDS_RT_UNKNOWN = 0x00000000;
  static const VDS_RT_RAID0 = 0x0000000a;
  static const VDS_RT_RAID1 = 0x0000000b;
  static const VDS_RT_RAID2 = 0x0000000c;
  static const VDS_RT_RAID3 = 0x0000000d;
  static const VDS_RT_RAID4 = 0x0000000e;
  static const VDS_RT_RAID5 = 0x0000000f;
  static const VDS_RT_RAID6 = 0x00000010;
  static const VDS_RT_RAID01 = 0x00000011;
  static const VDS_RT_RAID03 = 0x00000012;
  static const VDS_RT_RAID05 = 0x00000013;
  static const VDS_RT_RAID10 = 0x00000014;
  static const VDS_RT_RAID15 = 0x00000015;
  static const VDS_RT_RAID30 = 0x00000016;
  static const VDS_RT_RAID50 = 0x00000017;
  static const VDS_RT_RAID51 = 0x00000018;
  static const VDS_RT_RAID53 = 0x00000019;
  static const VDS_RT_RAID60 = 0x0000001a;
  static const VDS_RT_RAID61 = 0x0000001b;
}

/// {@category Enum}
class VDS_RECOVER_ACTION {
  static const VDS_RA_UNKNOWN = 0x00000000;
  static const VDS_RA_REFRESH = 0x00000001;
  static const VDS_RA_RESTART = 0x00000002;
}

/// {@category Enum}
class VDS_STORAGE_BUS_TYPE {
  static const VDSBusTypeUnknown = 0x00000000;
  static const VDSBusTypeScsi = 0x00000001;
  static const VDSBusTypeAtapi = 0x00000002;
  static const VDSBusTypeAta = 0x00000003;
  static const VDSBusType1394 = 0x00000004;
  static const VDSBusTypeSsa = 0x00000005;
  static const VDSBusTypeFibre = 0x00000006;
  static const VDSBusTypeUsb = 0x00000007;
  static const VDSBusTypeRAID = 0x00000008;
  static const VDSBusTypeiScsi = 0x00000009;
  static const VDSBusTypeSas = 0x0000000a;
  static const VDSBusTypeSata = 0x0000000b;
  static const VDSBusTypeSd = 0x0000000c;
  static const VDSBusTypeMmc = 0x0000000d;
  static const VDSBusTypeMax = 0x0000000e;
  static const VDSBusTypeVirtual = 0x0000000e;
  static const VDSBusTypeFileBackedVirtual = 0x0000000f;
  static const VDSBusTypeSpaces = 0x00000010;
  static const VDSBusTypeNVMe = 0x00000011;
  static const VDSBusTypeScm = 0x00000012;
  static const VDSBusTypeUfs = 0x00000013;
  static const VDSBusTypeMaxReserved = 0x0000007f;
}

/// {@category Enum}
class VDS_STORAGE_IDENTIFIER_CODE_SET {
  static const VDSStorageIdCodeSetReserved = 0x00000000;
  static const VDSStorageIdCodeSetBinary = 0x00000001;
  static const VDSStorageIdCodeSetAscii = 0x00000002;
  static const VDSStorageIdCodeSetUtf8 = 0x00000003;
}

/// {@category Enum}
class VDS_STORAGE_IDENTIFIER_TYPE {
  static const VDSStorageIdTypeVendorSpecific = 0x00000000;
  static const VDSStorageIdTypeVendorId = 0x00000001;
  static const VDSStorageIdTypeEUI64 = 0x00000002;
  static const VDSStorageIdTypeFCPHName = 0x00000003;
  static const VDSStorageIdTypePortRelative = 0x00000004;
  static const VDSStorageIdTypeTargetPortGroup = 0x00000005;
  static const VDSStorageIdTypeLogicalUnitGroup = 0x00000006;
  static const VDSStorageIdTypeMD5LogicalUnitIdentifier = 0x00000007;
  static const VDSStorageIdTypeScsiNameString = 0x00000008;
}

/// {@category Enum}
class VDS_STORAGE_POOL_STATUS {
  static const VDS_SPS_UNKNOWN = 0x00000000;
  static const VDS_SPS_ONLINE = 0x00000001;
  static const VDS_SPS_NOT_READY = 0x00000002;
  static const VDS_SPS_OFFLINE = 0x00000004;
}

/// {@category Enum}
class VDS_STORAGE_POOL_TYPE {
  static const VDS_SPT_UNKNOWN = 0x00000000;
  static const VDS_SPT_PRIMORDIAL = 0x00000001;
  static const VDS_SPT_CONCRETE = 0x00000002;
}

/// {@category Enum}
class VDS_SUB_SYSTEM_FLAG {
  static const VDS_SF_LUN_MASKING_CAPABLE = 0x00000001;
  static const VDS_SF_LUN_PLEXING_CAPABLE = 0x00000002;
  static const VDS_SF_LUN_REMAPPING_CAPABLE = 0x00000004;
  static const VDS_SF_DRIVE_EXTENT_CAPABLE = 0x00000008;
  static const VDS_SF_HARDWARE_CHECKSUM_CAPABLE = 0x00000010;
  static const VDS_SF_RADIUS_CAPABLE = 0x00000020;
  static const VDS_SF_READ_BACK_VERIFY_CAPABLE = 0x00000040;
  static const VDS_SF_WRITE_THROUGH_CACHING_CAPABLE = 0x00000080;
  static const VDS_SF_SUPPORTS_FAULT_TOLERANT_LUNS = 0x00000200;
  static const VDS_SF_SUPPORTS_NON_FAULT_TOLERANT_LUNS = 0x00000400;
  static const VDS_SF_SUPPORTS_SIMPLE_LUNS = 0x00000800;
  static const VDS_SF_SUPPORTS_SPAN_LUNS = 0x00001000;
  static const VDS_SF_SUPPORTS_STRIPE_LUNS = 0x00002000;
  static const VDS_SF_SUPPORTS_MIRROR_LUNS = 0x00004000;
  static const VDS_SF_SUPPORTS_PARITY_LUNS = 0x00008000;
  static const VDS_SF_SUPPORTS_AUTH_CHAP = 0x00010000;
  static const VDS_SF_SUPPORTS_AUTH_MUTUAL_CHAP = 0x00020000;
  static const VDS_SF_SUPPORTS_SIMPLE_TARGET_CONFIG = 0x00040000;
  static const VDS_SF_SUPPORTS_LUN_NUMBER = 0x00080000;
  static const VDS_SF_SUPPORTS_MIRRORED_CACHE = 0x00100000;
  static const VDS_SF_READ_CACHING_CAPABLE = 0x00200000;
  static const VDS_SF_WRITE_CACHING_CAPABLE = 0x00400000;
  static const VDS_SF_MEDIA_SCAN_CAPABLE = 0x00800000;
  static const VDS_SF_CONSISTENCY_CHECK_CAPABLE = 0x01000000;
}

/// {@category Enum}
class VDS_SUB_SYSTEM_STATUS {
  static const VDS_SSS_UNKNOWN = 0x00000000;
  static const VDS_SSS_ONLINE = 0x00000001;
  static const VDS_SSS_NOT_READY = 0x00000002;
  static const VDS_SSS_OFFLINE = 0x00000004;
  static const VDS_SSS_FAILED = 0x00000005;
  static const VDS_SSS_PARTIALLY_MANAGED = 0x00000009;
}

/// {@category Enum}
class VDS_SUB_SYSTEM_SUPPORTED_RAID_TYPE_FLAG {
  static const VDS_SF_SUPPORTS_RAID2_LUNS = 0x00000001;
  static const VDS_SF_SUPPORTS_RAID3_LUNS = 0x00000002;
  static const VDS_SF_SUPPORTS_RAID4_LUNS = 0x00000004;
  static const VDS_SF_SUPPORTS_RAID5_LUNS = 0x00000008;
  static const VDS_SF_SUPPORTS_RAID6_LUNS = 0x00000010;
  static const VDS_SF_SUPPORTS_RAID01_LUNS = 0x00000020;
  static const VDS_SF_SUPPORTS_RAID03_LUNS = 0x00000040;
  static const VDS_SF_SUPPORTS_RAID05_LUNS = 0x00000080;
  static const VDS_SF_SUPPORTS_RAID10_LUNS = 0x00000100;
  static const VDS_SF_SUPPORTS_RAID15_LUNS = 0x00000200;
  static const VDS_SF_SUPPORTS_RAID30_LUNS = 0x00000400;
  static const VDS_SF_SUPPORTS_RAID50_LUNS = 0x00000800;
  static const VDS_SF_SUPPORTS_RAID51_LUNS = 0x00001000;
  static const VDS_SF_SUPPORTS_RAID53_LUNS = 0x00002000;
  static const VDS_SF_SUPPORTS_RAID60_LUNS = 0x00004000;
  static const VDS_SF_SUPPORTS_RAID61_LUNS = 0x00008000;
}

/// {@category Enum}
class VDS_TRANSITION_STATE {
  static const VDS_TS_UNKNOWN = 0x00000000;
  static const VDS_TS_STABLE = 0x00000001;
  static const VDS_TS_EXTENDING = 0x00000002;
  static const VDS_TS_SHRINKING = 0x00000003;
  static const VDS_TS_RECONFIGING = 0x00000004;
  static const VDS_TS_RESTRIPING = 0x00000005;
}

/// {@category Enum}
class VDS_VERSION_SUPPORT_FLAG {
  static const VDS_VSF_1_0 = 0x00000001;
  static const VDS_VSF_1_1 = 0x00000002;
  static const VDS_VSF_2_0 = 0x00000004;
  static const VDS_VSF_2_1 = 0x00000008;
  static const VDS_VSF_3_0 = 0x00000010;
}
