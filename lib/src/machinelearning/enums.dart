/// {@category Enum}
class WINML_TENSOR_DATA_TYPE {
  static const WINML_TENSOR_UNDEFINED = 0x00000000;
  static const WINML_TENSOR_FLOAT = 0x00000001;
  static const WINML_TENSOR_UINT8 = 0x00000002;
  static const WINML_TENSOR_INT8 = 0x00000003;
  static const WINML_TENSOR_UINT16 = 0x00000004;
  static const WINML_TENSOR_INT16 = 0x00000005;
  static const WINML_TENSOR_INT32 = 0x00000006;
  static const WINML_TENSOR_INT64 = 0x00000007;
  static const WINML_TENSOR_STRING = 0x00000008;
  static const WINML_TENSOR_BOOLEAN = 0x00000009;
  static const WINML_TENSOR_FLOAT16 = 0x0000000a;
  static const WINML_TENSOR_DOUBLE = 0x0000000b;
  static const WINML_TENSOR_UINT32 = 0x0000000c;
  static const WINML_TENSOR_UINT64 = 0x0000000d;
  static const WINML_TENSOR_COMPLEX64 = 0x0000000e;
  static const WINML_TENSOR_COMPLEX128 = 0x0000000f;
}

/// {@category Enum}
class WINML_FEATURE_TYPE {
  static const WINML_FEATURE_UNDEFINED = 0x00000000;
  static const WINML_FEATURE_TENSOR = 0x00000001;
  static const WINML_FEATURE_SEQUENCE = 0x00000002;
  static const WINML_FEATURE_MAP = 0x00000003;
  static const WINML_FEATURE_IMAGE = 0x00000004;
}

/// {@category Enum}
class WINML_BINDING_TYPE {
  static const WINML_BINDING_UNDEFINED = 0x00000000;
  static const WINML_BINDING_TENSOR = 0x00000001;
  static const WINML_BINDING_SEQUENCE = 0x00000002;
  static const WINML_BINDING_MAP = 0x00000003;
  static const WINML_BINDING_IMAGE = 0x00000004;
  static const WINML_BINDING_RESOURCE = 0x00000005;
}

/// {@category Enum}
class WINML_RUNTIME_TYPE {
  static const WINML_RUNTIME_CNTK = 0x00000000;
}

/// {@category Enum}
class MLOperatorAttributeType {
  static const Undefined = 0x00000000;
  static const Float = 0x00000002;
  static const Int = 0x00000003;
  static const String = 0x00000004;
  static const FloatArray = 0x00000007;
  static const IntArray = 0x00000008;
  static const StringArray = 0x00000009;
}

/// {@category Enum}
class MLOperatorTensorDataType {
  static const Undefined = 0x00000000;
  static const Float = 0x00000001;
  static const UInt8 = 0x00000002;
  static const Int8 = 0x00000003;
  static const UInt16 = 0x00000004;
  static const Int16 = 0x00000005;
  static const Int32 = 0x00000006;
  static const Int64 = 0x00000007;
  static const String = 0x00000008;
  static const Bool = 0x00000009;
  static const Float16 = 0x0000000a;
  static const Double = 0x0000000b;
  static const UInt32 = 0x0000000c;
  static const UInt64 = 0x0000000d;
  static const Complex64 = 0x0000000e;
  static const Complex128 = 0x0000000f;
}

/// {@category Enum}
class MLOperatorEdgeType {
  static const Undefined = 0x00000000;
  static const Tensor = 0x00000001;
}

/// {@category Enum}
class MLOperatorParameterOptions {
  static const Single = 0x00000000;
  static const Optional = 0x00000001;
  static const Variadic = 0x00000002;
}

/// {@category Enum}
class MLOperatorSchemaEdgeTypeFormat {
  static const EdgeDescription = 0x00000000;
  static const Label = 0x00000001;
}

/// {@category Enum}
class MLOperatorKernelOptions {
  static const None = 0x00000000;
  static const AllowDynamicInputShapes = 0x00000001;
}

/// {@category Enum}
class MLOperatorExecutionType {
  static const Undefined = 0x00000000;
  static const Cpu = 0x00000001;
  static const D3D12 = 0x00000002;
}
