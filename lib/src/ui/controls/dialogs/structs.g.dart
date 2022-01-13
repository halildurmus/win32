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
import '../../../ui/controls/dialogs/callbacks.g.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../ui/controls/dialogs/structs.g.dart';
import '../../../ui/controls/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/IUnknown.dart';

/// {@category Struct}
class CHOOSECOLOR extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hInstance;

  @Uint32()
  external int rgbResult;

  external Pointer<Uint32> lpCustColors;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<LPCCHOOKPROC>> lpfnHook;

  external Pointer<Utf16> lpTemplateName;
}

/// {@category Struct}
class CHOOSEFONT extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hDC;

  external Pointer<LOGFONT> lpLogFont;

  @Int32()
  external int iPointSize;

  @Uint32()
  external int Flags;

  @Uint32()
  external int rgbColors;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<LPCFHOOKPROC>> lpfnHook;

  external Pointer<Utf16> lpTemplateName;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszStyle;

  @Uint16()
  external int nFontType;

  @Uint16()
  external int MISSING_ALIGNMENT__;

  @Int32()
  external int nSizeMin;

  @Int32()
  external int nSizeMax;
}

/// {@category Struct}
class DEVNAMES extends Struct {
  @Uint16()
  external int wDriverOffset;

  @Uint16()
  external int wDeviceOffset;

  @Uint16()
  external int wOutputOffset;

  @Uint16()
  external int wDefault;
}

/// {@category Struct}
class FINDREPLACE extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hInstance;

  @Uint32()
  external int Flags;

  external Pointer<Utf16> lpstrFindWhat;

  external Pointer<Utf16> lpstrReplaceWith;

  @Uint16()
  external int wFindWhatLen;

  @Uint16()
  external int wReplaceWithLen;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<LPFRHOOKPROC>> lpfnHook;

  external Pointer<Utf16> lpTemplateName;
}

/// {@category Struct}
class OFNOTIFYEX extends Struct {
  external NMHDR hdr;

  external Pointer<OPENFILENAME> lpOFN;

  external Pointer psf;

  external Pointer pidl;
}

/// {@category Struct}
class OFNOTIFY extends Struct {
  external NMHDR hdr;

  external Pointer<OPENFILENAME> lpOFN;

  external Pointer<Utf16> pszFile;
}

/// {@category Struct}
class OPENFILENAME extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpstrFilter;

  external Pointer<Utf16> lpstrCustomFilter;

  @Uint32()
  external int nMaxCustFilter;

  @Uint32()
  external int nFilterIndex;

  external Pointer<Utf16> lpstrFile;

  @Uint32()
  external int nMaxFile;

  external Pointer<Utf16> lpstrFileTitle;

  @Uint32()
  external int nMaxFileTitle;

  external Pointer<Utf16> lpstrInitialDir;

  external Pointer<Utf16> lpstrTitle;

  @Uint32()
  external int Flags;

  @Uint16()
  external int nFileOffset;

  @Uint16()
  external int nFileExtension;

  external Pointer<Utf16> lpstrDefExt;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<LPOFNHOOKPROC>> lpfnHook;

  external Pointer<Utf16> lpTemplateName;

  external Pointer pvReserved;

  @Uint32()
  external int dwReserved;

  @Uint32()
  external int FlagsEx;
}

/// {@category Struct}
class OPENFILENAME_NT4 extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpstrFilter;

  external Pointer<Utf16> lpstrCustomFilter;

  @Uint32()
  external int nMaxCustFilter;

  @Uint32()
  external int nFilterIndex;

  external Pointer<Utf16> lpstrFile;

  @Uint32()
  external int nMaxFile;

  external Pointer<Utf16> lpstrFileTitle;

  @Uint32()
  external int nMaxFileTitle;

  external Pointer<Utf16> lpstrInitialDir;

  external Pointer<Utf16> lpstrTitle;

  @Uint32()
  external int Flags;

  @Uint16()
  external int nFileOffset;

  @Uint16()
  external int nFileExtension;

  external Pointer<Utf16> lpstrDefExt;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<LPOFNHOOKPROC>> lpfnHook;

  external Pointer<Utf16> lpTemplateName;
}

/// {@category Struct}
class PAGESETUPDLG extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hDevMode;

  @IntPtr()
  external int hDevNames;

  @Uint32()
  external int Flags;

  external POINT ptPaperSize;

  external RECT rtMinMargin;

  external RECT rtMargin;

  @IntPtr()
  external int hInstance;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<LPPAGESETUPHOOK>> lpfnPageSetupHook;

  external Pointer<NativeFunction<LPPAGEPAINTHOOK>> lpfnPagePaintHook;

  external Pointer<Utf16> lpPageSetupTemplateName;

  @IntPtr()
  external int hPageSetupTemplate;
}

/// {@category Struct}
class PRINTDLGEX extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hDevMode;

  @IntPtr()
  external int hDevNames;

  @IntPtr()
  external int hDC;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Flags2;

  @Uint32()
  external int ExclusionFlags;

  @Uint32()
  external int nPageRanges;

  @Uint32()
  external int nMaxPageRanges;

  external Pointer<PRINTPAGERANGE> lpPageRanges;

  @Uint32()
  external int nMinPage;

  @Uint32()
  external int nMaxPage;

  @Uint32()
  external int nCopies;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpPrintTemplateName;

  external Pointer<COMObject> lpCallback;

  @Uint32()
  external int nPropertyPages;

  external Pointer<IntPtr> lphPropertyPages;

  @Uint32()
  external int nStartPage;

  @Uint32()
  external int dwResultAction;
}

/// {@category Struct}
class PRINTDLG extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hDevMode;

  @IntPtr()
  external int hDevNames;

  @IntPtr()
  external int hDC;

  @Uint32()
  external int Flags;

  @Uint16()
  external int nFromPage;

  @Uint16()
  external int nToPage;

  @Uint16()
  external int nMinPage;

  @Uint16()
  external int nMaxPage;

  @Uint16()
  external int nCopies;

  @IntPtr()
  external int hInstance;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<LPPRINTHOOKPROC>> lpfnPrintHook;

  external Pointer<NativeFunction<LPSETUPHOOKPROC>> lpfnSetupHook;

  external Pointer<Utf16> lpPrintTemplateName;

  external Pointer<Utf16> lpSetupTemplateName;

  @IntPtr()
  external int hPrintTemplate;

  @IntPtr()
  external int hSetupTemplate;
}

/// {@category Struct}
class PRINTPAGERANGE extends Struct {
  @Uint32()
  external int nFromPage;

  @Uint32()
  external int nToPage;
}
