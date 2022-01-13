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
import '../../ui/colorsystem/structs.g.dart';
import '../../ui/windowsandmessaging/callbacks.g.dart';
import '../../ui/colorsystem/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// {@category Struct}
class BlackInformation extends Struct {
  @Int32()
  external int fBlackOnly;

  @Float()
  external double blackWeight;
}

/// {@category Struct}
class CMYKCOLOR extends Struct {
  @Uint16()
  external int cyan;

  @Uint16()
  external int magenta;

  @Uint16()
  external int yellow;

  @Uint16()
  external int black;
}

/// {@category Struct}
class COLOR extends Union {
  external GRAYCOLOR gray;

  external RGBCOLOR rgb;

  external CMYKCOLOR cmyk;

  external XYZCOLOR XYZ;

  external YxyCOLOR Yxy;

  external LabCOLOR Lab;

  external GENERIC3CHANNEL gen3ch;

  external NAMEDCOLOR named;

  external HiFiCOLOR hifi;

  external _COLOR__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _COLOR__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int reserved1;

  external Pointer reserved2;
}

extension COLOR_Extension on COLOR {
  int get reserved1 => this.Anonymous.reserved1;
  set reserved1(int value) => this.Anonymous.reserved1 = value;

  Pointer get reserved2 => this.Anonymous.reserved2;
  set reserved2(Pointer value) => this.Anonymous.reserved2 = value;
}

/// {@category Struct}
class COLORMATCHSETUP extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndOwner;

  external Pointer<Utf16> pSourceName;

  external Pointer<Utf16> pDisplayName;

  external Pointer<Utf16> pPrinterName;

  @Uint32()
  external int dwRenderIntent;

  @Uint32()
  external int dwProofingIntent;

  external Pointer<Utf16> pMonitorProfile;

  @Uint32()
  external int ccMonitorProfile;

  external Pointer<Utf16> pPrinterProfile;

  @Uint32()
  external int ccPrinterProfile;

  external Pointer<Utf16> pTargetProfile;

  @Uint32()
  external int ccTargetProfile;

  external Pointer<NativeFunction<DLGPROC>> lpfnHook;

  @IntPtr()
  external int lParam;

  external Pointer<NativeFunction<PCMSCALLBACKW>> lpfnApplyCallback;

  @IntPtr()
  external int lParamApplyCallback;
}

/// {@category Struct}
class EMRCREATECOLORSPACE extends Struct {
  external EMR emr;

  @Uint32()
  external int ihCS;

  external LOGCOLORSPACE lcs;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class ENUMTYPE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFields;

  external Pointer<Utf16> pDeviceName;

  @Uint32()
  external int dwMediaType;

  @Uint32()
  external int dwDitheringMode;

  @Array(2)
  external Array<Uint32> dwResolution;

  @Uint32()
  external int dwCMMType;

  @Uint32()
  external int dwClass;

  @Uint32()
  external int dwDataColorSpace;

  @Uint32()
  external int dwConnectionSpace;

  @Uint32()
  external int dwSignature;

  @Uint32()
  external int dwPlatform;

  @Uint32()
  external int dwProfileFlags;

  @Uint32()
  external int dwManufacturer;

  @Uint32()
  external int dwModel;

  @Array(2)
  external Array<Uint32> dwAttributes;

  @Uint32()
  external int dwRenderingIntent;

  @Uint32()
  external int dwCreator;

  @Uint32()
  external int dwDeviceClass;
}

/// {@category Struct}
class GENERIC3CHANNEL extends Struct {
  @Uint16()
  external int ch1;

  @Uint16()
  external int ch2;

  @Uint16()
  external int ch3;
}

/// {@category Struct}
class GRAYCOLOR extends Struct {
  @Uint16()
  external int gray;
}

/// {@category Struct}
class GamutBoundaryDescription extends Struct {
  external Pointer<PrimaryJabColors> pPrimaries;

  @Uint32()
  external int cNeutralSamples;

  external Pointer<JabColorF> pNeutralSamples;

  external Pointer<GamutShell> pReferenceShell;

  external Pointer<GamutShell> pPlausibleShell;

  external Pointer<GamutShell> pPossibleShell;
}

/// {@category Struct}
class GamutShell extends Struct {
  @Float()
  external double JMin;

  @Float()
  external double JMax;

  @Uint32()
  external int cVertices;

  @Uint32()
  external int cTriangles;

  external Pointer<JabColorF> pVertices;

  external Pointer<GamutShellTriangle> pTriangles;
}

/// {@category Struct}
class GamutShellTriangle extends Struct {
  @Array(3)
  external Array<Uint32> aVertexIndex;
}

/// {@category Struct}
class HiFiCOLOR extends Struct {
  @Array(8)
  external Array<Uint8> channel;
}

/// {@category Struct}
class JChColorF extends Struct {
  @Float()
  external double J;

  @Float()
  external double C;

  @Float()
  external double h;
}

/// {@category Struct}
class JabColorF extends Struct {
  @Float()
  external double J;

  @Float()
  external double a;

  @Float()
  external double b;
}

/// {@category Struct}
class LOGCOLORSPACE extends Struct {
  @Uint32()
  external int lcsSignature;

  @Uint32()
  external int lcsVersion;

  @Uint32()
  external int lcsSize;

  @Int32()
  external int lcsCSType;

  @Int32()
  external int lcsIntent;

  external CIEXYZTRIPLE lcsEndpoints;

  @Uint32()
  external int lcsGammaRed;

  @Uint32()
  external int lcsGammaGreen;

  @Uint32()
  external int lcsGammaBlue;

  @Array(260)
  external Array<Uint16> _lcsFilename;

  String get lcsFilename {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_lcsFilename[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set lcsFilename(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _lcsFilename[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LabCOLOR extends Struct {
  @Uint16()
  external int L;

  @Uint16()
  external int a;

  @Uint16()
  external int b;
}

/// {@category Struct}
class NAMEDCOLOR extends Struct {
  @Uint32()
  external int dwIndex;
}

/// {@category Struct}
class NAMED_PROFILE_INFO extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwCount;

  @Uint32()
  external int dwCountDevCoordinates;

  @Array(32)
  external Array<Int8> szPrefix;

  @Array(32)
  external Array<Int8> szSuffix;
}

/// {@category Struct}
class PROFILE extends Struct {
  @Uint32()
  external int dwType;

  external Pointer pProfileData;

  @Uint32()
  external int cbDataSize;
}

/// {@category Struct}
class PROFILEHEADER extends Struct {
  @Uint32()
  external int phSize;

  @Uint32()
  external int phCMMType;

  @Uint32()
  external int phVersion;

  @Uint32()
  external int phClass;

  @Uint32()
  external int phDataColorSpace;

  @Uint32()
  external int phConnectionSpace;

  @Array(3)
  external Array<Uint32> phDateTime;

  @Uint32()
  external int phSignature;

  @Uint32()
  external int phPlatform;

  @Uint32()
  external int phProfileFlags;

  @Uint32()
  external int phManufacturer;

  @Uint32()
  external int phModel;

  @Array(2)
  external Array<Uint32> phAttributes;

  @Uint32()
  external int phRenderingIntent;

  external CIEXYZ phIlluminant;

  @Uint32()
  external int phCreator;

  @Array(44)
  external Array<Uint8> phReserved;
}

/// {@category Struct}
class PrimaryJabColors extends Struct {
  external JabColorF red;

  external JabColorF yellow;

  external JabColorF green;

  external JabColorF cyan;

  external JabColorF blue;

  external JabColorF magenta;

  external JabColorF black;

  external JabColorF white;
}

/// {@category Struct}
class PrimaryXYZColors extends Struct {
  external XYZColorF red;

  external XYZColorF yellow;

  external XYZColorF green;

  external XYZColorF cyan;

  external XYZColorF blue;

  external XYZColorF magenta;

  external XYZColorF black;

  external XYZColorF white;
}

/// {@category Struct}
class RGBCOLOR extends Struct {
  @Uint16()
  external int red;

  @Uint16()
  external int green;

  @Uint16()
  external int blue;
}

/// {@category Struct}
class WCS_DEVICE_MHC2_CAPABILITIES extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int SupportsMhc2;

  @Uint32()
  external int RegammaLutEntryCount;

  @Uint32()
  external int CscXyzMatrixRows;

  @Uint32()
  external int CscXyzMatrixColumns;
}

/// {@category Struct}
class WCS_DEVICE_VCGT_CAPABILITIES extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int SupportsVcgt;
}

/// {@category Struct}
class XYZCOLOR extends Struct {
  @Uint16()
  external int X;

  @Uint16()
  external int Y;

  @Uint16()
  external int Z;
}

/// {@category Struct}
class XYZColorF extends Struct {
  @Float()
  external double X;

  @Float()
  external double Y;

  @Float()
  external double Z;
}

/// {@category Struct}
class YxyCOLOR extends Struct {
  @Uint16()
  external int Y;

  @Uint16()
  external int x;

  @Uint16()
  external int y;
}
