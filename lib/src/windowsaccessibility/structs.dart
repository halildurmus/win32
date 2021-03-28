// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class HWINEVENTHOOK extends Struct {
  @IntPtr() external int Value;
}

class HUIANODE extends Struct {
  @IntPtr() external int Value;
}

class HUIAPATTERNOBJECT extends Struct {
  @IntPtr() external int Value;
}

class HUIATEXTRANGE extends Struct {
  @IntPtr() external int Value;
}

class HUIAEVENT extends Struct {
  @IntPtr() external int Value;
}

class MSAAControl extends Struct {
}

class AccStore extends Struct {
}

class AccDictionary extends Struct {
}

class AccServerDocMgr extends Struct {
}

class AccClientDocMgr extends Struct {
}

class DocWrap extends Struct {
}

class CAccPropServices extends Struct {
}

class MSAAMENUINFO extends Struct {
  @Uint32() external int dwMSAASignature;
  @Uint32() external int cchWText;
  external Pointer<Utf16> pszWText;
}

class CUIAutomationRegistrar extends Struct {
}

class UiaRect extends Struct {
  @Double() external double left;
  @Double() external double top;
  @Double() external double width;
  @Double() external double height;
}

class UiaPoint extends Struct {
  @Double() external double x;
  @Double() external double y;
}

class UiaChangeInfo extends Struct {
  @Int32() external int uiaId;
  external VARIANT payload;
  external VARIANT extraInfo;
}

class UIAutomationParameter extends Struct {
  @Uint32() external int type;
  external Pointer pData;
}

class UIAutomationPropertyInfo extends Struct {
  external GUID guid;
  external Pointer<Utf16> pProgrammaticName;
  @Uint32() external int type;
}

class UIAutomationEventInfo extends Struct {
  external GUID guid;
  external Pointer<Utf16> pProgrammaticName;
}

class UIAutomationMethodInfo extends Struct {
  external Pointer<Utf16> pProgrammaticName;
  @Int32() external int doSetFocus;
  @Uint32() external int cInParameters;
  @Uint32() external int cOutParameters;
  external Pointer<Uint32> pParameterTypes;
  external Pointer<Pointer<Utf16>> pParameterNames;
}

class UIAutomationPatternInfo extends Struct {
  external GUID guid;
  external Pointer<Utf16> pProgrammaticName;
  external GUID providerInterfaceId;
  external GUID clientInterfaceId;
  @Uint32() external int cProperties;
  external Pointer<UIAutomationPropertyInfo> pProperties;
  @Uint32() external int cMethods;
  external Pointer<UIAutomationMethodInfo> pMethods;
  @Uint32() external int cEvents;
  external Pointer<UIAutomationEventInfo> pEvents;
  external Pointer pPatternHandler;
}

class UiaCondition extends Struct {
  @Uint32() external int ConditionType;
}

class UiaPropertyCondition extends Struct {
  @Uint32() external int ConditionType;
  @Int32() external int PropertyId;
  external VARIANT Value;
  @Uint32() external int Flags;
}

class UiaAndOrCondition extends Struct {
  @Uint32() external int ConditionType;
  external Pointer<Pointer<UiaCondition>> ppConditions;
  @Int32() external int cConditions;
}

class UiaNotCondition extends Struct {
  @Uint32() external int ConditionType;
  external Pointer<UiaCondition> pCondition;
}

class UiaCacheRequest extends Struct {
  external Pointer<UiaCondition> pViewCondition;
  @Uint32() external int Scope;
  external Pointer<Int32> pProperties;
  @Int32() external int cProperties;
  external Pointer<Int32> pPatterns;
  @Int32() external int cPatterns;
  @Uint32() external int automationElementMode;
}

class UiaFindParams extends Struct {
  @Int32() external int MaxDepth;
  @Int32() external int FindFirst;
  @Int32() external int ExcludeRoot;
  external Pointer<UiaCondition> pFindCondition;
}

class UiaEventArgs extends Struct {
  @Uint32() external int Type;
  @Int32() external int EventId;
}

class UiaPropertyChangedEventArgs extends Struct {
  @Uint32() external int Type;
  @Int32() external int EventId;
  @Int32() external int PropertyId;
  external VARIANT OldValue;
  external VARIANT NewValue;
}

class UiaStructureChangedEventArgs extends Struct {
  @Uint32() external int Type;
  @Int32() external int EventId;
  @Uint32() external int StructureChangeType;
  external Pointer<Int32> pRuntimeId;
  @Int32() external int cRuntimeIdLen;
}

class UiaTextEditTextChangedEventArgs extends Struct {
  @Uint32() external int Type;
  @Int32() external int EventId;
  @Uint32() external int TextEditChangeType;
  external Pointer<SAFEARRAY> pTextChange;
}

class UiaChangesEventArgs extends Struct {
  @Uint32() external int Type;
  @Int32() external int EventId;
  @Int32() external int EventIdCount;
  external Pointer<UiaChangeInfo> pUiaChanges;
}

class UiaAsyncContentLoadedEventArgs extends Struct {
  @Uint32() external int Type;
  @Int32() external int EventId;
  @Uint32() external int AsyncContentLoadedState;
  @Double() external double PercentComplete;
}

class UiaWindowClosedEventArgs extends Struct {
  @Uint32() external int Type;
  @Int32() external int EventId;
  external Pointer<Int32> pRuntimeId;
  @Int32() external int cRuntimeIdLen;
}

class CUIAutomation extends Struct {
}

class CUIAutomation8 extends Struct {
}

class ExtendedProperty extends Struct {
  external Pointer<Utf16> PropertyName;
  external Pointer<Utf16> PropertyValue;
}

class SERIALKEYSA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> lpszActivePort;
  external Pointer<Utf8> lpszPort;
  @Uint32() external int iBaudRate;
  @Uint32() external int iPortState;
  @Uint32() external int iActive;
}

class SERIALKEYSW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> lpszActivePort;
  external Pointer<Utf16> lpszPort;
  @Uint32() external int iBaudRate;
  @Uint32() external int iPortState;
  @Uint32() external int iActive;
}

class HIGHCONTRASTA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> lpszDefaultScheme;
}

class HIGHCONTRASTW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> lpszDefaultScheme;
}

class FILTERKEYS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int iWaitMSec;
  @Uint32() external int iDelayMSec;
  @Uint32() external int iRepeatMSec;
  @Uint32() external int iBounceMSec;
}

class STICKYKEYS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
}

class MOUSEKEYS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int iMaxSpeed;
  @Uint32() external int iTimeToMaxSpeed;
  @Uint32() external int iCtrlSpeed;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
}

class ACCESSTIMEOUT extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int iTimeOutMSec;
}

class SOUNDSENTRYA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int iFSTextEffect;
  @Uint32() external int iFSTextEffectMSec;
  @Uint32() external int iFSTextEffectColorBits;
  @Uint32() external int iFSGrafEffect;
  @Uint32() external int iFSGrafEffectMSec;
  @Uint32() external int iFSGrafEffectColor;
  @Uint32() external int iWindowsEffect;
  @Uint32() external int iWindowsEffectMSec;
  external Pointer<Utf8> lpszWindowsEffectDLL;
  @Uint32() external int iWindowsEffectOrdinal;
}

class SOUNDSENTRYW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int iFSTextEffect;
  @Uint32() external int iFSTextEffectMSec;
  @Uint32() external int iFSTextEffectColorBits;
  @Uint32() external int iFSGrafEffect;
  @Uint32() external int iFSGrafEffectMSec;
  @Uint32() external int iFSGrafEffectColor;
  @Uint32() external int iWindowsEffect;
  @Uint32() external int iWindowsEffectMSec;
  external Pointer<Utf16> lpszWindowsEffectDLL;
  @Uint32() external int iWindowsEffectOrdinal;
}

class TOGGLEKEYS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
}

