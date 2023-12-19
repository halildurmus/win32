// propertykey.dart

// This struct is manually projected to enable the addition of properties as
// static methods.
// TODO(halildurmus): Once Dart supports static extension methods
// (https://github.com/dart-lang/language/issues/723), consider auto-generating
// this struct.

// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'guid.dart';

/// Specifies the FMTID/PID identifier that programmatically identifies a
/// property.
///
/// {@category struct}
base class PROPERTYKEY extends Struct {
  external GUID fmtid;

  @Uint32()
  external int pid;

  static Pointer<PROPERTYKEY> DeviceClass_Characteristics({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1126273419, 63134, 18189, 5463529110985629349)
        ..ref.pid = 29;

  static Pointer<PROPERTYKEY> DeviceClass_ClassCoInstallers({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1899828995, 41698, 18933, 6690927576503162002)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> DeviceClass_ClassInstaller({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> DeviceClass_ClassName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> DeviceClass_DefaultService({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 11;

  static Pointer<PROPERTYKEY> DeviceClass_DevType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1126273419, 63134, 18189, 5463529110985629349)
        ..ref.pid = 27;

  static Pointer<PROPERTYKEY> DeviceClass_Exclusive({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1126273419, 63134, 18189, 5463529110985629349)
        ..ref.pid = 28;

  static Pointer<PROPERTYKEY> DeviceClass_Icon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> DeviceClass_IconPath({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 12;

  static Pointer<PROPERTYKEY> DeviceClass_LowerFilters({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1126273419, 63134, 18189, 5463529110985629349)
        ..ref.pid = 20;

  static Pointer<PROPERTYKEY> DeviceClass_Name({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> DeviceClass_NoDisplayClass({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 8;

  static Pointer<PROPERTYKEY> DeviceClass_NoInstallClass({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 7;

  static Pointer<PROPERTYKEY> DeviceClass_NoUseClass({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 10;

  static Pointer<PROPERTYKEY> DeviceClass_PropPageProvider({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> DeviceClass_Security({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1126273419, 63134, 18189, 5463529110985629349)
        ..ref.pid = 25;

  static Pointer<PROPERTYKEY> DeviceClass_SecuritySDS({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1126273419, 63134, 18189, 5463529110985629349)
        ..ref.pid = 26;

  static Pointer<PROPERTYKEY> DeviceClass_SilentInstall({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(630898684, 20647, 18382, 7364466931319441583)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> DeviceClass_UpperFilters({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1126273419, 63134, 18189, 5463529110985629349)
        ..ref.pid = 19;

  static Pointer<PROPERTYKEY> DeviceDisplay_Address({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 51;

  static Pointer<PROPERTYKEY> DeviceDisplay_AlwaysShowDeviceAsConnected({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 101;

  static Pointer<PROPERTYKEY> DeviceDisplay_AssociationArray({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 80;

  static Pointer<PROPERTYKEY> DeviceDisplay_BaselineExperienceId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 78;

  static Pointer<PROPERTYKEY> DeviceDisplay_Category({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 90;

  static Pointer<PROPERTYKEY> DeviceDisplay_CategoryGroup_Desc({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 94;

  static Pointer<PROPERTYKEY> DeviceDisplay_CategoryGroup_Icon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 95;

  static Pointer<PROPERTYKEY> DeviceDisplay_Category_Desc_Plural({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 92;

  static Pointer<PROPERTYKEY> DeviceDisplay_Category_Desc_Singular({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 91;

  static Pointer<PROPERTYKEY> DeviceDisplay_Category_Icon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 93;

  static Pointer<PROPERTYKEY> DeviceDisplay_DeviceDescription1({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 81;

  static Pointer<PROPERTYKEY> DeviceDisplay_DeviceDescription2({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 82;

  static Pointer<PROPERTYKEY> DeviceDisplay_DeviceFunctionSubRank({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 100;

  static Pointer<PROPERTYKEY> DeviceDisplay_DiscoveryMethod({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 52;

  static Pointer<PROPERTYKEY> DeviceDisplay_ExperienceId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 89;

  static Pointer<PROPERTYKEY> DeviceDisplay_FriendlyName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12288;

  static Pointer<PROPERTYKEY> DeviceDisplay_Icon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 57;

  static Pointer<PROPERTYKEY> DeviceDisplay_InstallInProgress({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2212127526, 38822, 16520, 2971064309735576468)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsAuthenticated({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 54;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsConnected({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 55;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsDefaultDevice({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 86;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsDeviceUniquelyIdentifiable({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 79;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsEncrypted({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 53;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsLocalMachine({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 70;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsMetadataSearchInProgress({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 72;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsNetworkDevice({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 85;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsNotInterestingForDisplay({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 74;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsNotWorkingProperly({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 83;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsPaired({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 56;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsSharedDevice({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 84;

  static Pointer<PROPERTYKEY> DeviceDisplay_IsShowInDisconnectedState({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 68;

  static Pointer<PROPERTYKEY> DeviceDisplay_Last_Connected({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 67;

  static Pointer<PROPERTYKEY> DeviceDisplay_Last_Seen({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 66;

  static Pointer<PROPERTYKEY> DeviceDisplay_LaunchDeviceStageFromExplorer({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 77;

  static Pointer<PROPERTYKEY> DeviceDisplay_LaunchDeviceStageOnDeviceConnect({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 76;

  static Pointer<PROPERTYKEY> DeviceDisplay_Manufacturer({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 8192;

  static Pointer<PROPERTYKEY> DeviceDisplay_MetadataCabinet({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 87;

  static Pointer<PROPERTYKEY> DeviceDisplay_MetadataChecksum({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 73;

  static Pointer<PROPERTYKEY> DeviceDisplay_MetadataPath({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 71;

  static Pointer<PROPERTYKEY> DeviceDisplay_ModelName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 8194;

  static Pointer<PROPERTYKEY> DeviceDisplay_ModelNumber({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 8195;

  static Pointer<PROPERTYKEY> DeviceDisplay_PrimaryCategory({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 97;

  static Pointer<PROPERTYKEY> DeviceDisplay_RequiresPairingElevation({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 88;

  static Pointer<PROPERTYKEY> DeviceDisplay_RequiresUninstallElevation({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 99;

  static Pointer<PROPERTYKEY> DeviceDisplay_UnpairUninstall({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 98;

  static Pointer<PROPERTYKEY> DeviceDisplay_Version({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 65;

  static Pointer<PROPERTYKEY> DeviceInterfaceClass_DefaultInterface({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(348666521, 2879, 17591, 7207335912217332926)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> DeviceInterface_ClassGuid({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(40784238, 47124, 16715, 2470487657470610819)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> DeviceInterface_Enabled({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(40784238, 47124, 16715, 2470487657470610819)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> DeviceInterface_FriendlyName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(40784238, 47124, 16715, 2470487657470610819)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_AdditionalSoftwareRequested({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 19;

  static Pointer<PROPERTYKEY> Device_Address({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 30;

  static Pointer<PROPERTYKEY> Device_BIOSVersion({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3941498653, 27187, 17617, -7479930469608373868)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> Device_BaseContainerId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 38;

  static Pointer<PROPERTYKEY> Device_BusNumber({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 23;

  static Pointer<PROPERTYKEY> Device_BusRelations({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 7;

  static Pointer<PROPERTYKEY> Device_BusReportedDeviceDesc({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1410045054, 35648, 17852, -6720130917481143640)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> Device_BusTypeGuid({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 21;

  static Pointer<PROPERTYKEY> Device_Capabilities({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 17;

  static Pointer<PROPERTYKEY> Device_Characteristics({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 29;

  static Pointer<PROPERTYKEY> Device_Children({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> Device_Class({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> Device_ClassGuid({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 10;

  static Pointer<PROPERTYKEY> Device_CompatibleIds({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> Device_ConfigFlags({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 12;

  static Pointer<PROPERTYKEY> Device_ContainerId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2357121542, 16266, 18471, 7853343301056768947)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_DHP_Rebalance_Policy({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1410045054, 35648, 17852, -6720130917481143640)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_DevNodeStatus({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_DevType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 27;

  static Pointer<PROPERTYKEY> Device_DeviceDesc({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_Driver({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 11;

  static Pointer<PROPERTYKEY> Device_DriverCoInstallers({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 11;

  static Pointer<PROPERTYKEY> Device_DriverDate({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_DriverDesc({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> Device_DriverInfPath({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> Device_DriverInfSection({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> Device_DriverInfSectionExt({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 7;

  static Pointer<PROPERTYKEY> Device_DriverLogoLevel({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 15;

  static Pointer<PROPERTYKEY> Device_DriverPropPageProvider({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 10;

  static Pointer<PROPERTYKEY> Device_DriverProvider({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> Device_DriverRank({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 14;

  static Pointer<PROPERTYKEY> Device_DriverVersion({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Device_EjectionRelations({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> Device_EnumeratorName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 24;

  static Pointer<PROPERTYKEY> Device_Exclusive({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 28;

  static Pointer<PROPERTYKEY> Device_FriendlyName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 14;

  static Pointer<PROPERTYKEY> Device_FriendlyNameAttributes({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2161647270, 29811, 19212, -8409297910773115262)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Device_GenericDriverInstalled({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 18;

  static Pointer<PROPERTYKEY> Device_HardwareIds({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Device_InstallInProgress({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2212127526, 38822, 16520, 2971064309735576468)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> Device_InstallState({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 36;

  static Pointer<PROPERTYKEY> Device_InstanceId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref
            .fmtid
            .setGUIDFromComponents(2026065864, 4170, 19146, 6300141507501532318)
        ..ref.pid = 256;

  static Pointer<PROPERTYKEY> Device_IsAssociateableByUserAction({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2161647270, 29811, 19212, -8409297910773115262)
        ..ref.pid = 7;

  static Pointer<PROPERTYKEY> Device_Legacy({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2152296704, 35955, 18617, 7981813944493726122)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Device_LegacyBusType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 22;

  static Pointer<PROPERTYKEY> Device_LocationInfo({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 15;

  static Pointer<PROPERTYKEY> Device_LocationPaths({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 37;

  static Pointer<PROPERTYKEY> Device_LowerFilters({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 20;

  static Pointer<PROPERTYKEY> Device_Manufacturer({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 13;

  static Pointer<PROPERTYKEY> Device_ManufacturerAttributes({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2161647270, 29811, 19212, -8409297910773115262)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> Device_MatchingDeviceId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 8;

  static Pointer<PROPERTYKEY> Device_ModelId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2161647270, 29811, 19212, -8409297910773115262)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_NoConnectSound({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 17;

  static Pointer<PROPERTYKEY> Device_Numa_Node({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1410045054, 35648, 17852, -6720130917481143640)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Device_PDOName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 16;

  static Pointer<PROPERTYKEY> Device_Parent({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 8;

  static Pointer<PROPERTYKEY> Device_PowerData({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 32;

  static Pointer<PROPERTYKEY> Device_PowerRelations({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> Device_PresenceNotForDevice({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2161647270, 29811, 19212, -8409297910773115262)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> Device_ProblemCode({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Device_RemovalPolicy({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 33;

  static Pointer<PROPERTYKEY> Device_RemovalPolicyDefault({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 34;

  static Pointer<PROPERTYKEY> Device_RemovalPolicyOverride({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 35;

  static Pointer<PROPERTYKEY> Device_RemovalRelations({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> Device_Reported({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2152296704, 35955, 18617, 7981813944493726122)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_ResourcePickerExceptions({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 13;

  static Pointer<PROPERTYKEY> Device_ResourcePickerTags({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2830656989, 11837, 16532, -2993472463437457491)
        ..ref.pid = 12;

  static Pointer<PROPERTYKEY> Device_SafeRemovalRequired({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2950264384, 34467, 16912, 6178562937568394422)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Device_SafeRemovalRequiredOverride({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2950264384, 34467, 16912, 6178562937568394422)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Device_Security({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 25;

  static Pointer<PROPERTYKEY> Device_SecuritySDS({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 26;

  static Pointer<PROPERTYKEY> Device_Service({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> Device_Siblings({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 10;

  static Pointer<PROPERTYKEY> Device_SignalStrength({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2161647270, 29811, 19212, -8409297910773115262)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> Device_TransportRelations({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1128310469, 37882, 18182, -6366673150683698025)
        ..ref.pid = 11;

  static Pointer<PROPERTYKEY> Device_UINumber({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 18;

  static Pointer<PROPERTYKEY> Device_UINumberDescFormat({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 31;

  static Pointer<PROPERTYKEY> Device_UpperFilters({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2757502286, 57116, 20221, -2283139988962467712)
        ..ref.pid = 19;

  static Pointer<PROPERTYKEY> DrvPkg_BrandingIcon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3480468305, 15039, 17570, 3612346253231972485)
        ..ref.pid = 7;

  static Pointer<PROPERTYKEY> DrvPkg_DetailedDescription({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3480468305, 15039, 17570, 3612346253231972485)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> DrvPkg_DocumentationLink({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3480468305, 15039, 17570, 3612346253231972485)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> DrvPkg_Icon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3480468305, 15039, 17570, 3612346253231972485)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> DrvPkg_Model({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3480468305, 15039, 17570, 3612346253231972485)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> DrvPkg_VendorWebSite({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3480468305, 15039, 17570, 3612346253231972485)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> FunctionInstance({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            146850387, 41300, 18246, -8425083353920567920)
        ..ref.pid = 1;

  static Pointer<PROPERTYKEY> Hardware_Devinst({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 4097;

  static Pointer<PROPERTYKEY> Hardware_DisplayAttribute({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> Hardware_DriverDate({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 11;

  static Pointer<PROPERTYKEY> Hardware_DriverProvider({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 10;

  static Pointer<PROPERTYKEY> Hardware_DriverVersion({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> Hardware_Function({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 4099;

  static Pointer<PROPERTYKEY> Hardware_Icon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Hardware_Image({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 4098;

  static Pointer<PROPERTYKEY> Hardware_Manufacturer({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> Hardware_Model({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 7;

  static Pointer<PROPERTYKEY> Hardware_Name({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Hardware_SerialNumber({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 8;

  static Pointer<PROPERTYKEY> Hardware_ShellAttributes({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 4100;

  static Pointer<PROPERTYKEY> Hardware_Status({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1588543218, 57546, 17816, 6042033126957450943)
        ..ref.pid = 4096;

  static Pointer<PROPERTYKEY> NAME({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3072717104, 18415, 4122, -5986516953915526747)
        ..ref.pid = 10;

  static Pointer<PROPERTYKEY> Numa_Proximity_Domain({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1410045054, 35648, 17852, -6720130917481143640)
        ..ref.pid = 1;

  static Pointer<PROPERTYKEY> PNPX_Associated({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1338312574, 46726, 17598, -3635470331247402093)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> PNPX_Category_Desc_NonPlural({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12304;

  static Pointer<PROPERTYKEY> PNPX_CompactSignature({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 28674;

  static Pointer<PROPERTYKEY> PNPX_CompatibleTypes({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1338312574, 46726, 17598, -3635470331247402093)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> PNPX_DeviceCategory({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12292;

  static Pointer<PROPERTYKEY> PNPX_DeviceCategory_Desc({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12293;

  static Pointer<PROPERTYKEY> PNPX_DeviceCertHash({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 28675;

  static Pointer<PROPERTYKEY> PNPX_DomainName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 20480;

  static Pointer<PROPERTYKEY> PNPX_FirmwareVersion({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12289;

  static Pointer<PROPERTYKEY> PNPX_GlobalIdentity({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4096;

  static Pointer<PROPERTYKEY> PNPX_ID({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4101;

  static Pointer<PROPERTYKEY> PNPX_IPBusEnumerated({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 28688;

  static Pointer<PROPERTYKEY> PNPX_InstallState({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1338312574, 46726, 17598, -3635470331247402093)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> PNPX_Installable({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1338312574, 46726, 17598, -3635470331247402093)
        ..ref.pid = 1;

  static Pointer<PROPERTYKEY> PNPX_IpAddress({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12297;

  static Pointer<PROPERTYKEY> PNPX_ManufacturerUrl({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 8193;

  static Pointer<PROPERTYKEY> PNPX_MetadataVersion({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4100;

  static Pointer<PROPERTYKEY> PNPX_ModelUrl({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 8196;

  static Pointer<PROPERTYKEY> PNPX_NetworkInterfaceGuid({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12296;

  static Pointer<PROPERTYKEY> PNPX_NetworkInterfaceLuid({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12295;

  static Pointer<PROPERTYKEY> PNPX_PhysicalAddress({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12294;

  static Pointer<PROPERTYKEY> PNPX_PresentationUrl({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 8198;

  static Pointer<PROPERTYKEY> PNPX_RemoteAddress({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4102;

  static Pointer<PROPERTYKEY> PNPX_Removable({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 28672;

  static Pointer<PROPERTYKEY> PNPX_RootProxy({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4103;

  static Pointer<PROPERTYKEY> PNPX_Scopes({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4098;

  static Pointer<PROPERTYKEY> PNPX_SecureChannel({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 28673;

  static Pointer<PROPERTYKEY> PNPX_SerialNumber({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 12290;

  static Pointer<PROPERTYKEY> PNPX_ServiceAddress({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 16384;

  static Pointer<PROPERTYKEY> PNPX_ServiceControlUrl({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 16388;

  static Pointer<PROPERTYKEY> PNPX_ServiceDescUrl({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 16389;

  static Pointer<PROPERTYKEY> PNPX_ServiceEventSubUrl({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 16390;

  static Pointer<PROPERTYKEY> PNPX_ServiceId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 16385;

  static Pointer<PROPERTYKEY> PNPX_ServiceTypes({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 16386;

  static Pointer<PROPERTYKEY> PNPX_ShareName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 20482;

  static Pointer<PROPERTYKEY> PNPX_Types({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4097;

  static Pointer<PROPERTYKEY> PNPX_Upc({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 8197;

  static Pointer<PROPERTYKEY> PNPX_XAddrs({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 4099;

  static Pointer<PROPERTYKEY> Pairing_IsWifiOnlyDevice({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2282212070, 32182, 20240, -4858799425532468082)
        ..ref.pid = 16;

  static Pointer<PROPERTYKEY> Pairing_ListItemDefault({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2282212070, 32182, 20240, -4858799425532468082)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> Pairing_ListItemDescription({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2282212070, 32182, 20240, -4858799425532468082)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> Pairing_ListItemIcon({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2282212070, 32182, 20240, -4858799425532468082)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> Pairing_ListItemText({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2282212070, 32182, 20240, -4858799425532468082)
        ..ref.pid = 1;

  static Pointer<PROPERTYKEY> SSDP_AltLocationInfo({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 24576;

  static Pointer<PROPERTYKEY> SSDP_DevLifeTime({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 24577;

  static Pointer<PROPERTYKEY> SSDP_NetworkInterface({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            1701460915, 60608, 17405, -3632634406926387324)
        ..ref.pid = 24578;

  static Pointer<PROPERTYKEY> WCN_AssocState({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342728, 18052, 4570, -9111177101523785054)
        ..ref.pid = 9;

  static Pointer<PROPERTYKEY> WCN_AuthType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342722, 18052, 4570, -9111177101523785054)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> WCN_ConfigError({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342729, 18052, 4570, -9111177101523785054)
        ..ref.pid = 10;

  static Pointer<PROPERTYKEY> WCN_ConfigMethods({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342725, 18052, 4570, -9111177101523785054)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> WCN_ConfigState({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342729, 18052, 4570, -9111177101523785054)
        ..ref.pid = 11;

  static Pointer<PROPERTYKEY> WCN_ConnType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342724, 18052, 4570, -9111177101523785054)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> WCN_DevicePasswordId({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342729, 18052, 4570, -9111177101523785054)
        ..ref.pid = 12;

  static Pointer<PROPERTYKEY> WCN_EncryptType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342723, 18052, 4570, -9111177101523785054)
        ..ref.pid = 4;

  static Pointer<PROPERTYKEY> WCN_OSVersion({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342729, 18052, 4570, -9111177101523785054)
        ..ref.pid = 13;

  static Pointer<PROPERTYKEY> WCN_RegistrarType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342731, 18052, 4570, -9111177101523785054)
        ..ref.pid = 15;

  static Pointer<PROPERTYKEY> WCN_RequestType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342721, 18052, 4570, -9111177101523785054)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> WCN_RfBand({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342727, 18052, 4570, -9111177101523785054)
        ..ref.pid = 8;

  static Pointer<PROPERTYKEY> WCN_VendorExtension({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342730, 18052, 4570, -9111177101523785054)
        ..ref.pid = 14;

  static Pointer<PROPERTYKEY> WCN_Version({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            2283342720, 18052, 4570, -9111177101523785054)
        ..ref.pid = 1;

  static Pointer<PROPERTYKEY> WNET_Comment({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 7;

  static Pointer<PROPERTYKEY> WNET_DisplayType({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 3;

  static Pointer<PROPERTYKEY> WNET_LocalName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 5;

  static Pointer<PROPERTYKEY> WNET_Provider({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 8;

  static Pointer<PROPERTYKEY> WNET_RemoteName({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 6;

  static Pointer<PROPERTYKEY> WNET_Scope({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 1;

  static Pointer<PROPERTYKEY> WNET_Type({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 2;

  static Pointer<PROPERTYKEY> WNET_Usage({
    Allocator allocator = calloc,
  }) =>
      allocator<PROPERTYKEY>()
        ..ref.fmtid.setGUIDFromComponents(
            3736970298, 14259, 17283, -6082909702859724911)
        ..ref.pid = 4;
}
