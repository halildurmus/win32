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
import '../../devices/biometricframework/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/biometricframework/callbacks.g.dart';

/// {@category Struct}
class WINBIO_ACCOUNT_POLICY extends Struct {
  external WINBIO_IDENTITY Identity;

  @Int32()
  external int AntiSpoofBehavior;
}

/// {@category Struct}
class WINBIO_ADAPTER_INTERFACE_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;
}

/// {@category Struct}
class WINBIO_ANTI_SPOOF_POLICY extends Struct {
  @Int32()
  external int Action;

  @Int32()
  external int Source;
}

/// {@category Struct}
class WINBIO_ASYNC_RESULT extends Struct {
  @Uint32()
  external int SessionHandle;

  @Uint32()
  external int Operation;

  @Uint64()
  external int SequenceNumber;

  @Int64()
  external int TimeStamp;

  @Int32()
  external int ApiStatus;

  @Uint32()
  external int UnitId;

  external Pointer UserData;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union Parameters;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union extends Union {
  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__Verify_e__Struct Verify;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__Identify_e__Struct
      Identify;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollBegin_e__Struct
      EnrollBegin;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCapture_e__Struct
      EnrollCapture;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCommit_e__Struct
      EnrollCommit;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumEnrollments_e__Struct
      EnumEnrollments;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__CaptureSample_e__Struct
      CaptureSample;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__DeleteTemplate_e__Struct
      DeleteTemplate;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProperty_e__Struct
      GetProperty;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__SetProperty_e__Struct
      SetProperty;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetEvent_e__Struct
      GetEvent;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__ControlUnit_e__Struct
      ControlUnit;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumServiceProviders_e__Struct
      EnumServiceProviders;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumBiometricUnits_e__Struct
      EnumBiometricUnits;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumDatabases_e__Struct
      EnumDatabases;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__VerifyAndReleaseTicket_e__Struct
      VerifyAndReleaseTicket;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__IdentifyAndReleaseTicket_e__Struct
      IdentifyAndReleaseTicket;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollSelect_e__Struct
      EnrollSelect;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__MonitorPresence_e__Struct
      MonitorPresence;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProtectionPolicy_e__Struct
      GetProtectionPolicy;

  external _WINBIO_ASYNC_RESULT__Parameters_e__Union__NotifyUnitStatusChange_e__Struct
      NotifyUnitStatusChange;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__Verify_e__Struct
    extends Struct {
  @Uint8()
  external int Match;

  @Uint32()
  external int RejectDetail;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension
    on WINBIO_ASYNC_RESULT {
  int get Match => this.Parameters.Verify.Match;
  set Match(int value) => this.Parameters.Verify.Match = value;

  int get RejectDetail => this.Parameters.Verify.RejectDetail;
  set RejectDetail(int value) => this.Parameters.Verify.RejectDetail = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__Identify_e__Struct
    extends Struct {
  external WINBIO_IDENTITY Identity;

  @Uint8()
  external int SubFactor;

  @Uint32()
  external int RejectDetail;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_1
    on WINBIO_ASYNC_RESULT {
  WINBIO_IDENTITY get Identity => this.Parameters.Identify.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.Identify.Identity = value;

  int get SubFactor => this.Parameters.Identify.SubFactor;
  set SubFactor(int value) => this.Parameters.Identify.SubFactor = value;

  int get RejectDetail => this.Parameters.Identify.RejectDetail;
  set RejectDetail(int value) => this.Parameters.Identify.RejectDetail = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollBegin_e__Struct
    extends Struct {
  @Uint8()
  external int SubFactor;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_2
    on WINBIO_ASYNC_RESULT {
  int get SubFactor => this.Parameters.EnrollBegin.SubFactor;
  set SubFactor(int value) => this.Parameters.EnrollBegin.SubFactor = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCapture_e__Struct
    extends Struct {
  @Uint32()
  external int RejectDetail;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_3
    on WINBIO_ASYNC_RESULT {
  int get RejectDetail => this.Parameters.EnrollCapture.RejectDetail;
  set RejectDetail(int value) =>
      this.Parameters.EnrollCapture.RejectDetail = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCommit_e__Struct
    extends Struct {
  external WINBIO_IDENTITY Identity;

  @Uint8()
  external int IsNewTemplate;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_4
    on WINBIO_ASYNC_RESULT {
  WINBIO_IDENTITY get Identity => this.Parameters.EnrollCommit.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.EnrollCommit.Identity = value;

  int get IsNewTemplate => this.Parameters.EnrollCommit.IsNewTemplate;
  set IsNewTemplate(int value) =>
      this.Parameters.EnrollCommit.IsNewTemplate = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumEnrollments_e__Struct
    extends Struct {
  external WINBIO_IDENTITY Identity;

  @IntPtr()
  external int SubFactorCount;

  external Pointer<Uint8> SubFactorArray;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_5
    on WINBIO_ASYNC_RESULT {
  WINBIO_IDENTITY get Identity => this.Parameters.EnumEnrollments.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.EnumEnrollments.Identity = value;

  int get SubFactorCount => this.Parameters.EnumEnrollments.SubFactorCount;
  set SubFactorCount(int value) =>
      this.Parameters.EnumEnrollments.SubFactorCount = value;

  Pointer<Uint8> get SubFactorArray =>
      this.Parameters.EnumEnrollments.SubFactorArray;
  set SubFactorArray(Pointer<Uint8> value) =>
      this.Parameters.EnumEnrollments.SubFactorArray = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__CaptureSample_e__Struct
    extends Struct {
  external Pointer<WINBIO_BIR> Sample;

  @IntPtr()
  external int SampleSize;

  @Uint32()
  external int RejectDetail;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_6
    on WINBIO_ASYNC_RESULT {
  Pointer<WINBIO_BIR> get Sample => this.Parameters.CaptureSample.Sample;
  set Sample(Pointer<WINBIO_BIR> value) =>
      this.Parameters.CaptureSample.Sample = value;

  int get SampleSize => this.Parameters.CaptureSample.SampleSize;
  set SampleSize(int value) => this.Parameters.CaptureSample.SampleSize = value;

  int get RejectDetail => this.Parameters.CaptureSample.RejectDetail;
  set RejectDetail(int value) =>
      this.Parameters.CaptureSample.RejectDetail = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__DeleteTemplate_e__Struct
    extends Struct {
  external WINBIO_IDENTITY Identity;

  @Uint8()
  external int SubFactor;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_7
    on WINBIO_ASYNC_RESULT {
  WINBIO_IDENTITY get Identity => this.Parameters.DeleteTemplate.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.DeleteTemplate.Identity = value;

  int get SubFactor => this.Parameters.DeleteTemplate.SubFactor;
  set SubFactor(int value) => this.Parameters.DeleteTemplate.SubFactor = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProperty_e__Struct
    extends Struct {
  @Uint32()
  external int PropertyType;

  @Uint32()
  external int PropertyId;

  external WINBIO_IDENTITY Identity;

  @Uint8()
  external int SubFactor;

  @IntPtr()
  external int PropertyBufferSize;

  external Pointer PropertyBuffer;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_8
    on WINBIO_ASYNC_RESULT {
  int get PropertyType => this.Parameters.GetProperty.PropertyType;
  set PropertyType(int value) =>
      this.Parameters.GetProperty.PropertyType = value;

  int get PropertyId => this.Parameters.GetProperty.PropertyId;
  set PropertyId(int value) => this.Parameters.GetProperty.PropertyId = value;

  WINBIO_IDENTITY get Identity => this.Parameters.GetProperty.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.GetProperty.Identity = value;

  int get SubFactor => this.Parameters.GetProperty.SubFactor;
  set SubFactor(int value) => this.Parameters.GetProperty.SubFactor = value;

  int get PropertyBufferSize => this.Parameters.GetProperty.PropertyBufferSize;
  set PropertyBufferSize(int value) =>
      this.Parameters.GetProperty.PropertyBufferSize = value;

  Pointer get PropertyBuffer => this.Parameters.GetProperty.PropertyBuffer;
  set PropertyBuffer(Pointer value) =>
      this.Parameters.GetProperty.PropertyBuffer = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__SetProperty_e__Struct
    extends Struct {
  @Uint32()
  external int PropertyType;

  @Uint32()
  external int PropertyId;

  external WINBIO_IDENTITY Identity;

  @Uint8()
  external int SubFactor;

  @IntPtr()
  external int PropertyBufferSize;

  external Pointer PropertyBuffer;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_9
    on WINBIO_ASYNC_RESULT {
  int get PropertyType => this.Parameters.SetProperty.PropertyType;
  set PropertyType(int value) =>
      this.Parameters.SetProperty.PropertyType = value;

  int get PropertyId => this.Parameters.SetProperty.PropertyId;
  set PropertyId(int value) => this.Parameters.SetProperty.PropertyId = value;

  WINBIO_IDENTITY get Identity => this.Parameters.SetProperty.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.SetProperty.Identity = value;

  int get SubFactor => this.Parameters.SetProperty.SubFactor;
  set SubFactor(int value) => this.Parameters.SetProperty.SubFactor = value;

  int get PropertyBufferSize => this.Parameters.SetProperty.PropertyBufferSize;
  set PropertyBufferSize(int value) =>
      this.Parameters.SetProperty.PropertyBufferSize = value;

  Pointer get PropertyBuffer => this.Parameters.SetProperty.PropertyBuffer;
  set PropertyBuffer(Pointer value) =>
      this.Parameters.SetProperty.PropertyBuffer = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetEvent_e__Struct
    extends Struct {
  external WINBIO_EVENT Event;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_10
    on WINBIO_ASYNC_RESULT {
  WINBIO_EVENT get Event => this.Parameters.GetEvent.Event;
  set Event(WINBIO_EVENT value) => this.Parameters.GetEvent.Event = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__ControlUnit_e__Struct
    extends Struct {
  @Uint32()
  external int Component;

  @Uint32()
  external int ControlCode;

  @Uint32()
  external int OperationStatus;

  external Pointer<Uint8> SendBuffer;

  @IntPtr()
  external int SendBufferSize;

  external Pointer<Uint8> ReceiveBuffer;

  @IntPtr()
  external int ReceiveBufferSize;

  @IntPtr()
  external int ReceiveDataSize;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_11
    on WINBIO_ASYNC_RESULT {
  int get Component => this.Parameters.ControlUnit.Component;
  set Component(int value) => this.Parameters.ControlUnit.Component = value;

  int get ControlCode => this.Parameters.ControlUnit.ControlCode;
  set ControlCode(int value) => this.Parameters.ControlUnit.ControlCode = value;

  int get OperationStatus => this.Parameters.ControlUnit.OperationStatus;
  set OperationStatus(int value) =>
      this.Parameters.ControlUnit.OperationStatus = value;

  Pointer<Uint8> get SendBuffer => this.Parameters.ControlUnit.SendBuffer;
  set SendBuffer(Pointer<Uint8> value) =>
      this.Parameters.ControlUnit.SendBuffer = value;

  int get SendBufferSize => this.Parameters.ControlUnit.SendBufferSize;
  set SendBufferSize(int value) =>
      this.Parameters.ControlUnit.SendBufferSize = value;

  Pointer<Uint8> get ReceiveBuffer => this.Parameters.ControlUnit.ReceiveBuffer;
  set ReceiveBuffer(Pointer<Uint8> value) =>
      this.Parameters.ControlUnit.ReceiveBuffer = value;

  int get ReceiveBufferSize => this.Parameters.ControlUnit.ReceiveBufferSize;
  set ReceiveBufferSize(int value) =>
      this.Parameters.ControlUnit.ReceiveBufferSize = value;

  int get ReceiveDataSize => this.Parameters.ControlUnit.ReceiveDataSize;
  set ReceiveDataSize(int value) =>
      this.Parameters.ControlUnit.ReceiveDataSize = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumServiceProviders_e__Struct
    extends Struct {
  @IntPtr()
  external int BspCount;

  external Pointer<WINBIO_BSP_SCHEMA> BspSchemaArray;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_12
    on WINBIO_ASYNC_RESULT {
  int get BspCount => this.Parameters.EnumServiceProviders.BspCount;
  set BspCount(int value) =>
      this.Parameters.EnumServiceProviders.BspCount = value;

  Pointer<WINBIO_BSP_SCHEMA> get BspSchemaArray =>
      this.Parameters.EnumServiceProviders.BspSchemaArray;
  set BspSchemaArray(Pointer<WINBIO_BSP_SCHEMA> value) =>
      this.Parameters.EnumServiceProviders.BspSchemaArray = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumBiometricUnits_e__Struct
    extends Struct {
  @IntPtr()
  external int UnitCount;

  external Pointer<WINBIO_UNIT_SCHEMA> UnitSchemaArray;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_13
    on WINBIO_ASYNC_RESULT {
  int get UnitCount => this.Parameters.EnumBiometricUnits.UnitCount;
  set UnitCount(int value) =>
      this.Parameters.EnumBiometricUnits.UnitCount = value;

  Pointer<WINBIO_UNIT_SCHEMA> get UnitSchemaArray =>
      this.Parameters.EnumBiometricUnits.UnitSchemaArray;
  set UnitSchemaArray(Pointer<WINBIO_UNIT_SCHEMA> value) =>
      this.Parameters.EnumBiometricUnits.UnitSchemaArray = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumDatabases_e__Struct
    extends Struct {
  @IntPtr()
  external int StorageCount;

  external Pointer<WINBIO_STORAGE_SCHEMA> StorageSchemaArray;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_14
    on WINBIO_ASYNC_RESULT {
  int get StorageCount => this.Parameters.EnumDatabases.StorageCount;
  set StorageCount(int value) =>
      this.Parameters.EnumDatabases.StorageCount = value;

  Pointer<WINBIO_STORAGE_SCHEMA> get StorageSchemaArray =>
      this.Parameters.EnumDatabases.StorageSchemaArray;
  set StorageSchemaArray(Pointer<WINBIO_STORAGE_SCHEMA> value) =>
      this.Parameters.EnumDatabases.StorageSchemaArray = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__VerifyAndReleaseTicket_e__Struct
    extends Struct {
  @Uint8()
  external int Match;

  @Uint32()
  external int RejectDetail;

  @Uint64()
  external int Ticket;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_15
    on WINBIO_ASYNC_RESULT {
  int get Match => this.Parameters.VerifyAndReleaseTicket.Match;
  set Match(int value) => this.Parameters.VerifyAndReleaseTicket.Match = value;

  int get RejectDetail => this.Parameters.VerifyAndReleaseTicket.RejectDetail;
  set RejectDetail(int value) =>
      this.Parameters.VerifyAndReleaseTicket.RejectDetail = value;

  int get Ticket => this.Parameters.VerifyAndReleaseTicket.Ticket;
  set Ticket(int value) =>
      this.Parameters.VerifyAndReleaseTicket.Ticket = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__IdentifyAndReleaseTicket_e__Struct
    extends Struct {
  external WINBIO_IDENTITY Identity;

  @Uint8()
  external int SubFactor;

  @Uint32()
  external int RejectDetail;

  @Uint64()
  external int Ticket;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_16
    on WINBIO_ASYNC_RESULT {
  WINBIO_IDENTITY get Identity =>
      this.Parameters.IdentifyAndReleaseTicket.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.IdentifyAndReleaseTicket.Identity = value;

  int get SubFactor => this.Parameters.IdentifyAndReleaseTicket.SubFactor;
  set SubFactor(int value) =>
      this.Parameters.IdentifyAndReleaseTicket.SubFactor = value;

  int get RejectDetail => this.Parameters.IdentifyAndReleaseTicket.RejectDetail;
  set RejectDetail(int value) =>
      this.Parameters.IdentifyAndReleaseTicket.RejectDetail = value;

  int get Ticket => this.Parameters.IdentifyAndReleaseTicket.Ticket;
  set Ticket(int value) =>
      this.Parameters.IdentifyAndReleaseTicket.Ticket = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollSelect_e__Struct
    extends Struct {
  @Uint64()
  external int SelectorValue;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_17
    on WINBIO_ASYNC_RESULT {
  int get SelectorValue => this.Parameters.EnrollSelect.SelectorValue;
  set SelectorValue(int value) =>
      this.Parameters.EnrollSelect.SelectorValue = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__MonitorPresence_e__Struct
    extends Struct {
  @Uint32()
  external int ChangeType;

  @IntPtr()
  external int PresenceCount;

  external Pointer<WINBIO_PRESENCE> PresenceArray;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_18
    on WINBIO_ASYNC_RESULT {
  int get ChangeType => this.Parameters.MonitorPresence.ChangeType;
  set ChangeType(int value) =>
      this.Parameters.MonitorPresence.ChangeType = value;

  int get PresenceCount => this.Parameters.MonitorPresence.PresenceCount;
  set PresenceCount(int value) =>
      this.Parameters.MonitorPresence.PresenceCount = value;

  Pointer<WINBIO_PRESENCE> get PresenceArray =>
      this.Parameters.MonitorPresence.PresenceArray;
  set PresenceArray(Pointer<WINBIO_PRESENCE> value) =>
      this.Parameters.MonitorPresence.PresenceArray = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProtectionPolicy_e__Struct
    extends Struct {
  external WINBIO_IDENTITY Identity;

  external WINBIO_PROTECTION_POLICY Policy;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_19
    on WINBIO_ASYNC_RESULT {
  WINBIO_IDENTITY get Identity => this.Parameters.GetProtectionPolicy.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.GetProtectionPolicy.Identity = value;

  WINBIO_PROTECTION_POLICY get Policy =>
      this.Parameters.GetProtectionPolicy.Policy;
  set Policy(WINBIO_PROTECTION_POLICY value) =>
      this.Parameters.GetProtectionPolicy.Policy = value;
}

/// {@category Struct}
class _WINBIO_ASYNC_RESULT__Parameters_e__Union__NotifyUnitStatusChange_e__Struct
    extends Struct {
  external WINBIO_EXTENDED_UNIT_STATUS ExtendedStatus;
}

extension WINBIO_ASYNC_RESULT__Parameters_e__Union_Extension_20
    on WINBIO_ASYNC_RESULT {
  WINBIO_EXTENDED_UNIT_STATUS get ExtendedStatus =>
      this.Parameters.NotifyUnitStatusChange.ExtendedStatus;
  set ExtendedStatus(WINBIO_EXTENDED_UNIT_STATUS value) =>
      this.Parameters.NotifyUnitStatusChange.ExtendedStatus = value;
}

extension WINBIO_ASYNC_RESULT_Extension on WINBIO_ASYNC_RESULT {
  _WINBIO_ASYNC_RESULT__Parameters_e__Union__Verify_e__Struct get Verify =>
      this.Parameters.Verify;
  set Verify(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__Verify_e__Struct value) =>
      this.Parameters.Verify = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__Identify_e__Struct get Identify =>
      this.Parameters.Identify;
  set Identify(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__Identify_e__Struct
              value) =>
      this.Parameters.Identify = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollBegin_e__Struct
      get EnrollBegin => this.Parameters.EnrollBegin;
  set EnrollBegin(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollBegin_e__Struct
              value) =>
      this.Parameters.EnrollBegin = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCapture_e__Struct
      get EnrollCapture => this.Parameters.EnrollCapture;
  set EnrollCapture(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCapture_e__Struct
              value) =>
      this.Parameters.EnrollCapture = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCommit_e__Struct
      get EnrollCommit => this.Parameters.EnrollCommit;
  set EnrollCommit(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollCommit_e__Struct
              value) =>
      this.Parameters.EnrollCommit = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumEnrollments_e__Struct
      get EnumEnrollments => this.Parameters.EnumEnrollments;
  set EnumEnrollments(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumEnrollments_e__Struct
              value) =>
      this.Parameters.EnumEnrollments = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__CaptureSample_e__Struct
      get CaptureSample => this.Parameters.CaptureSample;
  set CaptureSample(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__CaptureSample_e__Struct
              value) =>
      this.Parameters.CaptureSample = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__DeleteTemplate_e__Struct
      get DeleteTemplate => this.Parameters.DeleteTemplate;
  set DeleteTemplate(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__DeleteTemplate_e__Struct
              value) =>
      this.Parameters.DeleteTemplate = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProperty_e__Struct
      get GetProperty => this.Parameters.GetProperty;
  set GetProperty(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProperty_e__Struct
              value) =>
      this.Parameters.GetProperty = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__SetProperty_e__Struct
      get SetProperty => this.Parameters.SetProperty;
  set SetProperty(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__SetProperty_e__Struct
              value) =>
      this.Parameters.SetProperty = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetEvent_e__Struct get GetEvent =>
      this.Parameters.GetEvent;
  set GetEvent(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetEvent_e__Struct
              value) =>
      this.Parameters.GetEvent = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__ControlUnit_e__Struct
      get ControlUnit => this.Parameters.ControlUnit;
  set ControlUnit(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__ControlUnit_e__Struct
              value) =>
      this.Parameters.ControlUnit = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumServiceProviders_e__Struct
      get EnumServiceProviders => this.Parameters.EnumServiceProviders;
  set EnumServiceProviders(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumServiceProviders_e__Struct
              value) =>
      this.Parameters.EnumServiceProviders = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumBiometricUnits_e__Struct
      get EnumBiometricUnits => this.Parameters.EnumBiometricUnits;
  set EnumBiometricUnits(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumBiometricUnits_e__Struct
              value) =>
      this.Parameters.EnumBiometricUnits = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumDatabases_e__Struct
      get EnumDatabases => this.Parameters.EnumDatabases;
  set EnumDatabases(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnumDatabases_e__Struct
              value) =>
      this.Parameters.EnumDatabases = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__VerifyAndReleaseTicket_e__Struct
      get VerifyAndReleaseTicket => this.Parameters.VerifyAndReleaseTicket;
  set VerifyAndReleaseTicket(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__VerifyAndReleaseTicket_e__Struct
              value) =>
      this.Parameters.VerifyAndReleaseTicket = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__IdentifyAndReleaseTicket_e__Struct
      get IdentifyAndReleaseTicket => this.Parameters.IdentifyAndReleaseTicket;
  set IdentifyAndReleaseTicket(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__IdentifyAndReleaseTicket_e__Struct
              value) =>
      this.Parameters.IdentifyAndReleaseTicket = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollSelect_e__Struct
      get EnrollSelect => this.Parameters.EnrollSelect;
  set EnrollSelect(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__EnrollSelect_e__Struct
              value) =>
      this.Parameters.EnrollSelect = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__MonitorPresence_e__Struct
      get MonitorPresence => this.Parameters.MonitorPresence;
  set MonitorPresence(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__MonitorPresence_e__Struct
              value) =>
      this.Parameters.MonitorPresence = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProtectionPolicy_e__Struct
      get GetProtectionPolicy => this.Parameters.GetProtectionPolicy;
  set GetProtectionPolicy(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__GetProtectionPolicy_e__Struct
              value) =>
      this.Parameters.GetProtectionPolicy = value;

  _WINBIO_ASYNC_RESULT__Parameters_e__Union__NotifyUnitStatusChange_e__Struct
      get NotifyUnitStatusChange => this.Parameters.NotifyUnitStatusChange;
  set NotifyUnitStatusChange(
          _WINBIO_ASYNC_RESULT__Parameters_e__Union__NotifyUnitStatusChange_e__Struct
              value) =>
      this.Parameters.NotifyUnitStatusChange = value;
}

/// {@category Struct}
class WINBIO_BDB_ANSI_381_HEADER extends Struct {
  @Uint64()
  external int RecordLength;

  @Uint32()
  external int FormatIdentifier;

  @Uint32()
  external int VersionNumber;

  external WINBIO_REGISTERED_FORMAT ProductId;

  @Uint16()
  external int CaptureDeviceId;

  @Uint16()
  external int ImageAcquisitionLevel;

  @Uint16()
  external int HorizontalScanResolution;

  @Uint16()
  external int VerticalScanResolution;

  @Uint16()
  external int HorizontalImageResolution;

  @Uint16()
  external int VerticalImageResolution;

  @Uint8()
  external int ElementCount;

  @Uint8()
  external int ScaleUnits;

  @Uint8()
  external int PixelDepth;

  @Uint8()
  external int ImageCompressionAlg;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class WINBIO_BDB_ANSI_381_RECORD extends Struct {
  @Uint32()
  external int BlockLength;

  @Uint16()
  external int HorizontalLineLength;

  @Uint16()
  external int VerticalLineLength;

  @Uint8()
  external int Position;

  @Uint8()
  external int CountOfViews;

  @Uint8()
  external int ViewNumber;

  @Uint8()
  external int ImageQuality;

  @Uint8()
  external int ImpressionType;

  @Uint8()
  external int Reserved;
}

/// {@category Struct}
class WINBIO_BIR extends Struct {
  external WINBIO_BIR_DATA HeaderBlock;

  external WINBIO_BIR_DATA StandardDataBlock;

  external WINBIO_BIR_DATA VendorDataBlock;

  external WINBIO_BIR_DATA SignatureBlock;
}

/// {@category Struct}
class WINBIO_BIR_DATA extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Offset;
}

/// {@category Struct}
class WINBIO_BIR_HEADER extends Struct {
  @Uint16()
  external int ValidFields;

  @Uint8()
  external int HeaderVersion;

  @Uint8()
  external int PatronHeaderVersion;

  @Uint8()
  external int DataFlags;

  @Uint32()
  external int Type;

  @Uint8()
  external int Subtype;

  @Uint8()
  external int Purpose;

  @Int8()
  external int DataQuality;

  @Int64()
  external int CreationDate;

  external _WINBIO_BIR_HEADER__ValidityPeriod_e__Struct ValidityPeriod;

  external WINBIO_REGISTERED_FORMAT BiometricDataFormat;

  external WINBIO_REGISTERED_FORMAT ProductId;
}

/// {@category Struct}
class _WINBIO_BIR_HEADER__ValidityPeriod_e__Struct extends Struct {
  @Int64()
  external int BeginDate;

  @Int64()
  external int EndDate;
}

extension WINBIO_BIR_HEADER_Extension on WINBIO_BIR_HEADER {
  int get BeginDate => this.ValidityPeriod.BeginDate;
  set BeginDate(int value) => this.ValidityPeriod.BeginDate = value;

  int get EndDate => this.ValidityPeriod.EndDate;
  set EndDate(int value) => this.ValidityPeriod.EndDate = value;
}

/// {@category Struct}
class WINBIO_BLANK_PAYLOAD extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;
}

/// {@category Struct}
class WINBIO_BSP_SCHEMA extends Struct {
  @Uint32()
  external int BiometricFactor;

  external GUID BspId;

  @Array(256)
  external Array<Uint16> Description;

  @Array(256)
  external Array<Uint16> Vendor;

  external WINBIO_VERSION Version;
}

/// {@category Struct}
class WINBIO_CALIBRATION_INFO extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  external WINBIO_DATA CalibrationData;
}

/// {@category Struct}
class WINBIO_CAPTURE_DATA extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  @Uint32()
  external int SensorStatus;

  @Uint32()
  external int RejectDetail;

  external WINBIO_DATA CaptureData;
}

/// {@category Struct}
class WINBIO_CAPTURE_PARAMETERS extends Struct {
  @Uint32()
  external int PayloadSize;

  @Uint8()
  external int Purpose;

  external WINBIO_REGISTERED_FORMAT Format;

  external GUID VendorFormat;

  @Uint8()
  external int Flags;
}

/// {@category Struct}
class WINBIO_DATA extends Struct {
  @Uint32()
  external int Size;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class WINBIO_DIAGNOSTICS extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  @Uint32()
  external int SensorStatus;

  external WINBIO_DATA VendorDiagnostics;
}

/// {@category Struct}
class WINBIO_ENCRYPTED_CAPTURE_PARAMS extends Struct {
  @Uint32()
  external int PayloadSize;

  @Uint8()
  external int Purpose;

  external WINBIO_REGISTERED_FORMAT Format;

  external GUID VendorFormat;

  @Uint8()
  external int Flags;

  @Uint32()
  external int NonceSize;
}

/// {@category Struct}
class WINBIO_ENGINE_INTERFACE extends Struct {
  external WINBIO_ADAPTER_INTERFACE_VERSION Version;

  @Uint32()
  external int Type;

  @IntPtr()
  external int Size;

  external GUID AdapterId;

  external Pointer<NativeFunction<PIBIO_ENGINE_ATTACH_FN>> Attach;

  external Pointer<NativeFunction<PIBIO_ENGINE_DETACH_FN>> Detach;

  external Pointer<NativeFunction<PIBIO_ENGINE_CLEAR_CONTEXT_FN>> ClearContext;

  external Pointer<NativeFunction<PIBIO_ENGINE_QUERY_PREFERRED_FORMAT_FN>>
      QueryPreferredFormat;

  external Pointer<NativeFunction<PIBIO_ENGINE_QUERY_INDEX_VECTOR_SIZE_FN>>
      QueryIndexVectorSize;

  external Pointer<NativeFunction<PIBIO_ENGINE_QUERY_HASH_ALGORITHMS_FN>>
      QueryHashAlgorithms;

  external Pointer<NativeFunction<PIBIO_ENGINE_SET_HASH_ALGORITHM_FN>>
      SetHashAlgorithm;

  external Pointer<NativeFunction<PIBIO_ENGINE_QUERY_SAMPLE_HINT_FN>>
      QuerySampleHint;

  external Pointer<NativeFunction<PIBIO_ENGINE_ACCEPT_SAMPLE_DATA_FN>>
      AcceptSampleData;

  external Pointer<NativeFunction<PIBIO_ENGINE_EXPORT_ENGINE_DATA_FN>>
      ExportEngineData;

  external Pointer<NativeFunction<PIBIO_ENGINE_VERIFY_FEATURE_SET_FN>>
      VerifyFeatureSet;

  external Pointer<NativeFunction<PIBIO_ENGINE_IDENTIFY_FEATURE_SET_FN>>
      IdentifyFeatureSet;

  external Pointer<NativeFunction<PIBIO_ENGINE_CREATE_ENROLLMENT_FN>>
      CreateEnrollment;

  external Pointer<NativeFunction<PIBIO_ENGINE_UPDATE_ENROLLMENT_FN>>
      UpdateEnrollment;

  external Pointer<NativeFunction<PIBIO_ENGINE_GET_ENROLLMENT_STATUS_FN>>
      GetEnrollmentStatus;

  external Pointer<NativeFunction<PIBIO_ENGINE_GET_ENROLLMENT_HASH_FN>>
      GetEnrollmentHash;

  external Pointer<NativeFunction<PIBIO_ENGINE_CHECK_FOR_DUPLICATE_FN>>
      CheckForDuplicate;

  external Pointer<NativeFunction<PIBIO_ENGINE_COMMIT_ENROLLMENT_FN>>
      CommitEnrollment;

  external Pointer<NativeFunction<PIBIO_ENGINE_DISCARD_ENROLLMENT_FN>>
      DiscardEnrollment;

  external Pointer<NativeFunction<PIBIO_ENGINE_CONTROL_UNIT_FN>> ControlUnit;

  external Pointer<NativeFunction<PIBIO_ENGINE_CONTROL_UNIT_PRIVILEGED_FN>>
      ControlUnitPrivileged;

  external Pointer<NativeFunction<PIBIO_ENGINE_NOTIFY_POWER_CHANGE_FN>>
      NotifyPowerChange;

  external Pointer<NativeFunction<PIBIO_ENGINE_RESERVED_1_FN>> Reserved_1;

  external Pointer<NativeFunction<PIBIO_ENGINE_PIPELINE_INIT_FN>> PipelineInit;

  external Pointer<NativeFunction<PIBIO_ENGINE_PIPELINE_CLEANUP_FN>>
      PipelineCleanup;

  external Pointer<NativeFunction<PIBIO_ENGINE_ACTIVATE_FN>> Activate;

  external Pointer<NativeFunction<PIBIO_ENGINE_DEACTIVATE_FN>> Deactivate;

  external Pointer<NativeFunction<PIBIO_ENGINE_QUERY_EXTENDED_INFO_FN>>
      QueryExtendedInfo;

  external Pointer<NativeFunction<PIBIO_ENGINE_IDENTIFY_ALL_FN>> IdentifyAll;

  external Pointer<NativeFunction<PIBIO_ENGINE_SET_ENROLLMENT_SELECTOR_FN>>
      SetEnrollmentSelector;

  external Pointer<NativeFunction<PIBIO_ENGINE_SET_ENROLLMENT_PARAMETERS_FN>>
      SetEnrollmentParameters;

  external Pointer<
          NativeFunction<PIBIO_ENGINE_QUERY_EXTENDED_ENROLLMENT_STATUS_FN>>
      QueryExtendedEnrollmentStatus;

  external Pointer<NativeFunction<PIBIO_ENGINE_REFRESH_CACHE_FN>> RefreshCache;

  external Pointer<NativeFunction<PIBIO_ENGINE_SELECT_CALIBRATION_FORMAT_FN>>
      SelectCalibrationFormat;

  external Pointer<NativeFunction<PIBIO_ENGINE_QUERY_CALIBRATION_DATA_FN>>
      QueryCalibrationData;

  external Pointer<NativeFunction<PIBIO_ENGINE_SET_ACCOUNT_POLICY_FN>>
      SetAccountPolicy;

  external Pointer<NativeFunction<PIBIO_ENGINE_CREATE_KEY_FN>> CreateKey;

  external Pointer<NativeFunction<PIBIO_ENGINE_IDENTIFY_FEATURE_SET_SECURE_FN>>
      IdentifyFeatureSetSecure;

  external Pointer<
          NativeFunction<PIBIO_ENGINE_ACCEPT_PRIVATE_SENSOR_TYPE_INFO_FN>>
      AcceptPrivateSensorTypeInfo;

  external Pointer<
          NativeFunction<PIBIO_ENGINE_CREATE_ENROLLMENT_AUTHENTICATED_FN>>
      CreateEnrollmentAuthenticated;

  external Pointer<
          NativeFunction<PIBIO_ENGINE_IDENTIFY_FEATURE_SET_AUTHENTICATED_FN>>
      IdentifyFeatureSetAuthenticated;
}

/// {@category Struct}
class WINBIO_EVENT extends Struct {
  @Uint32()
  external int Type;

  external _WINBIO_EVENT__Parameters_e__Union Parameters;
}

/// {@category Struct}
class _WINBIO_EVENT__Parameters_e__Union extends Union {
  external _WINBIO_EVENT__Parameters_e__Union__Unclaimed_e__Struct Unclaimed;

  external _WINBIO_EVENT__Parameters_e__Union__UnclaimedIdentify_e__Struct
      UnclaimedIdentify;

  external _WINBIO_EVENT__Parameters_e__Union__Error_e__Struct Error;
}

/// {@category Struct}
class _WINBIO_EVENT__Parameters_e__Union__Unclaimed_e__Struct extends Struct {
  @Uint32()
  external int UnitId;

  @Uint32()
  external int RejectDetail;
}

extension WINBIO_EVENT__Parameters_e__Union_Extension on WINBIO_EVENT {
  int get UnitId => this.Parameters.Unclaimed.UnitId;
  set UnitId(int value) => this.Parameters.Unclaimed.UnitId = value;

  int get RejectDetail => this.Parameters.Unclaimed.RejectDetail;
  set RejectDetail(int value) => this.Parameters.Unclaimed.RejectDetail = value;
}

/// {@category Struct}
class _WINBIO_EVENT__Parameters_e__Union__UnclaimedIdentify_e__Struct
    extends Struct {
  @Uint32()
  external int UnitId;

  external WINBIO_IDENTITY Identity;

  @Uint8()
  external int SubFactor;

  @Uint32()
  external int RejectDetail;
}

extension WINBIO_EVENT__Parameters_e__Union_Extension_1 on WINBIO_EVENT {
  int get UnitId => this.Parameters.UnclaimedIdentify.UnitId;
  set UnitId(int value) => this.Parameters.UnclaimedIdentify.UnitId = value;

  WINBIO_IDENTITY get Identity => this.Parameters.UnclaimedIdentify.Identity;
  set Identity(WINBIO_IDENTITY value) =>
      this.Parameters.UnclaimedIdentify.Identity = value;

  int get SubFactor => this.Parameters.UnclaimedIdentify.SubFactor;
  set SubFactor(int value) =>
      this.Parameters.UnclaimedIdentify.SubFactor = value;

  int get RejectDetail => this.Parameters.UnclaimedIdentify.RejectDetail;
  set RejectDetail(int value) =>
      this.Parameters.UnclaimedIdentify.RejectDetail = value;
}

/// {@category Struct}
class _WINBIO_EVENT__Parameters_e__Union__Error_e__Struct extends Struct {
  @Int32()
  external int ErrorCode;
}

extension WINBIO_EVENT__Parameters_e__Union_Extension_2 on WINBIO_EVENT {
  int get ErrorCode => this.Parameters.Error.ErrorCode;
  set ErrorCode(int value) => this.Parameters.Error.ErrorCode = value;
}

extension WINBIO_EVENT_Extension on WINBIO_EVENT {
  _WINBIO_EVENT__Parameters_e__Union__Unclaimed_e__Struct get Unclaimed =>
      this.Parameters.Unclaimed;
  set Unclaimed(
          _WINBIO_EVENT__Parameters_e__Union__Unclaimed_e__Struct value) =>
      this.Parameters.Unclaimed = value;

  _WINBIO_EVENT__Parameters_e__Union__UnclaimedIdentify_e__Struct
      get UnclaimedIdentify => this.Parameters.UnclaimedIdentify;
  set UnclaimedIdentify(
          _WINBIO_EVENT__Parameters_e__Union__UnclaimedIdentify_e__Struct
              value) =>
      this.Parameters.UnclaimedIdentify = value;

  _WINBIO_EVENT__Parameters_e__Union__Error_e__Struct get Error =>
      this.Parameters.Error;
  set Error(_WINBIO_EVENT__Parameters_e__Union__Error_e__Struct value) =>
      this.Parameters.Error = value;
}

/// {@category Struct}
class WINBIO_EXTENDED_ENGINE_INFO extends Struct {
  @Uint32()
  external int GenericEngineCapabilities;

  @Uint32()
  external int Factor;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union Specific;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union extends Union {
  @Uint32()
  external int Null;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct
      FacialFeatures;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct
      Fingerprint;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct Iris;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct
      Voice;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct__EnrollmentRequirements_e__Struct
      EnrollmentRequirements;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct__EnrollmentRequirements_e__Struct
    extends Struct {
  @Uint32()
  external int Null;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct_Extension
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get Null => this.Specific.FacialFeatures.EnrollmentRequirements.Null;
  set Null(int value) =>
      this.Specific.FacialFeatures.EnrollmentRequirements.Null = value;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union_Extension
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get Capabilities => this.Specific.FacialFeatures.Capabilities;
  set Capabilities(int value) =>
      this.Specific.FacialFeatures.Capabilities = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct__EnrollmentRequirements_e__Struct
      get EnrollmentRequirements =>
          this.Specific.FacialFeatures.EnrollmentRequirements;
  set EnrollmentRequirements(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct__EnrollmentRequirements_e__Struct
              value) =>
      this.Specific.FacialFeatures.EnrollmentRequirements = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct__EnrollmentRequirements_e__Struct
      EnrollmentRequirements;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct__EnrollmentRequirements_e__Struct
    extends Struct {
  @Uint32()
  external int GeneralSamples;

  @Uint32()
  external int Center;

  @Uint32()
  external int TopEdge;

  @Uint32()
  external int BottomEdge;

  @Uint32()
  external int LeftEdge;

  @Uint32()
  external int RightEdge;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct_Extension
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get GeneralSamples =>
      this.Specific.Fingerprint.EnrollmentRequirements.GeneralSamples;
  set GeneralSamples(int value) =>
      this.Specific.Fingerprint.EnrollmentRequirements.GeneralSamples = value;

  int get Center => this.Specific.Fingerprint.EnrollmentRequirements.Center;
  set Center(int value) =>
      this.Specific.Fingerprint.EnrollmentRequirements.Center = value;

  int get TopEdge => this.Specific.Fingerprint.EnrollmentRequirements.TopEdge;
  set TopEdge(int value) =>
      this.Specific.Fingerprint.EnrollmentRequirements.TopEdge = value;

  int get BottomEdge =>
      this.Specific.Fingerprint.EnrollmentRequirements.BottomEdge;
  set BottomEdge(int value) =>
      this.Specific.Fingerprint.EnrollmentRequirements.BottomEdge = value;

  int get LeftEdge => this.Specific.Fingerprint.EnrollmentRequirements.LeftEdge;
  set LeftEdge(int value) =>
      this.Specific.Fingerprint.EnrollmentRequirements.LeftEdge = value;

  int get RightEdge =>
      this.Specific.Fingerprint.EnrollmentRequirements.RightEdge;
  set RightEdge(int value) =>
      this.Specific.Fingerprint.EnrollmentRequirements.RightEdge = value;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union_Extension_1
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get Capabilities => this.Specific.Fingerprint.Capabilities;
  set Capabilities(int value) => this.Specific.Fingerprint.Capabilities = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct__EnrollmentRequirements_e__Struct
      get EnrollmentRequirements =>
          this.Specific.Fingerprint.EnrollmentRequirements;
  set EnrollmentRequirements(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct__EnrollmentRequirements_e__Struct
              value) =>
      this.Specific.Fingerprint.EnrollmentRequirements = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct__EnrollmentRequirements_e__Struct
      EnrollmentRequirements;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct__EnrollmentRequirements_e__Struct
    extends Struct {
  @Uint32()
  external int Null;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct_Extension
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get Null => this.Specific.Iris.EnrollmentRequirements.Null;
  set Null(int value) => this.Specific.Iris.EnrollmentRequirements.Null = value;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union_Extension_2
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get Capabilities => this.Specific.Iris.Capabilities;
  set Capabilities(int value) => this.Specific.Iris.Capabilities = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct__EnrollmentRequirements_e__Struct
      get EnrollmentRequirements => this.Specific.Iris.EnrollmentRequirements;
  set EnrollmentRequirements(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct__EnrollmentRequirements_e__Struct
              value) =>
      this.Specific.Iris.EnrollmentRequirements = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;

  external _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct__EnrollmentRequirements_e__Struct
      EnrollmentRequirements;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct__EnrollmentRequirements_e__Struct
    extends Struct {
  @Uint32()
  external int Null;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct_Extension
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get Null => this.Specific.Voice.EnrollmentRequirements.Null;
  set Null(int value) =>
      this.Specific.Voice.EnrollmentRequirements.Null = value;
}

extension WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union_Extension_3
    on WINBIO_EXTENDED_ENGINE_INFO {
  int get Capabilities => this.Specific.Voice.Capabilities;
  set Capabilities(int value) => this.Specific.Voice.Capabilities = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct__EnrollmentRequirements_e__Struct
      get EnrollmentRequirements => this.Specific.Voice.EnrollmentRequirements;
  set EnrollmentRequirements(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct__EnrollmentRequirements_e__Struct
              value) =>
      this.Specific.Voice.EnrollmentRequirements = value;
}

extension WINBIO_EXTENDED_ENGINE_INFO_Extension on WINBIO_EXTENDED_ENGINE_INFO {
  int get Null => this.Specific.Null;
  set Null(int value) => this.Specific.Null = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct
      get FacialFeatures => this.Specific.FacialFeatures;
  set FacialFeatures(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__FacialFeatures_e__Struct
              value) =>
      this.Specific.FacialFeatures = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct
      get Fingerprint => this.Specific.Fingerprint;
  set Fingerprint(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Fingerprint_e__Struct
              value) =>
      this.Specific.Fingerprint = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct get Iris =>
      this.Specific.Iris;
  set Iris(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Iris_e__Struct
              value) =>
      this.Specific.Iris = value;

  _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct get Voice =>
      this.Specific.Voice;
  set Voice(
          _WINBIO_EXTENDED_ENGINE_INFO__Specific_e__Union__Voice_e__Struct
              value) =>
      this.Specific.Voice = value;
}

/// {@category Struct}
class WINBIO_EXTENDED_ENROLLMENT_PARAMETERS extends Struct {
  @IntPtr()
  external int Size;

  @Uint8()
  external int SubFactor;
}

/// {@category Struct}
class WINBIO_EXTENDED_ENROLLMENT_STATUS extends Struct {
  @Int32()
  external int TemplateStatus;

  @Uint32()
  external int RejectDetail;

  @Uint32()
  external int PercentComplete;

  @Uint32()
  external int Factor;

  @Uint8()
  external int SubFactor;

  external _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union Specific;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union extends Union {
  @Uint32()
  external int Null;

  external _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct
      FacialFeatures;

  external _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Fingerprint_e__Struct
      Fingerprint;

  external _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct
      Iris;

  external _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Voice_e__Struct
      Voice;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct
    extends Struct {
  external RECT BoundingBox;

  @Int32()
  external int Distance;

  external _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
      OpaqueEngineData;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
    extends Struct {
  external GUID AdapterId;

  @Array(78)
  external Array<Uint32> Data;
}

extension WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct_Extension
    on WINBIO_EXTENDED_ENROLLMENT_STATUS {
  GUID get AdapterId => this.Specific.FacialFeatures.OpaqueEngineData.AdapterId;
  set AdapterId(GUID value) =>
      this.Specific.FacialFeatures.OpaqueEngineData.AdapterId = value;

  Array<Uint32> get Data => this.Specific.FacialFeatures.OpaqueEngineData.Data;
  set Data(Array<Uint32> value) =>
      this.Specific.FacialFeatures.OpaqueEngineData.Data = value;
}

extension WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union_Extension
    on WINBIO_EXTENDED_ENROLLMENT_STATUS {
  RECT get BoundingBox => this.Specific.FacialFeatures.BoundingBox;
  set BoundingBox(RECT value) =>
      this.Specific.FacialFeatures.BoundingBox = value;

  int get Distance => this.Specific.FacialFeatures.Distance;
  set Distance(int value) => this.Specific.FacialFeatures.Distance = value;

  _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
      get OpaqueEngineData => this.Specific.FacialFeatures.OpaqueEngineData;
  set OpaqueEngineData(
          _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
              value) =>
      this.Specific.FacialFeatures.OpaqueEngineData = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Fingerprint_e__Struct
    extends Struct {
  @Uint32()
  external int GeneralSamples;

  @Uint32()
  external int Center;

  @Uint32()
  external int TopEdge;

  @Uint32()
  external int BottomEdge;

  @Uint32()
  external int LeftEdge;

  @Uint32()
  external int RightEdge;
}

extension WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union_Extension_1
    on WINBIO_EXTENDED_ENROLLMENT_STATUS {
  int get GeneralSamples => this.Specific.Fingerprint.GeneralSamples;
  set GeneralSamples(int value) =>
      this.Specific.Fingerprint.GeneralSamples = value;

  int get Center => this.Specific.Fingerprint.Center;
  set Center(int value) => this.Specific.Fingerprint.Center = value;

  int get TopEdge => this.Specific.Fingerprint.TopEdge;
  set TopEdge(int value) => this.Specific.Fingerprint.TopEdge = value;

  int get BottomEdge => this.Specific.Fingerprint.BottomEdge;
  set BottomEdge(int value) => this.Specific.Fingerprint.BottomEdge = value;

  int get LeftEdge => this.Specific.Fingerprint.LeftEdge;
  set LeftEdge(int value) => this.Specific.Fingerprint.LeftEdge = value;

  int get RightEdge => this.Specific.Fingerprint.RightEdge;
  set RightEdge(int value) => this.Specific.Fingerprint.RightEdge = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct
    extends Struct {
  external RECT EyeBoundingBox_1;

  external RECT EyeBoundingBox_2;

  external POINT PupilCenter_1;

  external POINT PupilCenter_2;

  @Int32()
  external int Distance;

  @Uint32()
  external int GridPointCompletionPercent;

  @Uint16()
  external int GridPointIndex;

  external _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct__Point3D_e__Struct
      Point3D;

  @Int32()
  external int StopCaptureAndShowCriticalFeedback;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct__Point3D_e__Struct
    extends Struct {
  @Double()
  external double X;

  @Double()
  external double Y;

  @Double()
  external double Z;
}

extension WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct_Extension
    on WINBIO_EXTENDED_ENROLLMENT_STATUS {
  double get X => this.Specific.Iris.Point3D.X;
  set X(double value) => this.Specific.Iris.Point3D.X = value;

  double get Y => this.Specific.Iris.Point3D.Y;
  set Y(double value) => this.Specific.Iris.Point3D.Y = value;

  double get Z => this.Specific.Iris.Point3D.Z;
  set Z(double value) => this.Specific.Iris.Point3D.Z = value;
}

extension WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union_Extension_2
    on WINBIO_EXTENDED_ENROLLMENT_STATUS {
  RECT get EyeBoundingBox_1 => this.Specific.Iris.EyeBoundingBox_1;
  set EyeBoundingBox_1(RECT value) =>
      this.Specific.Iris.EyeBoundingBox_1 = value;

  RECT get EyeBoundingBox_2 => this.Specific.Iris.EyeBoundingBox_2;
  set EyeBoundingBox_2(RECT value) =>
      this.Specific.Iris.EyeBoundingBox_2 = value;

  POINT get PupilCenter_1 => this.Specific.Iris.PupilCenter_1;
  set PupilCenter_1(POINT value) => this.Specific.Iris.PupilCenter_1 = value;

  POINT get PupilCenter_2 => this.Specific.Iris.PupilCenter_2;
  set PupilCenter_2(POINT value) => this.Specific.Iris.PupilCenter_2 = value;

  int get Distance => this.Specific.Iris.Distance;
  set Distance(int value) => this.Specific.Iris.Distance = value;

  int get GridPointCompletionPercent =>
      this.Specific.Iris.GridPointCompletionPercent;
  set GridPointCompletionPercent(int value) =>
      this.Specific.Iris.GridPointCompletionPercent = value;

  int get GridPointIndex => this.Specific.Iris.GridPointIndex;
  set GridPointIndex(int value) => this.Specific.Iris.GridPointIndex = value;

  _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct__Point3D_e__Struct
      get Point3D => this.Specific.Iris.Point3D;
  set Point3D(
          _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct__Point3D_e__Struct
              value) =>
      this.Specific.Iris.Point3D = value;

  int get StopCaptureAndShowCriticalFeedback =>
      this.Specific.Iris.StopCaptureAndShowCriticalFeedback;
  set StopCaptureAndShowCriticalFeedback(int value) =>
      this.Specific.Iris.StopCaptureAndShowCriticalFeedback = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Voice_e__Struct
    extends Struct {
  @Uint32()
  external int Reserved;
}

extension WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union_Extension_3
    on WINBIO_EXTENDED_ENROLLMENT_STATUS {
  int get Reserved => this.Specific.Voice.Reserved;
  set Reserved(int value) => this.Specific.Voice.Reserved = value;
}

extension WINBIO_EXTENDED_ENROLLMENT_STATUS_Extension
    on WINBIO_EXTENDED_ENROLLMENT_STATUS {
  int get Null => this.Specific.Null;
  set Null(int value) => this.Specific.Null = value;

  _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct
      get FacialFeatures => this.Specific.FacialFeatures;
  set FacialFeatures(
          _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__FacialFeatures_e__Struct
              value) =>
      this.Specific.FacialFeatures = value;

  _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Fingerprint_e__Struct
      get Fingerprint => this.Specific.Fingerprint;
  set Fingerprint(
          _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Fingerprint_e__Struct
              value) =>
      this.Specific.Fingerprint = value;

  _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct
      get Iris => this.Specific.Iris;
  set Iris(
          _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Iris_e__Struct
              value) =>
      this.Specific.Iris = value;

  _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Voice_e__Struct
      get Voice => this.Specific.Voice;
  set Voice(
          _WINBIO_EXTENDED_ENROLLMENT_STATUS__Specific_e__Union__Voice_e__Struct
              value) =>
      this.Specific.Voice = value;
}

/// {@category Struct}
class WINBIO_EXTENDED_SENSOR_INFO extends Struct {
  @Uint32()
  external int GenericSensorCapabilities;

  @Uint32()
  external int Factor;

  external _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union Specific;
}

/// {@category Struct}
class _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union extends Union {
  @Uint32()
  external int Null;

  external _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct
      FacialFeatures;

  external _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Fingerprint_e__Struct
      Fingerprint;

  external _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Iris_e__Struct Iris;

  external _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Voice_e__Struct
      Voice;
}

/// {@category Struct}
class _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct
    extends Struct {
  external RECT FrameSize;

  external POINT FrameOffset;

  @Uint32()
  external int MandatoryOrientation;

  external _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct__HardwareInfo_e__Struct
      HardwareInfo;
}

/// {@category Struct}
class _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct__HardwareInfo_e__Struct
    extends Struct {
  @Array(260)
  external Array<Uint16> _ColorSensorId;

  String get ColorSensorId {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_ColorSensorId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ColorSensorId(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _ColorSensorId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _InfraredSensorId;

  String get InfraredSensorId {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_InfraredSensorId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InfraredSensorId(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _InfraredSensorId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int InfraredSensorRotationAngle;
}

extension WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct_Extension
    on WINBIO_EXTENDED_SENSOR_INFO {
  String get ColorSensorId =>
      this.Specific.FacialFeatures.HardwareInfo.ColorSensorId;
  set ColorSensorId(String value) =>
      this.Specific.FacialFeatures.HardwareInfo.ColorSensorId = value;

  String get InfraredSensorId =>
      this.Specific.FacialFeatures.HardwareInfo.InfraredSensorId;
  set InfraredSensorId(String value) =>
      this.Specific.FacialFeatures.HardwareInfo.InfraredSensorId = value;

  int get InfraredSensorRotationAngle =>
      this.Specific.FacialFeatures.HardwareInfo.InfraredSensorRotationAngle;
  set InfraredSensorRotationAngle(int value) =>
      this.Specific.FacialFeatures.HardwareInfo.InfraredSensorRotationAngle =
          value;
}

extension WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union_Extension
    on WINBIO_EXTENDED_SENSOR_INFO {
  RECT get FrameSize => this.Specific.FacialFeatures.FrameSize;
  set FrameSize(RECT value) => this.Specific.FacialFeatures.FrameSize = value;

  POINT get FrameOffset => this.Specific.FacialFeatures.FrameOffset;
  set FrameOffset(POINT value) =>
      this.Specific.FacialFeatures.FrameOffset = value;

  int get MandatoryOrientation =>
      this.Specific.FacialFeatures.MandatoryOrientation;
  set MandatoryOrientation(int value) =>
      this.Specific.FacialFeatures.MandatoryOrientation = value;

  _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct__HardwareInfo_e__Struct
      get HardwareInfo => this.Specific.FacialFeatures.HardwareInfo;
  set HardwareInfo(
          _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct__HardwareInfo_e__Struct
              value) =>
      this.Specific.FacialFeatures.HardwareInfo = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Fingerprint_e__Struct
    extends Struct {
  @Uint32()
  external int Reserved;
}

extension WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union_Extension_1
    on WINBIO_EXTENDED_SENSOR_INFO {
  int get Reserved => this.Specific.Fingerprint.Reserved;
  set Reserved(int value) => this.Specific.Fingerprint.Reserved = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Iris_e__Struct
    extends Struct {
  external RECT FrameSize;

  external POINT FrameOffset;

  @Uint32()
  external int MandatoryOrientation;
}

extension WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union_Extension_2
    on WINBIO_EXTENDED_SENSOR_INFO {
  RECT get FrameSize => this.Specific.Iris.FrameSize;
  set FrameSize(RECT value) => this.Specific.Iris.FrameSize = value;

  POINT get FrameOffset => this.Specific.Iris.FrameOffset;
  set FrameOffset(POINT value) => this.Specific.Iris.FrameOffset = value;

  int get MandatoryOrientation => this.Specific.Iris.MandatoryOrientation;
  set MandatoryOrientation(int value) =>
      this.Specific.Iris.MandatoryOrientation = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Voice_e__Struct
    extends Struct {
  @Uint32()
  external int Reserved;
}

extension WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union_Extension_3
    on WINBIO_EXTENDED_SENSOR_INFO {
  int get Reserved => this.Specific.Voice.Reserved;
  set Reserved(int value) => this.Specific.Voice.Reserved = value;
}

extension WINBIO_EXTENDED_SENSOR_INFO_Extension on WINBIO_EXTENDED_SENSOR_INFO {
  int get Null => this.Specific.Null;
  set Null(int value) => this.Specific.Null = value;

  _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct
      get FacialFeatures => this.Specific.FacialFeatures;
  set FacialFeatures(
          _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__FacialFeatures_e__Struct
              value) =>
      this.Specific.FacialFeatures = value;

  _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Fingerprint_e__Struct
      get Fingerprint => this.Specific.Fingerprint;
  set Fingerprint(
          _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Fingerprint_e__Struct
              value) =>
      this.Specific.Fingerprint = value;

  _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Iris_e__Struct get Iris =>
      this.Specific.Iris;
  set Iris(
          _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Iris_e__Struct
              value) =>
      this.Specific.Iris = value;

  _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Voice_e__Struct get Voice =>
      this.Specific.Voice;
  set Voice(
          _WINBIO_EXTENDED_SENSOR_INFO__Specific_e__Union__Voice_e__Struct
              value) =>
      this.Specific.Voice = value;
}

/// {@category Struct}
class WINBIO_EXTENDED_STORAGE_INFO extends Struct {
  @Uint32()
  external int GenericStorageCapabilities;

  @Uint32()
  external int Factor;

  external _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union Specific;
}

/// {@category Struct}
class _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union extends Union {
  @Uint32()
  external int Null;

  external _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__FacialFeatures_e__Struct
      FacialFeatures;

  external _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Fingerprint_e__Struct
      Fingerprint;

  external _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Iris_e__Struct
      Iris;

  external _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Voice_e__Struct
      Voice;
}

/// {@category Struct}
class _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__FacialFeatures_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;
}

extension WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union_Extension
    on WINBIO_EXTENDED_STORAGE_INFO {
  int get Capabilities => this.Specific.FacialFeatures.Capabilities;
  set Capabilities(int value) =>
      this.Specific.FacialFeatures.Capabilities = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Fingerprint_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;
}

extension WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union_Extension_1
    on WINBIO_EXTENDED_STORAGE_INFO {
  int get Capabilities => this.Specific.Fingerprint.Capabilities;
  set Capabilities(int value) => this.Specific.Fingerprint.Capabilities = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Iris_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;
}

extension WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union_Extension_2
    on WINBIO_EXTENDED_STORAGE_INFO {
  int get Capabilities => this.Specific.Iris.Capabilities;
  set Capabilities(int value) => this.Specific.Iris.Capabilities = value;
}

/// {@category Struct}
class _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Voice_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;
}

extension WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union_Extension_3
    on WINBIO_EXTENDED_STORAGE_INFO {
  int get Capabilities => this.Specific.Voice.Capabilities;
  set Capabilities(int value) => this.Specific.Voice.Capabilities = value;
}

extension WINBIO_EXTENDED_STORAGE_INFO_Extension
    on WINBIO_EXTENDED_STORAGE_INFO {
  int get Null => this.Specific.Null;
  set Null(int value) => this.Specific.Null = value;

  _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__FacialFeatures_e__Struct
      get FacialFeatures => this.Specific.FacialFeatures;
  set FacialFeatures(
          _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__FacialFeatures_e__Struct
              value) =>
      this.Specific.FacialFeatures = value;

  _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Fingerprint_e__Struct
      get Fingerprint => this.Specific.Fingerprint;
  set Fingerprint(
          _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Fingerprint_e__Struct
              value) =>
      this.Specific.Fingerprint = value;

  _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Iris_e__Struct get Iris =>
      this.Specific.Iris;
  set Iris(
          _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Iris_e__Struct
              value) =>
      this.Specific.Iris = value;

  _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Voice_e__Struct get Voice =>
      this.Specific.Voice;
  set Voice(
          _WINBIO_EXTENDED_STORAGE_INFO__Specific_e__Union__Voice_e__Struct
              value) =>
      this.Specific.Voice = value;
}

/// {@category Struct}
class WINBIO_EXTENDED_UNIT_STATUS extends Struct {
  @Uint32()
  external int Availability;

  @Uint32()
  external int ReasonCode;
}

/// {@category Struct}
class WINBIO_FP_BU_STATE extends Struct {
  @Int32()
  external int SensorAttached;

  @Int32()
  external int CreationResult;
}

/// {@category Struct}
class WINBIO_FRAMEWORK_INTERFACE extends Struct {
  external WINBIO_ADAPTER_INTERFACE_VERSION Version;

  @Uint32()
  external int Type;

  @IntPtr()
  external int Size;

  external GUID AdapterId;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_SET_UNIT_STATUS_FN>>
      SetUnitStatus;

  external Pointer<NativeFunction<PIBIO_STORAGE_ATTACH_FN>> VsmStorageAttach;

  external Pointer<NativeFunction<PIBIO_STORAGE_DETACH_FN>> VsmStorageDetach;

  external Pointer<NativeFunction<PIBIO_STORAGE_CLEAR_CONTEXT_FN>>
      VsmStorageClearContext;

  external Pointer<NativeFunction<PIBIO_STORAGE_CREATE_DATABASE_FN>>
      VsmStorageCreateDatabase;

  external Pointer<NativeFunction<PIBIO_STORAGE_OPEN_DATABASE_FN>>
      VsmStorageOpenDatabase;

  external Pointer<NativeFunction<PIBIO_STORAGE_CLOSE_DATABASE_FN>>
      VsmStorageCloseDatabase;

  external Pointer<NativeFunction<PIBIO_STORAGE_DELETE_RECORD_FN>>
      VsmStorageDeleteRecord;

  external Pointer<NativeFunction<PIBIO_STORAGE_NOTIFY_POWER_CHANGE_FN>>
      VsmStorageNotifyPowerChange;

  external Pointer<NativeFunction<PIBIO_STORAGE_PIPELINE_INIT_FN>>
      VsmStoragePipelineInit;

  external Pointer<NativeFunction<PIBIO_STORAGE_PIPELINE_CLEANUP_FN>>
      VsmStoragePipelineCleanup;

  external Pointer<NativeFunction<PIBIO_STORAGE_ACTIVATE_FN>>
      VsmStorageActivate;

  external Pointer<NativeFunction<PIBIO_STORAGE_DEACTIVATE_FN>>
      VsmStorageDeactivate;

  external Pointer<NativeFunction<PIBIO_STORAGE_QUERY_EXTENDED_INFO_FN>>
      VsmStorageQueryExtendedInfo;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_CACHE_CLEAR_FN>>
      VsmStorageCacheClear;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_CACHE_IMPORT_BEGIN_FN>>
      VsmStorageCacheImportBegin;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_CACHE_IMPORT_NEXT_FN>>
      VsmStorageCacheImportNext;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_CACHE_IMPORT_END_FN>>
      VsmStorageCacheImportEnd;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_CACHE_EXPORT_BEGIN_FN>>
      VsmStorageCacheExportBegin;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_CACHE_EXPORT_NEXT_FN>>
      VsmStorageCacheExportNext;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_CACHE_EXPORT_END_FN>>
      VsmStorageCacheExportEnd;

  external Pointer<NativeFunction<PIBIO_SENSOR_ATTACH_FN>> VsmSensorAttach;

  external Pointer<NativeFunction<PIBIO_SENSOR_DETACH_FN>> VsmSensorDetach;

  external Pointer<NativeFunction<PIBIO_SENSOR_CLEAR_CONTEXT_FN>>
      VsmSensorClearContext;

  external Pointer<NativeFunction<PIBIO_SENSOR_PUSH_DATA_TO_ENGINE_FN>>
      VsmSensorPushDataToEngine;

  external Pointer<NativeFunction<PIBIO_SENSOR_NOTIFY_POWER_CHANGE_FN>>
      VsmSensorNotifyPowerChange;

  external Pointer<NativeFunction<PIBIO_SENSOR_PIPELINE_INIT_FN>>
      VsmSensorPipelineInit;

  external Pointer<NativeFunction<PIBIO_SENSOR_PIPELINE_CLEANUP_FN>>
      VsmSensorPipelineCleanup;

  external Pointer<NativeFunction<PIBIO_SENSOR_ACTIVATE_FN>> VsmSensorActivate;

  external Pointer<NativeFunction<PIBIO_SENSOR_DEACTIVATE_FN>>
      VsmSensorDeactivate;

  external Pointer<NativeFunction<PIBIO_SENSOR_ASYNC_IMPORT_RAW_BUFFER_FN>>
      VsmSensorAsyncImportRawBuffer;

  external Pointer<NativeFunction<PIBIO_SENSOR_ASYNC_IMPORT_SECURE_BUFFER_FN>>
      VsmSensorAsyncImportSecureBuffer;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_STORAGE_RESERVED_1_FN>>
      Reserved1;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_STORAGE_RESERVED_2_FN>>
      Reserved2;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_STORAGE_RESERVED_3_FN>>
      Reserved3;

  external Pointer<NativeFunction<PIBIO_STORAGE_RESERVED_1_FN>> Reserved4;

  external Pointer<NativeFunction<PIBIO_STORAGE_RESERVED_2_FN>> Reserved5;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_ALLOCATE_MEMORY_FN>>
      AllocateMemory;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_FREE_MEMORY_FN>> FreeMemory;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_GET_PROPERTY_FN>> GetProperty;

  external Pointer<
          NativeFunction<PIBIO_FRAMEWORK_LOCK_AND_VALIDATE_SECURE_BUFFER_FN>>
      LockAndValidateSecureBuffer;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_RELEASE_SECURE_BUFFER_FN>>
      ReleaseSecureBuffer;

  external Pointer<
          NativeFunction<PIBIO_FRAMEWORK_VSM_QUERY_AUTHORIZED_ENROLLMENTS_FN>>
      QueryAuthorizedEnrollments;

  external Pointer<NativeFunction<PIBIO_FRAMEWORK_VSM_DECRYPT_SAMPLE_FN>>
      DecryptSample;
}

/// {@category Struct}
class WINBIO_GESTURE_METADATA extends Struct {
  @IntPtr()
  external int Size;

  @Uint32()
  external int BiometricType;

  @Uint32()
  external int MatchType;

  @Uint32()
  external int ProtectionType;
}

/// {@category Struct}
class WINBIO_GET_INDICATOR extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  @Uint32()
  external int IndicatorStatus;
}

/// {@category Struct}
class WINBIO_IDENTITY extends Struct {
  @Uint32()
  external int Type;

  external _WINBIO_IDENTITY__Value_e__Union Value;
}

/// {@category Struct}
class _WINBIO_IDENTITY__Value_e__Union extends Union {
  @Uint32()
  external int Null;

  @Uint32()
  external int Wildcard;

  external GUID TemplateGuid;

  external _WINBIO_IDENTITY__Value_e__Union__AccountSid_e__Struct AccountSid;

  @Array(32)
  external Array<Uint8> SecureId;
}

/// {@category Struct}
class _WINBIO_IDENTITY__Value_e__Union__AccountSid_e__Struct extends Struct {
  @Uint32()
  external int Size;

  @Array(68)
  external Array<Uint8> Data;
}

extension WINBIO_IDENTITY__Value_e__Union_Extension on WINBIO_IDENTITY {
  int get Size => this.Value.AccountSid.Size;
  set Size(int value) => this.Value.AccountSid.Size = value;

  Array<Uint8> get Data => this.Value.AccountSid.Data;
  set Data(Array<Uint8> value) => this.Value.AccountSid.Data = value;
}

extension WINBIO_IDENTITY_Extension on WINBIO_IDENTITY {
  int get Null => this.Value.Null;
  set Null(int value) => this.Value.Null = value;

  int get Wildcard => this.Value.Wildcard;
  set Wildcard(int value) => this.Value.Wildcard = value;

  GUID get TemplateGuid => this.Value.TemplateGuid;
  set TemplateGuid(GUID value) => this.Value.TemplateGuid = value;

  _WINBIO_IDENTITY__Value_e__Union__AccountSid_e__Struct get AccountSid =>
      this.Value.AccountSid;
  set AccountSid(
          _WINBIO_IDENTITY__Value_e__Union__AccountSid_e__Struct value) =>
      this.Value.AccountSid = value;

  Array<Uint8> get SecureId => this.Value.SecureId;
  set SecureId(Array<Uint8> value) => this.Value.SecureId = value;
}

/// {@category Struct}
class WINBIO_NOTIFY_WAKE extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  @Uint32()
  external int Reason;
}

/// {@category Struct}
class WINBIO_PIPELINE extends Struct {
  @IntPtr()
  external int SensorHandle;

  @IntPtr()
  external int EngineHandle;

  @IntPtr()
  external int StorageHandle;

  external Pointer<WINBIO_SENSOR_INTERFACE> SensorInterface;

  external Pointer<WINBIO_ENGINE_INTERFACE> EngineInterface;

  external Pointer<WINBIO_STORAGE_INTERFACE> StorageInterface;

  external Pointer<WINIBIO_SENSOR_CONTEXT> SensorContext;

  external Pointer<WINIBIO_ENGINE_CONTEXT> EngineContext;

  external Pointer<WINIBIO_STORAGE_CONTEXT> StorageContext;

  external Pointer<WINBIO_FRAMEWORK_INTERFACE> FrameworkInterface;
}

/// {@category Struct}
class WINBIO_PRESENCE extends Struct {
  @Uint32()
  external int Factor;

  @Uint8()
  external int SubFactor;

  @Int32()
  external int Status;

  @Uint32()
  external int RejectDetail;

  external WINBIO_IDENTITY Identity;

  @Uint64()
  external int TrackingId;

  @Uint64()
  external int Ticket;

  external WINBIO_PRESENCE_PROPERTIES Properties;

  external _WINBIO_PRESENCE__Authorization_e__Struct Authorization;
}

/// {@category Struct}
class _WINBIO_PRESENCE__Authorization_e__Struct extends Struct {
  @Uint32()
  external int Size;

  @Array(32)
  external Array<Uint8> Data;
}

extension WINBIO_PRESENCE_Extension on WINBIO_PRESENCE {
  int get Size => this.Authorization.Size;
  set Size(int value) => this.Authorization.Size = value;

  Array<Uint8> get Data => this.Authorization.Data;
  set Data(Array<Uint8> value) => this.Authorization.Data = value;
}

/// {@category Struct}
class WINBIO_PRESENCE_PROPERTIES extends Union {
  external _WINBIO_PRESENCE_PROPERTIES__FacialFeatures_e__Struct FacialFeatures;

  external _WINBIO_PRESENCE_PROPERTIES__Iris_e__Struct Iris;
}

/// {@category Struct}
class _WINBIO_PRESENCE_PROPERTIES__FacialFeatures_e__Struct extends Struct {
  external RECT BoundingBox;

  @Int32()
  external int Distance;

  external _WINBIO_PRESENCE_PROPERTIES__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
      OpaqueEngineData;
}

/// {@category Struct}
class _WINBIO_PRESENCE_PROPERTIES__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
    extends Struct {
  external GUID AdapterId;

  @Array(78)
  external Array<Uint32> Data;
}

extension WINBIO_PRESENCE_PROPERTIES__FacialFeatures_e__Struct_Extension
    on WINBIO_PRESENCE_PROPERTIES {
  GUID get AdapterId => this.FacialFeatures.OpaqueEngineData.AdapterId;
  set AdapterId(GUID value) =>
      this.FacialFeatures.OpaqueEngineData.AdapterId = value;

  Array<Uint32> get Data => this.FacialFeatures.OpaqueEngineData.Data;
  set Data(Array<Uint32> value) =>
      this.FacialFeatures.OpaqueEngineData.Data = value;
}

extension WINBIO_PRESENCE_PROPERTIES_Extension on WINBIO_PRESENCE_PROPERTIES {
  RECT get BoundingBox => this.FacialFeatures.BoundingBox;
  set BoundingBox(RECT value) => this.FacialFeatures.BoundingBox = value;

  int get Distance => this.FacialFeatures.Distance;
  set Distance(int value) => this.FacialFeatures.Distance = value;

  _WINBIO_PRESENCE_PROPERTIES__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
      get OpaqueEngineData => this.FacialFeatures.OpaqueEngineData;
  set OpaqueEngineData(
          _WINBIO_PRESENCE_PROPERTIES__FacialFeatures_e__Struct__OpaqueEngineData_e__Struct
              value) =>
      this.FacialFeatures.OpaqueEngineData = value;
}

/// {@category Struct}
class _WINBIO_PRESENCE_PROPERTIES__Iris_e__Struct extends Struct {
  external RECT EyeBoundingBox_1;

  external RECT EyeBoundingBox_2;

  external POINT PupilCenter_1;

  external POINT PupilCenter_2;

  @Int32()
  external int Distance;
}

extension WINBIO_PRESENCE_PROPERTIES_Extension_1 on WINBIO_PRESENCE_PROPERTIES {
  RECT get EyeBoundingBox_1 => this.Iris.EyeBoundingBox_1;
  set EyeBoundingBox_1(RECT value) => this.Iris.EyeBoundingBox_1 = value;

  RECT get EyeBoundingBox_2 => this.Iris.EyeBoundingBox_2;
  set EyeBoundingBox_2(RECT value) => this.Iris.EyeBoundingBox_2 = value;

  POINT get PupilCenter_1 => this.Iris.PupilCenter_1;
  set PupilCenter_1(POINT value) => this.Iris.PupilCenter_1 = value;

  POINT get PupilCenter_2 => this.Iris.PupilCenter_2;
  set PupilCenter_2(POINT value) => this.Iris.PupilCenter_2 = value;

  int get Distance => this.Iris.Distance;
  set Distance(int value) => this.Iris.Distance = value;
}

/// {@category Struct}
class WINBIO_PRIVATE_SENSOR_TYPE_INFO extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  external WINBIO_DATA PrivateSensorTypeInfo;
}

/// {@category Struct}
class WINBIO_PROTECTION_POLICY extends Struct {
  @Uint32()
  external int Version;

  external WINBIO_IDENTITY Identity;

  external GUID DatabaseId;

  @Uint64()
  external int UserState;

  @IntPtr()
  external int PolicySize;

  @Array(128)
  external Array<Uint8> Policy;
}

/// {@category Struct}
class WINBIO_REGISTERED_FORMAT extends Struct {
  @Uint16()
  external int Owner;

  @Uint16()
  external int Type;
}

/// {@category Struct}
class WINBIO_SECURE_BUFFER_HEADER_V1 extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint64()
  external int ValidationTag;
}

/// {@category Struct}
class WINBIO_SECURE_CONNECTION_DATA extends Struct {
  @Uint32()
  external int Size;

  @Uint16()
  external int Version;

  @Uint16()
  external int Flags;

  @Uint32()
  external int ModelCertificateSize;

  @Uint32()
  external int IntermediateCA1Size;

  @Uint32()
  external int IntermediateCA2Size;
}

/// {@category Struct}
class WINBIO_SECURE_CONNECTION_PARAMS extends Struct {
  @Uint32()
  external int PayloadSize;

  @Uint16()
  external int Version;

  @Uint16()
  external int Flags;
}

/// {@category Struct}
class WINBIO_SENSOR_ATTRIBUTES extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  external WINBIO_VERSION WinBioVersion;

  @Uint32()
  external int SensorType;

  @Uint32()
  external int SensorSubType;

  @Uint32()
  external int Capabilities;

  @Array(256)
  external Array<Uint16> ManufacturerName;

  @Array(256)
  external Array<Uint16> ModelName;

  @Array(256)
  external Array<Uint16> SerialNumber;

  external WINBIO_VERSION FirmwareVersion;

  @Uint32()
  external int SupportedFormatEntries;

  @Array(1)
  external Array<WINBIO_REGISTERED_FORMAT> SupportedFormat;
}

/// {@category Struct}
class WINBIO_SENSOR_INTERFACE extends Struct {
  external WINBIO_ADAPTER_INTERFACE_VERSION Version;

  @Uint32()
  external int Type;

  @IntPtr()
  external int Size;

  external GUID AdapterId;

  external Pointer<NativeFunction<PIBIO_SENSOR_ATTACH_FN>> Attach;

  external Pointer<NativeFunction<PIBIO_SENSOR_DETACH_FN>> Detach;

  external Pointer<NativeFunction<PIBIO_SENSOR_CLEAR_CONTEXT_FN>> ClearContext;

  external Pointer<NativeFunction<PIBIO_SENSOR_QUERY_STATUS_FN>> QueryStatus;

  external Pointer<NativeFunction<PIBIO_SENSOR_RESET_FN>> Reset;

  external Pointer<NativeFunction<PIBIO_SENSOR_SET_MODE_FN>> SetMode;

  external Pointer<NativeFunction<PIBIO_SENSOR_SET_INDICATOR_STATUS_FN>>
      SetIndicatorStatus;

  external Pointer<NativeFunction<PIBIO_SENSOR_GET_INDICATOR_STATUS_FN>>
      GetIndicatorStatus;

  external Pointer<NativeFunction<PIBIO_SENSOR_START_CAPTURE_FN>> StartCapture;

  external Pointer<NativeFunction<PIBIO_SENSOR_FINISH_CAPTURE_FN>>
      FinishCapture;

  external Pointer<NativeFunction<PIBIO_SENSOR_EXPORT_SENSOR_DATA_FN>>
      ExportSensorData;

  external Pointer<NativeFunction<PIBIO_SENSOR_CANCEL_FN>> Cancel;

  external Pointer<NativeFunction<PIBIO_SENSOR_PUSH_DATA_TO_ENGINE_FN>>
      PushDataToEngine;

  external Pointer<NativeFunction<PIBIO_SENSOR_CONTROL_UNIT_FN>> ControlUnit;

  external Pointer<NativeFunction<PIBIO_SENSOR_CONTROL_UNIT_PRIVILEGED_FN>>
      ControlUnitPrivileged;

  external Pointer<NativeFunction<PIBIO_SENSOR_NOTIFY_POWER_CHANGE_FN>>
      NotifyPowerChange;

  external Pointer<NativeFunction<PIBIO_SENSOR_PIPELINE_INIT_FN>> PipelineInit;

  external Pointer<NativeFunction<PIBIO_SENSOR_PIPELINE_CLEANUP_FN>>
      PipelineCleanup;

  external Pointer<NativeFunction<PIBIO_SENSOR_ACTIVATE_FN>> Activate;

  external Pointer<NativeFunction<PIBIO_SENSOR_DEACTIVATE_FN>> Deactivate;

  external Pointer<NativeFunction<PIBIO_SENSOR_QUERY_EXTENDED_INFO_FN>>
      QueryExtendedInfo;

  external Pointer<NativeFunction<PIBIO_SENSOR_QUERY_CALIBRATION_FORMATS_FN>>
      QueryCalibrationFormats;

  external Pointer<NativeFunction<PIBIO_SENSOR_SET_CALIBRATION_FORMAT_FN>>
      SetCalibrationFormat;

  external Pointer<NativeFunction<PIBIO_SENSOR_ACCEPT_CALIBRATION_DATA_FN>>
      AcceptCalibrationData;

  external Pointer<NativeFunction<PIBIO_SENSOR_ASYNC_IMPORT_RAW_BUFFER_FN>>
      AsyncImportRawBuffer;

  external Pointer<NativeFunction<PIBIO_SENSOR_ASYNC_IMPORT_SECURE_BUFFER_FN>>
      AsyncImportSecureBuffer;

  external Pointer<NativeFunction<PIBIO_SENSOR_QUERY_PRIVATE_SENSOR_TYPE_FN>>
      QueryPrivateSensorType;

  external Pointer<NativeFunction<PIBIO_SENSOR_CONNECT_SECURE_FN>>
      ConnectSecure;

  external Pointer<NativeFunction<PIBIO_SENSOR_START_CAPTURE_EX_FN>>
      StartCaptureEx;

  external Pointer<NativeFunction<PIBIO_SENSOR_START_NOTIFY_WAKE_FN>>
      StartNotifyWake;

  external Pointer<NativeFunction<PIBIO_SENSOR_FINISH_NOTIFY_WAKE_FN>>
      FinishNotifyWake;
}

/// {@category Struct}
class WINBIO_SET_INDICATOR extends Struct {
  @Uint32()
  external int PayloadSize;

  @Uint32()
  external int IndicatorStatus;
}

/// {@category Struct}
class WINBIO_STORAGE_INTERFACE extends Struct {
  external WINBIO_ADAPTER_INTERFACE_VERSION Version;

  @Uint32()
  external int Type;

  @IntPtr()
  external int Size;

  external GUID AdapterId;

  external Pointer<NativeFunction<PIBIO_STORAGE_ATTACH_FN>> Attach;

  external Pointer<NativeFunction<PIBIO_STORAGE_DETACH_FN>> Detach;

  external Pointer<NativeFunction<PIBIO_STORAGE_CLEAR_CONTEXT_FN>> ClearContext;

  external Pointer<NativeFunction<PIBIO_STORAGE_CREATE_DATABASE_FN>>
      CreateDatabase;

  external Pointer<NativeFunction<PIBIO_STORAGE_ERASE_DATABASE_FN>>
      EraseDatabase;

  external Pointer<NativeFunction<PIBIO_STORAGE_OPEN_DATABASE_FN>> OpenDatabase;

  external Pointer<NativeFunction<PIBIO_STORAGE_CLOSE_DATABASE_FN>>
      CloseDatabase;

  external Pointer<NativeFunction<PIBIO_STORAGE_GET_DATA_FORMAT_FN>>
      GetDataFormat;

  external Pointer<NativeFunction<PIBIO_STORAGE_GET_DATABASE_SIZE_FN>>
      GetDatabaseSize;

  external Pointer<NativeFunction<PIBIO_STORAGE_ADD_RECORD_FN>> AddRecord;

  external Pointer<NativeFunction<PIBIO_STORAGE_DELETE_RECORD_FN>> DeleteRecord;

  external Pointer<NativeFunction<PIBIO_STORAGE_QUERY_BY_SUBJECT_FN>>
      QueryBySubject;

  external Pointer<NativeFunction<PIBIO_STORAGE_QUERY_BY_CONTENT_FN>>
      QueryByContent;

  external Pointer<NativeFunction<PIBIO_STORAGE_GET_RECORD_COUNT_FN>>
      GetRecordCount;

  external Pointer<NativeFunction<PIBIO_STORAGE_FIRST_RECORD_FN>> FirstRecord;

  external Pointer<NativeFunction<PIBIO_STORAGE_NEXT_RECORD_FN>> NextRecord;

  external Pointer<NativeFunction<PIBIO_STORAGE_GET_CURRENT_RECORD_FN>>
      GetCurrentRecord;

  external Pointer<NativeFunction<PIBIO_STORAGE_CONTROL_UNIT_FN>> ControlUnit;

  external Pointer<NativeFunction<PIBIO_STORAGE_CONTROL_UNIT_PRIVILEGED_FN>>
      ControlUnitPrivileged;

  external Pointer<NativeFunction<PIBIO_STORAGE_NOTIFY_POWER_CHANGE_FN>>
      NotifyPowerChange;

  external Pointer<NativeFunction<PIBIO_STORAGE_PIPELINE_INIT_FN>> PipelineInit;

  external Pointer<NativeFunction<PIBIO_STORAGE_PIPELINE_CLEANUP_FN>>
      PipelineCleanup;

  external Pointer<NativeFunction<PIBIO_STORAGE_ACTIVATE_FN>> Activate;

  external Pointer<NativeFunction<PIBIO_STORAGE_DEACTIVATE_FN>> Deactivate;

  external Pointer<NativeFunction<PIBIO_STORAGE_QUERY_EXTENDED_INFO_FN>>
      QueryExtendedInfo;

  external Pointer<NativeFunction<PIBIO_STORAGE_NOTIFY_DATABASE_CHANGE_FN>>
      NotifyDatabaseChange;

  external Pointer<NativeFunction<PIBIO_STORAGE_RESERVED_1_FN>> Reserved1;

  external Pointer<NativeFunction<PIBIO_STORAGE_RESERVED_2_FN>> Reserved2;

  external Pointer<NativeFunction<PIBIO_STORAGE_UPDATE_RECORD_BEGIN_FN>>
      UpdateRecordBegin;

  external Pointer<NativeFunction<PIBIO_STORAGE_UPDATE_RECORD_COMMIT_FN>>
      UpdateRecordCommit;
}

/// {@category Struct}
class WINBIO_STORAGE_RECORD extends Struct {
  external Pointer<WINBIO_IDENTITY> Identity;

  @Uint8()
  external int SubFactor;

  external Pointer<Uint32> IndexVector;

  @IntPtr()
  external int IndexElementCount;

  external Pointer<Uint8> TemplateBlob;

  @IntPtr()
  external int TemplateBlobSize;

  external Pointer<Uint8> PayloadBlob;

  @IntPtr()
  external int PayloadBlobSize;
}

/// {@category Struct}
class WINBIO_STORAGE_SCHEMA extends Struct {
  @Uint32()
  external int BiometricFactor;

  external GUID DatabaseId;

  external GUID DataFormat;

  @Uint32()
  external int Attributes;

  @Array(256)
  external Array<Uint16> FilePath;

  @Array(256)
  external Array<Uint16> ConnectionString;
}

/// {@category Struct}
class WINBIO_SUPPORTED_ALGORITHMS extends Struct {
  @Uint32()
  external int PayloadSize;

  @Int32()
  external int WinBioHresult;

  @Uint32()
  external int NumberOfAlgorithms;

  external WINBIO_DATA AlgorithmData;
}

/// {@category Struct}
class WINBIO_UNIT_SCHEMA extends Struct {
  @Uint32()
  external int UnitId;

  @Uint32()
  external int PoolType;

  @Uint32()
  external int BiometricFactor;

  @Uint32()
  external int SensorSubType;

  @Uint32()
  external int Capabilities;

  @Array(256)
  external Array<Uint16> DeviceInstanceId;

  @Array(256)
  external Array<Uint16> Description;

  @Array(256)
  external Array<Uint16> Manufacturer;

  @Array(256)
  external Array<Uint16> Model;

  @Array(256)
  external Array<Uint16> SerialNumber;

  external WINBIO_VERSION FirmwareVersion;
}

/// {@category Struct}
class WINBIO_UPDATE_FIRMWARE extends Struct {
  @Uint32()
  external int PayloadSize;

  external WINBIO_DATA FirmwareData;
}

/// {@category Struct}
class WINBIO_VERSION extends Struct {
  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;
}

/// {@category Struct}
class WINIBIO_ENGINE_CONTEXT extends Opaque {}

/// {@category Struct}
class WINIBIO_SENSOR_CONTEXT extends Opaque {}

/// {@category Struct}
class WINIBIO_STORAGE_CONTEXT extends Opaque {}
