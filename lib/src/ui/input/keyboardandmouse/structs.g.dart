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
import '../../../ui/input/keyboardandmouse/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// {@category Struct}
class DEADKEY extends Struct {
  @Uint32()
  external int dwBoth;

  @Uint16()
  external int wchComposed;

  @Uint16()
  external int uFlags;
}

/// {@category Struct}
class HARDWAREINPUT extends Struct {
  @Uint32()
  external int uMsg;

  @Uint16()
  external int wParamL;

  @Uint16()
  external int wParamH;
}

/// {@category Struct}
class INPUT extends Struct {
  @Uint32()
  external int type;

  external _INPUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _INPUT__Anonymous_e__Union extends Union {
  external MOUSEINPUT mi;

  external KEYBDINPUT ki;

  external HARDWAREINPUT hi;
}

extension INPUT_Extension on INPUT {
  MOUSEINPUT get mi => this.Anonymous.mi;
  set mi(MOUSEINPUT value) => this.Anonymous.mi = value;

  KEYBDINPUT get ki => this.Anonymous.ki;
  set ki(KEYBDINPUT value) => this.Anonymous.ki = value;

  HARDWAREINPUT get hi => this.Anonymous.hi;
  set hi(HARDWAREINPUT value) => this.Anonymous.hi = value;
}

/// {@category Struct}
class KBDTABLE_DESC extends Struct {
  @Array(32)
  external Array<Uint16> _wszDllName;

  String get wszDllName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszDllName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDllName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszDllName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwSubType;
}

/// {@category Struct}
class KBDTABLE_MULTI extends Struct {
  @Uint32()
  external int nTables;

  @Array(8)
  external Array<KBDTABLE_DESC> aKbdTables;
}

/// {@category Struct}
class KBD_TYPE_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwSubType;
}

/// {@category Struct}
class KEYBDINPUT extends Struct {
  @Uint16()
  external int wVk;

  @Uint16()
  external int wScan;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int time;

  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class LASTINPUTINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwTime;
}

/// {@category Struct}
class LIGATURE1 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint16()
  external int ModificationNumber;

  @Array(1)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LIGATURE2 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint16()
  external int ModificationNumber;

  @Array(2)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 2; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(2, '\x00');
    for (var i = 0; i < 2; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LIGATURE3 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint16()
  external int ModificationNumber;

  @Array(3)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 3; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(3, '\x00');
    for (var i = 0; i < 3; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LIGATURE4 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint16()
  external int ModificationNumber;

  @Array(4)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 4; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(4, '\x00');
    for (var i = 0; i < 4; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LIGATURE5 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint16()
  external int ModificationNumber;

  @Array(5)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 5; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(5, '\x00');
    for (var i = 0; i < 5; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class MODIFIERS extends Struct {
  external Pointer<VK_TO_BIT> pVkToBit;

  @Uint16()
  external int wMaxModBits;

  @Array(1)
  external Array<Uint8> ModNumber;
}

/// {@category Struct}
class MOUSEINPUT extends Struct {
  @Int32()
  external int dx;

  @Int32()
  external int dy;

  @Uint32()
  external int mouseData;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int time;

  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class MOUSEMOVEPOINT extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;

  @Uint32()
  external int time;

  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class TRACKMOUSEEVENT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndTrack;

  @Uint32()
  external int dwHoverTime;
}

/// {@category Struct}
class VK_TO_BIT extends Struct {
  @Uint8()
  external int Vk;

  @Uint8()
  external int ModBits;
}

/// {@category Struct}
class VK_TO_WCHARS1 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(1)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS10 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(10)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 10; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(10, '\x00');
    for (var i = 0; i < 10; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS2 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(2)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 2; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(2, '\x00');
    for (var i = 0; i < 2; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS3 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(3)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 3; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(3, '\x00');
    for (var i = 0; i < 3; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS4 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(4)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 4; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(4, '\x00');
    for (var i = 0; i < 4; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS5 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(5)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 5; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(5, '\x00');
    for (var i = 0; i < 5; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS6 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(6)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 6; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(6, '\x00');
    for (var i = 0; i < 6; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS7 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(7)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 7; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(7, '\x00');
    for (var i = 0; i < 7; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS8 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(8)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 8; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(8, '\x00');
    for (var i = 0; i < 8; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHARS9 extends Struct {
  @Uint8()
  external int VirtualKey;

  @Uint8()
  external int Attributes;

  @Array(9)
  external Array<Uint16> _wch;

  String get wch {
    final charCodes = <int>[];
    for (var i = 0; i < 9; i++) {
      charCodes.add(_wch[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wch(String value) {
    final stringToStore = value.padRight(9, '\x00');
    for (var i = 0; i < 9; i++) {
      _wch[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VK_TO_WCHAR_TABLE extends Struct {
  external Pointer<VK_TO_WCHARS1> pVkToWchars;

  @Uint8()
  external int nModifications;

  @Uint8()
  external int cbSize;
}

/// {@category Struct}
class VK_VSC extends Struct {
  @Uint8()
  external int Vk;

  @Uint8()
  external int Vsc;
}

/// {@category Struct}
class VSC_LPWSTR extends Struct {
  @Uint8()
  external int vsc;

  external Pointer<Utf16> pwsz;
}

/// {@category Struct}
class VSC_VK extends Struct {
  @Uint8()
  external int Vsc;

  @Uint16()
  external int Vk;
}

/// {@category Struct}
class VK_FUNCTION_PARAM extends Struct {
  @Uint8()
  external int NLSFEProcIndex;

  @Uint32()
  external int NLSFEProcParam;
}

/// {@category Struct}
class VK_TO_FUNCTION_TABLE extends Struct {
  @Uint8()
  external int Vk;

  @Uint8()
  external int NLSFEProcType;

  @Uint8()
  external int NLSFEProcCurrent;

  @Uint8()
  external int NLSFEProcSwitch;

  @Array(8)
  external Array<VK_FUNCTION_PARAM> NLSFEProc;

  @Array(8)
  external Array<VK_FUNCTION_PARAM> NLSFEProcAlt;
}

/// {@category Struct}
class tagKbdLayer extends Struct {
  external Pointer<MODIFIERS> pCharModifiers;

  external Pointer<VK_TO_WCHAR_TABLE> pVkToWcharTable;

  external Pointer<DEADKEY> pDeadKey;

  external Pointer<VSC_LPWSTR> pKeyNames;

  external Pointer<VSC_LPWSTR> pKeyNamesExt;

  external Pointer<Pointer<Uint16>> pKeyNamesDead;

  external Pointer<Uint16> pusVSCtoVK;

  @Uint8()
  external int bMaxVSCtoVK;

  external Pointer<VSC_VK> pVSCtoVK_E0;

  external Pointer<VSC_VK> pVSCtoVK_E1;

  @Uint32()
  external int fLocaleFlags;

  @Uint8()
  external int nLgMax;

  @Uint8()
  external int cbLgEntry;

  external Pointer<LIGATURE1> pLigature;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwSubType;
}

/// {@category Struct}
class tagKbdNlsLayer extends Struct {
  @Uint16()
  external int OEMIdentifier;

  @Uint16()
  external int LayoutInformation;

  @Uint32()
  external int NumOfVkToF;

  external Pointer<VK_TO_FUNCTION_TABLE> pVkToF;

  @Int32()
  external int NumOfMouseVKey;

  external Pointer<Uint16> pusMouseVKey;
}
