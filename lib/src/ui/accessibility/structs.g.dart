// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationPatternHandler.dart';
import '../../specialTypes.dart';
import '../../system/com/structs.g.dart';

/// {@category Struct}
class ACCESSTIMEOUT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int iTimeOutMSec;
}

/// {@category Struct}
class ExtendedProperty extends Struct {
  external Pointer<Utf16> PropertyName;

  external Pointer<Utf16> PropertyValue;
}

/// {@category Struct}
class FILTERKEYS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int iWaitMSec;

  @Uint32()
  external int iDelayMSec;

  @Uint32()
  external int iRepeatMSec;

  @Uint32()
  external int iBounceMSec;
}

/// {@category Struct}
class HIGHCONTRAST extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> lpszDefaultScheme;
}

/// {@category Struct}
class MOUSEKEYS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int iMaxSpeed;

  @Uint32()
  external int iTimeToMaxSpeed;

  @Uint32()
  external int iCtrlSpeed;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;
}

/// {@category Struct}
class MSAAMENUINFO extends Struct {
  @Uint32()
  external int dwMSAASignature;

  @Uint32()
  external int cchWText;

  external Pointer<Utf16> pszWText;
}

/// {@category Struct}
class SERIALKEYS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> lpszActivePort;

  external Pointer<Utf16> lpszPort;

  @Uint32()
  external int iBaudRate;

  @Uint32()
  external int iPortState;

  @Uint32()
  external int iActive;
}

/// {@category Struct}
class SOUNDSENTRY extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int iFSTextEffect;

  @Uint32()
  external int iFSTextEffectMSec;

  @Uint32()
  external int iFSTextEffectColorBits;

  @Uint32()
  external int iFSGrafEffect;

  @Uint32()
  external int iFSGrafEffectMSec;

  @Uint32()
  external int iFSGrafEffectColor;

  @Uint32()
  external int iWindowsEffect;

  @Uint32()
  external int iWindowsEffectMSec;

  external Pointer<Utf16> lpszWindowsEffectDLL;

  @Uint32()
  external int iWindowsEffectOrdinal;
}

/// {@category Struct}
class STICKYKEYS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class TOGGLEKEYS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class UIAutomationEventInfo extends Struct {
  external GUID guid;

  external Pointer<Utf16> pProgrammaticName;
}

/// {@category Struct}
class UIAutomationMethodInfo extends Struct {
  external Pointer<Utf16> pProgrammaticName;

  @Int32()
  external int doSetFocus;

  @Uint32()
  external int cInParameters;

  @Uint32()
  external int cOutParameters;

  external Pointer<Int32> pParameterTypes;

  external Pointer<Pointer<Utf16>> pParameterNames;
}

/// {@category Struct}
class UIAutomationParameter extends Struct {
  @Int32()
  external int type;

  external Pointer pData;
}

/// {@category Struct}
class UIAutomationPatternInfo extends Struct {
  external GUID guid;

  external Pointer<Utf16> pProgrammaticName;

  external GUID providerInterfaceId;

  external GUID clientInterfaceId;

  @Uint32()
  external int cProperties;

  external Pointer<UIAutomationPropertyInfo> pProperties;

  @Uint32()
  external int cMethods;

  external Pointer<UIAutomationMethodInfo> pMethods;

  @Uint32()
  external int cEvents;

  external Pointer<UIAutomationEventInfo> pEvents;

  external Pointer<COMObject> pPatternHandler;
}

/// {@category Struct}
class UIAutomationPropertyInfo extends Struct {
  external GUID guid;

  external Pointer<Utf16> pProgrammaticName;

  @Int32()
  external int type;
}

/// {@category Struct}
class UiaAndOrCondition extends Struct {
  @Int32()
  external int ConditionType;

  external Pointer<Pointer<UiaCondition>> ppConditions;

  @Int32()
  external int cConditions;
}

/// {@category Struct}
class UiaAsyncContentLoadedEventArgs extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int EventId;

  @Int32()
  external int AsyncContentLoadedState;

  @Double()
  external double PercentComplete;
}

/// {@category Struct}
class UiaCacheRequest extends Struct {
  external Pointer<UiaCondition> pViewCondition;

  @Int32()
  external int Scope;

  external Pointer<Int32> pProperties;

  @Int32()
  external int cProperties;

  external Pointer<Int32> pPatterns;

  @Int32()
  external int cPatterns;

  @Int32()
  external int automationElementMode;
}

/// {@category Struct}
class UiaChangeInfo extends Struct {
  @Int32()
  external int uiaId;

  external VARIANT payload;

  external VARIANT extraInfo;
}

/// {@category Struct}
class UiaChangesEventArgs extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int EventId;

  @Int32()
  external int EventIdCount;

  external Pointer<UiaChangeInfo> pUiaChanges;
}

/// {@category Struct}
class UiaCondition extends Struct {
  @Int32()
  external int ConditionType;
}

/// {@category Struct}
class UiaEventArgs extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int EventId;
}

/// {@category Struct}
class UiaFindParams extends Struct {
  @Int32()
  external int MaxDepth;

  @Int32()
  external int FindFirst;

  @Int32()
  external int ExcludeRoot;

  external Pointer<UiaCondition> pFindCondition;
}

/// {@category Struct}
class UiaNotCondition extends Struct {
  @Int32()
  external int ConditionType;

  external Pointer<UiaCondition> pCondition;
}

/// {@category Struct}
class UiaPoint extends Struct {
  @Double()
  external double x;

  @Double()
  external double y;
}

/// {@category Struct}
class UiaPropertyChangedEventArgs extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int EventId;

  @Int32()
  external int PropertyId;

  external VARIANT OldValue;

  external VARIANT NewValue;
}

/// {@category Struct}
class UiaPropertyCondition extends Struct {
  @Int32()
  external int ConditionType;

  @Int32()
  external int PropertyId;

  external VARIANT Value;

  @Int32()
  external int Flags;
}

/// {@category Struct}
class UiaRect extends Struct {
  @Double()
  external double left;

  @Double()
  external double top;

  @Double()
  external double width;

  @Double()
  external double height;
}

/// {@category Struct}
class UiaStructureChangedEventArgs extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int EventId;

  @Int32()
  external int StructureChangeType;

  external Pointer<Int32> pRuntimeId;

  @Int32()
  external int cRuntimeIdLen;
}

/// {@category Struct}
class UiaTextEditTextChangedEventArgs extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int EventId;

  @Int32()
  external int TextEditChangeType;

  external Pointer<SAFEARRAY> pTextChange;
}

/// {@category Struct}
class UiaWindowClosedEventArgs extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int EventId;

  external Pointer<Int32> pRuntimeId;

  @Int32()
  external int cRuntimeIdLen;
}
