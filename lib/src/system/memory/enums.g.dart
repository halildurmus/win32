/// {@category Enum}
class FILE_MAP {
  static const FILE_MAP_WRITE = 0x00000002;
  static const FILE_MAP_READ = 0x00000004;
  static const FILE_MAP_ALL_ACCESS = 0x000f001f;
  static const FILE_MAP_EXECUTE = 0x00000020;
  static const FILE_MAP_COPY = 0x00000001;
  static const FILE_MAP_RESERVE = 0x80000000;
  static const FILE_MAP_TARGETS_INVALID = 0x40000000;
  static const FILE_MAP_LARGE_PAGES = 0x20000000;
}

/// {@category Enum}
class GLOBAL_ALLOC_FLAGS {
  static const GHND = 0x00000042;
  static const GMEM_FIXED = 0x00000000;
  static const GMEM_MOVEABLE = 0x00000002;
  static const GMEM_ZEROINIT = 0x00000040;
  static const GPTR = 0x00000040;
}

/// {@category Enum}
class HEAP_FLAGS {
  static const HEAP_NONE = 0x00000000;
  static const HEAP_NO_SERIALIZE = 0x00000001;
  static const HEAP_GROWABLE = 0x00000002;
  static const HEAP_GENERATE_EXCEPTIONS = 0x00000004;
  static const HEAP_ZERO_MEMORY = 0x00000008;
  static const HEAP_REALLOC_IN_PLACE_ONLY = 0x00000010;
  static const HEAP_TAIL_CHECKING_ENABLED = 0x00000020;
  static const HEAP_FREE_CHECKING_ENABLED = 0x00000040;
  static const HEAP_DISABLE_COALESCE_ON_FREE = 0x00000080;
  static const HEAP_CREATE_ALIGN_16 = 0x00010000;
  static const HEAP_CREATE_ENABLE_TRACING = 0x00020000;
  static const HEAP_CREATE_ENABLE_EXECUTE = 0x00040000;
  static const HEAP_MAXIMUM_TAG = 0x00000fff;
  static const HEAP_PSEUDO_TAG_FLAG = 0x00008000;
  static const HEAP_TAG_SHIFT = 0x00000012;
  static const HEAP_CREATE_SEGMENT_HEAP = 0x00000100;
  static const HEAP_CREATE_HARDENED = 0x00000200;
}

/// {@category Enum}
class HEAP_INFORMATION_CLASS {
  static const HeapCompatibilityInformation = 0x00000000;
  static const HeapEnableTerminationOnCorruption = 0x00000001;
  static const HeapOptimizeResources = 0x00000003;
  static const HeapTag = 0x00000007;
}

/// {@category Enum}
class LOCAL_ALLOC_FLAGS {
  static const LHND = 0x00000042;
  static const LMEM_FIXED = 0x00000000;
  static const LMEM_MOVEABLE = 0x00000002;
  static const LMEM_ZEROINIT = 0x00000040;
  static const LPTR = 0x00000040;
  static const NONZEROLHND = 0x00000002;
  static const NONZEROLPTR = 0x00000000;
}

/// {@category Enum}
class MEMORY_RESOURCE_NOTIFICATION_TYPE {
  static const LowMemoryResourceNotification = 0x00000000;
  static const HighMemoryResourceNotification = 0x00000001;
}

/// {@category Enum}
class MEM_EXTENDED_PARAMETER_TYPE {
  static const MemExtendedParameterInvalidType = 0x00000000;
  static const MemExtendedParameterAddressRequirements = 0x00000001;
  static const MemExtendedParameterNumaNode = 0x00000002;
  static const MemExtendedParameterPartitionHandle = 0x00000003;
  static const MemExtendedParameterUserPhysicalHandle = 0x00000004;
  static const MemExtendedParameterAttributeFlags = 0x00000005;
  static const MemExtendedParameterImageMachine = 0x00000006;
  static const MemExtendedParameterMax = 0x00000007;
}

/// {@category Enum}
class OFFER_PRIORITY {
  static const VmOfferPriorityVeryLow = 0x00000001;
  static const VmOfferPriorityLow = 0x00000002;
  static const VmOfferPriorityBelowNormal = 0x00000003;
  static const VmOfferPriorityNormal = 0x00000004;
}

/// {@category Enum}
class PAGE_PROTECTION_FLAGS {
  static const PAGE_NOACCESS = 0x00000001;
  static const PAGE_READONLY = 0x00000002;
  static const PAGE_READWRITE = 0x00000004;
  static const PAGE_WRITECOPY = 0x00000008;
  static const PAGE_EXECUTE = 0x00000010;
  static const PAGE_EXECUTE_READ = 0x00000020;
  static const PAGE_EXECUTE_READWRITE = 0x00000040;
  static const PAGE_EXECUTE_WRITECOPY = 0x00000080;
  static const PAGE_GUARD = 0x00000100;
  static const PAGE_NOCACHE = 0x00000200;
  static const PAGE_WRITECOMBINE = 0x00000400;
  static const PAGE_GRAPHICS_NOACCESS = 0x00000800;
  static const PAGE_GRAPHICS_READONLY = 0x00001000;
  static const PAGE_GRAPHICS_READWRITE = 0x00002000;
  static const PAGE_GRAPHICS_EXECUTE = 0x00004000;
  static const PAGE_GRAPHICS_EXECUTE_READ = 0x00008000;
  static const PAGE_GRAPHICS_EXECUTE_READWRITE = 0x00010000;
  static const PAGE_GRAPHICS_COHERENT = 0x00020000;
  static const PAGE_GRAPHICS_NOCACHE = 0x00040000;
  static const PAGE_ENCLAVE_THREAD_CONTROL = 0x80000000;
  static const PAGE_REVERT_TO_FILE_MAP = 0x80000000;
  static const PAGE_TARGETS_NO_UPDATE = 0x40000000;
  static const PAGE_TARGETS_INVALID = 0x40000000;
  static const PAGE_ENCLAVE_UNVALIDATED = 0x20000000;
  static const PAGE_ENCLAVE_MASK = 0x10000000;
  static const PAGE_ENCLAVE_DECOMMIT = 0x10000000;
  static const PAGE_ENCLAVE_SS_FIRST = 0x10000001;
  static const PAGE_ENCLAVE_SS_REST = 0x10000002;
  static const SEC_PARTITION_OWNER_HANDLE = 0x00040000;
  static const SEC_64K_PAGES = 0x00080000;
  static const SEC_FILE = 0x00800000;
  static const SEC_IMAGE = 0x01000000;
  static const SEC_PROTECTED_IMAGE = 0x02000000;
  static const SEC_RESERVE = 0x04000000;
  static const SEC_COMMIT = 0x08000000;
  static const SEC_NOCACHE = 0x10000000;
  static const SEC_WRITECOMBINE = 0x40000000;
  static const SEC_LARGE_PAGES = 0x80000000;
  static const SEC_IMAGE_NO_EXECUTE = 0x11000000;
}

/// {@category Enum}
class PAGE_TYPE {
  static const MEM_PRIVATE = 0x00020000;
  static const MEM_MAPPED = 0x00040000;
  static const MEM_IMAGE = 0x01000000;
}

/// {@category Enum}
class UNMAP_VIEW_OF_FILE_FLAGS {
  static const MEM_UNMAP_NONE = 0x00000000;
  static const MEM_UNMAP_WITH_TRANSIENT_BOOST = 0x00000001;
  static const MEM_PRESERVE_PLACEHOLDER = 0x00000002;
}

/// {@category Enum}
class VIRTUAL_ALLOCATION_TYPE {
  static const MEM_COMMIT = 0x00001000;
  static const MEM_RESERVE = 0x00002000;
  static const MEM_RESET = 0x00080000;
  static const MEM_RESET_UNDO = 0x01000000;
  static const MEM_REPLACE_PLACEHOLDER = 0x00004000;
  static const MEM_LARGE_PAGES = 0x20000000;
  static const MEM_RESERVE_PLACEHOLDER = 0x00040000;
  static const MEM_FREE = 0x00010000;
}

/// {@category Enum}
class VIRTUAL_FREE_TYPE {
  static const MEM_DECOMMIT = 0x00004000;
  static const MEM_RELEASE = 0x00008000;
}

/// {@category Enum}
class WIN32_MEMORY_INFORMATION_CLASS {
  static const MemoryRegionInfo = 0x00000000;
}

/// {@category Enum}
class WIN32_MEMORY_PARTITION_INFORMATION_CLASS {
  static const MemoryPartitionInfo = 0x00000000;
  static const MemoryPartitionDedicatedMemoryInfo = 0x00000001;
}
