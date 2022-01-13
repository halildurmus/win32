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
import '../../devices/humaninterfacedevice/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';

/// {@category Struct}
class CPOINT extends Struct {
  @Int32()
  external int lP;

  @Uint32()
  external int dwLog;
}

/// {@category Struct}
class DIACTIONFORMAT extends Struct {
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

  @Array(260)
  external Array<Uint16> _tszActionMap;

  String get tszActionMap {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszActionMap[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszActionMap(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszActionMap[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DIACTION extends Struct {
  @IntPtr()
  external int uAppData;

  @Uint32()
  external int dwSemantic;

  @Uint32()
  external int dwFlags;

  external _DIACTIONW__Anonymous_e__Union Anonymous;

  external GUID guidInstance;

  @Uint32()
  external int dwObjID;

  @Uint32()
  external int dwHow;
}

/// {@category Struct}
class _DIACTIONW__Anonymous_e__Union extends Union {
  external Pointer<Utf16> lptszActionName;

  @Uint32()
  external int uResIdString;
}

extension DIACTIONW_Extension on DIACTION {
  Pointer<Utf16> get lptszActionName => this.Anonymous.lptszActionName;
  set lptszActionName(Pointer<Utf16> value) =>
      this.Anonymous.lptszActionName = value;

  int get uResIdString => this.Anonymous.uResIdString;
  set uResIdString(int value) => this.Anonymous.uResIdString = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DICONFIGUREDEVICESPARAMS extends Struct {
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

  external Pointer<COMObject> lpUnkDDSTarget;
}

/// {@category Struct}
class DICONSTANTFORCE extends Struct {
  @Int32()
  external int lMagnitude;
}

/// {@category Struct}
class DICUSTOMFORCE extends Struct {
  @Uint32()
  external int cChannels;

  @Uint32()
  external int dwSamplePeriod;

  @Uint32()
  external int cSamples;

  external Pointer<Int32> rglForceData;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DIDEVICEIMAGEINFOHEADER extends Struct {
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

/// {@category Struct}
class DIDEVICEIMAGEINFO extends Struct {
  @Array(260)
  external Array<Uint16> _tszImagePath;

  String get tszImagePath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszImagePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszImagePath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszImagePath[i] = stringToStore.codeUnitAt(i);
    }
  }

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

/// {@category Struct}
class DIDEVICEINSTANCE extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guidInstance;

  external GUID guidProduct;

  @Uint32()
  external int dwDevType;

  @Array(260)
  external Array<Uint16> _tszInstanceName;

  String get tszInstanceName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszInstanceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszInstanceName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszInstanceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _tszProductName;

  String get tszProductName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszProductName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszProductName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszProductName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external GUID guidFFDriver;

  @Uint16()
  external int wUsagePage;

  @Uint16()
  external int wUsage;
}

/// {@category Struct}
class DIDEVICEINSTANCE_DX3 extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guidInstance;

  external GUID guidProduct;

  @Uint32()
  external int dwDevType;

  @Array(260)
  external Array<Uint16> _tszInstanceName;

  String get tszInstanceName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszInstanceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszInstanceName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszInstanceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _tszProductName;

  String get tszProductName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszProductName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszProductName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszProductName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DIDEVICEOBJECTINSTANCE extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guidType;

  @Uint32()
  external int dwOfs;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwFlags;

  @Array(260)
  external Array<Uint16> _tszName;

  String get tszName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszName[i] = stringToStore.codeUnitAt(i);
    }
  }

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

/// {@category Struct}
class DIDEVICEOBJECTINSTANCE_DX3 extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guidType;

  @Uint32()
  external int dwOfs;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwFlags;

  @Array(260)
  external Array<Uint16> _tszName;

  String get tszName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DIDEVICESTATE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwLoad;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DIEFFECTINFO extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guid;

  @Uint32()
  external int dwEffType;

  @Uint32()
  external int dwStaticParams;

  @Uint32()
  external int dwDynamicParams;

  @Array(260)
  external Array<Uint16> _tszName;

  String get tszName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_tszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set tszName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _tszName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DIFFDEVICEATTRIBUTES extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwFFSamplePeriod;

  @Uint32()
  external int dwFFMinTimeResolution;
}

/// {@category Struct}
class DIFFOBJECTATTRIBUTES extends Struct {
  @Uint32()
  external int dwFFMaxForce;

  @Uint32()
  external int dwFFForceResolution;
}

/// {@category Struct}
class DIFILEEFFECT extends Struct {
  @Uint32()
  external int dwSize;

  external GUID GuidEffect;

  external Pointer<DIEFFECT> lpDiEffect;

  @Array(260)
  external Array<Uint8> szFriendlyName;
}

/// {@category Struct}
class DIHIDFFINITINFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pwszDeviceInterface;

  external GUID GuidInstance;
}

/// {@category Struct}
class DIJOYCONFIG extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guidInstance;

  external JOYREGHWCONFIG hwc;

  @Uint32()
  external int dwGain;

  @Array(256)
  external Array<Uint16> _wszType;

  String get wszType {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszType(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _wszCallout;

  String get wszCallout {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszCallout[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszCallout(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszCallout[i] = stringToStore.codeUnitAt(i);
    }
  }

  external GUID guidGameport;
}

/// {@category Struct}
class DIJOYCONFIG_DX5 extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guidInstance;

  external JOYREGHWCONFIG hwc;

  @Uint32()
  external int dwGain;

  @Array(256)
  external Array<Uint16> _wszType;

  String get wszType {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszType(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _wszCallout;

  String get wszCallout {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszCallout[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszCallout(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszCallout[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DIJOYTYPEINFO extends Struct {
  @Uint32()
  external int dwSize;

  external JOYREGHWSETTINGS hws;

  external GUID clsidConfig;

  @Array(256)
  external Array<Uint16> _wszDisplayName;

  String get wszDisplayName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszDisplayName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDisplayName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszDisplayName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wszCallout;

  String get wszCallout {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszCallout[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszCallout(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszCallout[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _wszHardwareId;

  String get wszHardwareId {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszHardwareId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszHardwareId(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszHardwareId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFlags1;

  @Uint32()
  external int dwFlags2;

  @Array(256)
  external Array<Uint16> _wszMapFile;

  String get wszMapFile {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszMapFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszMapFile(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszMapFile[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DIJOYTYPEINFO_DX5 extends Struct {
  @Uint32()
  external int dwSize;

  external JOYREGHWSETTINGS hws;

  external GUID clsidConfig;

  @Array(256)
  external Array<Uint16> _wszDisplayName;

  String get wszDisplayName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszDisplayName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDisplayName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszDisplayName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wszCallout;

  String get wszCallout {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszCallout[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszCallout(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszCallout[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DIJOYTYPEINFO_DX6 extends Struct {
  @Uint32()
  external int dwSize;

  external JOYREGHWSETTINGS hws;

  external GUID clsidConfig;

  @Array(256)
  external Array<Uint16> _wszDisplayName;

  String get wszDisplayName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszDisplayName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDisplayName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszDisplayName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wszCallout;

  String get wszCallout {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszCallout[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszCallout(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszCallout[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _wszHardwareId;

  String get wszHardwareId {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszHardwareId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszHardwareId(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszHardwareId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFlags1;
}

/// {@category Struct}
class DIJOYUSERVALUES extends Struct {
  @Uint32()
  external int dwSize;

  external JOYREGUSERVALUES ruv;

  @Array(256)
  external Array<Uint16> _wszGlobalDriver;

  String get wszGlobalDriver {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszGlobalDriver[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszGlobalDriver(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszGlobalDriver[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _wszGameportEmulator;

  String get wszGameportEmulator {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszGameportEmulator[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszGameportEmulator(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszGameportEmulator[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DIOBJECTATTRIBUTES extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint16()
  external int wUsagePage;

  @Uint16()
  external int wUsage;
}

/// {@category Struct}
class DIOBJECTCALIBRATION extends Struct {
  @Int32()
  external int lMin;

  @Int32()
  external int lCenter;

  @Int32()
  external int lMax;
}

/// {@category Struct}
class DIOBJECTDATAFORMAT extends Struct {
  external Pointer<GUID> pguid;

  @Uint32()
  external int dwOfs;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
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

/// {@category Struct}
class DIPOVCALIBRATION extends Struct {
  @Array(5)
  external Array<Int32> lMin;

  @Array(5)
  external Array<Int32> lMax;
}

/// {@category Struct}
class DIPROPCAL extends Struct {
  external DIPROPHEADER diph;

  @Int32()
  external int lMin;

  @Int32()
  external int lCenter;

  @Int32()
  external int lMax;
}

/// {@category Struct}
class DIPROPCALPOV extends Struct {
  external DIPROPHEADER diph;

  @Array(5)
  external Array<Int32> lMin;

  @Array(5)
  external Array<Int32> lMax;
}

/// {@category Struct}
class DIPROPCPOINTS extends Struct {
  external DIPROPHEADER diph;

  @Uint32()
  external int dwCPointsNum;

  @Array(8)
  external Array<CPOINT> cp;
}

/// {@category Struct}
class DIPROPDWORD extends Struct {
  external DIPROPHEADER diph;

  @Uint32()
  external int dwData;
}

/// {@category Struct}
class DIPROPGUIDANDPATH extends Struct {
  external DIPROPHEADER diph;

  external GUID guidClass;

  @Array(260)
  external Array<Uint16> _wszPath;

  String get wszPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszPath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
class DIPROPPOINTER extends Struct {
  external DIPROPHEADER diph;

  @IntPtr()
  external int uData;
}

/// {@category Struct}
class DIPROPRANGE extends Struct {
  external DIPROPHEADER diph;

  @Int32()
  external int lMin;

  @Int32()
  external int lMax;
}

/// {@category Struct}
class DIPROPSTRING extends Struct {
  external DIPROPHEADER diph;

  @Array(260)
  external Array<Uint16> _wsz;

  String get wsz {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wsz[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wsz(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wsz[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DIRAMPFORCE extends Struct {
  @Int32()
  external int lStart;

  @Int32()
  external int lEnd;
}

/// {@category Struct}
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

/// {@category Struct}
@Packed(4)
class HIDD_CONFIGURATION extends Struct {
  external Pointer cookie;

  @Uint32()
  external int size;

  @Uint32()
  external int RingBufferSize;
}

/// {@category Struct}
class HIDP_BUTTON_ARRAY_DATA extends Struct {
  @Uint16()
  external int ArrayIndex;

  @Uint8()
  external int On;
}

/// {@category Struct}
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

  @Uint16()
  external int ReportCount;

  @Uint16()
  external int Reserved2;

  @Array(9)
  external Array<Uint32> Reserved;

  external _HIDP_BUTTON_CAPS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _HIDP_BUTTON_CAPS__Anonymous_e__Union extends Union {
  external _HIDP_BUTTON_CAPS__Anonymous_e__Union__Range_e__Struct Range;

  external _HIDP_BUTTON_CAPS__Anonymous_e__Union__NotRange_e__Struct NotRange;
}

/// {@category Struct}
class _HIDP_BUTTON_CAPS__Anonymous_e__Union__Range_e__Struct extends Struct {
  @Uint16()
  external int UsageMin;

  @Uint16()
  external int UsageMax;

  @Uint16()
  external int StringMin;

  @Uint16()
  external int StringMax;

  @Uint16()
  external int DesignatorMin;

  @Uint16()
  external int DesignatorMax;

  @Uint16()
  external int DataIndexMin;

  @Uint16()
  external int DataIndexMax;
}

extension HIDP_BUTTON_CAPS__Anonymous_e__Union_Extension on HIDP_BUTTON_CAPS {
  int get UsageMin => this.Anonymous.Range.UsageMin;
  set UsageMin(int value) => this.Anonymous.Range.UsageMin = value;

  int get UsageMax => this.Anonymous.Range.UsageMax;
  set UsageMax(int value) => this.Anonymous.Range.UsageMax = value;

  int get StringMin => this.Anonymous.Range.StringMin;
  set StringMin(int value) => this.Anonymous.Range.StringMin = value;

  int get StringMax => this.Anonymous.Range.StringMax;
  set StringMax(int value) => this.Anonymous.Range.StringMax = value;

  int get DesignatorMin => this.Anonymous.Range.DesignatorMin;
  set DesignatorMin(int value) => this.Anonymous.Range.DesignatorMin = value;

  int get DesignatorMax => this.Anonymous.Range.DesignatorMax;
  set DesignatorMax(int value) => this.Anonymous.Range.DesignatorMax = value;

  int get DataIndexMin => this.Anonymous.Range.DataIndexMin;
  set DataIndexMin(int value) => this.Anonymous.Range.DataIndexMin = value;

  int get DataIndexMax => this.Anonymous.Range.DataIndexMax;
  set DataIndexMax(int value) => this.Anonymous.Range.DataIndexMax = value;
}

/// {@category Struct}
class _HIDP_BUTTON_CAPS__Anonymous_e__Union__NotRange_e__Struct extends Struct {
  @Uint16()
  external int Usage;

  @Uint16()
  external int Reserved1;

  @Uint16()
  external int StringIndex;

  @Uint16()
  external int Reserved2;

  @Uint16()
  external int DesignatorIndex;

  @Uint16()
  external int Reserved3;

  @Uint16()
  external int DataIndex;

  @Uint16()
  external int Reserved4;
}

extension HIDP_BUTTON_CAPS__Anonymous_e__Union_Extension_1 on HIDP_BUTTON_CAPS {
  int get Usage => this.Anonymous.NotRange.Usage;
  set Usage(int value) => this.Anonymous.NotRange.Usage = value;

  int get Reserved1 => this.Anonymous.NotRange.Reserved1;
  set Reserved1(int value) => this.Anonymous.NotRange.Reserved1 = value;

  int get StringIndex => this.Anonymous.NotRange.StringIndex;
  set StringIndex(int value) => this.Anonymous.NotRange.StringIndex = value;

  int get Reserved2 => this.Anonymous.NotRange.Reserved2;
  set Reserved2(int value) => this.Anonymous.NotRange.Reserved2 = value;

  int get DesignatorIndex => this.Anonymous.NotRange.DesignatorIndex;
  set DesignatorIndex(int value) =>
      this.Anonymous.NotRange.DesignatorIndex = value;

  int get Reserved3 => this.Anonymous.NotRange.Reserved3;
  set Reserved3(int value) => this.Anonymous.NotRange.Reserved3 = value;

  int get DataIndex => this.Anonymous.NotRange.DataIndex;
  set DataIndex(int value) => this.Anonymous.NotRange.DataIndex = value;

  int get Reserved4 => this.Anonymous.NotRange.Reserved4;
  set Reserved4(int value) => this.Anonymous.NotRange.Reserved4 = value;
}

extension HIDP_BUTTON_CAPS_Extension on HIDP_BUTTON_CAPS {
  _HIDP_BUTTON_CAPS__Anonymous_e__Union__Range_e__Struct get Range =>
      this.Anonymous.Range;
  set Range(_HIDP_BUTTON_CAPS__Anonymous_e__Union__Range_e__Struct value) =>
      this.Anonymous.Range = value;

  _HIDP_BUTTON_CAPS__Anonymous_e__Union__NotRange_e__Struct get NotRange =>
      this.Anonymous.NotRange;
  set NotRange(
          _HIDP_BUTTON_CAPS__Anonymous_e__Union__NotRange_e__Struct value) =>
      this.Anonymous.NotRange = value;
}

/// {@category Struct}
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

/// {@category Struct}
class HIDP_DATA extends Struct {
  @Uint16()
  external int DataIndex;

  @Uint16()
  external int Reserved;

  external _HIDP_DATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _HIDP_DATA__Anonymous_e__Union extends Union {
  @Uint32()
  external int RawValue;

  @Uint8()
  external int On;
}

extension HIDP_DATA_Extension on HIDP_DATA {
  int get RawValue => this.Anonymous.RawValue;
  set RawValue(int value) => this.Anonymous.RawValue = value;

  int get On => this.Anonymous.On;
  set On(int value) => this.Anonymous.On = value;
}

/// {@category Struct}
@Packed(4)
class HIDP_EXTENDED_ATTRIBUTES extends Struct {
  @Uint8()
  external int NumGlobalUnknowns;

  @Array(3)
  external Array<Uint8> Reserved;

  external Pointer<HIDP_UNKNOWN_TOKEN> GlobalUnknowns;

  @Array(1)
  external Array<Uint32> Data;
}

/// {@category Struct}
class HIDP_KEYBOARD_MODIFIER_STATE extends Struct {
  external _HIDP_KEYBOARD_MODIFIER_STATE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _HIDP_KEYBOARD_MODIFIER_STATE__Anonymous_e__Union extends Union {
  external _HIDP_KEYBOARD_MODIFIER_STATE__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int ul;
}

/// {@category Struct}
class _HIDP_KEYBOARD_MODIFIER_STATE__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension HIDP_KEYBOARD_MODIFIER_STATE__Anonymous_e__Union_Extension
    on HIDP_KEYBOARD_MODIFIER_STATE {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension HIDP_KEYBOARD_MODIFIER_STATE_Extension
    on HIDP_KEYBOARD_MODIFIER_STATE {
  _HIDP_KEYBOARD_MODIFIER_STATE__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _HIDP_KEYBOARD_MODIFIER_STATE__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get ul => this.Anonymous.ul;
  set ul(int value) => this.Anonymous.ul = value;
}

/// {@category Struct}
@Packed(4)
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
  external int bitfield;

  external Pointer UserContext;
}

/// {@category Struct}
class HIDP_UNKNOWN_TOKEN extends Struct {
  @Uint8()
  external int Token;

  @Array(3)
  external Array<Uint8> Reserved;

  @Uint32()
  external int BitField;
}

/// {@category Struct}
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

  external _HIDP_VALUE_CAPS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _HIDP_VALUE_CAPS__Anonymous_e__Union extends Union {
  external _HIDP_VALUE_CAPS__Anonymous_e__Union__Range_e__Struct Range;

  external _HIDP_VALUE_CAPS__Anonymous_e__Union__NotRange_e__Struct NotRange;
}

/// {@category Struct}
class _HIDP_VALUE_CAPS__Anonymous_e__Union__Range_e__Struct extends Struct {
  @Uint16()
  external int UsageMin;

  @Uint16()
  external int UsageMax;

  @Uint16()
  external int StringMin;

  @Uint16()
  external int StringMax;

  @Uint16()
  external int DesignatorMin;

  @Uint16()
  external int DesignatorMax;

  @Uint16()
  external int DataIndexMin;

  @Uint16()
  external int DataIndexMax;
}

extension HIDP_VALUE_CAPS__Anonymous_e__Union_Extension on HIDP_VALUE_CAPS {
  int get UsageMin => this.Anonymous.Range.UsageMin;
  set UsageMin(int value) => this.Anonymous.Range.UsageMin = value;

  int get UsageMax => this.Anonymous.Range.UsageMax;
  set UsageMax(int value) => this.Anonymous.Range.UsageMax = value;

  int get StringMin => this.Anonymous.Range.StringMin;
  set StringMin(int value) => this.Anonymous.Range.StringMin = value;

  int get StringMax => this.Anonymous.Range.StringMax;
  set StringMax(int value) => this.Anonymous.Range.StringMax = value;

  int get DesignatorMin => this.Anonymous.Range.DesignatorMin;
  set DesignatorMin(int value) => this.Anonymous.Range.DesignatorMin = value;

  int get DesignatorMax => this.Anonymous.Range.DesignatorMax;
  set DesignatorMax(int value) => this.Anonymous.Range.DesignatorMax = value;

  int get DataIndexMin => this.Anonymous.Range.DataIndexMin;
  set DataIndexMin(int value) => this.Anonymous.Range.DataIndexMin = value;

  int get DataIndexMax => this.Anonymous.Range.DataIndexMax;
  set DataIndexMax(int value) => this.Anonymous.Range.DataIndexMax = value;
}

/// {@category Struct}
class _HIDP_VALUE_CAPS__Anonymous_e__Union__NotRange_e__Struct extends Struct {
  @Uint16()
  external int Usage;

  @Uint16()
  external int Reserved1;

  @Uint16()
  external int StringIndex;

  @Uint16()
  external int Reserved2;

  @Uint16()
  external int DesignatorIndex;

  @Uint16()
  external int Reserved3;

  @Uint16()
  external int DataIndex;

  @Uint16()
  external int Reserved4;
}

extension HIDP_VALUE_CAPS__Anonymous_e__Union_Extension_1 on HIDP_VALUE_CAPS {
  int get Usage => this.Anonymous.NotRange.Usage;
  set Usage(int value) => this.Anonymous.NotRange.Usage = value;

  int get Reserved1 => this.Anonymous.NotRange.Reserved1;
  set Reserved1(int value) => this.Anonymous.NotRange.Reserved1 = value;

  int get StringIndex => this.Anonymous.NotRange.StringIndex;
  set StringIndex(int value) => this.Anonymous.NotRange.StringIndex = value;

  int get Reserved2 => this.Anonymous.NotRange.Reserved2;
  set Reserved2(int value) => this.Anonymous.NotRange.Reserved2 = value;

  int get DesignatorIndex => this.Anonymous.NotRange.DesignatorIndex;
  set DesignatorIndex(int value) =>
      this.Anonymous.NotRange.DesignatorIndex = value;

  int get Reserved3 => this.Anonymous.NotRange.Reserved3;
  set Reserved3(int value) => this.Anonymous.NotRange.Reserved3 = value;

  int get DataIndex => this.Anonymous.NotRange.DataIndex;
  set DataIndex(int value) => this.Anonymous.NotRange.DataIndex = value;

  int get Reserved4 => this.Anonymous.NotRange.Reserved4;
  set Reserved4(int value) => this.Anonymous.NotRange.Reserved4 = value;
}

extension HIDP_VALUE_CAPS_Extension on HIDP_VALUE_CAPS {
  _HIDP_VALUE_CAPS__Anonymous_e__Union__Range_e__Struct get Range =>
      this.Anonymous.Range;
  set Range(_HIDP_VALUE_CAPS__Anonymous_e__Union__Range_e__Struct value) =>
      this.Anonymous.Range = value;

  _HIDP_VALUE_CAPS__Anonymous_e__Union__NotRange_e__Struct get NotRange =>
      this.Anonymous.NotRange;
  set NotRange(
          _HIDP_VALUE_CAPS__Anonymous_e__Union__NotRange_e__Struct value) =>
      this.Anonymous.NotRange = value;
}

/// {@category Struct}
class HID_COLLECTION_INFORMATION extends Struct {
  @Uint32()
  external int DescriptorSize;

  @Uint8()
  external int Polled;

  @Array(1)
  external Array<Uint8> Reserved1;

  @Uint16()
  external int VendorID;

  @Uint16()
  external int ProductID;

  @Uint16()
  external int VersionNumber;
}

/// {@category Struct}
class HID_DRIVER_CONFIG extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int RingBufferSize;
}

/// {@category Struct}
class HID_XFER_PACKET extends Struct {
  external Pointer<Uint8> reportBuffer;

  @Uint32()
  external int reportBufferLen;

  @Uint8()
  external int reportId;
}

/// {@category Struct}
class INDICATOR_LIST extends Struct {
  @Uint16()
  external int MakeCode;

  @Uint16()
  external int IndicatorFlags;
}

/// {@category Struct}
class INPUT_BUTTON_ENABLE_INFO extends Struct {
  @Int32()
  external int ButtonType;

  @Uint8()
  external int Enabled;
}

/// {@category Struct}
class JOYCALIBRATE extends Struct {
  @Uint32()
  external int wXbase;

  @Uint32()
  external int wXdelta;

  @Uint32()
  external int wYbase;

  @Uint32()
  external int wYdelta;

  @Uint32()
  external int wZbase;

  @Uint32()
  external int wZdelta;
}

/// {@category Struct}
class JOYPOS extends Struct {
  @Uint32()
  external int dwX;

  @Uint32()
  external int dwY;

  @Uint32()
  external int dwZ;

  @Uint32()
  external int dwR;

  @Uint32()
  external int dwU;

  @Uint32()
  external int dwV;
}

/// {@category Struct}
class JOYRANGE extends Struct {
  external JOYPOS jpMin;

  external JOYPOS jpMax;

  external JOYPOS jpCenter;
}

/// {@category Struct}
class JOYREGHWCONFIG extends Struct {
  external JOYREGHWSETTINGS hws;

  @Uint32()
  external int dwUsageSettings;

  external JOYREGHWVALUES hwv;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class JOYREGHWSETTINGS extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwNumButtons;
}

/// {@category Struct}
class JOYREGHWVALUES extends Struct {
  external JOYRANGE jrvHardware;

  @Array(4)
  external Array<Uint32> dwPOVValues;

  @Uint32()
  external int dwCalFlags;
}

/// {@category Struct}
class JOYREGUSERVALUES extends Struct {
  @Uint32()
  external int dwTimeOut;

  external JOYRANGE jrvRanges;

  external JOYPOS jpDeadZone;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KEYBOARD_ID extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Subtype;
}

/// {@category Struct}
class KEYBOARD_IME_STATUS extends Struct {
  @Uint16()
  external int UnitId;

  @Uint32()
  external int ImeOpen;

  @Uint32()
  external int ImeConvMode;
}

/// {@category Struct}
class KEYBOARD_INDICATOR_PARAMETERS extends Struct {
  @Uint16()
  external int UnitId;

  @Uint16()
  external int LedFlags;
}

/// {@category Struct}
class KEYBOARD_INDICATOR_TRANSLATION extends Struct {
  @Uint16()
  external int NumberOfIndicatorKeys;

  @Array(1)
  external Array<INDICATOR_LIST> IndicatorList;
}

/// {@category Struct}
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

/// {@category Struct}
class KEYBOARD_TYPEMATIC_PARAMETERS extends Struct {
  @Uint16()
  external int UnitId;

  @Uint16()
  external int Rate;

  @Uint16()
  external int Delay;
}

/// {@category Struct}
class KEYBOARD_UNIT_ID_PARAMETER extends Struct {
  @Uint16()
  external int UnitId;
}

/// {@category Struct}
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

/// {@category Struct}
class MOUSE_INPUT_DATA extends Struct {
  @Uint16()
  external int UnitId;

  @Uint16()
  external int Flags;

  external _MOUSE_INPUT_DATA__Anonymous_e__Union Anonymous;

  @Uint32()
  external int RawButtons;

  @Int32()
  external int LastX;

  @Int32()
  external int LastY;

  @Uint32()
  external int ExtraInformation;
}

/// {@category Struct}
class _MOUSE_INPUT_DATA__Anonymous_e__Union extends Union {
  @Uint32()
  external int Buttons;

  external _MOUSE_INPUT_DATA__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _MOUSE_INPUT_DATA__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int ButtonFlags;

  @Uint16()
  external int ButtonData;
}

extension MOUSE_INPUT_DATA__Anonymous_e__Union_Extension on MOUSE_INPUT_DATA {
  int get ButtonFlags => this.Anonymous.Anonymous.ButtonFlags;
  set ButtonFlags(int value) => this.Anonymous.Anonymous.ButtonFlags = value;

  int get ButtonData => this.Anonymous.Anonymous.ButtonData;
  set ButtonData(int value) => this.Anonymous.Anonymous.ButtonData = value;
}

extension MOUSE_INPUT_DATA_Extension on MOUSE_INPUT_DATA {
  int get Buttons => this.Anonymous.Buttons;
  set Buttons(int value) => this.Anonymous.Buttons = value;

  _MOUSE_INPUT_DATA__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _MOUSE_INPUT_DATA__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class MOUSE_UNIT_ID_PARAMETER extends Struct {
  @Uint16()
  external int UnitId;
}

/// {@category Struct}
class USAGE_AND_PAGE extends Struct {
  @Uint16()
  external int Usage;

  @Uint16()
  external int UsagePage;
}

/// {@category Struct}
class HIDP_PREPARSED_DATA extends Opaque {}
