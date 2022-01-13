/// {@category Enum}
class VERIFIER_ENUM_RESOURCE_FLAGS {
  static const AVRF_ENUM_RESOURCES_FLAGS_DONT_RESOLVE_TRACES = 0x00000002;
  static const AVRF_ENUM_RESOURCES_FLAGS_SUSPEND = 0x00000001;
}

/// {@category Enum}
class eAvrfResourceTypes {
  static const AvrfResourceHeapAllocation = 0x00000000;
  static const AvrfResourceHandleTrace = 0x00000001;
  static const AvrfResourceMax = 0x00000002;
}

/// {@category Enum}
class eHANDLE_TRACE_OPERATIONS {
  static const OperationDbUnused = 0x00000000;
  static const OperationDbOPEN = 0x00000001;
  static const OperationDbCLOSE = 0x00000002;
  static const OperationDbBADREF = 0x00000003;
}

/// {@category Enum}
class eHeapAllocationState {
  static const HeapFullPageHeap = 0x40000000;
  static const HeapMetadata = 0x80000000;
  static const HeapStateMask = 0xffff0000;
}

/// {@category Enum}
class eHeapEnumerationLevel {
  static const HeapEnumerationEverything = 0x00000000;
  static const HeapEnumerationStop = 0xffffffff;
}

/// {@category Enum}
class eUserAllocationState {
  static const AllocationStateUnknown = 0x00000000;
  static const AllocationStateBusy = 0x00000001;
  static const AllocationStateFree = 0x00000002;
}
