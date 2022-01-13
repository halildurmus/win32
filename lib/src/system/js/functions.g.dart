// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../system/diagnostics/debug/IDebugApplication64.dart';
import '../../system/js/callbacks.g.dart';
import '../../system/js/structs.g.dart';
import '../../system/diagnostics/debug/IActiveScriptProfilerHeapEnum.dart';
import '../../foundation/structs.g.dart';
import '../../system/diagnostics/debug/IActiveScriptProfilerCallback.dart';
import '../../system/diagnostics/debug/structs.g.dart';
import '../../specialTypes.dart'; // -----------------------------------------------------------------------

// chakra.dll
// -----------------------------------------------------------------------
final _chakra = DynamicLibrary.open('chakra.dll');

int JsAddRef(
  Pointer ref,
  Pointer<Uint32> count,
) =>
    _JsAddRef(
      ref,
      count,
    );

late final _JsAddRef = _chakra.lookupFunction<
    Uint32 Function(
  Pointer ref,
  Pointer<Uint32> count,
),
    int Function(
  Pointer ref,
  Pointer<Uint32> count,
)>('JsAddRef');

int JsBoolToBoolean(
  int value,
  Pointer<Pointer> booleanValue,
) =>
    _JsBoolToBoolean(
      value,
      booleanValue,
    );

late final _JsBoolToBoolean = _chakra.lookupFunction<
    Uint32 Function(
  Uint8 value,
  Pointer<Pointer> booleanValue,
),
    int Function(
  int value,
  Pointer<Pointer> booleanValue,
)>('JsBoolToBoolean');

int JsBooleanToBool(
  Pointer value,
  Pointer<Bool> boolValue,
) =>
    _JsBooleanToBool(
      value,
      boolValue,
    );

late final _JsBooleanToBool = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Bool> boolValue,
),
    int Function(
  Pointer value,
  Pointer<Bool> boolValue,
)>('JsBooleanToBool');

int JsCallFunction(
  Pointer function,
  Pointer<Pointer> arguments,
  int argumentCount,
  Pointer<Pointer> result,
) =>
    _JsCallFunction(
      function,
      arguments,
      argumentCount,
      result,
    );

late final _JsCallFunction = _chakra.lookupFunction<
    Uint32 Function(
  Pointer function,
  Pointer<Pointer> arguments,
  Uint16 argumentCount,
  Pointer<Pointer> result,
),
    int Function(
  Pointer function,
  Pointer<Pointer> arguments,
  int argumentCount,
  Pointer<Pointer> result,
)>('JsCallFunction');

int JsCollectGarbage(
  Pointer runtime,
) =>
    _JsCollectGarbage(
      runtime,
    );

late final _JsCollectGarbage = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
),
    int Function(
  Pointer runtime,
)>('JsCollectGarbage');

int JsConstructObject(
  Pointer function,
  Pointer<Pointer> arguments,
  int argumentCount,
  Pointer<Pointer> result,
) =>
    _JsConstructObject(
      function,
      arguments,
      argumentCount,
      result,
    );

late final _JsConstructObject = _chakra.lookupFunction<
    Uint32 Function(
  Pointer function,
  Pointer<Pointer> arguments,
  Uint16 argumentCount,
  Pointer<Pointer> result,
),
    int Function(
  Pointer function,
  Pointer<Pointer> arguments,
  int argumentCount,
  Pointer<Pointer> result,
)>('JsConstructObject');

int JsConvertValueToBoolean(
  Pointer value,
  Pointer<Pointer> booleanValue,
) =>
    _JsConvertValueToBoolean(
      value,
      booleanValue,
    );

late final _JsConvertValueToBoolean = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Pointer> booleanValue,
),
    int Function(
  Pointer value,
  Pointer<Pointer> booleanValue,
)>('JsConvertValueToBoolean');

int JsConvertValueToNumber(
  Pointer value,
  Pointer<Pointer> numberValue,
) =>
    _JsConvertValueToNumber(
      value,
      numberValue,
    );

late final _JsConvertValueToNumber = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Pointer> numberValue,
),
    int Function(
  Pointer value,
  Pointer<Pointer> numberValue,
)>('JsConvertValueToNumber');

int JsConvertValueToObject(
  Pointer value,
  Pointer<Pointer> object,
) =>
    _JsConvertValueToObject(
      value,
      object,
    );

late final _JsConvertValueToObject = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Pointer> object,
),
    int Function(
  Pointer value,
  Pointer<Pointer> object,
)>('JsConvertValueToObject');

int JsConvertValueToString(
  Pointer value,
  Pointer<Pointer> stringValue,
) =>
    _JsConvertValueToString(
      value,
      stringValue,
    );

late final _JsConvertValueToString = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Pointer> stringValue,
),
    int Function(
  Pointer value,
  Pointer<Pointer> stringValue,
)>('JsConvertValueToString');

int JsCreateArray(
  int length,
  Pointer<Pointer> result,
) =>
    _JsCreateArray(
      length,
      result,
    );

late final _JsCreateArray = _chakra.lookupFunction<
    Uint32 Function(
  Uint32 length,
  Pointer<Pointer> result,
),
    int Function(
  int length,
  Pointer<Pointer> result,
)>('JsCreateArray');

int JsCreateContext(
  Pointer runtime,
  Pointer<COMObject> debugApplication,
  Pointer<Pointer> newContext,
) =>
    _JsCreateContext(
      runtime,
      debugApplication,
      newContext,
    );

late final _JsCreateContext = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
  Pointer<COMObject> debugApplication,
  Pointer<Pointer> newContext,
),
    int Function(
  Pointer runtime,
  Pointer<COMObject> debugApplication,
  Pointer<Pointer> newContext,
)>('JsCreateContext');

int JsCreateError(
  Pointer message,
  Pointer<Pointer> error,
) =>
    _JsCreateError(
      message,
      error,
    );

late final _JsCreateError = _chakra.lookupFunction<
    Uint32 Function(
  Pointer message,
  Pointer<Pointer> error,
),
    int Function(
  Pointer message,
  Pointer<Pointer> error,
)>('JsCreateError');

int JsCreateExternalObject(
  Pointer data,
  Pointer<NativeFunction<JsFinalizeCallback>> finalizeCallback,
  Pointer<Pointer> object,
) =>
    _JsCreateExternalObject(
      data,
      finalizeCallback,
      object,
    );

late final _JsCreateExternalObject = _chakra.lookupFunction<
    Uint32 Function(
  Pointer data,
  Pointer<NativeFunction<JsFinalizeCallback>> finalizeCallback,
  Pointer<Pointer> object,
),
    int Function(
  Pointer data,
  Pointer<NativeFunction<JsFinalizeCallback>> finalizeCallback,
  Pointer<Pointer> object,
)>('JsCreateExternalObject');

int JsCreateFunction(
  Pointer<NativeFunction<JsNativeFunction>> nativeFunction,
  Pointer callbackState,
  Pointer<Pointer> function,
) =>
    _JsCreateFunction(
      nativeFunction,
      callbackState,
      function,
    );

late final _JsCreateFunction = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<JsNativeFunction>> nativeFunction,
  Pointer callbackState,
  Pointer<Pointer> function,
),
    int Function(
  Pointer<NativeFunction<JsNativeFunction>> nativeFunction,
  Pointer callbackState,
  Pointer<Pointer> function,
)>('JsCreateFunction');

int JsCreateObject(
  Pointer<Pointer> object,
) =>
    _JsCreateObject(
      object,
    );

late final _JsCreateObject = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> object,
),
    int Function(
  Pointer<Pointer> object,
)>('JsCreateObject');

int JsCreateRangeError(
  Pointer message,
  Pointer<Pointer> error,
) =>
    _JsCreateRangeError(
      message,
      error,
    );

late final _JsCreateRangeError = _chakra.lookupFunction<
    Uint32 Function(
  Pointer message,
  Pointer<Pointer> error,
),
    int Function(
  Pointer message,
  Pointer<Pointer> error,
)>('JsCreateRangeError');

int JsCreateReferenceError(
  Pointer message,
  Pointer<Pointer> error,
) =>
    _JsCreateReferenceError(
      message,
      error,
    );

late final _JsCreateReferenceError = _chakra.lookupFunction<
    Uint32 Function(
  Pointer message,
  Pointer<Pointer> error,
),
    int Function(
  Pointer message,
  Pointer<Pointer> error,
)>('JsCreateReferenceError');

int JsCreateRuntime(
  int attributes,
  int runtimeVersion,
  Pointer<NativeFunction<JsThreadServiceCallback>> threadService,
  Pointer<Pointer> runtime,
) =>
    _JsCreateRuntime(
      attributes,
      runtimeVersion,
      threadService,
      runtime,
    );

late final _JsCreateRuntime = _chakra.lookupFunction<
    Uint32 Function(
  Int32 attributes,
  Int32 runtimeVersion,
  Pointer<NativeFunction<JsThreadServiceCallback>> threadService,
  Pointer<Pointer> runtime,
),
    int Function(
  int attributes,
  int runtimeVersion,
  Pointer<NativeFunction<JsThreadServiceCallback>> threadService,
  Pointer<Pointer> runtime,
)>('JsCreateRuntime');

int JsCreateSyntaxError(
  Pointer message,
  Pointer<Pointer> error,
) =>
    _JsCreateSyntaxError(
      message,
      error,
    );

late final _JsCreateSyntaxError = _chakra.lookupFunction<
    Uint32 Function(
  Pointer message,
  Pointer<Pointer> error,
),
    int Function(
  Pointer message,
  Pointer<Pointer> error,
)>('JsCreateSyntaxError');

int JsCreateTypeError(
  Pointer message,
  Pointer<Pointer> error,
) =>
    _JsCreateTypeError(
      message,
      error,
    );

late final _JsCreateTypeError = _chakra.lookupFunction<
    Uint32 Function(
  Pointer message,
  Pointer<Pointer> error,
),
    int Function(
  Pointer message,
  Pointer<Pointer> error,
)>('JsCreateTypeError');

int JsCreateURIError(
  Pointer message,
  Pointer<Pointer> error,
) =>
    _JsCreateURIError(
      message,
      error,
    );

late final _JsCreateURIError = _chakra.lookupFunction<
    Uint32 Function(
  Pointer message,
  Pointer<Pointer> error,
),
    int Function(
  Pointer message,
  Pointer<Pointer> error,
)>('JsCreateURIError');

int JsDefineProperty(
  Pointer object,
  Pointer propertyId,
  Pointer propertyDescriptor,
  Pointer<Bool> result,
) =>
    _JsDefineProperty(
      object,
      propertyId,
      propertyDescriptor,
      result,
    );

late final _JsDefineProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer propertyId,
  Pointer propertyDescriptor,
  Pointer<Bool> result,
),
    int Function(
  Pointer object,
  Pointer propertyId,
  Pointer propertyDescriptor,
  Pointer<Bool> result,
)>('JsDefineProperty');

int JsDeleteIndexedProperty(
  Pointer object,
  Pointer index,
) =>
    _JsDeleteIndexedProperty(
      object,
      index,
    );

late final _JsDeleteIndexedProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer index,
),
    int Function(
  Pointer object,
  Pointer index,
)>('JsDeleteIndexedProperty');

int JsDeleteProperty(
  Pointer object,
  Pointer propertyId,
  int useStrictRules,
  Pointer<Pointer> result,
) =>
    _JsDeleteProperty(
      object,
      propertyId,
      useStrictRules,
      result,
    );

late final _JsDeleteProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer propertyId,
  Uint8 useStrictRules,
  Pointer<Pointer> result,
),
    int Function(
  Pointer object,
  Pointer propertyId,
  int useStrictRules,
  Pointer<Pointer> result,
)>('JsDeleteProperty');

int JsDisableRuntimeExecution(
  Pointer runtime,
) =>
    _JsDisableRuntimeExecution(
      runtime,
    );

late final _JsDisableRuntimeExecution = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
),
    int Function(
  Pointer runtime,
)>('JsDisableRuntimeExecution');

int JsDisposeRuntime(
  Pointer runtime,
) =>
    _JsDisposeRuntime(
      runtime,
    );

late final _JsDisposeRuntime = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
),
    int Function(
  Pointer runtime,
)>('JsDisposeRuntime');

int JsDoubleToNumber(
  double doubleValue,
  Pointer<Pointer> value,
) =>
    _JsDoubleToNumber(
      doubleValue,
      value,
    );

late final _JsDoubleToNumber = _chakra.lookupFunction<
    Uint32 Function(
  Double doubleValue,
  Pointer<Pointer> value,
),
    int Function(
  double doubleValue,
  Pointer<Pointer> value,
)>('JsDoubleToNumber');

int JsEnableRuntimeExecution(
  Pointer runtime,
) =>
    _JsEnableRuntimeExecution(
      runtime,
    );

late final _JsEnableRuntimeExecution = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
),
    int Function(
  Pointer runtime,
)>('JsEnableRuntimeExecution');

int JsEnumerateHeap(
  Pointer<Pointer<COMObject>> enumerator,
) =>
    _JsEnumerateHeap(
      enumerator,
    );

late final _JsEnumerateHeap = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<COMObject>> enumerator,
),
    int Function(
  Pointer<Pointer<COMObject>> enumerator,
)>('JsEnumerateHeap');

int JsEquals(
  Pointer object1,
  Pointer object2,
  Pointer<Bool> result,
) =>
    _JsEquals(
      object1,
      object2,
      result,
    );

late final _JsEquals = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object1,
  Pointer object2,
  Pointer<Bool> result,
),
    int Function(
  Pointer object1,
  Pointer object2,
  Pointer<Bool> result,
)>('JsEquals');

int JsGetAndClearException(
  Pointer<Pointer> exception,
) =>
    _JsGetAndClearException(
      exception,
    );

late final _JsGetAndClearException = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> exception,
),
    int Function(
  Pointer<Pointer> exception,
)>('JsGetAndClearException');

int JsGetCurrentContext(
  Pointer<Pointer> currentContext,
) =>
    _JsGetCurrentContext(
      currentContext,
    );

late final _JsGetCurrentContext = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> currentContext,
),
    int Function(
  Pointer<Pointer> currentContext,
)>('JsGetCurrentContext');

int JsGetExtensionAllowed(
  Pointer object,
  Pointer<Bool> value,
) =>
    _JsGetExtensionAllowed(
      object,
      value,
    );

late final _JsGetExtensionAllowed = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer<Bool> value,
),
    int Function(
  Pointer object,
  Pointer<Bool> value,
)>('JsGetExtensionAllowed');

int JsGetExternalData(
  Pointer object,
  Pointer<Pointer> externalData,
) =>
    _JsGetExternalData(
      object,
      externalData,
    );

late final _JsGetExternalData = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer<Pointer> externalData,
),
    int Function(
  Pointer object,
  Pointer<Pointer> externalData,
)>('JsGetExternalData');

int JsGetFalseValue(
  Pointer<Pointer> falseValue,
) =>
    _JsGetFalseValue(
      falseValue,
    );

late final _JsGetFalseValue = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> falseValue,
),
    int Function(
  Pointer<Pointer> falseValue,
)>('JsGetFalseValue');

int JsGetGlobalObject(
  Pointer<Pointer> globalObject,
) =>
    _JsGetGlobalObject(
      globalObject,
    );

late final _JsGetGlobalObject = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> globalObject,
),
    int Function(
  Pointer<Pointer> globalObject,
)>('JsGetGlobalObject');

int JsGetIndexedProperty(
  Pointer object,
  Pointer index,
  Pointer<Pointer> result,
) =>
    _JsGetIndexedProperty(
      object,
      index,
      result,
    );

late final _JsGetIndexedProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer index,
  Pointer<Pointer> result,
),
    int Function(
  Pointer object,
  Pointer index,
  Pointer<Pointer> result,
)>('JsGetIndexedProperty');

int JsGetNullValue(
  Pointer<Pointer> nullValue,
) =>
    _JsGetNullValue(
      nullValue,
    );

late final _JsGetNullValue = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> nullValue,
),
    int Function(
  Pointer<Pointer> nullValue,
)>('JsGetNullValue');

int JsGetOwnPropertyDescriptor(
  Pointer object,
  Pointer propertyId,
  Pointer<Pointer> propertyDescriptor,
) =>
    _JsGetOwnPropertyDescriptor(
      object,
      propertyId,
      propertyDescriptor,
    );

late final _JsGetOwnPropertyDescriptor = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer propertyId,
  Pointer<Pointer> propertyDescriptor,
),
    int Function(
  Pointer object,
  Pointer propertyId,
  Pointer<Pointer> propertyDescriptor,
)>('JsGetOwnPropertyDescriptor');

int JsGetOwnPropertyNames(
  Pointer object,
  Pointer<Pointer> propertyNames,
) =>
    _JsGetOwnPropertyNames(
      object,
      propertyNames,
    );

late final _JsGetOwnPropertyNames = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer<Pointer> propertyNames,
),
    int Function(
  Pointer object,
  Pointer<Pointer> propertyNames,
)>('JsGetOwnPropertyNames');

int JsGetProperty(
  Pointer object,
  Pointer propertyId,
  Pointer<Pointer> value,
) =>
    _JsGetProperty(
      object,
      propertyId,
      value,
    );

late final _JsGetProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer propertyId,
  Pointer<Pointer> value,
),
    int Function(
  Pointer object,
  Pointer propertyId,
  Pointer<Pointer> value,
)>('JsGetProperty');

int JsGetPropertyIdFromName(
  Pointer<Utf16> name,
  Pointer<Pointer> propertyId,
) =>
    _JsGetPropertyIdFromName(
      name,
      propertyId,
    );

late final _JsGetPropertyIdFromName = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> name,
  Pointer<Pointer> propertyId,
),
    int Function(
  Pointer<Utf16> name,
  Pointer<Pointer> propertyId,
)>('JsGetPropertyIdFromName');

int JsGetPropertyNameFromId(
  Pointer propertyId,
  Pointer<Pointer<Uint16>> name,
) =>
    _JsGetPropertyNameFromId(
      propertyId,
      name,
    );

late final _JsGetPropertyNameFromId = _chakra.lookupFunction<
    Uint32 Function(
  Pointer propertyId,
  Pointer<Pointer<Uint16>> name,
),
    int Function(
  Pointer propertyId,
  Pointer<Pointer<Uint16>> name,
)>('JsGetPropertyNameFromId');

int JsGetPrototype(
  Pointer object,
  Pointer<Pointer> prototypeObject,
) =>
    _JsGetPrototype(
      object,
      prototypeObject,
    );

late final _JsGetPrototype = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer<Pointer> prototypeObject,
),
    int Function(
  Pointer object,
  Pointer<Pointer> prototypeObject,
)>('JsGetPrototype');

int JsGetRuntime(
  Pointer context,
  Pointer<Pointer> runtime,
) =>
    _JsGetRuntime(
      context,
      runtime,
    );

late final _JsGetRuntime = _chakra.lookupFunction<
    Uint32 Function(
  Pointer context,
  Pointer<Pointer> runtime,
),
    int Function(
  Pointer context,
  Pointer<Pointer> runtime,
)>('JsGetRuntime');

int JsGetRuntimeMemoryLimit(
  Pointer runtime,
  Pointer<IntPtr> memoryLimit,
) =>
    _JsGetRuntimeMemoryLimit(
      runtime,
      memoryLimit,
    );

late final _JsGetRuntimeMemoryLimit = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
  Pointer<IntPtr> memoryLimit,
),
    int Function(
  Pointer runtime,
  Pointer<IntPtr> memoryLimit,
)>('JsGetRuntimeMemoryLimit');

int JsGetRuntimeMemoryUsage(
  Pointer runtime,
  Pointer<IntPtr> memoryUsage,
) =>
    _JsGetRuntimeMemoryUsage(
      runtime,
      memoryUsage,
    );

late final _JsGetRuntimeMemoryUsage = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
  Pointer<IntPtr> memoryUsage,
),
    int Function(
  Pointer runtime,
  Pointer<IntPtr> memoryUsage,
)>('JsGetRuntimeMemoryUsage');

int JsGetStringLength(
  Pointer stringValue,
  Pointer<Int32> length,
) =>
    _JsGetStringLength(
      stringValue,
      length,
    );

late final _JsGetStringLength = _chakra.lookupFunction<
    Uint32 Function(
  Pointer stringValue,
  Pointer<Int32> length,
),
    int Function(
  Pointer stringValue,
  Pointer<Int32> length,
)>('JsGetStringLength');

int JsGetTrueValue(
  Pointer<Pointer> trueValue,
) =>
    _JsGetTrueValue(
      trueValue,
    );

late final _JsGetTrueValue = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> trueValue,
),
    int Function(
  Pointer<Pointer> trueValue,
)>('JsGetTrueValue');

int JsGetUndefinedValue(
  Pointer<Pointer> undefinedValue,
) =>
    _JsGetUndefinedValue(
      undefinedValue,
    );

late final _JsGetUndefinedValue = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> undefinedValue,
),
    int Function(
  Pointer<Pointer> undefinedValue,
)>('JsGetUndefinedValue');

int JsGetValueType(
  Pointer value,
  Pointer<Int32> type,
) =>
    _JsGetValueType(
      value,
      type,
    );

late final _JsGetValueType = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Int32> type,
),
    int Function(
  Pointer value,
  Pointer<Int32> type,
)>('JsGetValueType');

int JsHasException(
  Pointer<Bool> hasException,
) =>
    _JsHasException(
      hasException,
    );

late final _JsHasException = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Bool> hasException,
),
    int Function(
  Pointer<Bool> hasException,
)>('JsHasException');

int JsHasExternalData(
  Pointer object,
  Pointer<Bool> value,
) =>
    _JsHasExternalData(
      object,
      value,
    );

late final _JsHasExternalData = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer<Bool> value,
),
    int Function(
  Pointer object,
  Pointer<Bool> value,
)>('JsHasExternalData');

int JsHasIndexedProperty(
  Pointer object,
  Pointer index,
  Pointer<Bool> result,
) =>
    _JsHasIndexedProperty(
      object,
      index,
      result,
    );

late final _JsHasIndexedProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer index,
  Pointer<Bool> result,
),
    int Function(
  Pointer object,
  Pointer index,
  Pointer<Bool> result,
)>('JsHasIndexedProperty');

int JsHasProperty(
  Pointer object,
  Pointer propertyId,
  Pointer<Bool> hasProperty,
) =>
    _JsHasProperty(
      object,
      propertyId,
      hasProperty,
    );

late final _JsHasProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer propertyId,
  Pointer<Bool> hasProperty,
),
    int Function(
  Pointer object,
  Pointer propertyId,
  Pointer<Bool> hasProperty,
)>('JsHasProperty');

int JsIdle(
  Pointer<Uint32> nextIdleTick,
) =>
    _JsIdle(
      nextIdleTick,
    );

late final _JsIdle = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> nextIdleTick,
),
    int Function(
  Pointer<Uint32> nextIdleTick,
)>('JsIdle');

int JsIntToNumber(
  int intValue,
  Pointer<Pointer> value,
) =>
    _JsIntToNumber(
      intValue,
      value,
    );

late final _JsIntToNumber = _chakra.lookupFunction<
    Uint32 Function(
  Int32 intValue,
  Pointer<Pointer> value,
),
    int Function(
  int intValue,
  Pointer<Pointer> value,
)>('JsIntToNumber');

int JsIsEnumeratingHeap(
  Pointer<Bool> isEnumeratingHeap,
) =>
    _JsIsEnumeratingHeap(
      isEnumeratingHeap,
    );

late final _JsIsEnumeratingHeap = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Bool> isEnumeratingHeap,
),
    int Function(
  Pointer<Bool> isEnumeratingHeap,
)>('JsIsEnumeratingHeap');

int JsIsRuntimeExecutionDisabled(
  Pointer runtime,
  Pointer<Bool> isDisabled,
) =>
    _JsIsRuntimeExecutionDisabled(
      runtime,
      isDisabled,
    );

late final _JsIsRuntimeExecutionDisabled = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
  Pointer<Bool> isDisabled,
),
    int Function(
  Pointer runtime,
  Pointer<Bool> isDisabled,
)>('JsIsRuntimeExecutionDisabled');

int JsNumberToDouble(
  Pointer value,
  Pointer<Double> doubleValue,
) =>
    _JsNumberToDouble(
      value,
      doubleValue,
    );

late final _JsNumberToDouble = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Double> doubleValue,
),
    int Function(
  Pointer value,
  Pointer<Double> doubleValue,
)>('JsNumberToDouble');

int JsParseScript(
  Pointer<Utf16> script,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
) =>
    _JsParseScript(
      script,
      sourceContext,
      sourceUrl,
      result,
    );

late final _JsParseScript = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> script,
  IntPtr sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
),
    int Function(
  Pointer<Utf16> script,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
)>('JsParseScript');

int JsParseSerializedScript(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
) =>
    _JsParseSerializedScript(
      script,
      buffer,
      sourceContext,
      sourceUrl,
      result,
    );

late final _JsParseSerializedScript = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  IntPtr sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
),
    int Function(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
)>('JsParseSerializedScript');

int JsPointerToString(
  Pointer<Utf16> stringValue,
  int stringLength,
  Pointer<Pointer> value,
) =>
    _JsPointerToString(
      stringValue,
      stringLength,
      value,
    );

late final _JsPointerToString = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> stringValue,
  IntPtr stringLength,
  Pointer<Pointer> value,
),
    int Function(
  Pointer<Utf16> stringValue,
  int stringLength,
  Pointer<Pointer> value,
)>('JsPointerToString');

int JsPreventExtension(
  Pointer object,
) =>
    _JsPreventExtension(
      object,
    );

late final _JsPreventExtension = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
),
    int Function(
  Pointer object,
)>('JsPreventExtension');

int JsRelease(
  Pointer ref,
  Pointer<Uint32> count,
) =>
    _JsRelease(
      ref,
      count,
    );

late final _JsRelease = _chakra.lookupFunction<
    Uint32 Function(
  Pointer ref,
  Pointer<Uint32> count,
),
    int Function(
  Pointer ref,
  Pointer<Uint32> count,
)>('JsRelease');

int JsRunScript(
  Pointer<Utf16> script,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
) =>
    _JsRunScript(
      script,
      sourceContext,
      sourceUrl,
      result,
    );

late final _JsRunScript = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> script,
  IntPtr sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
),
    int Function(
  Pointer<Utf16> script,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
)>('JsRunScript');

int JsRunSerializedScript(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
) =>
    _JsRunSerializedScript(
      script,
      buffer,
      sourceContext,
      sourceUrl,
      result,
    );

late final _JsRunSerializedScript = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  IntPtr sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
),
    int Function(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  int sourceContext,
  Pointer<Utf16> sourceUrl,
  Pointer<Pointer> result,
)>('JsRunSerializedScript');

int JsSerializeScript(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  Pointer<Uint32> bufferSize,
) =>
    _JsSerializeScript(
      script,
      buffer,
      bufferSize,
    );

late final _JsSerializeScript = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  Pointer<Uint32> bufferSize,
),
    int Function(
  Pointer<Utf16> script,
  Pointer<Uint8> buffer,
  Pointer<Uint32> bufferSize,
)>('JsSerializeScript');

int JsSetCurrentContext(
  Pointer context,
) =>
    _JsSetCurrentContext(
      context,
    );

late final _JsSetCurrentContext = _chakra.lookupFunction<
    Uint32 Function(
  Pointer context,
),
    int Function(
  Pointer context,
)>('JsSetCurrentContext');

int JsSetException(
  Pointer exception,
) =>
    _JsSetException(
      exception,
    );

late final _JsSetException = _chakra.lookupFunction<
    Uint32 Function(
  Pointer exception,
),
    int Function(
  Pointer exception,
)>('JsSetException');

int JsSetExternalData(
  Pointer object,
  Pointer externalData,
) =>
    _JsSetExternalData(
      object,
      externalData,
    );

late final _JsSetExternalData = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer externalData,
),
    int Function(
  Pointer object,
  Pointer externalData,
)>('JsSetExternalData');

int JsSetIndexedProperty(
  Pointer object,
  Pointer index,
  Pointer value,
) =>
    _JsSetIndexedProperty(
      object,
      index,
      value,
    );

late final _JsSetIndexedProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer index,
  Pointer value,
),
    int Function(
  Pointer object,
  Pointer index,
  Pointer value,
)>('JsSetIndexedProperty');

int JsSetProperty(
  Pointer object,
  Pointer propertyId,
  Pointer value,
  int useStrictRules,
) =>
    _JsSetProperty(
      object,
      propertyId,
      value,
      useStrictRules,
    );

late final _JsSetProperty = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer propertyId,
  Pointer value,
  Uint8 useStrictRules,
),
    int Function(
  Pointer object,
  Pointer propertyId,
  Pointer value,
  int useStrictRules,
)>('JsSetProperty');

int JsSetPrototype(
  Pointer object,
  Pointer prototypeObject,
) =>
    _JsSetPrototype(
      object,
      prototypeObject,
    );

late final _JsSetPrototype = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer prototypeObject,
),
    int Function(
  Pointer object,
  Pointer prototypeObject,
)>('JsSetPrototype');

int JsSetRuntimeBeforeCollectCallback(
  Pointer runtime,
  Pointer callbackState,
  Pointer<NativeFunction<JsBeforeCollectCallback>> beforeCollectCallback,
) =>
    _JsSetRuntimeBeforeCollectCallback(
      runtime,
      callbackState,
      beforeCollectCallback,
    );

late final _JsSetRuntimeBeforeCollectCallback = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
  Pointer callbackState,
  Pointer<NativeFunction<JsBeforeCollectCallback>> beforeCollectCallback,
),
    int Function(
  Pointer runtime,
  Pointer callbackState,
  Pointer<NativeFunction<JsBeforeCollectCallback>> beforeCollectCallback,
)>('JsSetRuntimeBeforeCollectCallback');

int JsSetRuntimeMemoryAllocationCallback(
  Pointer runtime,
  Pointer callbackState,
  Pointer<NativeFunction<JsMemoryAllocationCallback>> allocationCallback,
) =>
    _JsSetRuntimeMemoryAllocationCallback(
      runtime,
      callbackState,
      allocationCallback,
    );

late final _JsSetRuntimeMemoryAllocationCallback = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
  Pointer callbackState,
  Pointer<NativeFunction<JsMemoryAllocationCallback>> allocationCallback,
),
    int Function(
  Pointer runtime,
  Pointer callbackState,
  Pointer<NativeFunction<JsMemoryAllocationCallback>> allocationCallback,
)>('JsSetRuntimeMemoryAllocationCallback');

int JsSetRuntimeMemoryLimit(
  Pointer runtime,
  int memoryLimit,
) =>
    _JsSetRuntimeMemoryLimit(
      runtime,
      memoryLimit,
    );

late final _JsSetRuntimeMemoryLimit = _chakra.lookupFunction<
    Uint32 Function(
  Pointer runtime,
  IntPtr memoryLimit,
),
    int Function(
  Pointer runtime,
  int memoryLimit,
)>('JsSetRuntimeMemoryLimit');

int JsStartDebugging(
  Pointer<COMObject> debugApplication,
) =>
    _JsStartDebugging(
      debugApplication,
    );

late final _JsStartDebugging = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> debugApplication,
),
    int Function(
  Pointer<COMObject> debugApplication,
)>('JsStartDebugging');

int JsStartProfiling(
  Pointer<COMObject> callback,
  int eventMask,
  int context,
) =>
    _JsStartProfiling(
      callback,
      eventMask,
      context,
    );

late final _JsStartProfiling = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> callback,
  Uint32 eventMask,
  Uint32 context,
),
    int Function(
  Pointer<COMObject> callback,
  int eventMask,
  int context,
)>('JsStartProfiling');

int JsStopProfiling(
  int reason,
) =>
    _JsStopProfiling(
      reason,
    );

late final _JsStopProfiling = _chakra.lookupFunction<
    Uint32 Function(
  Int32 reason,
),
    int Function(
  int reason,
)>('JsStopProfiling');

int JsStrictEquals(
  Pointer object1,
  Pointer object2,
  Pointer<Bool> result,
) =>
    _JsStrictEquals(
      object1,
      object2,
      result,
    );

late final _JsStrictEquals = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object1,
  Pointer object2,
  Pointer<Bool> result,
),
    int Function(
  Pointer object1,
  Pointer object2,
  Pointer<Bool> result,
)>('JsStrictEquals');

int JsStringToPointer(
  Pointer value,
  Pointer<Pointer<Uint16>> stringValue,
  Pointer<IntPtr> stringLength,
) =>
    _JsStringToPointer(
      value,
      stringValue,
      stringLength,
    );

late final _JsStringToPointer = _chakra.lookupFunction<
    Uint32 Function(
  Pointer value,
  Pointer<Pointer<Uint16>> stringValue,
  Pointer<IntPtr> stringLength,
),
    int Function(
  Pointer value,
  Pointer<Pointer<Uint16>> stringValue,
  Pointer<IntPtr> stringLength,
)>('JsStringToPointer');

int JsValueToVariant(
  Pointer object,
  Pointer<VARIANT> variant,
) =>
    _JsValueToVariant(
      object,
      variant,
    );

late final _JsValueToVariant = _chakra.lookupFunction<
    Uint32 Function(
  Pointer object,
  Pointer<VARIANT> variant,
),
    int Function(
  Pointer object,
  Pointer<VARIANT> variant,
)>('JsValueToVariant');

int JsVariantToValue(
  Pointer<VARIANT> variant,
  Pointer<Pointer> value,
) =>
    _JsVariantToValue(
      variant,
      value,
    );

late final _JsVariantToValue = _chakra.lookupFunction<
    Uint32 Function(
  Pointer<VARIANT> variant,
  Pointer<Pointer> value,
),
    int Function(
  Pointer<VARIANT> variant,
  Pointer<Pointer> value,
)>('JsVariantToValue');
