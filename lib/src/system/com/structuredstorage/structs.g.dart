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
import '../../../system/com/structuredstorage/structs.g.dart';
import '../../../system/com/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/IStream.dart';

/// {@category Struct}
class BSTRBLOB extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pData;
}

/// {@category Struct}
class CABOOL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int16> pElems;
}

/// {@category Struct}
class CABSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;
}

/// {@category Struct}
class CABSTRBLOB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<BSTRBLOB> pElems;
}

/// {@category Struct}
class CAC extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Utf8> pElems;
}

/// {@category Struct}
class CACLIPDATA extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CLIPDATA> pElems;
}

/// {@category Struct}
class CACLSID extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<GUID> pElems;
}

/// {@category Struct}
class CACY extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CY> pElems;
}

/// {@category Struct}
class CADATE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;
}

/// {@category Struct}
class CADBL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;
}

/// {@category Struct}
class CAFILETIME extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<FILETIME> pElems;
}

/// {@category Struct}
class CAFLT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Float> pElems;
}

/// {@category Struct}
class CAH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int64> pElems;
}

/// {@category Struct}
class CAI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int16> pElems;
}

/// {@category Struct}
class CAL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;
}

/// {@category Struct}
class CALPSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf8>> pElems;
}

/// {@category Struct}
class CALPWSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;
}

/// {@category Struct}
class CAPROPVARIANT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<PROPVARIANT> pElems;
}

/// {@category Struct}
class CASCODE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;
}

/// {@category Struct}
class CAUB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint8> pElems;
}

/// {@category Struct}
class CAUH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint64> pElems;
}

/// {@category Struct}
class CAUI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint16> pElems;
}

/// {@category Struct}
class CAUL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint32> pElems;
}

/// {@category Struct}
class CLIPDATA extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int ulClipFmt;

  external Pointer<Uint8> pClipData;
}

/// {@category Struct}
class OLESTREAM extends Struct {
  external Pointer<OLESTREAMVTBL> lpstbl;
}

/// {@category Struct}
class OLESTREAMVTBL extends Struct {
  @IntPtr()
  external int Get;

  @IntPtr()
  external int Put;
}

/// {@category Struct}
class PMemoryAllocator extends Opaque {}

/// {@category Struct}
class PROPBAG2 extends Struct {
  @Uint32()
  external int dwType;

  @Uint16()
  external int vt;

  @Uint16()
  external int cfType;

  @Uint32()
  external int dwHint;

  external Pointer<Utf16> pstrName;

  external GUID clsid;
}

/// {@category Struct}
class PROPSPEC extends Struct {
  @Uint32()
  external int ulKind;

  external _PROPSPEC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PROPSPEC__Anonymous_e__Union extends Union {
  @Uint32()
  external int propid;

  external Pointer<Utf16> lpwstr;
}

extension PROPSPEC_Extension on PROPSPEC {
  int get propid => this.Anonymous.propid;
  set propid(int value) => this.Anonymous.propid = value;

  Pointer<Utf16> get lpwstr => this.Anonymous.lpwstr;
  set lpwstr(Pointer<Utf16> value) => this.Anonymous.lpwstr = value;
}

/// {@category Struct}
class RemSNB extends Struct {
  @Uint32()
  external int ulCntStr;

  @Uint32()
  external int ulCntChar;

  @Array(1)
  external Array<Uint16> _rgString;

  String get rgString {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_rgString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set rgString(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _rgString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SERIALIZEDPROPERTYVALUE extends Struct {
  @Uint32()
  external int dwType;

  @Array(1)
  external Array<Uint8> rgb;
}

/// {@category Struct}
class STATPROPSETSTG extends Struct {
  external GUID fmtid;

  external GUID clsid;

  @Uint32()
  external int grfFlags;

  external FILETIME mtime;

  external FILETIME ctime;

  external FILETIME atime;

  @Uint32()
  external int dwOSVersion;
}

/// {@category Struct}
class STATPROPSTG extends Struct {
  external Pointer<Utf16> lpwstrName;

  @Uint32()
  external int propid;

  @Uint16()
  external int vt;
}

/// {@category Struct}
class STGOPTIONS extends Struct {
  @Uint16()
  external int usVersion;

  @Uint16()
  external int reserved;

  @Uint32()
  external int ulSectorSize;

  external Pointer<Utf16> pwcsTemplateFile;
}

/// {@category Struct}
class VERSIONEDSTREAM extends Struct {
  external GUID guidVersion;

  external Pointer<COMObject> pStream;
}
