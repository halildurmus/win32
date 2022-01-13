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
import '../../system/com/IUnknown.dart';
import '../../media/windowsmediaformat/IWMLicenseBackup.dart';
import '../../media/windowsmediaformat/IWMMetadataEditor.dart';
import '../../media/windowsmediaformat/IWMIndexer.dart';
import '../../media/windowsmediaformat/IWMProfileManager.dart';
import '../../media/windowsmediaformat/IWMReader.dart';
import '../../media/windowsmediaformat/IWMSyncReader.dart';
import '../../media/windowsmediaformat/IWMWriter.dart';
import '../../media/windowsmediaformat/IWMWriterFileSink.dart';
import '../../media/windowsmediaformat/IWMWriterNetworkSink.dart';
import '../../media/windowsmediaformat/IWMWriterPushSink.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// wmvcore.dll
// -----------------------------------------------------------------------
final _wmvcore = DynamicLibrary.open('wmvcore.dll');

int WMCreateBackupRestorer(
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppBackup,
) =>
    _WMCreateBackupRestorer(
      pCallback,
      ppBackup,
    );

late final _WMCreateBackupRestorer = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppBackup,
),
    int Function(
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppBackup,
)>('WMCreateBackupRestorer');

int WMCreateEditor(
  Pointer<Pointer<COMObject>> ppEditor,
) =>
    _WMCreateEditor(
      ppEditor,
    );

late final _WMCreateEditor = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppEditor,
),
    int Function(
  Pointer<Pointer<COMObject>> ppEditor,
)>('WMCreateEditor');

int WMCreateIndexer(
  Pointer<Pointer<COMObject>> ppIndexer,
) =>
    _WMCreateIndexer(
      ppIndexer,
    );

late final _WMCreateIndexer = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppIndexer,
),
    int Function(
  Pointer<Pointer<COMObject>> ppIndexer,
)>('WMCreateIndexer');

int WMCreateProfileManager(
  Pointer<Pointer<COMObject>> ppProfileManager,
) =>
    _WMCreateProfileManager(
      ppProfileManager,
    );

late final _WMCreateProfileManager = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppProfileManager,
),
    int Function(
  Pointer<Pointer<COMObject>> ppProfileManager,
)>('WMCreateProfileManager');

int WMCreateReader(
  Pointer<COMObject> pUnkCert,
  int dwRights,
  Pointer<Pointer<COMObject>> ppReader,
) =>
    _WMCreateReader(
      pUnkCert,
      dwRights,
      ppReader,
    );

late final _WMCreateReader = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnkCert,
  Uint32 dwRights,
  Pointer<Pointer<COMObject>> ppReader,
),
    int Function(
  Pointer<COMObject> pUnkCert,
  int dwRights,
  Pointer<Pointer<COMObject>> ppReader,
)>('WMCreateReader');

int WMCreateSyncReader(
  Pointer<COMObject> pUnkCert,
  int dwRights,
  Pointer<Pointer<COMObject>> ppSyncReader,
) =>
    _WMCreateSyncReader(
      pUnkCert,
      dwRights,
      ppSyncReader,
    );

late final _WMCreateSyncReader = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnkCert,
  Uint32 dwRights,
  Pointer<Pointer<COMObject>> ppSyncReader,
),
    int Function(
  Pointer<COMObject> pUnkCert,
  int dwRights,
  Pointer<Pointer<COMObject>> ppSyncReader,
)>('WMCreateSyncReader');

int WMCreateWriter(
  Pointer<COMObject> pUnkCert,
  Pointer<Pointer<COMObject>> ppWriter,
) =>
    _WMCreateWriter(
      pUnkCert,
      ppWriter,
    );

late final _WMCreateWriter = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnkCert,
  Pointer<Pointer<COMObject>> ppWriter,
),
    int Function(
  Pointer<COMObject> pUnkCert,
  Pointer<Pointer<COMObject>> ppWriter,
)>('WMCreateWriter');

int WMCreateWriterFileSink(
  Pointer<Pointer<COMObject>> ppSink,
) =>
    _WMCreateWriterFileSink(
      ppSink,
    );

late final _WMCreateWriterFileSink = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppSink,
),
    int Function(
  Pointer<Pointer<COMObject>> ppSink,
)>('WMCreateWriterFileSink');

int WMCreateWriterNetworkSink(
  Pointer<Pointer<COMObject>> ppSink,
) =>
    _WMCreateWriterNetworkSink(
      ppSink,
    );

late final _WMCreateWriterNetworkSink = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppSink,
),
    int Function(
  Pointer<Pointer<COMObject>> ppSink,
)>('WMCreateWriterNetworkSink');

int WMCreateWriterPushSink(
  Pointer<Pointer<COMObject>> ppSink,
) =>
    _WMCreateWriterPushSink(
      ppSink,
    );

late final _WMCreateWriterPushSink = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppSink,
),
    int Function(
  Pointer<Pointer<COMObject>> ppSink,
)>('WMCreateWriterPushSink');

int WMIsContentProtected(
  Pointer<Utf16> pwszFileName,
  Pointer<Int32> pfIsProtected,
) =>
    _WMIsContentProtected(
      pwszFileName,
      pfIsProtected,
    );

late final _WMIsContentProtected = _wmvcore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszFileName,
  Pointer<Int32> pfIsProtected,
),
    int Function(
  Pointer<Utf16> pwszFileName,
  Pointer<Int32> pfIsProtected,
)>('WMIsContentProtected');
