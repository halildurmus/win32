/// {@category Enum}
class CONDITION_OPERATION {
  static const COP_IMPLICIT = 0x00000000;
  static const COP_EQUAL = 0x00000001;
  static const COP_NOTEQUAL = 0x00000002;
  static const COP_LESSTHAN = 0x00000003;
  static const COP_GREATERTHAN = 0x00000004;
  static const COP_LESSTHANOREQUAL = 0x00000005;
  static const COP_GREATERTHANOREQUAL = 0x00000006;
  static const COP_VALUE_STARTSWITH = 0x00000007;
  static const COP_VALUE_ENDSWITH = 0x00000008;
  static const COP_VALUE_CONTAINS = 0x00000009;
  static const COP_VALUE_NOTCONTAINS = 0x0000000a;
  static const COP_DOSWILDCARDS = 0x0000000b;
  static const COP_WORD_EQUAL = 0x0000000c;
  static const COP_WORD_STARTSWITH = 0x0000000d;
  static const COP_APPLICATION_SPECIFIC = 0x0000000e;
}

/// {@category Enum}
class CONDITION_TYPE {
  static const CT_AND_CONDITION = 0x00000000;
  static const CT_OR_CONDITION = 0x00000001;
  static const CT_NOT_CONDITION = 0x00000002;
  static const CT_LEAF_CONDITION = 0x00000003;
}
