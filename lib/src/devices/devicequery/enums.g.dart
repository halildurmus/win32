/// {@category Enum}
class DEVPROP_OPERATOR {
  static const DEVPROP_OPERATOR_MODIFIER_NOT = 0x00010000;
  static const DEVPROP_OPERATOR_MODIFIER_IGNORE_CASE = 0x00020000;
  static const DEVPROP_OPERATOR_NONE = 0x00000000;
  static const DEVPROP_OPERATOR_EXISTS = 0x00000001;
  static const DEVPROP_OPERATOR_NOT_EXISTS = 0x00010001;
  static const DEVPROP_OPERATOR_EQUALS = 0x00000002;
  static const DEVPROP_OPERATOR_NOT_EQUALS = 0x00010002;
  static const DEVPROP_OPERATOR_GREATER_THAN = 0x00000003;
  static const DEVPROP_OPERATOR_LESS_THAN = 0x00000004;
  static const DEVPROP_OPERATOR_GREATER_THAN_EQUALS = 0x00000005;
  static const DEVPROP_OPERATOR_LESS_THAN_EQUALS = 0x00000006;
  static const DEVPROP_OPERATOR_EQUALS_IGNORE_CASE = 0x00020002;
  static const DEVPROP_OPERATOR_NOT_EQUALS_IGNORE_CASE = 0x00030002;
  static const DEVPROP_OPERATOR_BITWISE_AND = 0x00000007;
  static const DEVPROP_OPERATOR_BITWISE_OR = 0x00000008;
  static const DEVPROP_OPERATOR_BEGINS_WITH = 0x00000009;
  static const DEVPROP_OPERATOR_ENDS_WITH = 0x0000000a;
  static const DEVPROP_OPERATOR_CONTAINS = 0x0000000b;
  static const DEVPROP_OPERATOR_BEGINS_WITH_IGNORE_CASE = 0x00020009;
  static const DEVPROP_OPERATOR_ENDS_WITH_IGNORE_CASE = 0x0002000a;
  static const DEVPROP_OPERATOR_CONTAINS_IGNORE_CASE = 0x0002000b;
  static const DEVPROP_OPERATOR_LIST_CONTAINS = 0x00001000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_BEGINS_WITH = 0x00002000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_ENDS_WITH = 0x00003000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_CONTAINS = 0x00004000;
  static const DEVPROP_OPERATOR_LIST_CONTAINS_IGNORE_CASE = 0x00021000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_BEGINS_WITH_IGNORE_CASE =
      0x00022000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_ENDS_WITH_IGNORE_CASE = 0x00023000;
  static const DEVPROP_OPERATOR_LIST_ELEMENT_CONTAINS_IGNORE_CASE = 0x00024000;
  static const DEVPROP_OPERATOR_AND_OPEN = 0x00100000;
  static const DEVPROP_OPERATOR_AND_CLOSE = 0x00200000;
  static const DEVPROP_OPERATOR_OR_OPEN = 0x00300000;
  static const DEVPROP_OPERATOR_OR_CLOSE = 0x00400000;
  static const DEVPROP_OPERATOR_NOT_OPEN = 0x00500000;
  static const DEVPROP_OPERATOR_NOT_CLOSE = 0x00600000;
  static const DEVPROP_OPERATOR_ARRAY_CONTAINS = 0x10000000;
  static const DEVPROP_OPERATOR_MASK_EVAL = 0x00000fff;
  static const DEVPROP_OPERATOR_MASK_LIST = 0x0000f000;
  static const DEVPROP_OPERATOR_MASK_MODIFIER = 0x000f0000;
  static const DEVPROP_OPERATOR_MASK_NOT_LOGICAL = 0xf00fffff;
  static const DEVPROP_OPERATOR_MASK_LOGICAL = 0x0ff00000;
  static const DEVPROP_OPERATOR_MASK_ARRAY = 0xf0000000;
}

/// {@category Enum}
class DEV_OBJECT_TYPE {
  static const DevObjectTypeUnknown = 0x00000000;
  static const DevObjectTypeDeviceInterface = 0x00000001;
  static const DevObjectTypeDeviceContainer = 0x00000002;
  static const DevObjectTypeDevice = 0x00000003;
  static const DevObjectTypeDeviceInterfaceClass = 0x00000004;
  static const DevObjectTypeAEP = 0x00000005;
  static const DevObjectTypeAEPContainer = 0x00000006;
  static const DevObjectTypeDeviceInstallerClass = 0x00000007;
  static const DevObjectTypeDeviceInterfaceDisplay = 0x00000008;
  static const DevObjectTypeDeviceContainerDisplay = 0x00000009;
  static const DevObjectTypeAEPService = 0x0000000a;
  static const DevObjectTypeDevicePanel = 0x0000000b;
}

/// {@category Enum}
class DEV_QUERY_FLAGS {
  static const DevQueryFlagNone = 0x00000000;
  static const DevQueryFlagUpdateResults = 0x00000001;
  static const DevQueryFlagAllProperties = 0x00000002;
  static const DevQueryFlagLocalize = 0x00000004;
  static const DevQueryFlagAsyncClose = 0x00000008;
}

/// {@category Enum}
class DEV_QUERY_RESULT_ACTION {
  static const DevQueryResultStateChange = 0x00000000;
  static const DevQueryResultAdd = 0x00000001;
  static const DevQueryResultUpdate = 0x00000002;
  static const DevQueryResultRemove = 0x00000003;
}

/// {@category Enum}
class DEV_QUERY_STATE {
  static const DevQueryStateInitialized = 0x00000000;
  static const DevQueryStateEnumCompleted = 0x00000001;
  static const DevQueryStateAborted = 0x00000002;
  static const DevQueryStateClosed = 0x00000003;
}
