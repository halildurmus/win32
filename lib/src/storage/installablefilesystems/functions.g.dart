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
import '../../foundation/structs.g.dart';
import '../../storage/installablefilesystems/structs.g.dart';
import '../../security/structs.g.dart';
import '../../specialTypes.dart'; // -----------------------------------------------------------------------

// fltlib.dll
// -----------------------------------------------------------------------
final _fltlib = DynamicLibrary.open('fltlib.dll');

int FilterAttach(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
  int dwCreatedInstanceNameLength,
  Pointer<Utf16> lpCreatedInstanceName,
) =>
    _FilterAttach(
      lpFilterName,
      lpVolumeName,
      lpInstanceName,
      dwCreatedInstanceNameLength,
      lpCreatedInstanceName,
    );

late final _FilterAttach = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
  Uint32 dwCreatedInstanceNameLength,
  Pointer<Utf16> lpCreatedInstanceName,
),
    int Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
  int dwCreatedInstanceNameLength,
  Pointer<Utf16> lpCreatedInstanceName,
)>('FilterAttach');

int FilterAttachAtAltitude(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpAltitude,
  Pointer<Utf16> lpInstanceName,
  int dwCreatedInstanceNameLength,
  Pointer<Utf16> lpCreatedInstanceName,
) =>
    _FilterAttachAtAltitude(
      lpFilterName,
      lpVolumeName,
      lpAltitude,
      lpInstanceName,
      dwCreatedInstanceNameLength,
      lpCreatedInstanceName,
    );

late final _FilterAttachAtAltitude = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpAltitude,
  Pointer<Utf16> lpInstanceName,
  Uint32 dwCreatedInstanceNameLength,
  Pointer<Utf16> lpCreatedInstanceName,
),
    int Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpAltitude,
  Pointer<Utf16> lpInstanceName,
  int dwCreatedInstanceNameLength,
  Pointer<Utf16> lpCreatedInstanceName,
)>('FilterAttachAtAltitude');

int FilterClose(
  int hFilter,
) =>
    _FilterClose(
      hFilter,
    );

late final _FilterClose = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hFilter,
),
    int Function(
  int hFilter,
)>('FilterClose');

int FilterConnectCommunicationPort(
  Pointer<Utf16> lpPortName,
  int dwOptions,
  Pointer lpContext,
  int wSizeOfContext,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> hPort,
) =>
    _FilterConnectCommunicationPort(
      lpPortName,
      dwOptions,
      lpContext,
      wSizeOfContext,
      lpSecurityAttributes,
      hPort,
    );

late final _FilterConnectCommunicationPort = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpPortName,
  Uint32 dwOptions,
  Pointer lpContext,
  Uint16 wSizeOfContext,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> hPort,
),
    int Function(
  Pointer<Utf16> lpPortName,
  int dwOptions,
  Pointer lpContext,
  int wSizeOfContext,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<IntPtr> hPort,
)>('FilterConnectCommunicationPort');

int FilterCreate(
  Pointer<Utf16> lpFilterName,
  Pointer<IntPtr> hFilter,
) =>
    _FilterCreate(
      lpFilterName,
      hFilter,
    );

late final _FilterCreate = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
  Pointer<IntPtr> hFilter,
),
    int Function(
  Pointer<Utf16> lpFilterName,
  Pointer<IntPtr> hFilter,
)>('FilterCreate');

int FilterDetach(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
) =>
    _FilterDetach(
      lpFilterName,
      lpVolumeName,
      lpInstanceName,
    );

late final _FilterDetach = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
),
    int Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
)>('FilterDetach');

int FilterFindClose(
  int hFilterFind,
) =>
    _FilterFindClose(
      hFilterFind,
    );

late final _FilterFindClose = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hFilterFind,
),
    int Function(
  int hFilterFind,
)>('FilterFindClose');

int FilterFindFirst(
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpFilterFind,
) =>
    _FilterFindFirst(
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
      lpFilterFind,
    );

late final _FilterFindFirst = _fltlib.lookupFunction<
    Int32 Function(
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpFilterFind,
),
    int Function(
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpFilterFind,
)>('FilterFindFirst');

int FilterFindNext(
  int hFilterFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _FilterFindNext(
      hFilterFind,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
    );

late final _FilterFindNext = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hFilterFind,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hFilterFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('FilterFindNext');

int FilterGetDosName(
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpDosName,
  int dwDosNameBufferSize,
) =>
    _FilterGetDosName(
      lpVolumeName,
      lpDosName,
      dwDosNameBufferSize,
    );

late final _FilterGetDosName = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpDosName,
  Uint32 dwDosNameBufferSize,
),
    int Function(
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpDosName,
  int dwDosNameBufferSize,
)>('FilterGetDosName');

int FilterGetInformation(
  int hFilter,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _FilterGetInformation(
      hFilter,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
    );

late final _FilterGetInformation = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hFilter,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hFilter,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('FilterGetInformation');

int FilterGetMessage(
  int hPort,
  Pointer<FILTER_MESSAGE_HEADER> lpMessageBuffer,
  int dwMessageBufferSize,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _FilterGetMessage(
      hPort,
      lpMessageBuffer,
      dwMessageBufferSize,
      lpOverlapped,
    );

late final _FilterGetMessage = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hPort,
  Pointer<FILTER_MESSAGE_HEADER> lpMessageBuffer,
  Uint32 dwMessageBufferSize,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPort,
  Pointer<FILTER_MESSAGE_HEADER> lpMessageBuffer,
  int dwMessageBufferSize,
  Pointer<OVERLAPPED> lpOverlapped,
)>('FilterGetMessage');

int FilterInstanceClose(
  int hInstance,
) =>
    _FilterInstanceClose(
      hInstance,
    );

late final _FilterInstanceClose = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hInstance,
),
    int Function(
  int hInstance,
)>('FilterInstanceClose');

int FilterInstanceCreate(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
  Pointer<IntPtr> hInstance,
) =>
    _FilterInstanceCreate(
      lpFilterName,
      lpVolumeName,
      lpInstanceName,
      hInstance,
    );

late final _FilterInstanceCreate = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
  Pointer<IntPtr> hInstance,
),
    int Function(
  Pointer<Utf16> lpFilterName,
  Pointer<Utf16> lpVolumeName,
  Pointer<Utf16> lpInstanceName,
  Pointer<IntPtr> hInstance,
)>('FilterInstanceCreate');

int FilterInstanceFindClose(
  int hFilterInstanceFind,
) =>
    _FilterInstanceFindClose(
      hFilterInstanceFind,
    );

late final _FilterInstanceFindClose = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hFilterInstanceFind,
),
    int Function(
  int hFilterInstanceFind,
)>('FilterInstanceFindClose');

int FilterInstanceFindFirst(
  Pointer<Utf16> lpFilterName,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpFilterInstanceFind,
) =>
    _FilterInstanceFindFirst(
      lpFilterName,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
      lpFilterInstanceFind,
    );

late final _FilterInstanceFindFirst = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpFilterInstanceFind,
),
    int Function(
  Pointer<Utf16> lpFilterName,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpFilterInstanceFind,
)>('FilterInstanceFindFirst');

int FilterInstanceFindNext(
  int hFilterInstanceFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _FilterInstanceFindNext(
      hFilterInstanceFind,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
    );

late final _FilterInstanceFindNext = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hFilterInstanceFind,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hFilterInstanceFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('FilterInstanceFindNext');

int FilterInstanceGetInformation(
  int hInstance,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _FilterInstanceGetInformation(
      hInstance,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
    );

late final _FilterInstanceGetInformation = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hInstance,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hInstance,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('FilterInstanceGetInformation');

int FilterLoad(
  Pointer<Utf16> lpFilterName,
) =>
    _FilterLoad(
      lpFilterName,
    );

late final _FilterLoad = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
),
    int Function(
  Pointer<Utf16> lpFilterName,
)>('FilterLoad');

int FilterReplyMessage(
  int hPort,
  Pointer<FILTER_REPLY_HEADER> lpReplyBuffer,
  int dwReplyBufferSize,
) =>
    _FilterReplyMessage(
      hPort,
      lpReplyBuffer,
      dwReplyBufferSize,
    );

late final _FilterReplyMessage = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hPort,
  Pointer<FILTER_REPLY_HEADER> lpReplyBuffer,
  Uint32 dwReplyBufferSize,
),
    int Function(
  int hPort,
  Pointer<FILTER_REPLY_HEADER> lpReplyBuffer,
  int dwReplyBufferSize,
)>('FilterReplyMessage');

int FilterSendMessage(
  int hPort,
  Pointer lpInBuffer,
  int dwInBufferSize,
  Pointer lpOutBuffer,
  int dwOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _FilterSendMessage(
      hPort,
      lpInBuffer,
      dwInBufferSize,
      lpOutBuffer,
      dwOutBufferSize,
      lpBytesReturned,
    );

late final _FilterSendMessage = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hPort,
  Pointer lpInBuffer,
  Uint32 dwInBufferSize,
  Pointer lpOutBuffer,
  Uint32 dwOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hPort,
  Pointer lpInBuffer,
  int dwInBufferSize,
  Pointer lpOutBuffer,
  int dwOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('FilterSendMessage');

int FilterUnload(
  Pointer<Utf16> lpFilterName,
) =>
    _FilterUnload(
      lpFilterName,
    );

late final _FilterUnload = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFilterName,
),
    int Function(
  Pointer<Utf16> lpFilterName,
)>('FilterUnload');

int FilterVolumeFindClose(
  int hVolumeFind,
) =>
    _FilterVolumeFindClose(
      hVolumeFind,
    );

late final _FilterVolumeFindClose = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hVolumeFind,
),
    int Function(
  int hVolumeFind,
)>('FilterVolumeFindClose');

int FilterVolumeFindFirst(
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpVolumeFind,
) =>
    _FilterVolumeFindFirst(
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
      lpVolumeFind,
    );

late final _FilterVolumeFindFirst = _fltlib.lookupFunction<
    Int32 Function(
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpVolumeFind,
),
    int Function(
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpVolumeFind,
)>('FilterVolumeFindFirst');

int FilterVolumeFindNext(
  int hVolumeFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _FilterVolumeFindNext(
      hVolumeFind,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
    );

late final _FilterVolumeFindNext = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hVolumeFind,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hVolumeFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('FilterVolumeFindNext');

int FilterVolumeInstanceFindClose(
  int hVolumeInstanceFind,
) =>
    _FilterVolumeInstanceFindClose(
      hVolumeInstanceFind,
    );

late final _FilterVolumeInstanceFindClose = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hVolumeInstanceFind,
),
    int Function(
  int hVolumeInstanceFind,
)>('FilterVolumeInstanceFindClose');

int FilterVolumeInstanceFindFirst(
  Pointer<Utf16> lpVolumeName,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpVolumeInstanceFind,
) =>
    _FilterVolumeInstanceFindFirst(
      lpVolumeName,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
      lpVolumeInstanceFind,
    );

late final _FilterVolumeInstanceFindFirst = _fltlib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpVolumeName,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpVolumeInstanceFind,
),
    int Function(
  Pointer<Utf16> lpVolumeName,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<IntPtr> lpVolumeInstanceFind,
)>('FilterVolumeInstanceFindFirst');

int FilterVolumeInstanceFindNext(
  int hVolumeInstanceFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _FilterVolumeInstanceFindNext(
      hVolumeInstanceFind,
      dwInformationClass,
      lpBuffer,
      dwBufferSize,
      lpBytesReturned,
    );

late final _FilterVolumeInstanceFindNext = _fltlib.lookupFunction<
    Int32 Function(
  IntPtr hVolumeInstanceFind,
  Int32 dwInformationClass,
  Pointer lpBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hVolumeInstanceFind,
  int dwInformationClass,
  Pointer lpBuffer,
  int dwBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('FilterVolumeInstanceFindNext');
