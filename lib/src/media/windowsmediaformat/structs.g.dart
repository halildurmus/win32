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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';

/// {@category Struct}
class AM_WMT_EVENT_DATA extends Struct {
  @Int32()
  external int hrStatus;

  external Pointer pData;
}

/// {@category Struct}
class DRM_COPY_OPL extends Struct {
  @Uint16()
  external int wMinimumCopyLevel;

  external DRM_OPL_OUTPUT_IDS oplIdIncludes;

  external DRM_OPL_OUTPUT_IDS oplIdExcludes;
}

/// {@category Struct}
class DRM_MINIMUM_OUTPUT_PROTECTION_LEVELS extends Struct {
  @Uint16()
  external int wCompressedDigitalVideo;

  @Uint16()
  external int wUncompressedDigitalVideo;

  @Uint16()
  external int wAnalogVideo;

  @Uint16()
  external int wCompressedDigitalAudio;

  @Uint16()
  external int wUncompressedDigitalAudio;
}

/// {@category Struct}
class DRM_OPL_OUTPUT_IDS extends Struct {
  @Uint16()
  external int cIds;

  external Pointer<GUID> rgIds;
}

/// {@category Struct}
class DRM_OUTPUT_PROTECTION extends Struct {
  external GUID guidId;

  @Uint8()
  external int bConfigData;
}

/// {@category Struct}
class DRM_PLAY_OPL extends Struct {
  external DRM_MINIMUM_OUTPUT_PROTECTION_LEVELS minOPL;

  external DRM_OPL_OUTPUT_IDS oplIdReserved;

  external DRM_VIDEO_OUTPUT_PROTECTION_IDS vopi;
}

/// {@category Struct}
class DRM_VAL16 extends Struct {
  @Array(16)
  external Array<Uint8> val;
}

/// {@category Struct}
class DRM_VIDEO_OUTPUT_PROTECTION_IDS extends Struct {
  @Uint16()
  external int cEntries;

  external Pointer<DRM_OUTPUT_PROTECTION> rgVop;
}

/// {@category Struct}
class WMDRM_IMPORT_INIT_STRUCT extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbEncryptedSessionKeyMessage;

  external Pointer<Uint8> pbEncryptedSessionKeyMessage;

  @Uint32()
  external int cbEncryptedKeyMessage;

  external Pointer<Uint8> pbEncryptedKeyMessage;
}

/// {@category Struct}
class WMMPEG2VIDEOINFO extends Struct {
  external WMVIDEOINFOHEADER2 hdr;

  @Uint32()
  external int dwStartTimeCode;

  @Uint32()
  external int cbSequenceHeader;

  @Uint32()
  external int dwProfile;

  @Uint32()
  external int dwLevel;

  @Uint32()
  external int dwFlags;

  @Array(1)
  external Array<Uint32> dwSequenceHeader;
}

/// {@category Struct}
class WMSCRIPTFORMAT extends Struct {
  external GUID scriptType;
}

/// {@category Struct}
class WMT_BUFFER_SEGMENT extends Struct {
  external Pointer<COMObject> pBuffer;

  @Uint32()
  external int cbOffset;

  @Uint32()
  external int cbLength;
}

/// {@category Struct}
class WMT_COLORSPACEINFO_EXTENSION_DATA extends Struct {
  @Uint8()
  external int ucColorPrimaries;

  @Uint8()
  external int ucColorTransferChar;

  @Uint8()
  external int ucColorMatrixCoef;
}

/// {@category Struct}
class WMT_FILESINK_DATA_UNIT extends Struct {
  external WMT_BUFFER_SEGMENT packetHeaderBuffer;

  @Uint32()
  external int cPayloads;

  external Pointer<WMT_BUFFER_SEGMENT> pPayloadHeaderBuffers;

  @Uint32()
  external int cPayloadDataFragments;

  external Pointer<WMT_PAYLOAD_FRAGMENT> pPayloadDataFragments;
}

/// {@category Struct}
class WMT_PAYLOAD_FRAGMENT extends Struct {
  @Uint32()
  external int dwPayloadIndex;

  external WMT_BUFFER_SEGMENT segmentData;
}

/// {@category Struct}
@Packed(2)
class WMT_TIMECODE_EXTENSION_DATA extends Struct {
  @Uint16()
  external int wRange;

  @Uint32()
  external int dwTimecode;

  @Uint32()
  external int dwUserbits;

  @Uint32()
  external int dwAmFlags;
}

/// {@category Struct}
class WMT_VIDEOIMAGE_SAMPLE extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwControlFlags;

  @Uint32()
  external int dwInputFlagsCur;

  @Int32()
  external int lCurMotionXtoX;

  @Int32()
  external int lCurMotionYtoX;

  @Int32()
  external int lCurMotionXoffset;

  @Int32()
  external int lCurMotionXtoY;

  @Int32()
  external int lCurMotionYtoY;

  @Int32()
  external int lCurMotionYoffset;

  @Int32()
  external int lCurBlendCoef1;

  @Int32()
  external int lCurBlendCoef2;

  @Uint32()
  external int dwInputFlagsPrev;

  @Int32()
  external int lPrevMotionXtoX;

  @Int32()
  external int lPrevMotionYtoX;

  @Int32()
  external int lPrevMotionXoffset;

  @Int32()
  external int lPrevMotionXtoY;

  @Int32()
  external int lPrevMotionYtoY;

  @Int32()
  external int lPrevMotionYoffset;

  @Int32()
  external int lPrevBlendCoef1;

  @Int32()
  external int lPrevBlendCoef2;
}

/// {@category Struct}
class WMT_VIDEOIMAGE_SAMPLE2 extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int dwStructSize;

  @Uint32()
  external int dwControlFlags;

  @Uint32()
  external int dwViewportWidth;

  @Uint32()
  external int dwViewportHeight;

  @Uint32()
  external int dwCurrImageWidth;

  @Uint32()
  external int dwCurrImageHeight;

  @Float()
  external double fCurrRegionX0;

  @Float()
  external double fCurrRegionY0;

  @Float()
  external double fCurrRegionWidth;

  @Float()
  external double fCurrRegionHeight;

  @Float()
  external double fCurrBlendCoef;

  @Uint32()
  external int dwPrevImageWidth;

  @Uint32()
  external int dwPrevImageHeight;

  @Float()
  external double fPrevRegionX0;

  @Float()
  external double fPrevRegionY0;

  @Float()
  external double fPrevRegionWidth;

  @Float()
  external double fPrevRegionHeight;

  @Float()
  external double fPrevBlendCoef;

  @Uint32()
  external int dwEffectType;

  @Uint32()
  external int dwNumEffectParas;

  @Float()
  external double fEffectPara0;

  @Float()
  external double fEffectPara1;

  @Float()
  external double fEffectPara2;

  @Float()
  external double fEffectPara3;

  @Float()
  external double fEffectPara4;

  @Int32()
  external int bKeepPrevImage;
}

/// {@category Struct}
class WMT_WATERMARK_ENTRY extends Struct {
  @Int32()
  external int wmetType;

  external GUID clsid;

  @Uint32()
  external int cbDisplayName;

  external Pointer<Utf16> pwszDisplayName;
}

/// {@category Struct}
class WMT_WEBSTREAM_FORMAT extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int cbSampleHeaderFixedData;

  @Uint16()
  external int wVersion;

  @Uint16()
  external int wReserved;
}

/// {@category Struct}
class WMT_WEBSTREAM_SAMPLE_HEADER extends Struct {
  @Uint16()
  external int cbLength;

  @Uint16()
  external int wPart;

  @Uint16()
  external int cTotalParts;

  @Uint16()
  external int wSampleType;

  @Array(1)
  external Array<Uint16> _wszURL;

  String get wszURL {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wszURL[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszURL(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wszURL[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WMVIDEOINFOHEADER extends Struct {
  external RECT rcSource;

  external RECT rcTarget;

  @Uint32()
  external int dwBitRate;

  @Uint32()
  external int dwBitErrorRate;

  @Int64()
  external int AvgTimePerFrame;

  external BITMAPINFOHEADER bmiHeader;
}

/// {@category Struct}
class WMVIDEOINFOHEADER2 extends Struct {
  external RECT rcSource;

  external RECT rcTarget;

  @Uint32()
  external int dwBitRate;

  @Uint32()
  external int dwBitErrorRate;

  @Int64()
  external int AvgTimePerFrame;

  @Uint32()
  external int dwInterlaceFlags;

  @Uint32()
  external int dwCopyProtectFlags;

  @Uint32()
  external int dwPictAspectRatioX;

  @Uint32()
  external int dwPictAspectRatioY;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  external BITMAPINFOHEADER bmiHeader;
}

/// {@category Struct}
class WM_ADDRESS_ACCESSENTRY extends Struct {
  @Uint32()
  external int dwIPAddress;

  @Uint32()
  external int dwMask;
}

/// {@category Struct}
class WM_CLIENT_PROPERTIES extends Struct {
  @Uint32()
  external int dwIPAddress;

  @Uint32()
  external int dwPort;
}

/// {@category Struct}
class WM_CLIENT_PROPERTIES_EX extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> pwszIPAddress;

  external Pointer<Utf16> pwszPort;

  external Pointer<Utf16> pwszDNSName;
}

/// {@category Struct}
@Packed(1)
class WM_LEAKY_BUCKET_PAIR extends Struct {
  @Uint32()
  external int dwBitrate;

  @Uint32()
  external int msBufferWindow;
}

/// {@category Struct}
class WM_MEDIA_TYPE extends Struct {
  external GUID majortype;

  external GUID subtype;

  @Int32()
  external int bFixedSizeSamples;

  @Int32()
  external int bTemporalCompression;

  @Uint32()
  external int lSampleSize;

  external GUID formattype;

  external Pointer<COMObject> pUnk;

  @Uint32()
  external int cbFormat;

  external Pointer<Uint8> pbFormat;
}

/// {@category Struct}
class WM_PICTURE extends Struct {
  external Pointer<Utf16> pwszMIMEType;

  @Uint8()
  external int bPictureType;

  external Pointer<Utf16> pwszDescription;

  @Uint32()
  external int dwDataLen;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class WM_PORT_NUMBER_RANGE extends Struct {
  @Uint16()
  external int wPortBegin;

  @Uint16()
  external int wPortEnd;
}

/// {@category Struct}
class WM_READER_CLIENTINFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> wszLang;

  external Pointer<Utf16> wszBrowserUserAgent;

  external Pointer<Utf16> wszBrowserWebPage;

  @Uint64()
  external int qwReserved;

  external Pointer<IntPtr> pReserved;

  external Pointer<Utf16> wszHostExe;

  @Uint64()
  external int qwHostVersion;

  external Pointer<Utf16> wszPlayerUserAgent;
}

/// {@category Struct}
class WM_READER_STATISTICS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwBandwidth;

  @Uint32()
  external int cPacketsReceived;

  @Uint32()
  external int cPacketsRecovered;

  @Uint32()
  external int cPacketsLost;

  @Uint16()
  external int wQuality;
}

/// {@category Struct}
class WM_STREAM_PRIORITY_RECORD extends Struct {
  @Uint16()
  external int wStreamNumber;

  @Int32()
  external int fMandatory;
}

/// {@category Struct}
class WM_STREAM_TYPE_INFO extends Struct {
  external GUID guidMajorType;

  @Uint32()
  external int cbFormat;
}

/// {@category Struct}
class WM_SYNCHRONISED_LYRICS extends Struct {
  @Uint8()
  external int bTimeStampFormat;

  @Uint8()
  external int bContentType;

  external Pointer<Utf16> pwszContentDescriptor;

  @Uint32()
  external int dwLyricsLen;

  external Pointer<Uint8> pbLyrics;
}

/// {@category Struct}
class WM_USER_TEXT extends Struct {
  external Pointer<Utf16> pwszDescription;

  external Pointer<Utf16> pwszText;
}

/// {@category Struct}
class WM_USER_WEB_URL extends Struct {
  external Pointer<Utf16> pwszDescription;

  external Pointer<Utf16> pwszURL;
}

/// {@category Struct}
class WM_WRITER_STATISTICS extends Struct {
  @Uint64()
  external int qwSampleCount;

  @Uint64()
  external int qwByteCount;

  @Uint64()
  external int qwDroppedSampleCount;

  @Uint64()
  external int qwDroppedByteCount;

  @Uint32()
  external int dwCurrentBitrate;

  @Uint32()
  external int dwAverageBitrate;

  @Uint32()
  external int dwExpectedBitrate;

  @Uint32()
  external int dwCurrentSampleRate;

  @Uint32()
  external int dwAverageSampleRate;

  @Uint32()
  external int dwExpectedSampleRate;
}

/// {@category Struct}
class WM_WRITER_STATISTICS_EX extends Struct {
  @Uint32()
  external int dwBitratePlusOverhead;

  @Uint32()
  external int dwCurrentSampleDropRateInQueue;

  @Uint32()
  external int dwCurrentSampleDropRateInCodec;

  @Uint32()
  external int dwCurrentSampleDropRateInMultiplexer;

  @Uint32()
  external int dwTotalSampleDropsInQueue;

  @Uint32()
  external int dwTotalSampleDropsInCodec;

  @Uint32()
  external int dwTotalSampleDropsInMultiplexer;
}
