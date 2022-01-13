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
import '../../system/winrt/structs.g.dart';
import '../../system/com/IUnknown.dart';
import '../../system/winrt/IAgileReference.dart';
import '../../foundation/structs.g.dart';
import '../../system/winrt/callbacks.g.dart';
import '../../system/winrt/IInspectable.dart';
import '../../system/winrt/IApartmentShutdown.dart';
import '../../system/com/marshal/IMarshal.dart';
import '../../system/winrt/IRestrictedErrorInfo.dart';
import '../../system/winrt/IRoMetaDataLocator.dart';
import '../../system/com/IStream.dart'; // -----------------------------------------------------------------------

// ole32.dll
// -----------------------------------------------------------------------
final _ole32 = DynamicLibrary.open('ole32.dll');

int CoDecodeProxy(
  int dwClientPid,
  int ui64ProxyAddress,
  Pointer<ServerInformation> pServerInformation,
) =>
    _CoDecodeProxy(
      dwClientPid,
      ui64ProxyAddress,
      pServerInformation,
    );

late final _CoDecodeProxy = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwClientPid,
  Uint64 ui64ProxyAddress,
  Pointer<ServerInformation> pServerInformation,
),
    int Function(
  int dwClientPid,
  int ui64ProxyAddress,
  Pointer<ServerInformation> pServerInformation,
)>('CoDecodeProxy');

int RoGetAgileReference(
  int options,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Pointer<Pointer<COMObject>> ppAgileReference,
) =>
    _RoGetAgileReference(
      options,
      riid,
      pUnk,
      ppAgileReference,
    );

late final _RoGetAgileReference = _ole32.lookupFunction<
    Int32 Function(
  Int32 options,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Pointer<Pointer<COMObject>> ppAgileReference,
),
    int Function(
  int options,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Pointer<Pointer<COMObject>> ppAgileReference,
)>('RoGetAgileReference');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-string-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_string_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');

void HSTRING_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HSTRING_UserFree(
      param0,
      param1,
    );

late final _HSTRING_UserFree =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
        void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HSTRING_UserFree');

void HSTRING_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HSTRING_UserFree64(
      param0,
      param1,
    );

late final _HSTRING_UserFree64 =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
        void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HSTRING_UserFree64');

Pointer<Uint8> HSTRING_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HSTRING_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HSTRING_UserMarshal =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HSTRING_UserMarshal');

Pointer<Uint8> HSTRING_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HSTRING_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HSTRING_UserMarshal64 =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HSTRING_UserMarshal64');

int HSTRING_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HSTRING_UserSize(
      param0,
      param1,
      param2,
    );

late final _HSTRING_UserSize =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
        int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HSTRING_UserSize');

int HSTRING_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HSTRING_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HSTRING_UserSize64 =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
        int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HSTRING_UserSize64');

Pointer<Uint8> HSTRING_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HSTRING_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HSTRING_UserUnmarshal =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HSTRING_UserUnmarshal');

Pointer<Uint8> HSTRING_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HSTRING_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HSTRING_UserUnmarshal64 =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
        Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HSTRING_UserUnmarshal64');

int WindowsCompareStringOrdinal(
  int string1,
  int string2,
  Pointer<Int32> result,
) =>
    _WindowsCompareStringOrdinal(
      string1,
      string2,
      result,
    );

late final _WindowsCompareStringOrdinal =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string1,
  IntPtr string2,
  Pointer<Int32> result,
),
        int Function(
  int string1,
  int string2,
  Pointer<Int32> result,
)>('WindowsCompareStringOrdinal');

int WindowsConcatString(
  int string1,
  int string2,
  Pointer<IntPtr> newString,
) =>
    _WindowsConcatString(
      string1,
      string2,
      newString,
    );

late final _WindowsConcatString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string1,
  IntPtr string2,
  Pointer<IntPtr> newString,
),
        int Function(
  int string1,
  int string2,
  Pointer<IntPtr> newString,
)>('WindowsConcatString');

int WindowsCreateString(
  Pointer<Utf16> sourceString,
  int length,
  Pointer<IntPtr> string,
) =>
    _WindowsCreateString(
      sourceString,
      length,
      string,
    );

late final _WindowsCreateString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> sourceString,
  Uint32 length,
  Pointer<IntPtr> string,
),
        int Function(
  Pointer<Utf16> sourceString,
  int length,
  Pointer<IntPtr> string,
)>('WindowsCreateString');

int WindowsCreateStringReference(
  Pointer<Utf16> sourceString,
  int length,
  Pointer<HSTRING_HEADER> hstringHeader,
  Pointer<IntPtr> string,
) =>
    _WindowsCreateStringReference(
      sourceString,
      length,
      hstringHeader,
      string,
    );

late final _WindowsCreateStringReference =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> sourceString,
  Uint32 length,
  Pointer<HSTRING_HEADER> hstringHeader,
  Pointer<IntPtr> string,
),
        int Function(
  Pointer<Utf16> sourceString,
  int length,
  Pointer<HSTRING_HEADER> hstringHeader,
  Pointer<IntPtr> string,
)>('WindowsCreateStringReference');

int WindowsDeleteString(
  int string,
) =>
    _WindowsDeleteString(
      string,
    );

late final _WindowsDeleteString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
),
        int Function(
  int string,
)>('WindowsDeleteString');

int WindowsDeleteStringBuffer(
  int bufferHandle,
) =>
    _WindowsDeleteStringBuffer(
      bufferHandle,
    );

late final _WindowsDeleteStringBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr bufferHandle,
),
        int Function(
  int bufferHandle,
)>('WindowsDeleteStringBuffer');

int WindowsDuplicateString(
  int string,
  Pointer<IntPtr> newString,
) =>
    _WindowsDuplicateString(
      string,
      newString,
    );

late final _WindowsDuplicateString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
  Pointer<IntPtr> newString,
),
        int Function(
  int string,
  Pointer<IntPtr> newString,
)>('WindowsDuplicateString');

int WindowsGetStringLen(
  int string,
) =>
    _WindowsGetStringLen(
      string,
    );

late final _WindowsGetStringLen =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Uint32 Function(
  IntPtr string,
),
        int Function(
  int string,
)>('WindowsGetStringLen');

Pointer<Utf16> WindowsGetStringRawBuffer(
  int string,
  Pointer<Uint32> length,
) =>
    _WindowsGetStringRawBuffer(
      string,
      length,
    );

late final _WindowsGetStringRawBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Pointer<Utf16> Function(
  IntPtr string,
  Pointer<Uint32> length,
),
        Pointer<Utf16> Function(
  int string,
  Pointer<Uint32> length,
)>('WindowsGetStringRawBuffer');

int WindowsInspectString(
  int targetHString,
  int machine,
  Pointer<NativeFunction<PINSPECT_HSTRING_CALLBACK>> callback,
  Pointer context,
  Pointer<Uint32> length,
  Pointer<IntPtr> targetStringAddress,
) =>
    _WindowsInspectString(
      targetHString,
      machine,
      callback,
      context,
      length,
      targetStringAddress,
    );

late final _WindowsInspectString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr targetHString,
  Uint16 machine,
  Pointer<NativeFunction<PINSPECT_HSTRING_CALLBACK>> callback,
  Pointer context,
  Pointer<Uint32> length,
  Pointer<IntPtr> targetStringAddress,
),
        int Function(
  int targetHString,
  int machine,
  Pointer<NativeFunction<PINSPECT_HSTRING_CALLBACK>> callback,
  Pointer context,
  Pointer<Uint32> length,
  Pointer<IntPtr> targetStringAddress,
)>('WindowsInspectString');

int WindowsIsStringEmpty(
  int string,
) =>
    _WindowsIsStringEmpty(
      string,
    );

late final _WindowsIsStringEmpty =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
),
        int Function(
  int string,
)>('WindowsIsStringEmpty');

int WindowsPreallocateStringBuffer(
  int length,
  Pointer<Pointer<Uint16>> charBuffer,
  Pointer<IntPtr> bufferHandle,
) =>
    _WindowsPreallocateStringBuffer(
      length,
      charBuffer,
      bufferHandle,
    );

late final _WindowsPreallocateStringBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  Uint32 length,
  Pointer<Pointer<Uint16>> charBuffer,
  Pointer<IntPtr> bufferHandle,
),
        int Function(
  int length,
  Pointer<Pointer<Uint16>> charBuffer,
  Pointer<IntPtr> bufferHandle,
)>('WindowsPreallocateStringBuffer');

int WindowsPromoteStringBuffer(
  int bufferHandle,
  Pointer<IntPtr> string,
) =>
    _WindowsPromoteStringBuffer(
      bufferHandle,
      string,
    );

late final _WindowsPromoteStringBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr bufferHandle,
  Pointer<IntPtr> string,
),
        int Function(
  int bufferHandle,
  Pointer<IntPtr> string,
)>('WindowsPromoteStringBuffer');

int WindowsReplaceString(
  int string,
  int stringReplaced,
  int stringReplaceWith,
  Pointer<IntPtr> newString,
) =>
    _WindowsReplaceString(
      string,
      stringReplaced,
      stringReplaceWith,
      newString,
    );

late final _WindowsReplaceString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
  IntPtr stringReplaced,
  IntPtr stringReplaceWith,
  Pointer<IntPtr> newString,
),
        int Function(
  int string,
  int stringReplaced,
  int stringReplaceWith,
  Pointer<IntPtr> newString,
)>('WindowsReplaceString');

int WindowsStringHasEmbeddedNull(
  int string,
  Pointer<Int32> hasEmbedNull,
) =>
    _WindowsStringHasEmbeddedNull(
      string,
      hasEmbedNull,
    );

late final _WindowsStringHasEmbeddedNull =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
  Pointer<Int32> hasEmbedNull,
),
        int Function(
  int string,
  Pointer<Int32> hasEmbedNull,
)>('WindowsStringHasEmbeddedNull');

int WindowsSubstring(
  int string,
  int startIndex,
  Pointer<IntPtr> newString,
) =>
    _WindowsSubstring(
      string,
      startIndex,
      newString,
    );

late final _WindowsSubstring =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
  Uint32 startIndex,
  Pointer<IntPtr> newString,
),
        int Function(
  int string,
  int startIndex,
  Pointer<IntPtr> newString,
)>('WindowsSubstring');

int WindowsSubstringWithSpecifiedLength(
  int string,
  int startIndex,
  int length,
  Pointer<IntPtr> newString,
) =>
    _WindowsSubstringWithSpecifiedLength(
      string,
      startIndex,
      length,
      newString,
    );

late final _WindowsSubstringWithSpecifiedLength =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
  Uint32 startIndex,
  Uint32 length,
  Pointer<IntPtr> newString,
),
        int Function(
  int string,
  int startIndex,
  int length,
  Pointer<IntPtr> newString,
)>('WindowsSubstringWithSpecifiedLength');

int WindowsTrimStringEnd(
  int string,
  int trimString,
  Pointer<IntPtr> newString,
) =>
    _WindowsTrimStringEnd(
      string,
      trimString,
      newString,
    );

late final _WindowsTrimStringEnd =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
  IntPtr trimString,
  Pointer<IntPtr> newString,
),
        int Function(
  int string,
  int trimString,
  Pointer<IntPtr> newString,
)>('WindowsTrimStringEnd');

int WindowsTrimStringStart(
  int string,
  int trimString,
  Pointer<IntPtr> newString,
) =>
    _WindowsTrimStringStart(
      string,
      trimString,
      newString,
    );

late final _WindowsTrimStringStart =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr string,
  IntPtr trimString,
  Pointer<IntPtr> newString,
),
        int Function(
  int string,
  int trimString,
  Pointer<IntPtr> newString,
)>('WindowsTrimStringStart');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-string-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_string_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-1.dll');

int WindowsInspectString2(
  int targetHString,
  int machine,
  Pointer<NativeFunction<PINSPECT_HSTRING_CALLBACK2>> callback,
  Pointer context,
  Pointer<Uint32> length,
  Pointer<Uint64> targetStringAddress,
) =>
    _WindowsInspectString2(
      targetHString,
      machine,
      callback,
      context,
      length,
      targetStringAddress,
    );

late final _WindowsInspectString2 =
    _api_ms_win_core_winrt_string_l1_1_1.lookupFunction<
        Int32 Function(
  Uint64 targetHString,
  Uint16 machine,
  Pointer<NativeFunction<PINSPECT_HSTRING_CALLBACK2>> callback,
  Pointer context,
  Pointer<Uint32> length,
  Pointer<Uint64> targetStringAddress,
),
        int Function(
  int targetHString,
  int machine,
  Pointer<NativeFunction<PINSPECT_HSTRING_CALLBACK2>> callback,
  Pointer context,
  Pointer<Uint32> length,
  Pointer<Uint64> targetStringAddress,
)>('WindowsInspectString2');

// -----------------------------------------------------------------------
// coremessaging.dll
// -----------------------------------------------------------------------
final _coremessaging = DynamicLibrary.open('coremessaging.dll');

int CreateDispatcherQueueController(
  DispatcherQueueOptions options,
  Pointer<Pointer<COMObject>> dispatcherQueueController,
) =>
    _CreateDispatcherQueueController(
      options,
      dispatcherQueueController,
    );

late final _CreateDispatcherQueueController = _coremessaging.lookupFunction<
    Int32 Function(
  DispatcherQueueOptions options,
  Pointer<Pointer<COMObject>> dispatcherQueueController,
),
    int Function(
  DispatcherQueueOptions options,
  Pointer<Pointer<COMObject>> dispatcherQueueController,
)>('CreateDispatcherQueueController');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');

int RoActivateInstance(
  int activatableClassId,
  Pointer<Pointer<COMObject>> instance,
) =>
    _RoActivateInstance(
      activatableClassId,
      instance,
    );

late final _RoActivateInstance = _api_ms_win_core_winrt_l1_1_0.lookupFunction<
    Int32 Function(
  IntPtr activatableClassId,
  Pointer<Pointer<COMObject>> instance,
),
    int Function(
  int activatableClassId,
  Pointer<Pointer<COMObject>> instance,
)>('RoActivateInstance');

int RoGetActivationFactory(
  int activatableClassId,
  Pointer<GUID> iid,
  Pointer<Pointer> factory,
) =>
    _RoGetActivationFactory(
      activatableClassId,
      iid,
      factory,
    );

late final _RoGetActivationFactory =
    _api_ms_win_core_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr activatableClassId,
  Pointer<GUID> iid,
  Pointer<Pointer> factory,
),
        int Function(
  int activatableClassId,
  Pointer<GUID> iid,
  Pointer<Pointer> factory,
)>('RoGetActivationFactory');

int RoGetApartmentIdentifier(
  Pointer<Uint64> apartmentIdentifier,
) =>
    _RoGetApartmentIdentifier(
      apartmentIdentifier,
    );

late final _RoGetApartmentIdentifier =
    _api_ms_win_core_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Uint64> apartmentIdentifier,
),
        int Function(
  Pointer<Uint64> apartmentIdentifier,
)>('RoGetApartmentIdentifier');

int RoInitialize(
  int initType,
) =>
    _RoInitialize(
      initType,
    );

late final _RoInitialize = _api_ms_win_core_winrt_l1_1_0.lookupFunction<
    Int32 Function(
  Int32 initType,
),
    int Function(
  int initType,
)>('RoInitialize');

int RoRegisterActivationFactories(
  Pointer<IntPtr> activatableClassIds,
  Pointer<IntPtr> activationFactoryCallbacks,
  int count,
  Pointer<IntPtr> cookie,
) =>
    _RoRegisterActivationFactories(
      activatableClassIds,
      activationFactoryCallbacks,
      count,
      cookie,
    );

late final _RoRegisterActivationFactories =
    _api_ms_win_core_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<IntPtr> activatableClassIds,
  Pointer<IntPtr> activationFactoryCallbacks,
  Uint32 count,
  Pointer<IntPtr> cookie,
),
        int Function(
  Pointer<IntPtr> activatableClassIds,
  Pointer<IntPtr> activationFactoryCallbacks,
  int count,
  Pointer<IntPtr> cookie,
)>('RoRegisterActivationFactories');

int RoRegisterForApartmentShutdown(
  Pointer<COMObject> callbackObject,
  Pointer<Uint64> apartmentIdentifier,
  Pointer<IntPtr> regCookie,
) =>
    _RoRegisterForApartmentShutdown(
      callbackObject,
      apartmentIdentifier,
      regCookie,
    );

late final _RoRegisterForApartmentShutdown =
    _api_ms_win_core_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<COMObject> callbackObject,
  Pointer<Uint64> apartmentIdentifier,
  Pointer<IntPtr> regCookie,
),
        int Function(
  Pointer<COMObject> callbackObject,
  Pointer<Uint64> apartmentIdentifier,
  Pointer<IntPtr> regCookie,
)>('RoRegisterForApartmentShutdown');

void RoRevokeActivationFactories(
  int cookie,
) =>
    _RoRevokeActivationFactories(
      cookie,
    );

late final _RoRevokeActivationFactories =
    _api_ms_win_core_winrt_l1_1_0.lookupFunction<
        Void Function(
  IntPtr cookie,
),
        void Function(
  int cookie,
)>('RoRevokeActivationFactories');

void RoUninitialize() => _RoUninitialize();

late final _RoUninitialize = _api_ms_win_core_winrt_l1_1_0
    .lookupFunction<Void Function(), void Function()>('RoUninitialize');

int RoUnregisterForApartmentShutdown(
  int regCookie,
) =>
    _RoUnregisterForApartmentShutdown(
      regCookie,
    );

late final _RoUnregisterForApartmentShutdown =
    _api_ms_win_core_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr regCookie,
),
        int Function(
  int regCookie,
)>('RoUnregisterForApartmentShutdown');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-robuffer-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_robuffer_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-robuffer-l1-1-0.dll');

int RoGetBufferMarshaler(
  Pointer<Pointer<COMObject>> bufferMarshaler,
) =>
    _RoGetBufferMarshaler(
      bufferMarshaler,
    );

late final _RoGetBufferMarshaler =
    _api_ms_win_core_winrt_robuffer_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Pointer<COMObject>> bufferMarshaler,
),
        int Function(
  Pointer<Pointer<COMObject>> bufferMarshaler,
)>('RoGetBufferMarshaler');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-error-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_error_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-error-l1-1-0.dll');

int GetRestrictedErrorInfo(
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
) =>
    _GetRestrictedErrorInfo(
      ppRestrictedErrorInfo,
    );

late final _GetRestrictedErrorInfo =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
),
        int Function(
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
)>('GetRestrictedErrorInfo');

int RoCaptureErrorContext(
  int hr,
) =>
    _RoCaptureErrorContext(
      hr,
    );

late final _RoCaptureErrorContext =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 hr,
),
        int Function(
  int hr,
)>('RoCaptureErrorContext');

void RoFailFastWithErrorContext(
  int hrError,
) =>
    _RoFailFastWithErrorContext(
      hrError,
    );

late final _RoFailFastWithErrorContext =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Void Function(
  Int32 hrError,
),
        void Function(
  int hrError,
)>('RoFailFastWithErrorContext');

int RoGetErrorReportingFlags(
  Pointer<Uint32> pflags,
) =>
    _RoGetErrorReportingFlags(
      pflags,
    );

late final _RoGetErrorReportingFlags =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Uint32> pflags,
),
        int Function(
  Pointer<Uint32> pflags,
)>('RoGetErrorReportingFlags');

int RoOriginateError(
  int error,
  int cchMax,
  Pointer<Utf16> message,
) =>
    _RoOriginateError(
      error,
      cchMax,
      message,
    );

late final _RoOriginateError =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 error,
  Uint32 cchMax,
  Pointer<Utf16> message,
),
        int Function(
  int error,
  int cchMax,
  Pointer<Utf16> message,
)>('RoOriginateErrorW');

int RoResolveRestrictedErrorInfoReference(
  Pointer<Utf16> reference,
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
) =>
    _RoResolveRestrictedErrorInfoReference(
      reference,
      ppRestrictedErrorInfo,
    );

late final _RoResolveRestrictedErrorInfoReference =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> reference,
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
),
        int Function(
  Pointer<Utf16> reference,
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
)>('RoResolveRestrictedErrorInfoReference');

int RoSetErrorReportingFlags(
  int flags,
) =>
    _RoSetErrorReportingFlags(
      flags,
    );

late final _RoSetErrorReportingFlags =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Uint32 flags,
),
        int Function(
  int flags,
)>('RoSetErrorReportingFlags');

int RoTransformError(
  int oldError,
  int newError,
  int cchMax,
  Pointer<Utf16> message,
) =>
    _RoTransformError(
      oldError,
      newError,
      cchMax,
      message,
    );

late final _RoTransformError =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 oldError,
  Int32 newError,
  Uint32 cchMax,
  Pointer<Utf16> message,
),
        int Function(
  int oldError,
  int newError,
  int cchMax,
  Pointer<Utf16> message,
)>('RoTransformErrorW');

int SetRestrictedErrorInfo(
  Pointer<COMObject> pRestrictedErrorInfo,
) =>
    _SetRestrictedErrorInfo(
      pRestrictedErrorInfo,
    );

late final _SetRestrictedErrorInfo =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<COMObject> pRestrictedErrorInfo,
),
        int Function(
  Pointer<COMObject> pRestrictedErrorInfo,
)>('SetRestrictedErrorInfo');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-error-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_error_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-winrt-error-l1-1-1.dll');

int IsErrorPropagationEnabled() => _IsErrorPropagationEnabled();

late final _IsErrorPropagationEnabled = _api_ms_win_core_winrt_error_l1_1_1
    .lookupFunction<Int32 Function(), int Function()>(
        'IsErrorPropagationEnabled');

void RoClearError() => _RoClearError();

late final _RoClearError = _api_ms_win_core_winrt_error_l1_1_1
    .lookupFunction<Void Function(), void Function()>('RoClearError');

int RoGetMatchingRestrictedErrorInfo(
  int hrIn,
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
) =>
    _RoGetMatchingRestrictedErrorInfo(
      hrIn,
      ppRestrictedErrorInfo,
    );

late final _RoGetMatchingRestrictedErrorInfo =
    _api_ms_win_core_winrt_error_l1_1_1.lookupFunction<
        Int32 Function(
  Int32 hrIn,
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
),
        int Function(
  int hrIn,
  Pointer<Pointer<COMObject>> ppRestrictedErrorInfo,
)>('RoGetMatchingRestrictedErrorInfo');

int RoInspectCapturedStackBackTrace(
  int targetErrorInfoAddress,
  int machine,
  Pointer<NativeFunction<PINSPECT_MEMORY_CALLBACK>> readMemoryCallback,
  Pointer context,
  Pointer<Uint32> frameCount,
  Pointer<IntPtr> targetBackTraceAddress,
) =>
    _RoInspectCapturedStackBackTrace(
      targetErrorInfoAddress,
      machine,
      readMemoryCallback,
      context,
      frameCount,
      targetBackTraceAddress,
    );

late final _RoInspectCapturedStackBackTrace =
    _api_ms_win_core_winrt_error_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr targetErrorInfoAddress,
  Uint16 machine,
  Pointer<NativeFunction<PINSPECT_MEMORY_CALLBACK>> readMemoryCallback,
  Pointer context,
  Pointer<Uint32> frameCount,
  Pointer<IntPtr> targetBackTraceAddress,
),
        int Function(
  int targetErrorInfoAddress,
  int machine,
  Pointer<NativeFunction<PINSPECT_MEMORY_CALLBACK>> readMemoryCallback,
  Pointer context,
  Pointer<Uint32> frameCount,
  Pointer<IntPtr> targetBackTraceAddress,
)>('RoInspectCapturedStackBackTrace');

int RoInspectThreadErrorInfo(
  int targetTebAddress,
  int machine,
  Pointer<NativeFunction<PINSPECT_MEMORY_CALLBACK>> readMemoryCallback,
  Pointer context,
  Pointer<IntPtr> targetErrorInfoAddress,
) =>
    _RoInspectThreadErrorInfo(
      targetTebAddress,
      machine,
      readMemoryCallback,
      context,
      targetErrorInfoAddress,
    );

late final _RoInspectThreadErrorInfo =
    _api_ms_win_core_winrt_error_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr targetTebAddress,
  Uint16 machine,
  Pointer<NativeFunction<PINSPECT_MEMORY_CALLBACK>> readMemoryCallback,
  Pointer context,
  Pointer<IntPtr> targetErrorInfoAddress,
),
        int Function(
  int targetTebAddress,
  int machine,
  Pointer<NativeFunction<PINSPECT_MEMORY_CALLBACK>> readMemoryCallback,
  Pointer context,
  Pointer<IntPtr> targetErrorInfoAddress,
)>('RoInspectThreadErrorInfo');

int RoOriginateLanguageException(
  int error,
  int message,
  Pointer<COMObject> languageException,
) =>
    _RoOriginateLanguageException(
      error,
      message,
      languageException,
    );

late final _RoOriginateLanguageException =
    _api_ms_win_core_winrt_error_l1_1_1.lookupFunction<
        Int32 Function(
  Int32 error,
  IntPtr message,
  Pointer<COMObject> languageException,
),
        int Function(
  int error,
  int message,
  Pointer<COMObject> languageException,
)>('RoOriginateLanguageException');

int RoReportFailedDelegate(
  Pointer<COMObject> punkDelegate,
  Pointer<COMObject> pRestrictedErrorInfo,
) =>
    _RoReportFailedDelegate(
      punkDelegate,
      pRestrictedErrorInfo,
    );

late final _RoReportFailedDelegate =
    _api_ms_win_core_winrt_error_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<COMObject> punkDelegate,
  Pointer<COMObject> pRestrictedErrorInfo,
),
        int Function(
  Pointer<COMObject> punkDelegate,
  Pointer<COMObject> pRestrictedErrorInfo,
)>('RoReportFailedDelegate');

int RoReportUnhandledError(
  Pointer<COMObject> pRestrictedErrorInfo,
) =>
    _RoReportUnhandledError(
      pRestrictedErrorInfo,
    );

late final _RoReportUnhandledError =
    _api_ms_win_core_winrt_error_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer<COMObject> pRestrictedErrorInfo,
),
        int Function(
  Pointer<COMObject> pRestrictedErrorInfo,
)>('RoReportUnhandledError');

// -----------------------------------------------------------------------
// rometadata.dll
// -----------------------------------------------------------------------
final _rometadata = DynamicLibrary.open('rometadata.dll');

int MetaDataGetDispenser(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _MetaDataGetDispenser(
      rclsid,
      riid,
      ppv,
    );

late final _MetaDataGetDispenser = _rometadata.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('MetaDataGetDispenser');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_roparameterizediid_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll');

void RoFreeParameterizedTypeExtra(
  int extra,
) =>
    _RoFreeParameterizedTypeExtra(
      extra,
    );

late final _RoFreeParameterizedTypeExtra =
    _api_ms_win_core_winrt_roparameterizediid_l1_1_0.lookupFunction<
        Void Function(
  IntPtr extra,
),
        void Function(
  int extra,
)>('RoFreeParameterizedTypeExtra');

int RoGetParameterizedTypeInstanceIID(
  int nameElementCount,
  Pointer<Pointer<Utf16>> nameElements,
  Pointer<COMObject> metaDataLocator,
  Pointer<GUID> iid,
  Pointer<IntPtr> pExtra,
) =>
    _RoGetParameterizedTypeInstanceIID(
      nameElementCount,
      nameElements,
      metaDataLocator,
      iid,
      pExtra,
    );

late final _RoGetParameterizedTypeInstanceIID =
    _api_ms_win_core_winrt_roparameterizediid_l1_1_0.lookupFunction<
        Int32 Function(
  Uint32 nameElementCount,
  Pointer<Pointer<Utf16>> nameElements,
  Pointer<COMObject> metaDataLocator,
  Pointer<GUID> iid,
  Pointer<IntPtr> pExtra,
),
        int Function(
  int nameElementCount,
  Pointer<Pointer<Utf16>> nameElements,
  Pointer<COMObject> metaDataLocator,
  Pointer<GUID> iid,
  Pointer<IntPtr> pExtra,
)>('RoGetParameterizedTypeInstanceIID');

Pointer<Utf8> RoParameterizedTypeExtraGetTypeSignature(
  int extra,
) =>
    _RoParameterizedTypeExtraGetTypeSignature(
      extra,
    );

late final _RoParameterizedTypeExtraGetTypeSignature =
    _api_ms_win_core_winrt_roparameterizediid_l1_1_0.lookupFunction<
        Pointer<Utf8> Function(
  IntPtr extra,
),
        Pointer<Utf8> Function(
  int extra,
)>('RoParameterizedTypeExtraGetTypeSignature');

// -----------------------------------------------------------------------
// api-ms-win-core-winrt-registration-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_winrt_registration_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-registration-l1-1-0.dll');

int RoGetServerActivatableClasses(
  int serverName,
  Pointer<Pointer<IntPtr>> activatableClassIds,
  Pointer<Uint32> count,
) =>
    _RoGetServerActivatableClasses(
      serverName,
      activatableClassIds,
      count,
    );

late final _RoGetServerActivatableClasses =
    _api_ms_win_core_winrt_registration_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr serverName,
  Pointer<Pointer<IntPtr>> activatableClassIds,
  Pointer<Uint32> count,
),
        int Function(
  int serverName,
  Pointer<Pointer<IntPtr>> activatableClassIds,
  Pointer<Uint32> count,
)>('RoGetServerActivatableClasses');

// -----------------------------------------------------------------------
// api-ms-win-shcore-stream-winrt-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_shcore_stream_winrt_l1_1_0 =
    DynamicLibrary.open('api-ms-win-shcore-stream-winrt-l1-1-0.dll');

int CreateRandomAccessStreamOnFile(
  Pointer<Utf16> filePath,
  int accessMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CreateRandomAccessStreamOnFile(
      filePath,
      accessMode,
      riid,
      ppv,
    );

late final _CreateRandomAccessStreamOnFile =
    _api_ms_win_shcore_stream_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> filePath,
  Uint32 accessMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
        int Function(
  Pointer<Utf16> filePath,
  int accessMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CreateRandomAccessStreamOnFile');

int CreateRandomAccessStreamOverStream(
  Pointer<COMObject> stream,
  int options,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CreateRandomAccessStreamOverStream(
      stream,
      options,
      riid,
      ppv,
    );

late final _CreateRandomAccessStreamOverStream =
    _api_ms_win_shcore_stream_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<COMObject> stream,
  Int32 options,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
        int Function(
  Pointer<COMObject> stream,
  int options,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CreateRandomAccessStreamOverStream');

int CreateStreamOverRandomAccessStream(
  Pointer<COMObject> randomAccessStream,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CreateStreamOverRandomAccessStream(
      randomAccessStream,
      riid,
      ppv,
    );

late final _CreateStreamOverRandomAccessStream =
    _api_ms_win_shcore_stream_winrt_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<COMObject> randomAccessStream,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
        int Function(
  Pointer<COMObject> randomAccessStream,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CreateStreamOverRandomAccessStream');
