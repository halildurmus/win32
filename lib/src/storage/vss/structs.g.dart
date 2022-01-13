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
import '../../storage/vss/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class IVssExamineWriterMetadata extends Opaque {}

/// {@category Struct}
class VSS_DIFF_AREA_PROP extends Struct {
  external Pointer<Uint16> m_pwszVolumeName;

  external Pointer<Uint16> m_pwszDiffAreaVolumeName;

  @Int64()
  external int m_llMaximumDiffSpace;

  @Int64()
  external int m_llAllocatedDiffSpace;

  @Int64()
  external int m_llUsedDiffSpace;
}

/// {@category Struct}
class VSS_DIFF_VOLUME_PROP extends Struct {
  external Pointer<Uint16> m_pwszVolumeName;

  external Pointer<Uint16> m_pwszVolumeDisplayName;

  @Int64()
  external int m_llVolumeFreeSpace;

  @Int64()
  external int m_llVolumeTotalSpace;
}

/// {@category Struct}
class VSS_MGMT_OBJECT_PROP extends Struct {
  @Int32()
  external int Type;

  external VSS_MGMT_OBJECT_UNION Obj;
}

/// {@category Struct}
class VSS_MGMT_OBJECT_UNION extends Union {
  external VSS_VOLUME_PROP Vol;

  external VSS_DIFF_VOLUME_PROP DiffVol;

  external VSS_DIFF_AREA_PROP DiffArea;
}

/// {@category Struct}
class VSS_OBJECT_PROP extends Struct {
  @Int32()
  external int Type;

  external VSS_OBJECT_UNION Obj;
}

/// {@category Struct}
class VSS_OBJECT_UNION extends Union {
  external VSS_SNAPSHOT_PROP Snap;

  external VSS_PROVIDER_PROP Prov;
}

/// {@category Struct}
class VSS_PROVIDER_PROP extends Struct {
  external GUID m_ProviderId;

  external Pointer<Uint16> m_pwszProviderName;

  @Int32()
  external int m_eProviderType;

  external Pointer<Uint16> m_pwszProviderVersion;

  external GUID m_ProviderVersionId;

  external GUID m_ClassId;
}

/// {@category Struct}
class VSS_SNAPSHOT_PROP extends Struct {
  external GUID m_SnapshotId;

  external GUID m_SnapshotSetId;

  @Int32()
  external int m_lSnapshotsCount;

  external Pointer<Uint16> m_pwszSnapshotDeviceObject;

  external Pointer<Uint16> m_pwszOriginalVolumeName;

  external Pointer<Uint16> m_pwszOriginatingMachine;

  external Pointer<Uint16> m_pwszServiceMachine;

  external Pointer<Uint16> m_pwszExposedName;

  external Pointer<Uint16> m_pwszExposedPath;

  external GUID m_ProviderId;

  @Int32()
  external int m_lSnapshotAttributes;

  @Int64()
  external int m_tsCreationTimestamp;

  @Int32()
  external int m_eStatus;
}

/// {@category Struct}
class VSS_VOLUME_PROP extends Struct {
  external Pointer<Uint16> m_pwszVolumeName;

  external Pointer<Uint16> m_pwszVolumeDisplayName;
}

/// {@category Struct}
class VSS_VOLUME_PROTECTION_INFO extends Struct {
  @Int32()
  external int m_protectionLevel;

  @Int32()
  external int m_volumeIsOfflineForProtection;

  @Int32()
  external int m_protectionFault;

  @Int32()
  external int m_failureStatus;

  @Int32()
  external int m_volumeHasUnusedDiffArea;

  @Uint32()
  external int m_reserved;
}
