// Windows Runtime tokens that represent a base interop type outside of the
// Windows Runtime.
final systemTokens = <int, String>{
  // TODO: Is there a way to look these up rather than encode them here?
  0x01000000: 'IInspectable',
  0x01000001: 'System.Object',
  0x01000008: 'System.Enum',
  0x0100000e: 'System.Enum',
  0x0100001d: 'System.ValueType',
  0x010000af: 'System.Guid',
  0x01000180: 'System.MulticastDelegate',
};
