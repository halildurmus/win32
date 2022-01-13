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
import '../../../media/audio/apo/structs.g.dart';
import '../../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../../media/audio/IMMDeviceCollection.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IServiceProvider.dart';
import '../../../media/audio/apo/IAudioMediaType.dart';
import '../../../media/audio/IMMDevice.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';
import '../../../media/audio/structs.g.dart';

/// {@category Struct}
class APOInitBaseStruct extends Struct {
  @Uint32()
  external int cbSize;

  external GUID clsid;
}

/// {@category Struct}
class APOInitSystemEffects extends Struct {
  external APOInitBaseStruct APOInit;

  external Pointer<COMObject> pAPOEndpointProperties;

  external Pointer<COMObject> pAPOSystemEffectsProperties;

  external Pointer pReserved;

  external Pointer<COMObject> pDeviceCollection;
}

/// {@category Struct}
class APOInitSystemEffects2 extends Struct {
  external APOInitBaseStruct APOInit;

  external Pointer<COMObject> pAPOEndpointProperties;

  external Pointer<COMObject> pAPOSystemEffectsProperties;

  external Pointer pReserved;

  external Pointer<COMObject> pDeviceCollection;

  @Uint32()
  external int nSoftwareIoDeviceInCollection;

  @Uint32()
  external int nSoftwareIoConnectorIndex;

  external GUID AudioProcessingMode;

  @Int32()
  external int InitializeForDiscoveryOnly;
}

/// {@category Struct}
class APOInitSystemEffects3 extends Struct {
  external APOInitBaseStruct APOInit;

  external Pointer<COMObject> pAPOEndpointProperties;

  external Pointer<COMObject> pServiceProvider;

  external Pointer<COMObject> pDeviceCollection;

  @Uint32()
  external int nSoftwareIoDeviceInCollection;

  @Uint32()
  external int nSoftwareIoConnectorIndex;

  external GUID AudioProcessingMode;

  @Int32()
  external int InitializeForDiscoveryOnly;
}

/// {@category Struct}
class APO_CONNECTION_DESCRIPTOR extends Struct {
  @Int32()
  external int Type;

  @IntPtr()
  external int pBuffer;

  @Uint32()
  external int u32MaxFrameCount;

  external Pointer<COMObject> pFormat;

  @Uint32()
  external int u32Signature;
}

/// {@category Struct}
class APO_CONNECTION_PROPERTY extends Struct {
  @IntPtr()
  external int pBuffer;

  @Uint32()
  external int u32ValidFrameCount;

  @Int32()
  external int u32BufferFlags;

  @Uint32()
  external int u32Signature;
}

/// {@category Struct}
class APO_CONNECTION_PROPERTY_V2 extends Struct {
  external APO_CONNECTION_PROPERTY property;

  @Uint64()
  external int u64QPCTime;
}

/// {@category Struct}
class APO_NOTIFICATION extends Struct {
  @Int32()
  external int type;

  external _APO_NOTIFICATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _APO_NOTIFICATION__Anonymous_e__Union extends Union {
  external AUDIO_ENDPOINT_VOLUME_CHANGE_NOTIFICATION audioEndpointVolumeChange;

  external AUDIO_ENDPOINT_PROPERTY_CHANGE_NOTIFICATION
      audioEndpointPropertyChange;

  external AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_NOTIFICATION
      audioSystemEffectsPropertyChange;
}

extension APO_NOTIFICATION_Extension on APO_NOTIFICATION {
  AUDIO_ENDPOINT_VOLUME_CHANGE_NOTIFICATION get audioEndpointVolumeChange =>
      this.Anonymous.audioEndpointVolumeChange;
  set audioEndpointVolumeChange(
          AUDIO_ENDPOINT_VOLUME_CHANGE_NOTIFICATION value) =>
      this.Anonymous.audioEndpointVolumeChange = value;

  AUDIO_ENDPOINT_PROPERTY_CHANGE_NOTIFICATION get audioEndpointPropertyChange =>
      this.Anonymous.audioEndpointPropertyChange;
  set audioEndpointPropertyChange(
          AUDIO_ENDPOINT_PROPERTY_CHANGE_NOTIFICATION value) =>
      this.Anonymous.audioEndpointPropertyChange = value;

  AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_NOTIFICATION
      get audioSystemEffectsPropertyChange =>
          this.Anonymous.audioSystemEffectsPropertyChange;
  set audioSystemEffectsPropertyChange(
          AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_NOTIFICATION value) =>
      this.Anonymous.audioSystemEffectsPropertyChange = value;
}

/// {@category Struct}
class APO_NOTIFICATION_DESCRIPTOR extends Struct {
  @Int32()
  external int type;

  external _APO_NOTIFICATION_DESCRIPTOR__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _APO_NOTIFICATION_DESCRIPTOR__Anonymous_e__Union extends Union {
  external AUDIO_ENDPOINT_VOLUME_APO_NOTIFICATION_DESCRIPTOR
      audioEndpointVolume;

  external AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
      audioEndpointPropertyChange;

  external AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
      audioSystemEffectsPropertyChange;
}

extension APO_NOTIFICATION_DESCRIPTOR_Extension on APO_NOTIFICATION_DESCRIPTOR {
  AUDIO_ENDPOINT_VOLUME_APO_NOTIFICATION_DESCRIPTOR get audioEndpointVolume =>
      this.Anonymous.audioEndpointVolume;
  set audioEndpointVolume(
          AUDIO_ENDPOINT_VOLUME_APO_NOTIFICATION_DESCRIPTOR value) =>
      this.Anonymous.audioEndpointVolume = value;

  AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
      get audioEndpointPropertyChange =>
          this.Anonymous.audioEndpointPropertyChange;
  set audioEndpointPropertyChange(
          AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR value) =>
      this.Anonymous.audioEndpointPropertyChange = value;

  AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
      get audioSystemEffectsPropertyChange =>
          this.Anonymous.audioSystemEffectsPropertyChange;
  set audioSystemEffectsPropertyChange(
          AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
              value) =>
      this.Anonymous.audioSystemEffectsPropertyChange = value;
}

/// {@category Struct}
class APO_REG_PROPERTIES extends Struct {
  external GUID clsid;

  @Int32()
  external int Flags;

  @Array(256)
  external Array<Uint16> _szFriendlyName;

  String get szFriendlyName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szFriendlyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFriendlyName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szFriendlyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _szCopyrightInfo;

  String get szCopyrightInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szCopyrightInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCopyrightInfo(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szCopyrightInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int u32MajorVersion;

  @Uint32()
  external int u32MinorVersion;

  @Uint32()
  external int u32MinInputConnections;

  @Uint32()
  external int u32MaxInputConnections;

  @Uint32()
  external int u32MinOutputConnections;

  @Uint32()
  external int u32MaxOutputConnections;

  @Uint32()
  external int u32MaxInstances;

  @Uint32()
  external int u32NumAPOInterfaces;

  @Array(1)
  external Array<GUID> iidAPOInterfaceList;
}

/// {@category Struct}
class AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
    extends Struct {
  external Pointer<COMObject> device;
}

/// {@category Struct}
class AUDIO_ENDPOINT_PROPERTY_CHANGE_NOTIFICATION extends Struct {
  external Pointer<COMObject> endpoint;

  external Pointer<COMObject> propertyStore;

  external PROPERTYKEY propertyKey;
}

/// {@category Struct}
class AUDIO_ENDPOINT_VOLUME_APO_NOTIFICATION_DESCRIPTOR extends Struct {
  external Pointer<COMObject> device;
}

/// {@category Struct}
class AUDIO_ENDPOINT_VOLUME_CHANGE_NOTIFICATION extends Struct {
  external Pointer<COMObject> endpoint;

  external Pointer<AUDIO_VOLUME_NOTIFICATION_DATA> volume;
}

/// {@category Struct}
class AUDIO_SYSTEMEFFECT extends Struct {
  external GUID id;

  @Int32()
  external int canSetState;

  @Int32()
  external int state;
}

/// {@category Struct}
class AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
    extends Struct {
  external Pointer<COMObject> device;

  external GUID propertyStoreContext;
}

/// {@category Struct}
class AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_NOTIFICATION extends Struct {
  external Pointer<COMObject> endpoint;

  external GUID propertyStoreContext;

  @Int32()
  external int propertyStoreType;

  external Pointer<COMObject> propertyStore;

  external PROPERTYKEY propertyKey;
}

/// {@category Struct}
class AudioFXExtensionParams extends Struct {
  @IntPtr()
  external int AddPageParam;

  external Pointer<Utf16> pwstrEndpointID;

  external Pointer<COMObject> pFxProperties;
}

/// {@category Struct}
class UNCOMPRESSEDAUDIOFORMAT extends Struct {
  external GUID guidFormatType;

  @Uint32()
  external int dwSamplesPerFrame;

  @Uint32()
  external int dwBytesPerSampleContainer;

  @Uint32()
  external int dwValidBitsPerSample;

  @Float()
  external double fFramesPerSecond;

  @Uint32()
  external int dwChannelMask;
}
