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
import '../../security/structs.g.dart';
import '../../system/dataexchange/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// {@category Struct}
class CONVCONTEXT extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int wFlags;

  @Uint32()
  external int wCountryID;

  @Int32()
  external int iCodePage;

  @Uint32()
  external int dwLangID;

  @Uint32()
  external int dwSecurity;

  external SECURITY_QUALITY_OF_SERVICE qos;
}

/// {@category Struct}
class CONVINFO extends Struct {
  @Uint32()
  external int cb;

  @IntPtr()
  external int hUser;

  @IntPtr()
  external int hConvPartner;

  @IntPtr()
  external int hszSvcPartner;

  @IntPtr()
  external int hszServiceReq;

  @IntPtr()
  external int hszTopic;

  @IntPtr()
  external int hszItem;

  @Uint32()
  external int wFmt;

  @Uint32()
  external int wType;

  @Uint32()
  external int wStatus;

  @Uint32()
  external int wConvst;

  @Uint32()
  external int wLastError;

  @IntPtr()
  external int hConvList;

  external CONVCONTEXT ConvCtxt;

  @IntPtr()
  external int hwnd;

  @IntPtr()
  external int hwndPartner;
}

/// {@category Struct}
class COPYDATASTRUCT extends Struct {
  @IntPtr()
  external int dwData;

  @Uint32()
  external int cbData;

  external Pointer lpData;
}

/// {@category Struct}
class DDEACK extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class DDEADVISE extends Struct {
  @Uint16()
  external int bitfield;

  @Int16()
  external int cfFormat;
}

/// {@category Struct}
class DDEDATA extends Struct {
  @Uint16()
  external int bitfield;

  @Int16()
  external int cfFormat;

  @Array(1)
  external Array<Uint8> Value;
}

/// {@category Struct}
class DDELN extends Struct {
  @Uint16()
  external int bitfield;

  @Int16()
  external int cfFormat;
}

/// {@category Struct}
class DDEML_MSG_HOOK_DATA extends Struct {
  @IntPtr()
  external int uiLo;

  @IntPtr()
  external int uiHi;

  @Uint32()
  external int cbData;

  @Array(8)
  external Array<Uint32> Data;
}

/// {@category Struct}
class DDEPOKE extends Struct {
  @Uint16()
  external int bitfield;

  @Int16()
  external int cfFormat;

  @Array(1)
  external Array<Uint8> Value;
}

/// {@category Struct}
class DDEUP extends Struct {
  @Uint16()
  external int bitfield;

  @Int16()
  external int cfFormat;

  @Array(1)
  external Array<Uint8> rgb;
}

/// {@category Struct}
class HSZPAIR extends Struct {
  @IntPtr()
  external int hszSvc;

  @IntPtr()
  external int hszTopic;
}

/// {@category Struct}
class METAFILEPICT extends Struct {
  @Int32()
  external int mm;

  @Int32()
  external int xExt;

  @Int32()
  external int yExt;

  @IntPtr()
  external int hMF;
}

/// {@category Struct}
class MONCBSTRUCT extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int dwTime;

  @IntPtr()
  external int hTask;

  @Uint32()
  external int dwRet;

  @Uint32()
  external int wType;

  @Uint32()
  external int wFmt;

  @IntPtr()
  external int hConv;

  @IntPtr()
  external int hsz1;

  @IntPtr()
  external int hsz2;

  @IntPtr()
  external int hData;

  @IntPtr()
  external int dwData1;

  @IntPtr()
  external int dwData2;

  external CONVCONTEXT cc;

  @Uint32()
  external int cbData;

  @Array(8)
  external Array<Uint32> Data;
}

/// {@category Struct}
class MONCONVSTRUCT extends Struct {
  @Uint32()
  external int cb;

  @Int32()
  external int fConnect;

  @Uint32()
  external int dwTime;

  @IntPtr()
  external int hTask;

  @IntPtr()
  external int hszSvc;

  @IntPtr()
  external int hszTopic;

  @IntPtr()
  external int hConvClient;

  @IntPtr()
  external int hConvServer;
}

/// {@category Struct}
class MONERRSTRUCT extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int wLastError;

  @Uint32()
  external int dwTime;

  @IntPtr()
  external int hTask;
}

/// {@category Struct}
class MONHSZSTRUCT extends Struct {
  @Uint32()
  external int cb;

  @Int32()
  external int fsAction;

  @Uint32()
  external int dwTime;

  @IntPtr()
  external int hsz;

  @IntPtr()
  external int hTask;

  @Array(1)
  external Array<Uint16> _str;

  String get str {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_str[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set str(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _str[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class MONLINKSTRUCT extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int dwTime;

  @IntPtr()
  external int hTask;

  @Int32()
  external int fEstablished;

  @Int32()
  external int fNoData;

  @IntPtr()
  external int hszSvc;

  @IntPtr()
  external int hszTopic;

  @IntPtr()
  external int hszItem;

  @Uint32()
  external int wFmt;

  @Int32()
  external int fServer;

  @IntPtr()
  external int hConvServer;

  @IntPtr()
  external int hConvClient;
}

/// {@category Struct}
class MONMSGSTRUCT extends Struct {
  @Uint32()
  external int cb;

  @IntPtr()
  external int hwndTo;

  @Uint32()
  external int dwTime;

  @IntPtr()
  external int hTask;

  @Uint32()
  external int wMsg;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;

  external DDEML_MSG_HOOK_DATA dmhd;
}
