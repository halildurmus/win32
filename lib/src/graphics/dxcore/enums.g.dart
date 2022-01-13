/// {@category Enum}
class DXCoreAdapterPreference {
  static const Hardware = 0x00000000;
  static const MinimumPower = 0x00000001;
  static const HighPerformance = 0x00000002;
}

/// {@category Enum}
class DXCoreAdapterProperty {
  static const InstanceLuid = 0x00000000;
  static const DriverVersion = 0x00000001;
  static const DriverDescription = 0x00000002;
  static const HardwareID = 0x00000003;
  static const KmdModelVersion = 0x00000004;
  static const ComputePreemptionGranularity = 0x00000005;
  static const GraphicsPreemptionGranularity = 0x00000006;
  static const DedicatedAdapterMemory = 0x00000007;
  static const DedicatedSystemMemory = 0x00000008;
  static const SharedSystemMemory = 0x00000009;
  static const AcgCompatible = 0x0000000a;
  static const IsHardware = 0x0000000b;
  static const IsIntegrated = 0x0000000c;
  static const IsDetachable = 0x0000000d;
  static const HardwareIDParts = 0x0000000e;
}

/// {@category Enum}
class DXCoreAdapterState {
  static const IsDriverUpdateInProgress = 0x00000000;
  static const AdapterMemoryBudget = 0x00000001;
}

/// {@category Enum}
class DXCoreNotificationType {
  static const AdapterListStale = 0x00000000;
  static const AdapterNoLongerValid = 0x00000001;
  static const AdapterBudgetChange = 0x00000002;
  static const AdapterHardwareContentProtectionTeardown = 0x00000003;
}

/// {@category Enum}
class DXCoreSegmentGroup {
  static const Local = 0x00000000;
  static const NonLocal = 0x00000001;
}
