/// {@category Enum}
class WNV_CA_NOTIFICATION_TYPE {
  static const WnvCustomerAddressAdded = 0x00000000;
  static const WnvCustomerAddressDeleted = 0x00000001;
  static const WnvCustomerAddressMoved = 0x00000002;
  static const WnvCustomerAddressMax = 0x00000003;
}

/// {@category Enum}
class WNV_NOTIFICATION_TYPE {
  static const WnvPolicyMismatchType = 0x00000000;
  static const WnvRedirectType = 0x00000001;
  static const WnvObjectChangeType = 0x00000002;
  static const WnvNotificationTypeMax = 0x00000003;
}

/// {@category Enum}
class WNV_OBJECT_TYPE {
  static const WnvProviderAddressType = 0x00000000;
  static const WnvCustomerAddressType = 0x00000001;
  static const WnvObjectTypeMax = 0x00000002;
}
