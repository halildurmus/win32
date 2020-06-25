import 'enums.dart';

class WindowsRuntimeType {
  final CorTypeToDartStringMapping = <int, String>{
    CorElementType.ELEMENT_TYPE_END: null,
    CorElementType.ELEMENT_TYPE_VOID: 'void',
    CorElementType.ELEMENT_TYPE_BOOLEAN: 'bool',
    CorElementType.ELEMENT_TYPE_CHAR: 'String',
    CorElementType.ELEMENT_TYPE_I1: 'int',
    CorElementType.ELEMENT_TYPE_U1: 'int',
    CorElementType.ELEMENT_TYPE_I2: 'int',
    CorElementType.ELEMENT_TYPE_U2: 'int',
    CorElementType.ELEMENT_TYPE_I4: 'int',
    CorElementType.ELEMENT_TYPE_U4: 'int',
    CorElementType.ELEMENT_TYPE_I8: 'int',
    CorElementType.ELEMENT_TYPE_U8: 'int',
    CorElementType.ELEMENT_TYPE_R4: 'float',
    CorElementType.ELEMENT_TYPE_R8: 'float',
    CorElementType.ELEMENT_TYPE_STRING: 'String',
    CorElementType.ELEMENT_TYPE_PTR: 'Pointer',
    CorElementType.ELEMENT_TYPE_BYREF: null,
    CorElementType.ELEMENT_TYPE_VALUETYPE: null,
    CorElementType.ELEMENT_TYPE_CLASS: null,
    CorElementType.ELEMENT_TYPE_VAR: null,
    CorElementType.ELEMENT_TYPE_ARRAY: null,
    CorElementType.ELEMENT_TYPE_GENERICINST: null,
    CorElementType.ELEMENT_TYPE_TYPEDBYREF: null,
    CorElementType.ELEMENT_TYPE_I: 'int',
    CorElementType.ELEMENT_TYPE_U: 'int',
    CorElementType.ELEMENT_TYPE_FNPTR: null,
    CorElementType.ELEMENT_TYPE_OBJECT: null,
    CorElementType.ELEMENT_TYPE_SZARRAY: null,
    CorElementType.ELEMENT_TYPE_MVAR: null,
    CorElementType.ELEMENT_TYPE_CMOD_REQD: null,
    CorElementType.ELEMENT_TYPE_CMOD_OPT: null,
    CorElementType.ELEMENT_TYPE_INTERNAL: null,
    CorElementType.ELEMENT_TYPE_MAX: null,
  };

  final CorTypeToNativeStringMapping = <int, String>{
    CorElementType.ELEMENT_TYPE_END: null,
    CorElementType.ELEMENT_TYPE_VOID: 'Void',
    CorElementType.ELEMENT_TYPE_BOOLEAN: 'Int32',
    CorElementType.ELEMENT_TYPE_CHAR: 'Uint8',
    CorElementType.ELEMENT_TYPE_I1: 'Int8',
    CorElementType.ELEMENT_TYPE_U1: 'Uint8',
    CorElementType.ELEMENT_TYPE_I2: 'Int16',
    CorElementType.ELEMENT_TYPE_U2: 'Uint16',
    CorElementType.ELEMENT_TYPE_I4: 'Int32',
    CorElementType.ELEMENT_TYPE_U4: 'Uint32',
    CorElementType.ELEMENT_TYPE_I8: 'Int64',
    CorElementType.ELEMENT_TYPE_U8: 'Uint64',
    CorElementType.ELEMENT_TYPE_R4: 'Float',
    CorElementType.ELEMENT_TYPE_R8: 'Float',
    CorElementType.ELEMENT_TYPE_STRING: 'String',
    CorElementType.ELEMENT_TYPE_PTR: 'Pointer',
    CorElementType.ELEMENT_TYPE_BYREF: null,
    CorElementType.ELEMENT_TYPE_VALUETYPE: null,
    CorElementType.ELEMENT_TYPE_CLASS: null,
    CorElementType.ELEMENT_TYPE_VAR: null,
    CorElementType.ELEMENT_TYPE_ARRAY: null,
    CorElementType.ELEMENT_TYPE_GENERICINST: null,
    CorElementType.ELEMENT_TYPE_TYPEDBYREF: null,
    CorElementType.ELEMENT_TYPE_I: 'IntPtr',
    CorElementType.ELEMENT_TYPE_U: 'IntPtr',
    CorElementType.ELEMENT_TYPE_FNPTR: null,
    CorElementType.ELEMENT_TYPE_OBJECT: null,
    CorElementType.ELEMENT_TYPE_SZARRAY: null,
    CorElementType.ELEMENT_TYPE_MVAR: null,
    CorElementType.ELEMENT_TYPE_CMOD_REQD: null,
    CorElementType.ELEMENT_TYPE_CMOD_OPT: null,
    CorElementType.ELEMENT_TYPE_INTERNAL: null,
    CorElementType.ELEMENT_TYPE_MAX: null,
  };

  int corType;

  WindowsRuntimeType(this.corType);

  String get toDartType => CorTypeToDartStringMapping[corType];

  String get toNativeType => CorTypeToNativeStringMapping[corType];
}
