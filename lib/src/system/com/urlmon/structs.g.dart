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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/IUnknown.dart';
import '../../../system/com/urlmon/IInternetProtocolSink.dart';
import '../../../system/com/urlmon/IInternetProtocol.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../system/com/IBindCtx.dart';

/// {@category Struct}
class CODEBASEHOLD extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> szDistUnit;

  external Pointer<Utf16> szCodeBase;

  @Uint32()
  external int dwVersionMS;

  @Uint32()
  external int dwVersionLS;

  @Uint32()
  external int dwStyle;
}

/// {@category Struct}
class CONFIRMSAFETY extends Struct {
  external GUID clsid;

  external Pointer<COMObject> pUnk;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DATAINFO extends Struct {
  @Uint32()
  external int ulTotalSize;

  @Uint32()
  external int ulavrPacketSize;

  @Uint32()
  external int ulConnectSpeed;

  @Uint32()
  external int ulProcessorSpeed;
}

/// {@category Struct}
class HIT_LOGGING_INFO extends Struct {
  @Uint32()
  external int dwStructSize;

  external Pointer<Utf8> lpszLoggedUrlName;

  external SYSTEMTIME StartTime;

  external SYSTEMTIME EndTime;

  external Pointer<Utf8> lpszExtendedInfo;
}

/// {@category Struct}
class PROTOCOLDATA extends Struct {
  @Uint32()
  external int grfFlags;

  @Uint32()
  external int dwState;

  external Pointer pData;

  @Uint32()
  external int cbData;
}

/// {@category Struct}
class PROTOCOLFILTERDATA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<COMObject> pProtocolSink;

  external Pointer<COMObject> pProtocol;

  external Pointer<COMObject> pUnk;

  @Uint32()
  external int dwFilterFlags;
}

/// {@category Struct}
class PROTOCOL_ARGUMENT extends Struct {
  external Pointer<Utf16> szMethod;

  external Pointer<Utf16> szTargetUrl;
}

/// {@category Struct}
class REMSECURITY_ATTRIBUTES extends Struct {
  @Uint32()
  external int nLength;

  @Uint32()
  external int lpSecurityDescriptor;

  @Int32()
  external int bInheritHandle;
}

/// {@category Struct}
class RemBINDINFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> szExtraInfo;

  @Uint32()
  external int grfBindInfoF;

  @Uint32()
  external int dwBindVerb;

  external Pointer<Utf16> szCustomVerb;

  @Uint32()
  external int cbstgmedData;

  @Uint32()
  external int dwOptions;

  @Uint32()
  external int dwOptionsFlags;

  @Uint32()
  external int dwCodePage;

  external REMSECURITY_ATTRIBUTES securityAttributes;

  external GUID iid;

  external Pointer<COMObject> pUnk;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class RemFORMATETC extends Struct {
  @Uint32()
  external int cfFormat;

  @Uint32()
  external int ptd;

  @Uint32()
  external int dwAspect;

  @Int32()
  external int lindex;

  @Uint32()
  external int tymed;
}

/// {@category Struct}
class SOFTDISTINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwAdState;

  external Pointer<Utf16> szTitle;

  external Pointer<Utf16> szAbstract;

  external Pointer<Utf16> szHREF;

  @Uint32()
  external int dwInstalledVersionMS;

  @Uint32()
  external int dwInstalledVersionLS;

  @Uint32()
  external int dwUpdateVersionMS;

  @Uint32()
  external int dwUpdateVersionLS;

  @Uint32()
  external int dwAdvertisedVersionMS;

  @Uint32()
  external int dwAdvertisedVersionLS;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class StartParam extends Struct {
  external GUID iid;

  external Pointer<COMObject> pIBindCtx;

  external Pointer<COMObject> pItf;
}

/// {@category Struct}
class ZONEATTRIBUTES extends Struct {
  @Uint32()
  external int cbSize;

  @Array(260)
  external Array<Uint16> _szDisplayName;

  String get szDisplayName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szDisplayName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDisplayName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szDisplayName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(200)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 200; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(200, '\x00');
    for (var i = 0; i < 200; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szIconPath;

  String get szIconPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szIconPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szIconPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szIconPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwTemplateMinLevel;

  @Uint32()
  external int dwTemplateRecommended;

  @Uint32()
  external int dwTemplateCurrentLevel;

  @Uint32()
  external int dwFlags;
}
