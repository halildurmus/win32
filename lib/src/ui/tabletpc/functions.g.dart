// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// inkobjcore.dll
// -----------------------------------------------------------------------
final _inkobjcore = DynamicLibrary.open('inkobjcore.dll');

int AddStroke(
  int hrc,
  Pointer<PACKET_DESCRIPTION> pPacketDesc,
  int cbPacket,
  Pointer<Uint8> pPacket,
  Pointer<XFORM> pXForm,
) =>
    _AddStroke(
      hrc,
      pPacketDesc,
      cbPacket,
      pPacket,
      pXForm,
    );

late final _AddStroke = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Pointer<PACKET_DESCRIPTION> pPacketDesc,
  Uint32 cbPacket,
  Pointer<Uint8> pPacket,
  Pointer<XFORM> pXForm,
),
    int Function(
  int hrc,
  Pointer<PACKET_DESCRIPTION> pPacketDesc,
  int cbPacket,
  Pointer<Uint8> pPacket,
  Pointer<XFORM> pXForm,
)>('AddStroke');

int AddWordsToWordList(
  int hwl,
  Pointer<Utf16> pwcWords,
) =>
    _AddWordsToWordList(
      hwl,
      pwcWords,
    );

late final _AddWordsToWordList = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hwl,
  Pointer<Utf16> pwcWords,
),
    int Function(
  int hwl,
  Pointer<Utf16> pwcWords,
)>('AddWordsToWordList');

int AdviseInkChange(
  int hrc,
  int bNewStroke,
) =>
    _AdviseInkChange(
      hrc,
      bNewStroke,
    );

late final _AdviseInkChange = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Int32 bNewStroke,
),
    int Function(
  int hrc,
  int bNewStroke,
)>('AdviseInkChange');

int CreateContext(
  int hrec,
  Pointer<IntPtr> phrc,
) =>
    _CreateContext(
      hrec,
      phrc,
    );

late final _CreateContext = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrec,
  Pointer<IntPtr> phrc,
),
    int Function(
  int hrec,
  Pointer<IntPtr> phrc,
)>('CreateContext');

int CreateRecognizer(
  Pointer<GUID> pCLSID,
  Pointer<IntPtr> phrec,
) =>
    _CreateRecognizer(
      pCLSID,
      phrec,
    );

late final _CreateRecognizer = _inkobjcore.lookupFunction<
    Int32 Function(
  Pointer<GUID> pCLSID,
  Pointer<IntPtr> phrec,
),
    int Function(
  Pointer<GUID> pCLSID,
  Pointer<IntPtr> phrec,
)>('CreateRecognizer');

int DestroyContext(
  int hrc,
) =>
    _DestroyContext(
      hrc,
    );

late final _DestroyContext = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
),
    int Function(
  int hrc,
)>('DestroyContext');

int DestroyRecognizer(
  int hrec,
) =>
    _DestroyRecognizer(
      hrec,
    );

late final _DestroyRecognizer = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrec,
),
    int Function(
  int hrec,
)>('DestroyRecognizer');

int DestroyWordList(
  int hwl,
) =>
    _DestroyWordList(
      hwl,
    );

late final _DestroyWordList = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hwl,
),
    int Function(
  int hwl,
)>('DestroyWordList');

int EndInkInput(
  int hrc,
) =>
    _EndInkInput(
      hrc,
    );

late final _EndInkInput = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
),
    int Function(
  int hrc,
)>('EndInkInput');

int GetAllRecognizers(
  Pointer<Pointer<GUID>> recognizerClsids,
  Pointer<Uint32> count,
) =>
    _GetAllRecognizers(
      recognizerClsids,
      count,
    );

late final _GetAllRecognizers = _inkobjcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<GUID>> recognizerClsids,
  Pointer<Uint32> count,
),
    int Function(
  Pointer<Pointer<GUID>> recognizerClsids,
  Pointer<Uint32> count,
)>('GetAllRecognizers');

int GetBestResultString(
  int hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcBestResult,
) =>
    _GetBestResultString(
      hrc,
      pcSize,
      pwcBestResult,
    );

late final _GetBestResultString = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcBestResult,
),
    int Function(
  int hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcBestResult,
)>('GetBestResultString');

int GetLatticePtr(
  int hrc,
  Pointer<Pointer<RECO_LATTICE>> ppLattice,
) =>
    _GetLatticePtr(
      hrc,
      ppLattice,
    );

late final _GetLatticePtr = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Pointer<Pointer<RECO_LATTICE>> ppLattice,
),
    int Function(
  int hrc,
  Pointer<Pointer<RECO_LATTICE>> ppLattice,
)>('GetLatticePtr');

int GetLeftSeparator(
  int hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcLeftSeparator,
) =>
    _GetLeftSeparator(
      hrc,
      pcSize,
      pwcLeftSeparator,
    );

late final _GetLeftSeparator = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcLeftSeparator,
),
    int Function(
  int hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcLeftSeparator,
)>('GetLeftSeparator');

int GetRecoAttributes(
  int hrec,
  Pointer<RECO_ATTRS> pRecoAttrs,
) =>
    _GetRecoAttributes(
      hrec,
      pRecoAttrs,
    );

late final _GetRecoAttributes = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrec,
  Pointer<RECO_ATTRS> pRecoAttrs,
),
    int Function(
  int hrec,
  Pointer<RECO_ATTRS> pRecoAttrs,
)>('GetRecoAttributes');

int GetResultPropertyList(
  int hrec,
  Pointer<Uint32> pPropertyCount,
  Pointer<GUID> pPropertyGuid,
) =>
    _GetResultPropertyList(
      hrec,
      pPropertyCount,
      pPropertyGuid,
    );

late final _GetResultPropertyList = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrec,
  Pointer<Uint32> pPropertyCount,
  Pointer<GUID> pPropertyGuid,
),
    int Function(
  int hrec,
  Pointer<Uint32> pPropertyCount,
  Pointer<GUID> pPropertyGuid,
)>('GetResultPropertyList');

int GetRightSeparator(
  int hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcRightSeparator,
) =>
    _GetRightSeparator(
      hrc,
      pcSize,
      pwcRightSeparator,
    );

late final _GetRightSeparator = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcRightSeparator,
),
    int Function(
  int hrc,
  Pointer<Uint32> pcSize,
  Pointer<Utf16> pwcRightSeparator,
)>('GetRightSeparator');

int GetUnicodeRanges(
  int hrec,
  Pointer<Uint32> pcRanges,
  Pointer<CHARACTER_RANGE> pcr,
) =>
    _GetUnicodeRanges(
      hrec,
      pcRanges,
      pcr,
    );

late final _GetUnicodeRanges = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrec,
  Pointer<Uint32> pcRanges,
  Pointer<CHARACTER_RANGE> pcr,
),
    int Function(
  int hrec,
  Pointer<Uint32> pcRanges,
  Pointer<CHARACTER_RANGE> pcr,
)>('GetUnicodeRanges');

int IsStringSupported(
  int hrc,
  int wcString,
  Pointer<Utf16> pwcString,
) =>
    _IsStringSupported(
      hrc,
      wcString,
      pwcString,
    );

late final _IsStringSupported = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Uint32 wcString,
  Pointer<Utf16> pwcString,
),
    int Function(
  int hrc,
  int wcString,
  Pointer<Utf16> pwcString,
)>('IsStringSupported');

int LoadCachedAttributes(
  GUID clsid,
  Pointer<RECO_ATTRS> pRecoAttributes,
) =>
    _LoadCachedAttributes(
      clsid,
      pRecoAttributes,
    );

late final _LoadCachedAttributes = _inkobjcore.lookupFunction<
    Int32 Function(
  GUID clsid,
  Pointer<RECO_ATTRS> pRecoAttributes,
),
    int Function(
  GUID clsid,
  Pointer<RECO_ATTRS> pRecoAttributes,
)>('LoadCachedAttributes');

int MakeWordList(
  int hrec,
  Pointer<Utf16> pBuffer,
  Pointer<IntPtr> phwl,
) =>
    _MakeWordList(
      hrec,
      pBuffer,
      phwl,
    );

late final _MakeWordList = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrec,
  Pointer<Utf16> pBuffer,
  Pointer<IntPtr> phwl,
),
    int Function(
  int hrec,
  Pointer<Utf16> pBuffer,
  Pointer<IntPtr> phwl,
)>('MakeWordList');

int Process(
  int hrc,
  Pointer<Int32> pbPartialProcessing,
) =>
    _Process(
      hrc,
      pbPartialProcessing,
    );

late final _Process = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Pointer<Int32> pbPartialProcessing,
),
    int Function(
  int hrc,
  Pointer<Int32> pbPartialProcessing,
)>('Process');

int SetEnabledUnicodeRanges(
  int hrc,
  int cRanges,
  Pointer<CHARACTER_RANGE> pcr,
) =>
    _SetEnabledUnicodeRanges(
      hrc,
      cRanges,
      pcr,
    );

late final _SetEnabledUnicodeRanges = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Uint32 cRanges,
  Pointer<CHARACTER_RANGE> pcr,
),
    int Function(
  int hrc,
  int cRanges,
  Pointer<CHARACTER_RANGE> pcr,
)>('SetEnabledUnicodeRanges');

int SetFactoid(
  int hrc,
  int cwcFactoid,
  Pointer<Utf16> pwcFactoid,
) =>
    _SetFactoid(
      hrc,
      cwcFactoid,
      pwcFactoid,
    );

late final _SetFactoid = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Uint32 cwcFactoid,
  Pointer<Utf16> pwcFactoid,
),
    int Function(
  int hrc,
  int cwcFactoid,
  Pointer<Utf16> pwcFactoid,
)>('SetFactoid');

int SetFlags(
  int hrc,
  int dwFlags,
) =>
    _SetFlags(
      hrc,
      dwFlags,
    );

late final _SetFlags = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Uint32 dwFlags,
),
    int Function(
  int hrc,
  int dwFlags,
)>('SetFlags');

int SetGuide(
  int hrc,
  Pointer<RECO_GUIDE> pGuide,
  int iIndex,
) =>
    _SetGuide(
      hrc,
      pGuide,
      iIndex,
    );

late final _SetGuide = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Pointer<RECO_GUIDE> pGuide,
  Uint32 iIndex,
),
    int Function(
  int hrc,
  Pointer<RECO_GUIDE> pGuide,
  int iIndex,
)>('SetGuide');

int SetTextContext(
  int hrc,
  int cwcBefore,
  Pointer<Utf16> pwcBefore,
  int cwcAfter,
  Pointer<Utf16> pwcAfter,
) =>
    _SetTextContext(
      hrc,
      cwcBefore,
      pwcBefore,
      cwcAfter,
      pwcAfter,
    );

late final _SetTextContext = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  Uint32 cwcBefore,
  Pointer<Utf16> pwcBefore,
  Uint32 cwcAfter,
  Pointer<Utf16> pwcAfter,
),
    int Function(
  int hrc,
  int cwcBefore,
  Pointer<Utf16> pwcBefore,
  int cwcAfter,
  Pointer<Utf16> pwcAfter,
)>('SetTextContext');

int SetWordList(
  int hrc,
  int hwl,
) =>
    _SetWordList(
      hrc,
      hwl,
    );

late final _SetWordList = _inkobjcore.lookupFunction<
    Int32 Function(
  IntPtr hrc,
  IntPtr hwl,
),
    int Function(
  int hrc,
  int hwl,
)>('SetWordList');
