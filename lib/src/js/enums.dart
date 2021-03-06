/// {@category Enum}
class JsRuntimeVersion {
  static const JsRuntimeVersion10 = 0x00000000;
  static const JsRuntimeVersion11 = 0x00000001;
  static const JsRuntimeVersionEdge = 0xffffffff;
}

/// {@category Enum}
class JsErrorCode {
  static const JsNoError = 0x00000000;
  static const JsErrorCategoryUsage = 0x00010000;
  static const JsErrorInvalidArgument = 0x00010001;
  static const JsErrorNullArgument = 0x00010002;
  static const JsErrorNoCurrentContext = 0x00010003;
  static const JsErrorInExceptionState = 0x00010004;
  static const JsErrorNotImplemented = 0x00010005;
  static const JsErrorWrongThread = 0x00010006;
  static const JsErrorRuntimeInUse = 0x00010007;
  static const JsErrorBadSerializedScript = 0x00010008;
  static const JsErrorInDisabledState = 0x00010009;
  static const JsErrorCannotDisableExecution = 0x0001000a;
  static const JsErrorHeapEnumInProgress = 0x0001000b;
  static const JsErrorArgumentNotObject = 0x0001000c;
  static const JsErrorInProfileCallback = 0x0001000d;
  static const JsErrorInThreadServiceCallback = 0x0001000e;
  static const JsErrorCannotSerializeDebugScript = 0x0001000f;
  static const JsErrorAlreadyDebuggingContext = 0x00010010;
  static const JsErrorAlreadyProfilingContext = 0x00010011;
  static const JsErrorIdleNotEnabled = 0x00010012;
  static const JsErrorCategoryEngine = 0x00020000;
  static const JsErrorOutOfMemory = 0x00020001;
  static const JsErrorCategoryScript = 0x00030000;
  static const JsErrorScriptException = 0x00030001;
  static const JsErrorScriptCompile = 0x00030002;
  static const JsErrorScriptTerminated = 0x00030003;
  static const JsErrorScriptEvalDisabled = 0x00030004;
  static const JsErrorCategoryFatal = 0x00040000;
  static const JsErrorFatal = 0x00040001;
}

/// {@category Enum}
class JsRuntimeAttributes {
  static const JsRuntimeAttributeNone = 0x00000000;
  static const JsRuntimeAttributeDisableBackgroundWork = 0x00000001;
  static const JsRuntimeAttributeAllowScriptInterrupt = 0x00000002;
  static const JsRuntimeAttributeEnableIdleProcessing = 0x00000004;
  static const JsRuntimeAttributeDisableNativeCodeGeneration = 0x00000008;
  static const JsRuntimeAttributeDisableEval = 0x00000010;
}

/// {@category Enum}
class JsMemoryEventType {
  static const JsMemoryAllocate = 0x00000000;
  static const JsMemoryFree = 0x00000001;
  static const JsMemoryFailure = 0x00000002;
}

/// {@category Enum}
class JsValueType {
  static const JsUndefined = 0x00000000;
  static const JsNull = 0x00000001;
  static const JsNumber = 0x00000002;
  static const JsString = 0x00000003;
  static const JsBoolean = 0x00000004;
  static const JsObject = 0x00000005;
  static const JsFunction = 0x00000006;
  static const JsError = 0x00000007;
  static const JsArray = 0x00000008;
}
