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
import '../../system/grouppolicy/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../system/wmi/IWbemServices.dart';

/// {@category Struct}
class GPOBROWSEINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndOwner;

  external Pointer<Utf16> lpTitle;

  external Pointer<Utf16> lpInitialOU;

  external Pointer<Utf16> lpDSPath;

  @Uint32()
  external int dwDSPathSize;

  external Pointer<Utf16> lpName;

  @Uint32()
  external int dwNameSize;

  @Int32()
  external int gpoType;

  @Int32()
  external int gpoHint;
}

/// {@category Struct}
class GROUP_POLICY_OBJECT extends Struct {
  @Uint32()
  external int dwOptions;

  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> lpDSPath;

  external Pointer<Utf16> lpFileSysPath;

  external Pointer<Utf16> lpDisplayName;

  @Array(50)
  external Array<Uint16> _szGPOName;

  String get szGPOName {
    final charCodes = <int>[];
    for (var i = 0; i < 50; i++) {
      charCodes.add(_szGPOName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szGPOName(String value) {
    final stringToStore = value.padRight(50, '\x00');
    for (var i = 0; i < 50; i++) {
      _szGPOName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int GPOLink;

  @IntPtr()
  external int lParam;

  external Pointer<GROUP_POLICY_OBJECT> pNext;

  external Pointer<GROUP_POLICY_OBJECT> pPrev;

  external Pointer<Utf16> lpExtensions;

  @IntPtr()
  external int lParam2;

  external Pointer<Utf16> lpLink;
}

/// {@category Struct}
class INSTALLDATA extends Struct {
  @Int32()
  external int Type;

  external INSTALLSPEC Spec;
}

/// {@category Struct}
class INSTALLSPEC extends Union {
  external _INSTALLSPEC__AppName_e__Struct AppName;

  external Pointer<Utf16> FileExt;

  external Pointer<Utf16> ProgId;

  external _INSTALLSPEC__COMClass_e__Struct COMClass;
}

/// {@category Struct}
class _INSTALLSPEC__AppName_e__Struct extends Struct {
  external Pointer<Utf16> Name;

  external GUID GPOId;
}

extension INSTALLSPEC_Extension on INSTALLSPEC {
  Pointer<Utf16> get Name => this.AppName.Name;
  set Name(Pointer<Utf16> value) => this.AppName.Name = value;

  GUID get GPOId => this.AppName.GPOId;
  set GPOId(GUID value) => this.AppName.GPOId = value;
}

/// {@category Struct}
class _INSTALLSPEC__COMClass_e__Struct extends Struct {
  external GUID Clsid;

  @Uint32()
  external int ClsCtx;
}

extension INSTALLSPEC_Extension_1 on INSTALLSPEC {
  GUID get Clsid => this.COMClass.Clsid;
  set Clsid(GUID value) => this.COMClass.Clsid = value;

  int get ClsCtx => this.COMClass.ClsCtx;
  set ClsCtx(int value) => this.COMClass.ClsCtx = value;
}

/// {@category Struct}
class LOCALMANAGEDAPPLICATION extends Struct {
  external Pointer<Utf16> pszDeploymentName;

  external Pointer<Utf16> pszPolicyName;

  external Pointer<Utf16> pszProductId;

  @Uint32()
  external int dwState;
}

/// {@category Struct}
class MANAGEDAPPLICATION extends Struct {
  external Pointer<Utf16> pszPackageName;

  external Pointer<Utf16> pszPublisher;

  @Uint32()
  external int dwVersionHi;

  @Uint32()
  external int dwVersionLo;

  @Uint32()
  external int dwRevision;

  external GUID GpoId;

  external Pointer<Utf16> pszPolicyName;

  external GUID ProductId;

  @Uint16()
  external int Language;

  external Pointer<Utf16> pszOwner;

  external Pointer<Utf16> pszCompany;

  external Pointer<Utf16> pszComments;

  external Pointer<Utf16> pszContact;

  external Pointer<Utf16> pszSupportUrl;

  @Uint32()
  external int dwPathType;

  @Int32()
  external int bInstalled;
}

/// {@category Struct}
class POLICYSETTINGSTATUSINFO extends Struct {
  external Pointer<Utf16> szKey;

  external Pointer<Utf16> szEventSource;

  external Pointer<Utf16> szEventLogName;

  @Uint32()
  external int dwEventID;

  @Uint32()
  external int dwErrorCode;

  @Int32()
  external int status;

  external SYSTEMTIME timeLogged;
}

/// {@category Struct}
class RSOP_TARGET extends Struct {
  external Pointer<Utf16> pwszAccountName;

  external Pointer<Utf16> pwszNewSOM;

  external Pointer<SAFEARRAY> psaSecurityGroups;

  external Pointer pRsopToken;

  external Pointer<GROUP_POLICY_OBJECT> pGPOList;

  external Pointer<COMObject> pWbemServices;
}
