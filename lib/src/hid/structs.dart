// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class DICONSTANTFORCE extends Struct {
  @Int32()
  external int lMagnitude;
}

class DIRAMPFORCE extends Struct {
  @Int32()
  external int lStart;
  @Int32()
  external int lEnd;
}

class DIPERIODIC extends Struct {
  @Uint32()
  external int dwMagnitude;
  @Int32()
  external int lOffset;
  @Uint32()
  external int dwPhase;
  @Uint32()
  external int dwPeriod;
}

class DICONDITION extends Struct {
  @Int32()
  external int lOffset;
  @Int32()
  external int lPositiveCoefficient;
  @Int32()
  external int lNegativeCoefficient;
  @Uint32()
  external int dwPositiveSaturation;
  @Uint32()
  external int dwNegativeSaturation;
  @Int32()
  external int lDeadBand;
}

class DICUSTOMFORCE extends Struct {
  @Uint32()
  external int cChannels;
  @Uint32()
  external int dwSamplePeriod;
  @Uint32()
  external int cSamples;
  external Pointer<Int32> rglForceData;
}

class DIENVELOPE extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwAttackLevel;
  @Uint32()
  external int dwAttackTime;
  @Uint32()
  external int dwFadeLevel;
  @Uint32()
  external int dwFadeTime;
}

class DIEFFECT_DX5 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwDuration;
  @Uint32()
  external int dwSamplePeriod;
  @Uint32()
  external int dwGain;
  @Uint32()
  external int dwTriggerButton;
  @Uint32()
  external int dwTriggerRepeatInterval;
  @Uint32()
  external int cAxes;
  external Pointer<Uint32> rgdwAxes;
  external Pointer<Int32> rglDirection;
  external Pointer<DIENVELOPE> lpEnvelope;
  @Uint32()
  external int cbTypeSpecificParams;
  external Pointer lpvTypeSpecificParams;
}

class DIEFFECT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwDuration;
  @Uint32()
  external int dwSamplePeriod;
  @Uint32()
  external int dwGain;
  @Uint32()
  external int dwTriggerButton;
  @Uint32()
  external int dwTriggerRepeatInterval;
  @Uint32()
  external int cAxes;
  external Pointer<Uint32> rgdwAxes;
  external Pointer<Int32> rglDirection;
  external Pointer<DIENVELOPE> lpEnvelope;
  @Uint32()
  external int cbTypeSpecificParams;
  external Pointer lpvTypeSpecificParams;
  @Uint32()
  external int dwStartDelay;
}

class DIFILEEFFECT extends Struct {
  @Uint32()
  external int dwSize;
  external GUID GuidEffect;
  external Pointer<DIEFFECT> lpDiEffect;
  @Array(129)
  external Array<Int8> szFriendlyName;
}

class DIEFFESCAPE extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwCommand;
  external Pointer lpvInBuffer;
  @Uint32()
  external int cbInBuffer;
  external Pointer lpvOutBuffer;
  @Uint32()
  external int cbOutBuffer;
}

class DIDEVCAPS_DX3 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwDevType;
  @Uint32()
  external int dwAxes;
  @Uint32()
  external int dwButtons;
  @Uint32()
  external int dwPOVs;
}

class DIDEVCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwDevType;
  @Uint32()
  external int dwAxes;
  @Uint32()
  external int dwButtons;
  @Uint32()
  external int dwPOVs;
  @Uint32()
  external int dwFFSamplePeriod;
  @Uint32()
  external int dwFFMinTimeResolution;
  @Uint32()
  external int dwFirmwareRevision;
  @Uint32()
  external int dwHardwareRevision;
  @Uint32()
  external int dwFFDriverVersion;
}

class DIOBJECTDATAFORMAT extends Struct {
  external Pointer<GUID> pguid;
  @Uint32()
  external int dwOfs;
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwFlags;
}

class DIDATAFORMAT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwObjSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwDataSize;
  @Uint32()
  external int dwNumObjs;
  external Pointer<DIOBJECTDATAFORMAT> rgodf;
}

class DIACTIONA extends Struct {
  @IntPtr()
  external int uAppData;
  @Uint32()
  external int dwSemantic;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int Anonymous;
  external GUID guidInstance;
  @Uint32()
  external int dwObjID;
  @Uint32()
  external int dwHow;
}

class DIACTIONW extends Struct {
  @IntPtr()
  external int uAppData;
  @Uint32()
  external int dwSemantic;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int Anonymous;
  external GUID guidInstance;
  @Uint32()
  external int dwObjID;
  @Uint32()
  external int dwHow;
}

class DIACTIONFORMATA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwActionSize;
  @Uint32()
  external int dwDataSize;
  @Uint32()
  external int dwNumActions;
  external Pointer<DIACTIONA> rgoAction;
  external GUID guidActionMap;
  @Uint32()
  external int dwGenre;
  @Uint32()
  external int dwBufferSize;
  @Int32()
  external int lAxisMin;
  @Int32()
  external int lAxisMax;
  @IntPtr()
  external int hInstString;
  external FILETIME ftTimeStamp;
  @Uint32()
  external int dwCRC;
  @Array(129)
  external Array<Int8> tszActionMap;
}

class DIACTIONFORMATW extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwActionSize;
  @Uint32()
  external int dwDataSize;
  @Uint32()
  external int dwNumActions;
  external Pointer<DIACTION> rgoAction;
  external GUID guidActionMap;
  @Uint32()
  external int dwGenre;
  @Uint32()
  external int dwBufferSize;
  @Int32()
  external int lAxisMin;
  @Int32()
  external int lAxisMax;
  @IntPtr()
  external int hInstString;
  external FILETIME ftTimeStamp;
  @Uint32()
  external int dwCRC;
  @Array(129)
  external Array<Uint16> tszActionMap;
}

class DICOLORSET extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int cTextFore;
  @Uint32()
  external int cTextHighlight;
  @Uint32()
  external int cCalloutLine;
  @Uint32()
  external int cCalloutHighlight;
  @Uint32()
  external int cBorder;
  @Uint32()
  external int cControlFill;
  @Uint32()
  external int cHighlightFill;
  @Uint32()
  external int cAreaFill;
}

class DICONFIGUREDEVICESPARAMSA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwcUsers;
  external Pointer<Utf8> lptszUserNames;
  @Uint32()
  external int dwcFormats;
  external Pointer<DIACTIONFORMATA> lprgFormats;
  @IntPtr()
  external int hwnd;
  external DICOLORSET dics;
  external Pointer lpUnkDDSTarget;
}

class DICONFIGUREDEVICESPARAMSW extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwcUsers;
  external Pointer<Utf16> lptszUserNames;
  @Uint32()
  external int dwcFormats;
  external Pointer<DIACTIONFORMAT> lprgFormats;
  @IntPtr()
  external int hwnd;
  external DICOLORSET dics;
  external Pointer lpUnkDDSTarget;
}

class DIDEVICEIMAGEINFOA extends Struct {
  @Array(129)
  external Array<Int8> tszImagePath;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwViewID;
  external RECT rcOverlay;
  @Uint32()
  external int dwObjID;
  @Uint32()
  external int dwcValidPts;
  @Array(5)
  external Array<POINT> rgptCalloutLine;
  external RECT rcCalloutRect;
  @Uint32()
  external int dwTextAlign;
}

class DIDEVICEIMAGEINFOW extends Struct {
  @Array(129)
  external Array<Uint16> tszImagePath;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwViewID;
  external RECT rcOverlay;
  @Uint32()
  external int dwObjID;
  @Uint32()
  external int dwcValidPts;
  @Array(5)
  external Array<POINT> rgptCalloutLine;
  external RECT rcCalloutRect;
  @Uint32()
  external int dwTextAlign;
}

class DIDEVICEIMAGEINFOHEADERA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwSizeImageInfo;
  @Uint32()
  external int dwcViews;
  @Uint32()
  external int dwcButtons;
  @Uint32()
  external int dwcAxes;
  @Uint32()
  external int dwcPOVs;
  @Uint32()
  external int dwBufferSize;
  @Uint32()
  external int dwBufferUsed;
  external Pointer<DIDEVICEIMAGEINFOA> lprgImageInfoArray;
}

class DIDEVICEIMAGEINFOHEADERW extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwSizeImageInfo;
  @Uint32()
  external int dwcViews;
  @Uint32()
  external int dwcButtons;
  @Uint32()
  external int dwcAxes;
  @Uint32()
  external int dwcPOVs;
  @Uint32()
  external int dwBufferSize;
  @Uint32()
  external int dwBufferUsed;
  external Pointer<DIDEVICEIMAGEINFO> lprgImageInfoArray;
}

class DIDEVICEOBJECTINSTANCE_DX3A extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidType;
  @Uint32()
  external int dwOfs;
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwFlags;
  @Array(129)
  external Array<Int8> tszName;
}

class DIDEVICEOBJECTINSTANCE_DX3W extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidType;
  @Uint32()
  external int dwOfs;
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwFlags;
  @Array(129)
  external Array<Uint16> tszName;
}

class DIDEVICEOBJECTINSTANCEA extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidType;
  @Uint32()
  external int dwOfs;
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwFlags;
  @Array(129)
  external Array<Int8> tszName;
  @Uint32()
  external int dwFFMaxForce;
  @Uint32()
  external int dwFFForceResolution;
  @Uint16()
  external int wCollectionNumber;
  @Uint16()
  external int wDesignatorIndex;
  @Uint16()
  external int wUsagePage;
  @Uint16()
  external int wUsage;
  @Uint32()
  external int dwDimension;
  @Uint16()
  external int wExponent;
  @Uint16()
  external int wReportId;
}

class DIDEVICEOBJECTINSTANCEW extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidType;
  @Uint32()
  external int dwOfs;
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwFlags;
  @Array(129)
  external Array<Uint16> tszName;
  @Uint32()
  external int dwFFMaxForce;
  @Uint32()
  external int dwFFForceResolution;
  @Uint16()
  external int wCollectionNumber;
  @Uint16()
  external int wDesignatorIndex;
  @Uint16()
  external int wUsagePage;
  @Uint16()
  external int wUsage;
  @Uint32()
  external int dwDimension;
  @Uint16()
  external int wExponent;
  @Uint16()
  external int wReportId;
}

class DIPROPHEADER extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwHeaderSize;
  @Uint32()
  external int dwObj;
  @Uint32()
  external int dwHow;
}

class DIPROPDWORD extends Struct {
  external DIPROPHEADER diph;
  @Uint32()
  external int dwData;
}

class DIPROPPOINTER extends Struct {
  external DIPROPHEADER diph;
  @IntPtr()
  external int uData;
}

class DIPROPRANGE extends Struct {
  external DIPROPHEADER diph;
  @Int32()
  external int lMin;
  @Int32()
  external int lMax;
}

class DIPROPCAL extends Struct {
  external DIPROPHEADER diph;
  @Int32()
  external int lMin;
  @Int32()
  external int lCenter;
  @Int32()
  external int lMax;
}

class DIPROPCALPOV extends Struct {
  external DIPROPHEADER diph;
  @Array(5)
  external Array<Int32> lMin;
  @Array(5)
  external Array<Int32> lMax;
}

class DIPROPGUIDANDPATH extends Struct {
  external DIPROPHEADER diph;
  external GUID guidClass;
  @Array(129)
  external Array<Uint16> wszPath;
}

class DIPROPSTRING extends Struct {
  external DIPROPHEADER diph;
  @Array(129)
  external Array<Uint16> wsz;
}

class CPOINT extends Struct {
  @Int32()
  external int lP;
  @Uint32()
  external int dwLog;
}

class DIPROPCPOINTS extends Struct {
  external DIPROPHEADER diph;
  @Uint32()
  external int dwCPointsNum;
  @Array(8)
  external Array<CPOINT> cp;
}

class DIDEVICEOBJECTDATA_DX3 extends Struct {
  @Uint32()
  external int dwOfs;
  @Uint32()
  external int dwData;
  @Uint32()
  external int dwTimeStamp;
  @Uint32()
  external int dwSequence;
}

class DIDEVICEOBJECTDATA extends Struct {
  @Uint32()
  external int dwOfs;
  @Uint32()
  external int dwData;
  @Uint32()
  external int dwTimeStamp;
  @Uint32()
  external int dwSequence;
  @IntPtr()
  external int uAppData;
}

class DIDEVICEINSTANCE_DX3A extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidInstance;
  external GUID guidProduct;
  @Uint32()
  external int dwDevType;
  @Array(129)
  external Array<Int8> tszInstanceName;
  @Array(129)
  external Array<Int8> tszProductName;
}

class DIDEVICEINSTANCE_DX3W extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidInstance;
  external GUID guidProduct;
  @Uint32()
  external int dwDevType;
  @Array(129)
  external Array<Uint16> tszInstanceName;
  @Array(129)
  external Array<Uint16> tszProductName;
}

class DIDEVICEINSTANCEA extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidInstance;
  external GUID guidProduct;
  @Uint32()
  external int dwDevType;
  @Array(129)
  external Array<Int8> tszInstanceName;
  @Array(129)
  external Array<Int8> tszProductName;
  external GUID guidFFDriver;
  @Uint16()
  external int wUsagePage;
  @Uint16()
  external int wUsage;
}

class DIDEVICEINSTANCEW extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidInstance;
  external GUID guidProduct;
  @Uint32()
  external int dwDevType;
  @Array(129)
  external Array<Uint16> tszInstanceName;
  @Array(129)
  external Array<Uint16> tszProductName;
  external GUID guidFFDriver;
  @Uint16()
  external int wUsagePage;
  @Uint16()
  external int wUsage;
}

class DIEFFECTINFOA extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guid;
  @Uint32()
  external int dwEffType;
  @Uint32()
  external int dwStaticParams;
  @Uint32()
  external int dwDynamicParams;
  @Array(129)
  external Array<Int8> tszName;
}

class DIEFFECTINFOW extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guid;
  @Uint32()
  external int dwEffType;
  @Uint32()
  external int dwStaticParams;
  @Uint32()
  external int dwDynamicParams;
  @Array(129)
  external Array<Uint16> tszName;
}

class DIMOUSESTATE extends Struct {
  @Int32()
  external int lX;
  @Int32()
  external int lY;
  @Int32()
  external int lZ;
  @Array(4)
  external Array<Uint8> rgbButtons;
}

class DIMOUSESTATE2 extends Struct {
  @Int32()
  external int lX;
  @Int32()
  external int lY;
  @Int32()
  external int lZ;
  @Array(8)
  external Array<Uint8> rgbButtons;
}

class DIJOYSTATE extends Struct {
  @Int32()
  external int lX;
  @Int32()
  external int lY;
  @Int32()
  external int lZ;
  @Int32()
  external int lRx;
  @Int32()
  external int lRy;
  @Int32()
  external int lRz;
  @Array(2)
  external Array<Int32> rglSlider;
  @Array(4)
  external Array<Uint32> rgdwPOV;
  @Array(32)
  external Array<Uint8> rgbButtons;
}

class DIJOYSTATE2 extends Struct {
  @Int32()
  external int lX;
  @Int32()
  external int lY;
  @Int32()
  external int lZ;
  @Int32()
  external int lRx;
  @Int32()
  external int lRy;
  @Int32()
  external int lRz;
  @Array(2)
  external Array<Int32> rglSlider;
  @Array(4)
  external Array<Uint32> rgdwPOV;
  @Array(128)
  external Array<Uint8> rgbButtons;
  @Int32()
  external int lVX;
  @Int32()
  external int lVY;
  @Int32()
  external int lVZ;
  @Int32()
  external int lVRx;
  @Int32()
  external int lVRy;
  @Int32()
  external int lVRz;
  @Array(2)
  external Array<Int32> rglVSlider;
  @Int32()
  external int lAX;
  @Int32()
  external int lAY;
  @Int32()
  external int lAZ;
  @Int32()
  external int lARx;
  @Int32()
  external int lARy;
  @Int32()
  external int lARz;
  @Array(2)
  external Array<Int32> rglASlider;
  @Int32()
  external int lFX;
  @Int32()
  external int lFY;
  @Int32()
  external int lFZ;
  @Int32()
  external int lFRx;
  @Int32()
  external int lFRy;
  @Int32()
  external int lFRz;
  @Array(2)
  external Array<Int32> rglFSlider;
}

class DIOBJECTATTRIBUTES extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint16()
  external int wUsagePage;
  @Uint16()
  external int wUsage;
}

class DIFFOBJECTATTRIBUTES extends Struct {
  @Uint32()
  external int dwFFMaxForce;
  @Uint32()
  external int dwFFForceResolution;
}

class DIOBJECTCALIBRATION extends Struct {
  @Int32()
  external int lMin;
  @Int32()
  external int lCenter;
  @Int32()
  external int lMax;
}

class DIPOVCALIBRATION extends Struct {
  @Array(5)
  external Array<Int32> lMin;
  @Array(5)
  external Array<Int32> lMax;
}

class DIEFFECTATTRIBUTES extends Struct {
  @Uint32()
  external int dwEffectId;
  @Uint32()
  external int dwEffType;
  @Uint32()
  external int dwStaticParams;
  @Uint32()
  external int dwDynamicParams;
  @Uint32()
  external int dwCoords;
}

class DIFFDEVICEATTRIBUTES extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwFFSamplePeriod;
  @Uint32()
  external int dwFFMinTimeResolution;
}

class DIDRIVERVERSIONS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFirmwareRevision;
  @Uint32()
  external int dwHardwareRevision;
  @Uint32()
  external int dwFFDriverVersion;
}

class DIDEVICESTATE extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwState;
  @Uint32()
  external int dwLoad;
}

class DIHIDFFINITINFO extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<Utf16> pwszDeviceInterface;
  external GUID GuidInstance;
}

class DIJOYTYPEINFO_DX5 extends Struct {
  @Uint32()
  external int dwSize;
  external joyreghwsettings_tag hws;
  external GUID clsidConfig;
  @Array(129)
  external Array<Uint16> wszDisplayName;
  @Array(129)
  external Array<Uint16> wszCallout;
}

class DIJOYTYPEINFO_DX6 extends Struct {
  @Uint32()
  external int dwSize;
  external joyreghwsettings_tag hws;
  external GUID clsidConfig;
  @Array(129)
  external Array<Uint16> wszDisplayName;
  @Array(129)
  external Array<Uint16> wszCallout;
  @Array(129)
  external Array<Uint16> wszHardwareId;
  @Uint32()
  external int dwFlags1;
}

class DIJOYTYPEINFO extends Struct {
  @Uint32()
  external int dwSize;
  external joyreghwsettings_tag hws;
  external GUID clsidConfig;
  @Array(129)
  external Array<Uint16> wszDisplayName;
  @Array(129)
  external Array<Uint16> wszCallout;
  @Array(129)
  external Array<Uint16> wszHardwareId;
  @Uint32()
  external int dwFlags1;
  @Uint32()
  external int dwFlags2;
  @Array(129)
  external Array<Uint16> wszMapFile;
}

class DIJOYCONFIG_DX5 extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidInstance;
  external joyreghwconfig_tag hwc;
  @Uint32()
  external int dwGain;
  @Array(129)
  external Array<Uint16> wszType;
  @Array(129)
  external Array<Uint16> wszCallout;
}

class DIJOYCONFIG extends Struct {
  @Uint32()
  external int dwSize;
  external GUID guidInstance;
  external joyreghwconfig_tag hwc;
  @Uint32()
  external int dwGain;
  @Array(129)
  external Array<Uint16> wszType;
  @Array(129)
  external Array<Uint16> wszCallout;
  external GUID guidGameport;
}

class DIJOYUSERVALUES extends Struct {
  @Uint32()
  external int dwSize;
  external joyreguservalues_tag ruv;
  @Array(129)
  external Array<Uint16> wszGlobalDriver;
  @Array(129)
  external Array<Uint16> wszGameportEmulator;
}

class KEYBOARD_INPUT_DATA extends Struct {
  @Uint16()
  external int UnitId;
  @Uint16()
  external int MakeCode;
  @Uint16()
  external int Flags;
  @Uint16()
  external int Reserved;
  @Uint32()
  external int ExtraInformation;
}

class KEYBOARD_TYPEMATIC_PARAMETERS extends Struct {
  @Uint16()
  external int UnitId;
  @Uint16()
  external int Rate;
  @Uint16()
  external int Delay;
}

class KEYBOARD_ID extends Struct {
  @Uint8()
  external int Type;
  @Uint8()
  external int Subtype;
}

class KEYBOARD_ATTRIBUTES extends Struct {
  external KEYBOARD_ID KeyboardIdentifier;
  @Uint16()
  external int KeyboardMode;
  @Uint16()
  external int NumberOfFunctionKeys;
  @Uint16()
  external int NumberOfIndicators;
  @Uint16()
  external int NumberOfKeysTotal;
  @Uint32()
  external int InputDataQueueLength;
  external KEYBOARD_TYPEMATIC_PARAMETERS KeyRepeatMinimum;
  external KEYBOARD_TYPEMATIC_PARAMETERS KeyRepeatMaximum;
}

class KEYBOARD_EXTENDED_ATTRIBUTES extends Struct {
  @Uint8()
  external int Version;
  @Uint8()
  external int FormFactor;
  @Uint8()
  external int KeyType;
  @Uint8()
  external int PhysicalLayout;
  @Uint8()
  external int VendorSpecificPhysicalLayout;
  @Uint8()
  external int IETFLanguageTagIndex;
  @Uint8()
  external int ImplementedInputAssistControls;
}

class KEYBOARD_INDICATOR_PARAMETERS extends Struct {
  @Uint16()
  external int UnitId;
  @Uint16()
  external int LedFlags;
}

class INDICATOR_LIST extends Struct {
  @Uint16()
  external int MakeCode;
  @Uint16()
  external int IndicatorFlags;
}

class KEYBOARD_INDICATOR_TRANSLATION extends Struct {
  @Uint16()
  external int NumberOfIndicatorKeys;
  @Array(1)
  external Array<INDICATOR_LIST> IndicatorList;
}

class KEYBOARD_UNIT_ID_PARAMETER extends Struct {
  @Uint16()
  external int UnitId;
}

class KEYBOARD_IME_STATUS extends Struct {
  @Uint16()
  external int UnitId;
  @Uint32()
  external int ImeOpen;
  @Uint32()
  external int ImeConvMode;
}

class MOUSE_INPUT_DATA extends Struct {
  @Uint16()
  external int UnitId;
  @Uint16()
  external int Flags;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int RawButtons;
  @Int32()
  external int LastX;
  @Int32()
  external int LastY;
  @Uint32()
  external int ExtraInformation;
}

class MOUSE_ATTRIBUTES extends Struct {
  @Uint16()
  external int MouseIdentifier;
  @Uint16()
  external int NumberOfButtons;
  @Uint16()
  external int SampleRate;
  @Uint32()
  external int InputDataQueueLength;
}

class MOUSE_UNIT_ID_PARAMETER extends Struct {
  @Uint16()
  external int UnitId;
}

class USAGE_AND_PAGE extends Struct {
  @Uint16()
  external int Usage;
  @Uint16()
  external int UsagePage;
}

class HIDP_BUTTON_CAPS extends Struct {
  @Uint16()
  external int UsagePage;
  @Uint8()
  external int ReportID;
  @Uint8()
  external int IsAlias;
  @Uint16()
  external int BitField;
  @Uint16()
  external int LinkCollection;
  @Uint16()
  external int LinkUsage;
  @Uint16()
  external int LinkUsagePage;
  @Uint8()
  external int IsRange;
  @Uint8()
  external int IsStringRange;
  @Uint8()
  external int IsDesignatorRange;
  @Uint8()
  external int IsAbsolute;
  @Array(10)
  external Array<Uint32> Reserved;
  @Uint32()
  external int Anonymous;
}

class HIDP_VALUE_CAPS extends Struct {
  @Uint16()
  external int UsagePage;
  @Uint8()
  external int ReportID;
  @Uint8()
  external int IsAlias;
  @Uint16()
  external int BitField;
  @Uint16()
  external int LinkCollection;
  @Uint16()
  external int LinkUsage;
  @Uint16()
  external int LinkUsagePage;
  @Uint8()
  external int IsRange;
  @Uint8()
  external int IsStringRange;
  @Uint8()
  external int IsDesignatorRange;
  @Uint8()
  external int IsAbsolute;
  @Uint8()
  external int HasNull;
  @Uint8()
  external int Reserved;
  @Uint16()
  external int BitSize;
  @Uint16()
  external int ReportCount;
  @Array(5)
  external Array<Uint16> Reserved2;
  @Uint32()
  external int UnitsExp;
  @Uint32()
  external int Units;
  @Int32()
  external int LogicalMin;
  @Int32()
  external int LogicalMax;
  @Int32()
  external int PhysicalMin;
  @Int32()
  external int PhysicalMax;
  @Uint32()
  external int Anonymous;
}

class HIDP_LINK_COLLECTION_NODE extends Struct {
  @Uint16()
  external int LinkUsage;
  @Uint16()
  external int LinkUsagePage;
  @Uint16()
  external int Parent;
  @Uint16()
  external int NumberOfChildren;
  @Uint16()
  external int NextSibling;
  @Uint16()
  external int FirstChild;
  @Uint32()
  external int _bitfield;
  external Pointer UserContext;
}

class _HIDP_PREPARSED_DATA extends Struct {}

class HIDP_CAPS extends Struct {
  @Uint16()
  external int Usage;
  @Uint16()
  external int UsagePage;
  @Uint16()
  external int InputReportByteLength;
  @Uint16()
  external int OutputReportByteLength;
  @Uint16()
  external int FeatureReportByteLength;
  @Array(17)
  external Array<Uint16> Reserved;
  @Uint16()
  external int NumberLinkCollectionNodes;
  @Uint16()
  external int NumberInputButtonCaps;
  @Uint16()
  external int NumberInputValueCaps;
  @Uint16()
  external int NumberInputDataIndices;
  @Uint16()
  external int NumberOutputButtonCaps;
  @Uint16()
  external int NumberOutputValueCaps;
  @Uint16()
  external int NumberOutputDataIndices;
  @Uint16()
  external int NumberFeatureButtonCaps;
  @Uint16()
  external int NumberFeatureValueCaps;
  @Uint16()
  external int NumberFeatureDataIndices;
}

class HIDP_DATA extends Struct {
  @Uint16()
  external int DataIndex;
  @Uint16()
  external int Reserved;
  @Uint32()
  external int Anonymous;
}

class HIDP_UNKNOWN_TOKEN extends Struct {
  @Uint8()
  external int Token;
  @Array(3)
  external Array<Uint8> Reserved;
  @Uint32()
  external int BitField;
}

class HIDP_EXTENDED_ATTRIBUTES extends Struct {
  @Uint8()
  external int NumGlobalUnknowns;
  @Array(3)
  external Array<Uint8> Reserved;
  external Pointer<HIDP_UNKNOWN_TOKEN> GlobalUnknowns;
  @Array(1)
  external Array<Uint32> Data;
}

class HIDP_KEYBOARD_MODIFIER_STATE extends Struct {
  @Uint32()
  external int Anonymous;
}

class HIDD_CONFIGURATION extends Struct {
  external Pointer cookie;
  @Uint32()
  external int size;
  @Uint32()
  external int RingBufferSize;
}

class HIDD_ATTRIBUTES extends Struct {
  @Uint32()
  external int Size;
  @Uint16()
  external int VendorID;
  @Uint16()
  external int ProductID;
  @Uint16()
  external int VersionNumber;
}

class JOYREGHWVALUES extends Struct {
  external joyrange_tag jrvHardware;
  @Array(4)
  external Array<Uint32> dwPOVValues;
  @Uint32()
  external int dwCalFlags;
}
