// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'extensions/_internal.dart';
import 'guid.dart';
import 'variant.dart';

/// Defines an accelerator key used in an accelerator table.
///
/// {@category struct}
base class ACCEL extends Struct {
  @Uint8()
  external int fVirt;

  @Uint16()
  external int key;

  @Uint16()
  external int cmd;
}

/// The ACL structure is the header of an access control list (ACL). A
/// complete ACL consists of an ACL structure followed by an ordered list of
/// zero or more access control entries (ACEs).
///
/// {@category struct}
base class ACL extends Struct {
  @Uint8()
  external int AclRevision;

  @Uint8()
  external int Sbz1;

  @Uint16()
  external int AclSize;

  @Uint16()
  external int AceCount;

  @Uint16()
  external int Sbz2;
}

/// The ACTCTX structure is used by the CreateActCtx function to create the
/// activation context.
///
/// {@category struct}
base class ACTCTX extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> lpSource;

  @Uint16()
  external int wProcessorArchitecture;

  @Uint16()
  external int wLangId;

  external Pointer<Utf16> lpAssemblyDirectory;

  external Pointer<Utf16> lpResourceName;

  external Pointer<Utf16> lpApplicationName;

  @IntPtr()
  external int hModule;
}

/// The ADDJOB_INFO_1 structure identifies a print job as well as the
/// directory and file in which an application can store that job.
///
/// {@category struct}
base class ADDJOB_INFO_1 extends Struct {
  external Pointer<Utf16> Path;

  @Uint32()
  external int JobId;
}

/// The addrinfoW structure is used by the GetAddrInfoW function to hold
/// host address information.
///
/// {@category struct}
base class ADDRINFO extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer<ADDRINFO> ai_next;
}

/// Contains status information for the application-switching (ALT+TAB)
/// window.
///
/// {@category struct}
base class ALTTABINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int cItems;

  @Int32()
  external int cColumns;

  @Int32()
  external int cRows;

  @Int32()
  external int iColFocus;

  @Int32()
  external int iRowFocus;

  @Int32()
  external int cxItem;

  @Int32()
  external int cyItem;

  external POINT ptStart;
}

/// Represents package settings used to create a package.
///
/// {@category struct}
base class APPX_PACKAGE_SETTINGS extends Struct {
  @Int32()
  external int forceZip32;

  external Pointer<COMObject> hashMethod;
}

/// Describes an array, its element type, and its dimension.
///
/// {@category struct}
base class ARRAYDESC extends Struct {
  external TYPEDESC tdescElem;

  @Uint16()
  external int cDims;

  @Array.variableWithVariableDimension(1)
  external Array<SAFEARRAYBOUND> rgbounds;
}

/// Contains information about the referenced assembly, including its
/// version and its level of support for locales, processors, and operating
/// systems.
///
/// {@category struct}
base class ASSEMBLYMETADATA extends Struct {
  @Uint16()
  external int usMajorVersion;

  @Uint16()
  external int usMinorVersion;

  @Uint16()
  external int usBuildNumber;

  @Uint16()
  external int usRevisionNumber;

  external Pointer<Utf16> szLocale;

  @Uint32()
  external int cbLocale;

  external Pointer<Uint32> rProcessor;

  @Uint32()
  external int ulProcessor;

  external Pointer<OSINFO> rOS;

  @Uint32()
  external int ulOS;
}

/// The AudioClientProperties structure is used to set the parameters that
/// describe the properties of the client's audio stream.
///
/// {@category struct}
base class AudioClientProperties extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int bIsOffload;

  @Int32()
  external int eCategory;

  @Int32()
  external int Options;
}

/// Contains parameters used during a moniker-binding operation.
///
/// {@category struct}
base class BIND_OPTS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int grfFlags;

  @Uint32()
  external int grfMode;

  @Uint32()
  external int dwTickCountDeadline;
}

/// The BITMAP structure defines the type, width, height, color format, and
/// bit values of a bitmap.
///
/// {@category struct}
base class BITMAP extends Struct {
  @Int32()
  external int bmType;

  @Int32()
  external int bmWidth;

  @Int32()
  external int bmHeight;

  @Int32()
  external int bmWidthBytes;

  @Uint16()
  external int bmPlanes;

  @Uint16()
  external int bmBitsPixel;

  external Pointer bmBits;
}

/// The BITMAPFILEHEADER structure contains information about the type,
/// size, and layout of a file that contains a DIB.
///
/// {@category struct}
@Packed(2)
base class BITMAPFILEHEADER extends Struct {
  @Uint16()
  external int bfType;

  @Uint32()
  external int bfSize;

  @Uint16()
  external int bfReserved1;

  @Uint16()
  external int bfReserved2;

  @Uint32()
  external int bfOffBits;
}

/// The BITMAPINFO structure defines the dimensions and color information
/// for a device-independent bitmap (DIB).
///
/// {@category struct}
base class BITMAPINFO extends Struct {
  external BITMAPINFOHEADER bmiHeader;

  @Array.variableWithVariableDimension(1)
  external Array<RGBQUAD> bmiColors;
}

/// The BITMAPINFOHEADER structure contains information about the dimensions
/// and color format of a device-independent bitmap (DIB).
///
/// {@category struct}
base class BITMAPINFOHEADER extends Struct {
  @Uint32()
  external int biSize;

  @Int32()
  external int biWidth;

  @Int32()
  external int biHeight;

  @Uint16()
  external int biPlanes;

  @Uint16()
  external int biBitCount;

  @Uint32()
  external int biCompression;

  @Uint32()
  external int biSizeImage;

  @Int32()
  external int biXPelsPerMeter;

  @Int32()
  external int biYPelsPerMeter;

  @Uint32()
  external int biClrUsed;

  @Uint32()
  external int biClrImportant;
}

/// The BITMAPV5HEADER structure is the bitmap information header file. It
/// is an extended version of the BITMAPINFOHEADER structure.
///
/// {@category struct}
base class BITMAPV5HEADER extends Struct {
  @Uint32()
  external int bV5Size;

  @Int32()
  external int bV5Width;

  @Int32()
  external int bV5Height;

  @Uint16()
  external int bV5Planes;

  @Uint16()
  external int bV5BitCount;

  @Int32()
  external int bV5Compression;

  @Uint32()
  external int bV5SizeImage;

  @Int32()
  external int bV5XPelsPerMeter;

  @Int32()
  external int bV5YPelsPerMeter;

  @Uint32()
  external int bV5ClrUsed;

  @Uint32()
  external int bV5ClrImportant;

  @Uint32()
  external int bV5RedMask;

  @Uint32()
  external int bV5GreenMask;

  @Uint32()
  external int bV5BlueMask;

  @Uint32()
  external int bV5AlphaMask;

  @Uint32()
  external int bV5CSType;

  external CIEXYZTRIPLE bV5Endpoints;

  @Uint32()
  external int bV5GammaRed;

  @Uint32()
  external int bV5GammaGreen;

  @Uint32()
  external int bV5GammaBlue;

  @Uint32()
  external int bV5Intent;

  @Uint32()
  external int bV5ProfileData;

  @Uint32()
  external int bV5ProfileSize;

  @Uint32()
  external int bV5Reserved;
}

/// The BLENDFUNCTION structure controls blending by specifying the blending
/// functions for source and destination bitmaps.
///
/// {@category struct}
base class BLENDFUNCTION extends Struct {
  @Uint8()
  external int BlendOp;

  @Uint8()
  external int BlendFlags;

  @Uint8()
  external int SourceConstantAlpha;

  @Uint8()
  external int AlphaFormat;
}

/// The BLOB structure, derived from Binary Large Object, contains
/// information about a block of data.
///
/// {@category struct}
base class BLOB extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pBlobData;
}

/// The BLUETOOTH_ADDRESS structure provides the address of a Bluetooth
/// device.
///
/// {@category struct}
base class BLUETOOTH_ADDRESS extends Struct {
  external _BLUETOOTH_ADDRESS__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _BLUETOOTH_ADDRESS__Anonymous_e__Union extends Union {
  @Uint64()
  external int ullLong;

  @Array(6)
  external Array<Uint8> rgBytes;
}

extension BLUETOOTH_ADDRESS_Extension on BLUETOOTH_ADDRESS {
  int get ullLong => this.Anonymous.ullLong;
  set ullLong(int value) => this.Anonymous.ullLong = value;

  Array<Uint8> get rgBytes => this.Anonymous.rgBytes;
  set rgBytes(Array<Uint8> value) => this.Anonymous.rgBytes = value;
}

/// The BLUETOOTH_AUTHENTICATE_RESPONSE structure contains information
/// passed in response to a BTH_REMOTE_AUTHENTICATE_REQUEST event.
///
/// {@category struct}
base class BLUETOOTH_AUTHENTICATE_RESPONSE extends Struct {
  external BLUETOOTH_ADDRESS bthAddressRemote;

  @Int32()
  external int authMethod;

  external _BLUETOOTH_AUTHENTICATE_RESPONSE__Anonymous_e__Union Anonymous;

  @Uint8()
  external int negativeResponse;
}

/// {@category struct}
sealed class _BLUETOOTH_AUTHENTICATE_RESPONSE__Anonymous_e__Union
    extends Union {
  external BLUETOOTH_PIN_INFO pinInfo;

  external BLUETOOTH_OOB_DATA_INFO oobInfo;

  external BLUETOOTH_NUMERIC_COMPARISON_INFO numericCompInfo;

  external BLUETOOTH_PASSKEY_INFO passkeyInfo;
}

extension BLUETOOTH_AUTHENTICATE_RESPONSE_Extension
    on BLUETOOTH_AUTHENTICATE_RESPONSE {
  BLUETOOTH_PIN_INFO get pinInfo => this.Anonymous.pinInfo;
  set pinInfo(BLUETOOTH_PIN_INFO value) => this.Anonymous.pinInfo = value;

  BLUETOOTH_OOB_DATA_INFO get oobInfo => this.Anonymous.oobInfo;
  set oobInfo(BLUETOOTH_OOB_DATA_INFO value) => this.Anonymous.oobInfo = value;

  BLUETOOTH_NUMERIC_COMPARISON_INFO get numericCompInfo =>
      this.Anonymous.numericCompInfo;
  set numericCompInfo(BLUETOOTH_NUMERIC_COMPARISON_INFO value) =>
      this.Anonymous.numericCompInfo = value;

  BLUETOOTH_PASSKEY_INFO get passkeyInfo => this.Anonymous.passkeyInfo;
  set passkeyInfo(BLUETOOTH_PASSKEY_INFO value) =>
      this.Anonymous.passkeyInfo = value;
}

/// The BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS structure contains specific
/// configuration information about the Bluetooth device responding to an
/// authentication request.
///
/// {@category struct}
base class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS extends Struct {
  external BLUETOOTH_DEVICE_INFO deviceInfo;

  @Int32()
  external int authenticationMethod;

  @Int32()
  external int ioCapability;

  @Int32()
  external int authenticationRequirements;

  external _BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS__Anonymous_e__Union
  Anonymous;
}

/// {@category struct}
sealed class _BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Numeric_Value;

  @Uint32()
  external int Passkey;
}

extension BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_Extension
    on BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS {
  int get Numeric_Value => this.Anonymous.Numeric_Value;
  set Numeric_Value(int value) => this.Anonymous.Numeric_Value = value;

  int get Passkey => this.Anonymous.Passkey;
  set Passkey(int value) => this.Anonymous.Passkey = value;
}

/// The BLUETOOTH_COD_PAIRS structure provides for specification and
/// retrieval of Bluetooth Class Of Device (COD) information.
///
/// {@category struct}
base class BLUETOOTH_COD_PAIRS extends Struct {
  @Uint32()
  external int ulCODMask;

  external Pointer<Utf16> pcszDescription;
}

/// The BLUETOOTH_DEVICE_INFO structure provides information about a
/// Bluetooth device.
///
/// {@category struct}
base class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external BLUETOOTH_ADDRESS Address;

  @Uint32()
  external int ulClassofDevice;

  @Int32()
  external int fConnected;

  @Int32()
  external int fRemembered;

  @Int32()
  external int fAuthenticated;

  external SYSTEMTIME stLastSeen;

  external SYSTEMTIME stLastUsed;

  @Array(248)
  external Array<Uint16> _szName;

  String get szName => _szName.toDartString();

  set szName(String value) => _szName.setString(value);
}

/// The BLUETOOTH_DEVICE_SEARCH_PARAMS structure specifies search criteria
/// for Bluetooth device searches.
///
/// {@category struct}
base class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int fReturnAuthenticated;

  @Int32()
  external int fReturnRemembered;

  @Int32()
  external int fReturnUnknown;

  @Int32()
  external int fReturnConnected;

  @Int32()
  external int fIssueInquiry;

  @Uint8()
  external int cTimeoutMultiplier;

  @IntPtr()
  external int hRadio;
}

/// The BLUETOOTH_FIND_RADIO_PARAMS structure facilitates enumerating
/// installed Bluetooth radios.
///
/// {@category struct}
base class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  @Uint32()
  external int dwSize;
}

/// The BLUETOOTH_GATT_VALUE_CHANGED_EVENT structure describes a changed
/// attribute value.
///
/// {@category struct}
base class BLUETOOTH_GATT_VALUE_CHANGED_EVENT extends Struct {
  @Uint16()
  external int ChangedAttributeHandle;

  @IntPtr()
  external int CharacteristicValueDataSize;

  external Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> CharacteristicValue;
}

/// The BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION structure describes
/// one or more characteristics that have changed.
///
/// {@category struct}
base class BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION extends Struct {
  @Uint16()
  external int NumCharacteristics;

  @Array.variableWithVariableDimension(1)
  external Array<BTH_LE_GATT_CHARACTERISTIC> Characteristics;
}

/// The BLUETOOTH_NUMERIC_COMPARISON_INFO structure contains the numeric
/// value used for authentication via numeric comparison.
///
/// {@category struct}
base class BLUETOOTH_NUMERIC_COMPARISON_INFO extends Struct {
  @Uint32()
  external int NumericValue;
}

/// The BLUETOOTH_OOB_DATA_INFO structure contains data used to authenticate
/// prior to establishing an Out-of-Band device pairing.
///
/// {@category struct}
base class BLUETOOTH_OOB_DATA_INFO extends Struct {
  @Array(16)
  external Array<Uint8> C;

  @Array(16)
  external Array<Uint8> R;
}

/// The BLUETOOTH_PASSKEY_INFO structure contains a passkey value used for
/// authentication. A passkey is similar to a password, except that a
/// passkey value is used for authentication only once.
///
/// {@category struct}
base class BLUETOOTH_PASSKEY_INFO extends Struct {
  @Uint32()
  external int passkey;
}

/// The BLUETOOTH_PIN_INFO structure contains information used for
/// authentication via PIN.
///
/// {@category struct}
base class BLUETOOTH_PIN_INFO extends Struct {
  @Array(16)
  external Array<Uint8> pin;

  @Uint8()
  external int pinLength;
}

/// The BLUETOOTH_RADIO_INFO structure provides information about a
/// Bluetooth radio.
///
/// {@category struct}
base class BLUETOOTH_RADIO_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external BLUETOOTH_ADDRESS address;

  @Array(248)
  external Array<Uint16> _szName;

  String get szName => _szName.toDartString();

  set szName(String value) => _szName.setString(value);

  @Uint32()
  external int ulClassofDevice;

  @Uint16()
  external int lmpSubversion;

  @Uint16()
  external int manufacturer;
}

/// The BLUETOOTH_SELECT_DEVICE_PARAMS structure facilitates and manages the
/// visibility, authentication, and selection of Bluetooth devices and
/// services.
///
/// {@category struct}
base class BLUETOOTH_SELECT_DEVICE_PARAMS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cNumOfClasses;

  external Pointer<BLUETOOTH_COD_PAIRS> prgClassOfDevices;

  external Pointer<Utf16> pszInfo;

  @IntPtr()
  external int hwndParent;

  @Int32()
  external int fForceAuthentication;

  @Int32()
  external int fShowAuthenticated;

  @Int32()
  external int fShowRemembered;

  @Int32()
  external int fShowUnknown;

  @Int32()
  external int fAddNewDeviceWizard;

  @Int32()
  external int fSkipServicesPage;

  external Pointer<NativeFunction<PFN_DEVICE_CALLBACK>> pfnDeviceCallback;

  external Pointer pvParam;

  @Uint32()
  external int cNumDevices;

  external Pointer<BLUETOOTH_DEVICE_INFO> pDevices;
}

/// Contains information about a window that denied a request from
/// BroadcastSystemMessageEx.
///
/// {@category struct}
base class BSMINFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hdesk;

  @IntPtr()
  external int hwnd;

  external LUID luid;
}

/// {@category struct}
base class BSTRBLOB extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pData;
}

/// The BTH_DEVICE_INFO structure stores information about a Bluetooth
/// device.
///
/// {@category struct}
base class BTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int flags;

  @Uint64()
  external int address;

  @Uint32()
  external int classOfDevice;

  @Array(248)
  external Array<Uint8> name;
}

/// The BTH_HCI_EVENT_INFO structure is used in connection with obtaining
/// WM_DEVICECHANGE messages for Bluetooth.
///
/// {@category struct}
base class BTH_HCI_EVENT_INFO extends Struct {
  @Uint64()
  external int bthAddress;

  @Uint8()
  external int connectionType;

  @Uint8()
  external int connected;
}

/// The BTH_L2CAP_EVENT_INFO structure contains data about events associated
/// with an L2CAP channel.
///
/// {@category struct}
base class BTH_L2CAP_EVENT_INFO extends Struct {
  @Uint64()
  external int bthAddress;

  @Uint16()
  external int psm;

  @Uint8()
  external int connected;

  @Uint8()
  external int initiated;
}

/// The BTH_LE_GATT_CHARACTERISTIC structure describes a Bluetooth Low
/// Energy (LE) generic attribute (GATT) profile characteristic.
///
/// {@category struct}
base class BTH_LE_GATT_CHARACTERISTIC extends Struct {
  @Uint16()
  external int ServiceHandle;

  external BTH_LE_UUID CharacteristicUuid;

  @Uint16()
  external int AttributeHandle;

  @Uint16()
  external int CharacteristicValueHandle;

  @Uint8()
  external int IsBroadcastable;

  @Uint8()
  external int IsReadable;

  @Uint8()
  external int IsWritable;

  @Uint8()
  external int IsWritableWithoutResponse;

  @Uint8()
  external int IsSignedWritable;

  @Uint8()
  external int IsNotifiable;

  @Uint8()
  external int IsIndicatable;

  @Uint8()
  external int HasExtendedProperties;
}

/// The BTH_LE_GATT_CHARACTERISTIC_VALUE structure describes a Bluetooth Low
/// Energy (LE) generic attribute (GATT) profile characteristic value.
///
/// {@category struct}
base class BTH_LE_GATT_CHARACTERISTIC_VALUE extends Struct {
  @Uint32()
  external int DataSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;
}

/// The BTH_LE_GATT_DESCRIPTOR structure describes a Bluetooth Low Energy
/// (LE) generic attribute (GATT) profile descriptor.
///
/// {@category struct}
base class BTH_LE_GATT_DESCRIPTOR extends Struct {
  @Uint16()
  external int ServiceHandle;

  @Uint16()
  external int CharacteristicHandle;

  @Int32()
  external int DescriptorType;

  external BTH_LE_UUID DescriptorUuid;

  @Uint16()
  external int AttributeHandle;
}

/// The BTH_LE_GATT_DESCRIPTOR_VALUE structure describes a parent
/// characteristic.
///
/// {@category struct}
base class BTH_LE_GATT_DESCRIPTOR_VALUE extends Struct {
  @Int32()
  external int DescriptorType;

  external BTH_LE_UUID DescriptorUuid;

  external _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union Anonymous;

  @Uint32()
  external int DataSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;
}

/// {@category struct}
sealed class _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union extends Union {
  external _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicExtendedProperties_e__Struct
  CharacteristicExtendedProperties;

  external _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ClientCharacteristicConfiguration_e__Struct
  ClientCharacteristicConfiguration;

  external _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ServerCharacteristicConfiguration_e__Struct
  ServerCharacteristicConfiguration;

  external _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicFormat_e__Struct
  CharacteristicFormat;
}

/// {@category struct}
sealed class _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicExtendedProperties_e__Struct
    extends Struct {
  @Uint8()
  external int IsReliableWriteEnabled;

  @Uint8()
  external int IsAuxiliariesWritable;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get IsReliableWriteEnabled =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled;
  set IsReliableWriteEnabled(int value) =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled =
          value;

  int get IsAuxiliariesWritable =>
      this.Anonymous.CharacteristicExtendedProperties.IsAuxiliariesWritable;
  set IsAuxiliariesWritable(int value) =>
      this.Anonymous.CharacteristicExtendedProperties.IsAuxiliariesWritable =
          value;
}

/// {@category struct}
sealed class _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ClientCharacteristicConfiguration_e__Struct
    extends Struct {
  @Uint8()
  external int IsSubscribeToNotification;

  @Uint8()
  external int IsSubscribeToIndication;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union_Extension_1
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get IsSubscribeToNotification =>
      this
          .Anonymous
          .ClientCharacteristicConfiguration
          .IsSubscribeToNotification;
  set IsSubscribeToNotification(int value) =>
      this
          .Anonymous
          .ClientCharacteristicConfiguration
          .IsSubscribeToNotification = value;

  int get IsSubscribeToIndication =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication;
  set IsSubscribeToIndication(int value) =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication =
          value;
}

/// {@category struct}
sealed class _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ServerCharacteristicConfiguration_e__Struct
    extends Struct {
  @Uint8()
  external int IsBroadcast;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union_Extension_2
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get IsBroadcast =>
      this.Anonymous.ServerCharacteristicConfiguration.IsBroadcast;
  set IsBroadcast(int value) =>
      this.Anonymous.ServerCharacteristicConfiguration.IsBroadcast = value;
}

/// {@category struct}
sealed class _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicFormat_e__Struct
    extends Struct {
  @Uint8()
  external int Format;

  @Uint8()
  external int Exponent;

  external BTH_LE_UUID Unit;

  @Uint8()
  external int NameSpace;

  external BTH_LE_UUID Description;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union_Extension_3
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  int get Format => this.Anonymous.CharacteristicFormat.Format;
  set Format(int value) => this.Anonymous.CharacteristicFormat.Format = value;

  int get Exponent => this.Anonymous.CharacteristicFormat.Exponent;
  set Exponent(int value) =>
      this.Anonymous.CharacteristicFormat.Exponent = value;

  BTH_LE_UUID get Unit => this.Anonymous.CharacteristicFormat.Unit;
  set Unit(BTH_LE_UUID value) =>
      this.Anonymous.CharacteristicFormat.Unit = value;

  int get NameSpace => this.Anonymous.CharacteristicFormat.NameSpace;
  set NameSpace(int value) =>
      this.Anonymous.CharacteristicFormat.NameSpace = value;

  BTH_LE_UUID get Description =>
      this.Anonymous.CharacteristicFormat.Description;
  set Description(BTH_LE_UUID value) =>
      this.Anonymous.CharacteristicFormat.Description = value;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicExtendedProperties_e__Struct
  get CharacteristicExtendedProperties =>
      this.Anonymous.CharacteristicExtendedProperties;
  set CharacteristicExtendedProperties(
    _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicExtendedProperties_e__Struct
    value,
  ) => this.Anonymous.CharacteristicExtendedProperties = value;

  _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ClientCharacteristicConfiguration_e__Struct
  get ClientCharacteristicConfiguration =>
      this.Anonymous.ClientCharacteristicConfiguration;
  set ClientCharacteristicConfiguration(
    _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ClientCharacteristicConfiguration_e__Struct
    value,
  ) => this.Anonymous.ClientCharacteristicConfiguration = value;

  _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ServerCharacteristicConfiguration_e__Struct
  get ServerCharacteristicConfiguration =>
      this.Anonymous.ServerCharacteristicConfiguration;
  set ServerCharacteristicConfiguration(
    _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__ServerCharacteristicConfiguration_e__Struct
    value,
  ) => this.Anonymous.ServerCharacteristicConfiguration = value;

  _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicFormat_e__Struct
  get CharacteristicFormat => this.Anonymous.CharacteristicFormat;
  set CharacteristicFormat(
    _BTH_LE_GATT_DESCRIPTOR_VALUE__Anonymous_e__Union__CharacteristicFormat_e__Struct
    value,
  ) => this.Anonymous.CharacteristicFormat = value;
}

/// The BTH_LE_GATT_SERVICE structure describes a Bluetooth Low Energy (LE)
/// generic attribute (GATT) profile service.
///
/// {@category struct}
base class BTH_LE_GATT_SERVICE extends Struct {
  external BTH_LE_UUID ServiceUuid;

  @Uint16()
  external int AttributeHandle;
}

/// The BTH_LE_UUID structure contains information about a Bluetooth Low
/// Energy (LE) Universally Unique Identifier (UUID).
///
/// {@category struct}
base class BTH_LE_UUID extends Struct {
  @Uint8()
  external int IsShortUuid;

  external _BTH_LE_UUID__Value_e__Union Value;
}

/// {@category struct}
sealed class _BTH_LE_UUID__Value_e__Union extends Union {
  @Uint16()
  external int ShortUuid;

  external GUID LongUuid;
}

extension BTH_LE_UUID_Extension on BTH_LE_UUID {
  int get ShortUuid => this.Value.ShortUuid;
  set ShortUuid(int value) => this.Value.ShortUuid = value;

  GUID get LongUuid => this.Value.LongUuid;
  set LongUuid(GUID value) => this.Value.LongUuid = value;
}

/// The BTH_QUERY_DEVICE structure is used when querying for the presence of
/// a Bluetooth device.
///
/// {@category struct}
@Packed(1)
base class BTH_QUERY_DEVICE extends Struct {
  @Uint32()
  external int LAP;

  @Uint8()
  external int length;
}

/// The BTH_QUERY_SERVICE structure is used to query a Bluetooth service.
///
/// {@category struct}
base class BTH_QUERY_SERVICE extends Struct {
  @Uint32()
  external int type;

  @Uint32()
  external int serviceHandle;

  @Array(12)
  external Array<SdpQueryUuid> uuids;

  @Uint32()
  external int numRange;

  @Array.variableWithVariableDimension(1)
  external Array<SdpAttributeRange> pRange;
}

/// The BTH_RADIO_IN_RANGE structure stores data about Bluetooth devices
/// within communication range.
///
/// {@category struct}
base class BTH_RADIO_IN_RANGE extends Struct {
  external BTH_DEVICE_INFO deviceInfo;

  @Uint32()
  external int previousDeviceFlags;
}

/// The BTH_SET_SERVICE structure provides service information for the
/// specified Bluetooth service.
///
/// {@category struct}
@Packed(1)
base class BTH_SET_SERVICE extends Struct {
  external Pointer<Uint32> pSdpVersion;

  external Pointer<IntPtr> pRecordHandle;

  @Uint32()
  external int fCodService;

  @Array(5)
  external Array<Uint32> Reserved;

  @Uint32()
  external int ulRecordLength;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> pRecord;
}

/// Contains information that the GetFileInformationByHandle function
/// retrieves.
///
/// {@category struct}
base class BY_HANDLE_FILE_INFORMATION extends Struct {
  @Uint32()
  external int dwFileAttributes;

  external FILETIME ftCreationTime;

  external FILETIME ftLastAccessTime;

  external FILETIME ftLastWriteTime;

  @Uint32()
  external int dwVolumeSerialNumber;

  @Uint32()
  external int nFileSizeHigh;

  @Uint32()
  external int nFileSizeLow;

  @Uint32()
  external int nNumberOfLinks;

  @Uint32()
  external int nFileIndexHigh;

  @Uint32()
  external int nFileIndexLow;
}

/// {@category struct}
base class CABOOL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int16> pElems;
}

/// {@category struct}
base class CABSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;
}

/// {@category struct}
base class CABSTRBLOB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<BSTRBLOB> pElems;
}

/// {@category struct}
base class CAC extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Utf8> pElems;
}

/// Describes the cache attributes.
///
/// {@category struct}
base class CACHE_DESCRIPTOR extends Struct {
  @Uint8()
  external int Level;

  @Uint8()
  external int Associativity;

  @Uint16()
  external int LineSize;

  @Uint32()
  external int Size;

  @Int32()
  external int Type;
}

/// {@category struct}
base class CACLIPDATA extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CLIPDATA> pElems;
}

/// {@category struct}
base class CACLSID extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<GUID> pElems;
}

/// {@category struct}
base class CACY extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CY> pElems;
}

/// {@category struct}
base class CADATE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;
}

/// {@category struct}
base class CADBL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;
}

/// {@category struct}
base class CAFILETIME extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<FILETIME> pElems;
}

/// {@category struct}
base class CAFLT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Float> pElems;
}

/// {@category struct}
base class CAH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int64> pElems;
}

/// {@category struct}
base class CAI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int16> pElems;
}

/// {@category struct}
base class CAL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;
}

/// {@category struct}
base class CALPSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf8>> pElems;
}

/// {@category struct}
base class CALPWSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;
}

/// {@category struct}
base class CAPROPVARIANT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<PROPVARIANT> pElems;
}

/// {@category struct}
base class CASCODE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;
}

/// {@category struct}
base class CAUB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint8> pElems;
}

/// {@category struct}
base class CAUH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint64> pElems;
}

/// {@category struct}
base class CAUI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint16> pElems;
}

/// {@category struct}
base class CAUL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint32> pElems;
}

/// Contains information passed to a WH_CBT hook procedure, CBTProc, before
/// a window is activated.
///
/// {@category struct}
base class CBTACTIVATESTRUCT extends Struct {
  @Int32()
  external int fMouse;

  @IntPtr()
  external int hWndActive;
}

/// Contains information passed to a WH_CBT hook procedure, CBTProc, before
/// a window is created.
///
/// {@category struct}
base class CBT_CREATEWND extends Struct {
  external Pointer<CREATESTRUCT> lpcs;

  @IntPtr()
  external int hwndInsertAfter;
}

/// The CERT_CONTEXT structure contains both the encoded and decoded
/// representations of a certificate. A certificate context returned by one
/// of the functions defined in Wincrypt.h must be freed by calling the
/// CertFreeCertificateContext function. The CertDuplicateCertificateContext
/// function can be called to make a duplicate copy (which also must be
/// freed by calling CertFreeCertificateContext).
///
/// {@category struct}
base class CERT_CONTEXT extends Struct {
  @Uint32()
  external int dwCertEncodingType;

  external Pointer<Uint8> pbCertEncoded;

  @Uint32()
  external int cbCertEncoded;

  external Pointer<CERT_INFO> pCertInfo;

  external Pointer hCertStore;
}

/// The CERT_EXTENSION structure contains the extension information for a
/// certificate, Certificate Revocation List (CRL) or Certificate Trust List
/// (CTL).
///
/// {@category struct}
base class CERT_EXTENSION extends Struct {
  external Pointer<Utf8> pszObjId;

  @Int32()
  external int fCritical;

  external CRYPT_INTEGER_BLOB Value;
}

/// The CERT_INFO structure contains the information of a certificate.
///
/// {@category struct}
base class CERT_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPT_INTEGER_BLOB SerialNumber;

  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;

  external CRYPT_INTEGER_BLOB Issuer;

  external FILETIME NotBefore;

  external FILETIME NotAfter;

  external CRYPT_INTEGER_BLOB Subject;

  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;

  external CRYPT_BIT_BLOB IssuerUniqueId;

  external CRYPT_BIT_BLOB SubjectUniqueId;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// The CERT_PUBLIC_KEY_INFO structure contains a public key and its
/// algorithm.
///
/// {@category struct}
base class CERT_PUBLIC_KEY_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;

  external CRYPT_BIT_BLOB PublicKey;
}

/// Contains extended result information obtained by calling the
/// ChangeWindowMessageFilterEx function.
///
/// {@category struct}
base class CHANGEFILTERSTRUCT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int ExtStatus;
}

/// Specifies a Unicode or ANSI character and its attributes. This structure
/// is used by console functions to read from and write to a console screen
/// buffer.
///
/// {@category struct}
base class CHAR_INFO extends Struct {
  external _CHAR_INFO__Char_e__Union Char;

  @Uint16()
  external int Attributes;
}

/// {@category struct}
sealed class _CHAR_INFO__Char_e__Union extends Union {
  @Uint16()
  external int UnicodeChar;

  @Uint8()
  external int AsciiChar;
}

extension CHAR_INFO_Extension on CHAR_INFO {
  int get UnicodeChar => this.Char.UnicodeChar;
  set UnicodeChar(int value) => this.Char.UnicodeChar = value;

  int get AsciiChar => this.Char.AsciiChar;
  set AsciiChar(int value) => this.Char.AsciiChar = value;
}

/// Contains information the ChooseColor function uses to initialize the
/// Color dialog box. After the user closes the dialog box, the system
/// returns information about the user's selection in this structure.
///
/// {@category struct}
base class CHOOSECOLOR extends Struct {
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

/// Contains information that the ChooseFont function uses to initialize the
/// Font dialog box. After the user closes the dialog box, the system
/// returns information about the user's selection in this structure.
///
/// {@category struct}
base class CHOOSEFONT extends Struct {
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

/// The CIEXYZ structure contains the x,y, and z coordinates of a specific
/// color in a specified color space.
///
/// {@category struct}
base class CIEXYZ extends Struct {
  @Int32()
  external int ciexyzX;

  @Int32()
  external int ciexyzY;

  @Int32()
  external int ciexyzZ;
}

/// The CIEXYZTRIPLE structure contains the x,y, and z coordinates of the
/// three colors that correspond to the red, green, and blue endpoints for a
/// specified logical color space.
///
/// {@category struct}
base class CIEXYZTRIPLE extends Struct {
  external CIEXYZ ciexyzRed;

  external CIEXYZ ciexyzGreen;

  external CIEXYZ ciexyzBlue;
}

/// The CLIENT_ID structure contains identifiers of a process and a thread.
///
/// {@category struct}
base class CLIENT_ID extends Struct {
  @IntPtr()
  external int UniqueProcess;

  @IntPtr()
  external int UniqueThread;
}

/// {@category struct}
base class CLIPDATA extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int ulClipFmt;

  external Pointer<Uint8> pClipData;
}

/// The COLORADJUSTMENT structure defines the color adjustment values used
/// by the StretchBlt and StretchDIBits functions when the stretch mode is
/// HALFTONE. You can set the color adjustment values by calling the
/// SetColorAdjustment function.
///
/// {@category struct}
base class COLORADJUSTMENT extends Struct {
  @Uint16()
  external int caSize;

  @Uint16()
  external int caFlags;

  @Uint16()
  external int caIlluminantIndex;

  @Uint16()
  external int caRedGamma;

  @Uint16()
  external int caGreenGamma;

  @Uint16()
  external int caBlueGamma;

  @Uint16()
  external int caReferenceBlack;

  @Uint16()
  external int caReferenceWhite;

  @Int16()
  external int caContrast;

  @Int16()
  external int caBrightness;

  @Int16()
  external int caColorfulness;

  @Int16()
  external int caRedGreenTint;
}

/// Used generically to filter elements.
///
/// {@category struct}
base class COMDLG_FILTERSPEC extends Struct {
  external Pointer<Utf16> pszName;

  external Pointer<Utf16> pszSpec;
}

/// Contains information about the configuration state of a communications
/// device.
///
/// {@category struct}
base class COMMCONFIG extends Struct {
  @Uint32()
  external int dwSize;

  @Uint16()
  external int wVersion;

  @Uint16()
  external int wReserved;

  external DCB dcb;

  @Uint32()
  external int dwProviderSubType;

  @Uint32()
  external int dwProviderOffset;

  @Uint32()
  external int dwProviderSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _wcProviderData;

  String get wcProviderData => _wcProviderData.toDartString();

  set wcProviderData(String value) => _wcProviderData.setString(value);
}

/// Contains information about a communications driver.
///
/// {@category struct}
base class COMMPROP extends Struct {
  @Uint16()
  external int wPacketLength;

  @Uint16()
  external int wPacketVersion;

  @Uint32()
  external int dwServiceMask;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwMaxTxQueue;

  @Uint32()
  external int dwMaxRxQueue;

  @Uint32()
  external int dwMaxBaud;

  @Uint32()
  external int dwProvSubType;

  @Uint32()
  external int dwProvCapabilities;

  @Uint32()
  external int dwSettableParams;

  @Uint32()
  external int dwSettableBaud;

  @Uint16()
  external int wSettableData;

  @Uint16()
  external int wSettableStopParity;

  @Uint32()
  external int dwCurrentTxQueue;

  @Uint32()
  external int dwCurrentRxQueue;

  @Uint32()
  external int dwProvSpec1;

  @Uint32()
  external int dwProvSpec2;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _wcProvChar;

  String get wcProvChar => _wcProvChar.toDartString();

  set wcProvChar(String value) => _wcProvChar.setString(value);
}

/// Contains the time-out parameters for a communications device. The
/// parameters determine the behavior of ReadFile, WriteFile, ReadFileEx,
/// and WriteFileEx operations on the device.
///
/// {@category struct}
base class COMMTIMEOUTS extends Struct {
  @Uint32()
  external int ReadIntervalTimeout;

  @Uint32()
  external int ReadTotalTimeoutMultiplier;

  @Uint32()
  external int ReadTotalTimeoutConstant;

  @Uint32()
  external int WriteTotalTimeoutMultiplier;

  @Uint32()
  external int WriteTotalTimeoutConstant;
}

/// Contains information about a communications device. This structure is
/// filled by the ClearCommError function.
///
/// {@category struct}
base class COMSTAT extends Struct {
  @Uint32()
  external int bitfield;

  @Uint32()
  external int cbInQue;

  @Uint32()
  external int cbOutQue;
}

/// Contains information about the console cursor.
///
/// {@category struct}
base class CONSOLE_CURSOR_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int bVisible;
}

/// Contains information for a console read operation.
///
/// {@category struct}
base class CONSOLE_READCONSOLE_CONTROL extends Struct {
  @Uint32()
  external int nLength;

  @Uint32()
  external int nInitialChars;

  @Uint32()
  external int dwCtrlWakeupMask;

  @Uint32()
  external int dwControlKeyState;
}

/// Contains information about a console screen buffer.
///
/// {@category struct}
base class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  external COORD dwSize;

  external COORD dwCursorPosition;

  @Uint16()
  external int wAttributes;

  external SMALL_RECT srWindow;

  external COORD dwMaximumWindowSize;
}

/// Contains information for a console selection.
///
/// {@category struct}
base class CONSOLE_SELECTION_INFO extends Struct {
  @Uint32()
  external int dwFlags;

  external COORD dwSelectionAnchor;

  external SMALL_RECT srSelection;
}

/// Defines the coordinates of a character cell in a console screen buffer.
/// The origin of the coordinate system (0,0) is at the top, left cell of
/// the buffer.
///
/// {@category struct}
base class COORD extends Struct {
  @Int16()
  external int X;

  @Int16()
  external int Y;
}

/// Stores the offset, within a class, of the specified field.
///
/// {@category struct}
base class COR_FIELD_OFFSET extends Struct {
  @Uint32()
  external int ridOfField;

  @Uint32()
  external int ulOffset;
}

/// Contains optional extended parameters for CreateFile2.
///
/// {@category struct}
base class CREATEFILE2_EXTENDED_PARAMETERS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFileAttributes;

  @Uint32()
  external int dwFileFlags;

  @Uint32()
  external int dwSecurityQosFlags;

  external Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes;

  @IntPtr()
  external int hTemplateFile;
}

/// Defines the initialization parameters passed to the window procedure of
/// an application. These members are identical to the parameters of the
/// CreateWindowEx function.
///
/// {@category struct}
base class CREATESTRUCT extends Struct {
  external Pointer lpCreateParams;

  @IntPtr()
  external int hInstance;

  @IntPtr()
  external int hMenu;

  @IntPtr()
  external int hwndParent;

  @Int32()
  external int cy;

  @Int32()
  external int cx;

  @Int32()
  external int y;

  @Int32()
  external int x;

  @Int32()
  external int style;

  external Pointer<Utf16> lpszName;

  external Pointer<Utf16> lpszClass;

  @Uint32()
  external int dwExStyle;
}

/// The CREDENTIAL structure contains an individual credential.
///
/// {@category struct}
base class CREDENTIAL extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int Type;

  external Pointer<Utf16> TargetName;

  external Pointer<Utf16> Comment;

  external FILETIME LastWritten;

  @Uint32()
  external int CredentialBlobSize;

  external Pointer<Uint8> CredentialBlob;

  @Uint32()
  external int Persist;

  @Uint32()
  external int AttributeCount;

  external Pointer<CREDENTIAL_ATTRIBUTE> Attributes;

  external Pointer<Utf16> TargetAlias;

  external Pointer<Utf16> UserName;
}

/// The CREDENTIAL_ATTRIBUTE structure contains an application-defined
/// attribute of the credential. An attribute is a keyword-value pair. It is
/// up to the application to define the meaning of the attribute.
///
/// {@category struct}
base class CREDENTIAL_ATTRIBUTE extends Struct {
  external Pointer<Utf16> Keyword;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ValueSize;

  external Pointer<Uint8> Value;
}

/// The CRYPTPROTECT_PROMPTSTRUCT structure provides the text of a prompt
/// and information about when and where that prompt is to be displayed when
/// using the CryptProtectData and CryptUnprotectData functions.
///
/// {@category struct}
base class CRYPTPROTECT_PROMPTSTRUCT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwPromptFlags;

  @IntPtr()
  external int hwndApp;

  external Pointer<Utf16> szPrompt;
}

/// The CRYPT_ALGORITHM_IDENTIFIER structure specifies an algorithm used to
/// encrypt a private key. The structure includes the object identifier
/// (OID) of the algorithm and any needed parameters for that algorithm. The
/// parameters contained in its CRYPT_OBJID_BLOB are encoded.
///
/// {@category struct}
base class CRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPT_INTEGER_BLOB Parameters;
}

/// The CRYPT_BIT_BLOB structure contains a set of bits represented by an
/// array of bytes.
///
/// {@category struct}
base class CRYPT_BIT_BLOB extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;

  @Uint32()
  external int cUnusedBits;
}

/// Contains an arbitrary array of bytes. The structure definition includes
/// aliases appropriate to the various functions that use it.
///
/// {@category struct}
base class CRYPT_INTEGER_BLOB extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// Contains global cursor information.
///
/// {@category struct}
base class CURSORINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int flags;

  @IntPtr()
  external int hCursor;

  external POINT ptScreenPos;
}

/// Defines the message parameters passed to a WH_CALLWNDPROCRET hook
/// procedure, CallWndRetProc.
///
/// {@category struct}
base class CWPRETSTRUCT extends Struct {
  @IntPtr()
  external int lResult;

  @IntPtr()
  external int lParam;

  @IntPtr()
  external int wParam;

  @Uint32()
  external int message;

  @IntPtr()
  external int hwnd;
}

/// Defines the message parameters passed to a WH_CALLWNDPROC hook
/// procedure, CallWndProc.
///
/// {@category struct}
base class CWPSTRUCT extends Struct {
  @IntPtr()
  external int lParam;

  @IntPtr()
  external int wParam;

  @Uint32()
  external int message;

  @IntPtr()
  external int hwnd;
}

/// A currency number stored as an 8-byte, two's complement integer, scaled
/// by 10,000 to give a fixed-point number with 15 digits to the left of the
/// decimal point and 4 digits to the right. This IDispatch::GetTypeInfo
/// representation provides a range of 922337203685477.5807 to
/// -922337203685477.5808.
///
/// {@category struct}
base class CY extends Union {
  external _CY__Anonymous_e__Struct Anonymous;

  @Int64()
  external int int64;
}

/// {@category struct}
sealed class _CY__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int Lo;

  @Int32()
  external int Hi;
}

extension CY_Extension on CY {
  int get Lo => this.Anonymous.Lo;
  set Lo(int value) => this.Anonymous.Lo = value;

  int get Hi => this.Anonymous.Hi;
  set Hi(int value) => this.Anonymous.Hi = value;
}

/// Defines the control setting for a serial communications device.
///
/// {@category struct}
base class DCB extends Struct {
  @Uint32()
  external int DCBlength;

  @Uint32()
  external int BaudRate;

  @Uint32()
  external int bitfield;

  @Uint16()
  external int wReserved;

  @Uint16()
  external int XonLim;

  @Uint16()
  external int XoffLim;

  @Uint8()
  external int ByteSize;

  @Uint8()
  external int Parity;

  @Uint8()
  external int StopBits;

  @Uint8()
  external int XonChar;

  @Uint8()
  external int XoffChar;

  @Uint8()
  external int ErrorChar;

  @Uint8()
  external int EofChar;

  @Uint8()
  external int EvtChar;

  @Uint16()
  external int wReserved1;
}

/// Contains debugging information passed to a WH_DEBUG hook procedure,
/// DebugProc.
///
/// {@category struct}
base class DEBUGHOOKINFO extends Struct {
  @Uint32()
  external int idThread;

  @Uint32()
  external int idThreadInstaller;

  @IntPtr()
  external int lParam;

  @IntPtr()
  external int wParam;

  @Int32()
  external int code;
}

/// Represents a decimal data type that provides a sign and scale for a
/// number (as in coordinates.) Decimal variables are stored as 96-bit
/// (12-byte) unsigned integers scaled by a variable power of 10. The power
/// of 10 scaling factor specifies the number of digits to the right of the
/// decimal point, and ranges from 0 to 28.
///
/// {@category struct}
base class DECIMAL extends Struct {
  @Uint16()
  external int wReserved;

  external _DECIMAL__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int Hi32;

  external _DECIMAL__Anonymous2_e__Union Anonymous2;
}

/// {@category struct}
sealed class _DECIMAL__Anonymous1_e__Union extends Union {
  external _DECIMAL__Anonymous1_e__Union__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int signscale;
}

/// {@category struct}
sealed class _DECIMAL__Anonymous1_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int scale;

  @Uint8()
  external int sign;
}

extension DECIMAL__Anonymous1_e__Union_Extension on DECIMAL {
  int get scale => this.Anonymous1.Anonymous.scale;
  set scale(int value) => this.Anonymous1.Anonymous.scale = value;

  int get sign => this.Anonymous1.Anonymous.sign;
  set sign(int value) => this.Anonymous1.Anonymous.sign = value;
}

extension DECIMAL_Extension on DECIMAL {
  _DECIMAL__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(_DECIMAL__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;

  int get signscale => this.Anonymous1.signscale;
  set signscale(int value) => this.Anonymous1.signscale = value;
}

/// {@category struct}
sealed class _DECIMAL__Anonymous2_e__Union extends Union {
  external _DECIMAL__Anonymous2_e__Union__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int Lo64;
}

/// {@category struct}
sealed class _DECIMAL__Anonymous2_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int Lo32;

  @Uint32()
  external int Mid32;
}

extension DECIMAL__Anonymous2_e__Union_Extension on DECIMAL {
  int get Lo32 => this.Anonymous2.Anonymous.Lo32;
  set Lo32(int value) => this.Anonymous2.Anonymous.Lo32 = value;

  int get Mid32 => this.Anonymous2.Anonymous.Mid32;
  set Mid32(int value) => this.Anonymous2.Anonymous.Mid32 = value;
}

extension DECIMAL_Extension_1 on DECIMAL {
  _DECIMAL__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(_DECIMAL__Anonymous2_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous2.Anonymous = value;

  int get Lo64 => this.Anonymous2.Lo64;
  set Lo64(int value) => this.Anonymous2.Lo64 = value;
}

/// The DESIGNVECTOR structure is used by an application to specify values
/// for the axes of a multiple master font.
///
/// {@category struct}
base class DESIGNVECTOR extends Struct {
  @Uint32()
  external int dvReserved;

  @Uint32()
  external int dvNumAxes;

  @Array(16)
  external Array<Int32> dvValues;
}

/// The DEVMODE data structure contains information about the initialization
/// and environment of a printer or a display device.
///
/// {@category struct}
base class DEVMODE extends Struct {
  @Array(32)
  external Array<Uint16> _dmDeviceName;

  String get dmDeviceName => _dmDeviceName.toDartString();

  set dmDeviceName(String value) => _dmDeviceName.setString(value);

  @Uint16()
  external int dmSpecVersion;

  @Uint16()
  external int dmDriverVersion;

  @Uint16()
  external int dmSize;

  @Uint16()
  external int dmDriverExtra;

  @Uint32()
  external int dmFields;

  external _DEVMODEW__Anonymous1_e__Union Anonymous1;

  @Uint16()
  external int dmColor;

  @Uint16()
  external int dmDuplex;

  @Int16()
  external int dmYResolution;

  @Uint16()
  external int dmTTOption;

  @Uint16()
  external int dmCollate;

  @Array(32)
  external Array<Uint16> _dmFormName;

  String get dmFormName => _dmFormName.toDartString();

  set dmFormName(String value) => _dmFormName.setString(value);

  @Uint16()
  external int dmLogPixels;

  @Uint32()
  external int dmBitsPerPel;

  @Uint32()
  external int dmPelsWidth;

  @Uint32()
  external int dmPelsHeight;

  external _DEVMODEW__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int dmDisplayFrequency;

  @Uint32()
  external int dmICMMethod;

  @Uint32()
  external int dmICMIntent;

  @Uint32()
  external int dmMediaType;

  @Uint32()
  external int dmDitherType;

  @Uint32()
  external int dmReserved1;

  @Uint32()
  external int dmReserved2;

  @Uint32()
  external int dmPanningWidth;

  @Uint32()
  external int dmPanningHeight;
}

/// {@category struct}
sealed class _DEVMODEW__Anonymous1_e__Union extends Union {
  external _DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct Anonymous1;

  external _DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct Anonymous2;
}

/// {@category struct}
sealed class _DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Int16()
  external int dmOrientation;

  @Int16()
  external int dmPaperSize;

  @Int16()
  external int dmPaperLength;

  @Int16()
  external int dmPaperWidth;

  @Int16()
  external int dmScale;

  @Int16()
  external int dmCopies;

  @Int16()
  external int dmDefaultSource;

  @Int16()
  external int dmPrintQuality;
}

extension DEVMODEW__Anonymous1_e__Union_Extension on DEVMODE {
  int get dmOrientation => this.Anonymous1.Anonymous1.dmOrientation;
  set dmOrientation(int value) =>
      this.Anonymous1.Anonymous1.dmOrientation = value;

  int get dmPaperSize => this.Anonymous1.Anonymous1.dmPaperSize;
  set dmPaperSize(int value) => this.Anonymous1.Anonymous1.dmPaperSize = value;

  int get dmPaperLength => this.Anonymous1.Anonymous1.dmPaperLength;
  set dmPaperLength(int value) =>
      this.Anonymous1.Anonymous1.dmPaperLength = value;

  int get dmPaperWidth => this.Anonymous1.Anonymous1.dmPaperWidth;
  set dmPaperWidth(int value) =>
      this.Anonymous1.Anonymous1.dmPaperWidth = value;

  int get dmScale => this.Anonymous1.Anonymous1.dmScale;
  set dmScale(int value) => this.Anonymous1.Anonymous1.dmScale = value;

  int get dmCopies => this.Anonymous1.Anonymous1.dmCopies;
  set dmCopies(int value) => this.Anonymous1.Anonymous1.dmCopies = value;

  int get dmDefaultSource => this.Anonymous1.Anonymous1.dmDefaultSource;
  set dmDefaultSource(int value) =>
      this.Anonymous1.Anonymous1.dmDefaultSource = value;

  int get dmPrintQuality => this.Anonymous1.Anonymous1.dmPrintQuality;
  set dmPrintQuality(int value) =>
      this.Anonymous1.Anonymous1.dmPrintQuality = value;
}

/// {@category struct}
sealed class _DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct
    extends Struct {
  external POINTL dmPosition;

  @Uint32()
  external int dmDisplayOrientation;

  @Uint32()
  external int dmDisplayFixedOutput;
}

extension DEVMODEW__Anonymous1_e__Union_Extension_1 on DEVMODE {
  POINTL get dmPosition => this.Anonymous1.Anonymous2.dmPosition;
  set dmPosition(POINTL value) => this.Anonymous1.Anonymous2.dmPosition = value;

  int get dmDisplayOrientation =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation;
  set dmDisplayOrientation(int value) =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation = value;

  int get dmDisplayFixedOutput =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput;
  set dmDisplayFixedOutput(int value) =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput = value;
}

extension DEVMODEW_Extension on DEVMODE {
  _DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct get Anonymous1 =>
      this.Anonymous1.Anonymous1;
  set Anonymous1(_DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct value) =>
      this.Anonymous1.Anonymous1 = value;

  _DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct get Anonymous2 =>
      this.Anonymous1.Anonymous2;
  set Anonymous2(_DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct value) =>
      this.Anonymous1.Anonymous2 = value;
}

/// {@category struct}
sealed class _DEVMODEW__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dmDisplayFlags;

  @Uint32()
  external int dmNup;
}

extension DEVMODEW_Extension_1 on DEVMODE {
  int get dmDisplayFlags => this.Anonymous2.dmDisplayFlags;
  set dmDisplayFlags(int value) => this.Anonymous2.dmDisplayFlags = value;

  int get dmNup => this.Anonymous2.dmNup;
  set dmNup(int value) => this.Anonymous2.dmNup = value;
}

/// Contains information about a class of devices.
///
/// {@category struct}
base class DEV_BROADCAST_DEVICEINTERFACE_ extends Struct {
  @Uint32()
  external int dbcc_size;

  @Uint32()
  external int dbcc_devicetype;

  @Uint32()
  external int dbcc_reserved;

  external GUID dbcc_classguid;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _dbcc_name;

  String get dbcc_name => _dbcc_name.toDartString();

  set dbcc_name(String value) => _dbcc_name.setString(value);
}

/// Serves as a standard header for information related to a device event
/// reported through the WM_DEVICECHANGE message.
///
/// {@category struct}
base class DEV_BROADCAST_HDR extends Struct {
  @Uint32()
  external int dbch_size;

  @Uint32()
  external int dbch_devicetype;

  @Uint32()
  external int dbch_reserved;
}

/// Contains information about a logical volume.
///
/// {@category struct}
base class DEV_BROADCAST_VOLUME extends Struct {
  @Uint32()
  external int dbcv_size;

  @Uint32()
  external int dbcv_devicetype;

  @Uint32()
  external int dbcv_reserved;

  @Uint32()
  external int dbcv_unitmask;

  @Uint16()
  external int dbcv_flags;
}

/// The DIBSECTION structure contains information about a DIB created by
/// calling the CreateDIBSection function. A DIBSECTION structure includes
/// information about the bitmap's dimensions, color format, color masks,
/// optional file mapping object, and optional bit values storage offset. An
/// application can obtain a filled-in DIBSECTION structure for a given DIB
/// by calling the GetObject function.
///
/// {@category struct}
base class DIBSECTION extends Struct {
  external BITMAP dsBm;

  external BITMAPINFOHEADER dsBmih;

  @Array(3)
  external Array<Uint32> dsBitfields;

  @IntPtr()
  external int dshSection;

  @Uint32()
  external int dsOffset;
}

/// Represents a disk extent.
///
/// {@category struct}
base class DISK_EXTENT extends Struct {
  @Uint32()
  external int DiskNumber;

  @Int64()
  external int StartingOffset;

  @Int64()
  external int ExtentLength;
}

/// Describes the geometry of disk devices and media.
///
/// {@category struct}
base class DISK_GEOMETRY extends Struct {
  @Int64()
  external int Cylinders;

  @Int32()
  external int MediaType;

  @Uint32()
  external int TracksPerCylinder;

  @Uint32()
  external int SectorsPerTrack;

  @Uint32()
  external int BytesPerSector;
}

/// Describes the extended geometry of disk devices and media.
///
/// {@category struct}
base class DISK_GEOMETRY_EX extends Struct {
  external DISK_GEOMETRY Geometry;

  @Int64()
  external int DiskSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;
}

/// The DISPLAYCONFIG_2DREGION structure represents a point or an offset in
/// a two-dimensional space.
///
/// {@category struct}
base class DISPLAYCONFIG_2DREGION extends Struct {
  @Uint32()
  external int cx;

  @Uint32()
  external int cy;
}

/// The DISPLAYCONFIG_DESKTOP_IMAGE_INFO structure contains information
/// about the image displayed on the desktop.
///
/// {@category struct}
base class DISPLAYCONFIG_DESKTOP_IMAGE_INFO extends Struct {
  external POINTL PathSourceSize;

  external RECTL DesktopImageRegion;

  external RECTL DesktopImageClip;
}

/// The DISPLAYCONFIG_DEVICE_INFO_HEADER structure contains display
/// information about the device.
///
/// {@category struct}
base class DISPLAYCONFIG_DEVICE_INFO_HEADER extends Struct {
  @Int32()
  external int type;

  @Uint32()
  external int size;

  external LUID adapterId;

  @Uint32()
  external int id;
}

/// The DISPLAYCONFIG_MODE_INFO structure contains either source mode or
/// target mode information.
///
/// {@category struct}
base class DISPLAYCONFIG_MODE_INFO extends Struct {
  @Int32()
  external int infoType;

  @Uint32()
  external int id;

  external LUID adapterId;

  external _DISPLAYCONFIG_MODE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _DISPLAYCONFIG_MODE_INFO__Anonymous_e__Union extends Union {
  external DISPLAYCONFIG_TARGET_MODE targetMode;

  external DISPLAYCONFIG_SOURCE_MODE sourceMode;

  external DISPLAYCONFIG_DESKTOP_IMAGE_INFO desktopImageInfo;
}

extension DISPLAYCONFIG_MODE_INFO_Extension on DISPLAYCONFIG_MODE_INFO {
  DISPLAYCONFIG_TARGET_MODE get targetMode => this.Anonymous.targetMode;
  set targetMode(DISPLAYCONFIG_TARGET_MODE value) =>
      this.Anonymous.targetMode = value;

  DISPLAYCONFIG_SOURCE_MODE get sourceMode => this.Anonymous.sourceMode;
  set sourceMode(DISPLAYCONFIG_SOURCE_MODE value) =>
      this.Anonymous.sourceMode = value;

  DISPLAYCONFIG_DESKTOP_IMAGE_INFO get desktopImageInfo =>
      this.Anonymous.desktopImageInfo;
  set desktopImageInfo(DISPLAYCONFIG_DESKTOP_IMAGE_INFO value) =>
      this.Anonymous.desktopImageInfo = value;
}

/// The DISPLAYCONFIG_PATH_INFO structure is used to describe a single path
/// from a target to a source.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_INFO extends Struct {
  external DISPLAYCONFIG_PATH_SOURCE_INFO sourceInfo;

  external DISPLAYCONFIG_PATH_TARGET_INFO targetInfo;

  @Uint32()
  external int flags;
}

/// The DISPLAYCONFIG_PATH_SOURCE_INFO structure contains source information
/// for a single path.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_SOURCE_INFO extends Struct {
  external LUID adapterId;

  @Uint32()
  external int id;

  external _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int statusFlags;
}

/// {@category struct}
sealed class _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int modeInfoIdx;

  external _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The DISPLAYCONFIG_PATH_TARGET_INFO structure contains target information
/// for a single path.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_TARGET_INFO extends Struct {
  external LUID adapterId;

  @Uint32()
  external int id;

  external _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union Anonymous;

  @Int32()
  external int outputTechnology;

  @Int32()
  external int rotation;

  @Int32()
  external int scaling;

  external DISPLAYCONFIG_RATIONAL refreshRate;

  @Int32()
  external int scanLineOrdering;

  @Int32()
  external int targetAvailable;

  @Uint32()
  external int statusFlags;
}

/// {@category struct}
sealed class _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int modeInfoIdx;

  external _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The DISPLAYCONFIG_RATIONAL structure describes a fractional value that
/// represents vertical and horizontal frequencies of a video mode (that is,
/// vertical sync and horizontal sync).
///
/// {@category struct}
base class DISPLAYCONFIG_RATIONAL extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// The DISPLAYCONFIG_SOURCE_MODE structure represents a point or an offset
/// in a two-dimensional space.
///
/// {@category struct}
base class DISPLAYCONFIG_SOURCE_MODE extends Struct {
  @Uint32()
  external int width;

  @Uint32()
  external int height;

  @Int32()
  external int pixelFormat;

  external POINTL position;
}

/// The DISPLAYCONFIG_TARGET_MODE structure describes a display path target
/// mode.
///
/// {@category struct}
base class DISPLAYCONFIG_TARGET_MODE extends Struct {
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO targetVideoSignalInfo;
}

/// The DISPLAYCONFIG_VIDEO_SIGNAL_INFO structure contains information about
/// the video signal for a display.
///
/// {@category struct}
base class DISPLAYCONFIG_VIDEO_SIGNAL_INFO extends Struct {
  @Uint64()
  external int pixelRate;

  external DISPLAYCONFIG_RATIONAL hSyncFreq;

  external DISPLAYCONFIG_RATIONAL vSyncFreq;

  external DISPLAYCONFIG_2DREGION activeSize;

  external DISPLAYCONFIG_2DREGION totalSize;

  external _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union Anonymous;

  @Int32()
  external int scanLineOrdering;
}

/// {@category struct}
sealed class _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union
    extends Union {
  external _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
  AdditionalSignalInfo;

  @Uint32()
  external int videoStandard;
}

/// {@category struct}
sealed class _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  int get bitfield => this.Anonymous.AdditionalSignalInfo.bitfield;
  set bitfield(int value) =>
      this.Anonymous.AdditionalSignalInfo.bitfield = value;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
  get AdditionalSignalInfo => this.Anonymous.AdditionalSignalInfo;
  set AdditionalSignalInfo(
    _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
    value,
  ) => this.Anonymous.AdditionalSignalInfo = value;

  int get videoStandard => this.Anonymous.videoStandard;
  set videoStandard(int value) => this.Anonymous.videoStandard = value;
}

/// The DISPLAY_DEVICE structure receives information about the display
/// device specified by the iDevNum parameter of the EnumDisplayDevices
/// function.
///
/// {@category struct}
base class DISPLAY_DEVICE extends Struct {
  @Uint32()
  external int cb;

  @Array(32)
  external Array<Uint16> _DeviceName;

  String get DeviceName => _DeviceName.toDartString();

  set DeviceName(String value) => _DeviceName.setString(value);

  @Array(128)
  external Array<Uint16> _DeviceString;

  String get DeviceString => _DeviceString.toDartString();

  set DeviceString(String value) => _DeviceString.setString(value);

  @Uint32()
  external int StateFlags;

  @Array(128)
  external Array<Uint16> _DeviceID;

  String get DeviceID => _DeviceID.toDartString();

  set DeviceID(String value) => _DeviceID.setString(value);

  @Array(128)
  external Array<Uint16> _DeviceKey;

  String get DeviceKey => _DeviceKey.toDartString();

  set DeviceKey(String value) => _DeviceKey.setString(value);
}

/// Contains the arguments passed to a method or property.
///
/// {@category struct}
base class DISPPARAMS extends Struct {
  external Pointer<VARIANT> rgvarg;

  external Pointer<Int32> rgdispidNamedArgs;

  @Uint32()
  external int cArgs;

  @Uint32()
  external int cNamedArgs;
}

/// Defines the dimensions and style of a control in a dialog box. One or
/// more of these structures are combined with a DLGTEMPLATE structure to
/// form a standard template for a dialog box.
///
/// {@category struct}
@Packed(2)
base class DLGITEMTEMPLATE extends Struct {
  @Uint32()
  external int style;

  @Uint32()
  external int dwExtendedStyle;

  @Int16()
  external int x;

  @Int16()
  external int y;

  @Int16()
  external int cx;

  @Int16()
  external int cy;

  @Uint16()
  external int id;
}

/// Defines the dimensions and style of a dialog box. This structure, always
/// the first in a standard template for a dialog box, also specifies the
/// number of controls in the dialog box and therefore specifies the number
/// of subsequent DLGITEMTEMPLATE structures in the template.
///
/// {@category struct}
@Packed(2)
base class DLGTEMPLATE extends Struct {
  @Uint32()
  external int style;

  @Uint32()
  external int dwExtendedStyle;

  @Uint16()
  external int cdit;

  @Int16()
  external int x;

  @Int16()
  external int y;

  @Int16()
  external int cx;

  @Int16()
  external int cy;
}

/// Receives DLL-specific version information. It is used with the
/// DllGetVersion function.
///
/// {@category struct}
base class DLLVERSIONINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Uint32()
  external int dwPlatformID;
}

/// The DOC_INFO_1 structure describes a document that will be printed.
///
/// {@category struct}
base class DOC_INFO_1 extends Struct {
  external Pointer<Utf16> pDocName;

  external Pointer<Utf16> pOutputFile;

  external Pointer<Utf16> pDatatype;
}

/// The DOT11_AUTH_CIPHER_PAIR structure defines a pair of 802.11
/// authentication and cipher algorithms that can be enabled at the same
/// time on the 802.11 station.
///
/// {@category struct}
base class DOT11_AUTH_CIPHER_PAIR extends Struct {
  @Int32()
  external int AuthAlgoId;

  @Int32()
  external int CipherAlgoId;
}

/// The DOT11_BSSID_LIST structure contains a list of basic service set
/// (BSS) identifiers.
///
/// {@category struct}
base class DOT11_BSSID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array.variableWithVariableDimension(6)
  external Array<Uint8> BSSIDs;
}

/// The DOT11_NETWORK structure contains information about an available
/// wireless network.
///
/// {@category struct}
base class DOT11_NETWORK extends Struct {
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;
}

/// The DOT11_NETWORK_LIST structure contains a list of 802.11 wireless
/// networks.
///
/// {@category struct}
base class DOT11_NETWORK_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array.variableWithVariableDimension(1)
  external Array<DOT11_NETWORK> Network;
}

/// A DOT11_SSID structure contains the SSID of an interface.
///
/// {@category struct}
base class DOT11_SSID extends Struct {
  @Uint32()
  external int uSSIDLength;

  @Array(32)
  external Array<Uint8> ucSSID;
}

/// The DRAWTEXTPARAMS structure contains extended formatting options for
/// the DrawTextEx function.
///
/// {@category struct}
base class DRAWTEXTPARAMS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int iTabLength;

  @Int32()
  external int iLeftMargin;

  @Int32()
  external int iRightMargin;

  @Uint32()
  external int uiLengthDrawn;
}

/// Defines the CF_HDROP clipboard format. The data that follows is a double
/// null-terminated list of file names.
///
/// {@category struct}
base class DROPFILES extends Struct {
  @Uint32()
  external int pFiles;

  external POINT pt;

  @Int32()
  external int fNC;

  @Int32()
  external int fWide;
}

/// Contains information about how a device is joined to Microsoft Azure
/// Active Directory.
///
/// {@category struct}
base class DSREG_JOIN_INFO extends Struct {
  @Int32()
  external int joinType;

  external Pointer<CERT_CONTEXT> pJoinCertificate;

  external Pointer<Utf16> pszDeviceId;

  external Pointer<Utf16> pszIdpDomain;

  external Pointer<Utf16> pszTenantId;

  external Pointer<Utf16> pszJoinUserEmail;

  external Pointer<Utf16> pszTenantDisplayName;

  external Pointer<Utf16> pszMdmEnrollmentUrl;

  external Pointer<Utf16> pszMdmTermsOfUseUrl;

  external Pointer<Utf16> pszMdmComplianceUrl;

  external Pointer<Utf16> pszUserSettingSyncUrl;

  external Pointer<DSREG_USER_INFO> pUserInfo;
}

/// Contains information about a user account that is used to join a device
/// to Microsoft Azure Active Directory.
///
/// {@category struct}
base class DSREG_USER_INFO extends Struct {
  external Pointer<Utf16> pszUserEmail;

  external Pointer<Utf16> pszUserKeyId;

  external Pointer<Utf16> pszUserKeyName;
}

/// Defines the options for the DrawThemeBackgroundEx function.
///
/// {@category struct}
base class DTBGOPTS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external RECT rcClip;
}

/// Defines the options for the DrawThemeTextEx function.
///
/// {@category struct}
base class DTTOPTS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int crText;

  @Uint32()
  external int crBorder;

  @Uint32()
  external int crShadow;

  @Int32()
  external int iTextShadowType;

  external POINT ptShadowOffset;

  @Int32()
  external int iBorderSize;

  @Int32()
  external int iFontPropId;

  @Int32()
  external int iColorPropId;

  @Int32()
  external int iStateId;

  @Int32()
  external int fApplyOverlay;

  @Int32()
  external int iGlowSize;

  external Pointer<NativeFunction<DTT_CALLBACK_PROC>> pfnDrawTextCallback;

  @IntPtr()
  external int lParam;
}

/// Specifies Desktop Window Manager (DWM) blur-behind properties. Used by
/// the DwmEnableBlurBehindWindow function.
///
/// {@category struct}
@Packed(1)
base class DWM_BLURBEHIND extends Struct {
  @Uint32()
  external int dwFlags;

  @Int32()
  external int fEnable;

  @IntPtr()
  external int hRgnBlur;

  @Int32()
  external int fTransitionOnMaximized;
}

/// The EAP_METHOD_TYPE structure contains type, identification, and author
/// information about an EAP method.
///
/// {@category struct}
base class EAP_METHOD_TYPE extends Struct {
  external EAP_TYPE eapType;

  @Uint32()
  external int dwAuthorId;
}

/// The EAP_TYPE structure contains type and vendor identification
/// information for an EAP method.
///
/// {@category struct}
base class EAP_TYPE extends Struct {
  @Uint8()
  external int type;

  @Uint32()
  external int dwVendorId;

  @Uint32()
  external int dwVendorType;
}

/// Contains the type description and process-transfer information for a
/// variable, a function, or a function parameter.
///
/// {@category struct}
base class ELEMDESC extends Struct {
  external TYPEDESC tdesc;

  external _ELEMDESC__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _ELEMDESC__Anonymous_e__Union extends Union {
  external IDLDESC idldesc;

  external PARAMDESC paramdesc;
}

extension ELEMDESC_Extension on ELEMDESC {
  IDLDESC get idldesc => this.Anonymous.idldesc;
  set idldesc(IDLDESC value) => this.Anonymous.idldesc = value;

  PARAMDESC get paramdesc => this.Anonymous.paramdesc;
  set paramdesc(PARAMDESC value) => this.Anonymous.paramdesc = value;
}

/// The ENUMLOGFONTEX structure contains information about an enumerated
/// font.
///
/// {@category struct}
base class ENUMLOGFONTEX extends Struct {
  external LOGFONT elfLogFont;

  @Array(64)
  external Array<Uint16> _elfFullName;

  String get elfFullName => _elfFullName.toDartString();

  set elfFullName(String value) => _elfFullName.setString(value);

  @Array(32)
  external Array<Uint16> _elfStyle;

  String get elfStyle => _elfStyle.toDartString();

  set elfStyle(String value) => _elfStyle.setString(value);

  @Array(32)
  external Array<Uint16> _elfScript;

  String get elfScript => _elfScript.toDartString();

  set elfScript(String value) => _elfScript.setString(value);
}

/// Contains information about a pagefile.
///
/// {@category struct}
base class ENUM_PAGE_FILE_INFORMATION extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int Reserved;

  @IntPtr()
  external int TotalSize;

  @IntPtr()
  external int TotalInUse;

  @IntPtr()
  external int PeakUsage;
}

/// Contains the name of a service in a service control manager database and
/// information about that service. It is used by the EnumDependentServices
/// and EnumServicesStatus functions.
///
/// {@category struct}
base class ENUM_SERVICE_STATUS extends Struct {
  external Pointer<Utf16> lpServiceName;

  external Pointer<Utf16> lpDisplayName;

  external SERVICE_STATUS ServiceStatus;
}

/// Contains the name of a service in a service control manager database and
/// information about the service. It is used by the EnumServicesStatusEx
/// function.
///
/// {@category struct}
base class ENUM_SERVICE_STATUS_PROCESS extends Struct {
  external Pointer<Utf16> lpServiceName;

  external Pointer<Utf16> lpDisplayName;

  external SERVICE_STATUS_PROCESS ServiceStatusProcess;
}

/// Contains information about a hardware message sent to the system message
/// queue. This structure is used to store message information for the
/// JournalPlaybackProc callback function.
///
/// {@category struct}
base class EVENTMSG extends Struct {
  @Uint32()
  external int message;

  @Uint32()
  external int paramL;

  @Uint32()
  external int paramH;

  @Uint32()
  external int time;

  @IntPtr()
  external int hwnd;
}

/// Describes an exception that occurred during IDispatch::Invoke.
///
/// {@category struct}
base class EXCEPINFO extends Struct {
  @Uint16()
  external int wCode;

  @Uint16()
  external int wReserved;

  external Pointer<Utf16> bstrSource;

  external Pointer<Utf16> bstrDescription;

  external Pointer<Utf16> bstrHelpFile;

  @Uint32()
  external int dwHelpContext;

  external Pointer pvReserved;

  external Pointer<NativeFunction<LPEXCEPFINO_DEFERRED_FILLIN>>
  pfnDeferredFillIn;

  @Int32()
  external int scode;
}

/// Contains information about an extended property.
///
/// {@category struct}
base class ExtendedProperty extends Struct {
  external Pointer<Utf16> PropertyName;

  external Pointer<Utf16> PropertyValue;
}

/// The fd_set structure is used by various Windows Sockets functions and
/// service providers, such as the select function, to place sockets into a
/// set for various purposes, such as testing a given socket for readability
/// using the readfds parameter of the select function.
///
/// {@category struct}
base class FD_SET extends Struct {
  @Uint32()
  external int fd_count;

  @Array(64)
  external Array<IntPtr> fd_array;
}

/// Contains a 64-bit value representing the number of 100-nanosecond
/// intervals since January 1, 1601 (UTC).
///
/// {@category struct}
base class FILETIME extends Struct {
  @Uint32()
  external int dwLowDateTime;

  @Uint32()
  external int dwHighDateTime;
}

/// Union that contains a 64-bit value that points to a page of data.
///
/// {@category struct}
base class FILE_SEGMENT_ELEMENT extends Union {
  external Pointer Buffer;

  @Uint64()
  external int Alignment;
}

/// Contains information that the FindText and ReplaceText functions use to
/// initialize the Find and Replace dialog boxes. The FINDMSGSTRING
/// registered message uses this structure to pass the user's search or
/// replacement input to the owner window of a Find or Replace dialog box.
///
/// {@category struct}
base class FINDREPLACE extends Struct {
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

/// Describes a focus event in a console INPUT_RECORD structure. These
/// events are used internally and should be ignored.
///
/// {@category struct}
base class FOCUS_EVENT_RECORD extends Struct {
  @Int32()
  external int bSetFocus;
}

/// Describes a function.
///
/// {@category struct}
base class FUNCDESC extends Struct {
  @Int32()
  external int memid;

  external Pointer<Int32> lprgscode;

  external Pointer<ELEMDESC> lprgelemdescParam;

  @Int32()
  external int funckind;

  @Int32()
  external int invkind;

  @Int32()
  external int callconv;

  @Int16()
  external int cParams;

  @Int16()
  external int cParamsOpt;

  @Int16()
  external int oVft;

  @Int16()
  external int cScodes;

  external ELEMDESC elemdescFunc;

  @Uint16()
  external int wFuncFlags;
}

/// Gets and sets the configuration for enabling gesture messages and the
/// type of this configuration.
///
/// {@category struct}
base class GESTURECONFIG extends Struct {
  @Uint32()
  external int dwID;

  @Uint32()
  external int dwWant;

  @Uint32()
  external int dwBlock;
}

/// Stores information about a gesture.
///
/// {@category struct}
base class GESTUREINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwID;

  @IntPtr()
  external int hwndTarget;

  external POINTS ptsLocation;

  @Uint32()
  external int dwInstanceID;

  @Uint32()
  external int dwSequenceID;

  @Uint64()
  external int ullArguments;

  @Uint32()
  external int cbExtraArgs;
}

/// When transmitted with WM_GESTURENOTIFY messages, passes information
/// about a gesture.
///
/// {@category struct}
base class GESTURENOTIFYSTRUCT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndTarget;

  external POINTS ptsLocation;

  @Uint32()
  external int dwInstanceID;
}

/// Contains information about a GUI thread.
///
/// {@category struct}
base class GUITHREADINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int flags;

  @IntPtr()
  external int hwndActive;

  @IntPtr()
  external int hwndFocus;

  @IntPtr()
  external int hwndCapture;

  @IntPtr()
  external int hwndMenuOwner;

  @IntPtr()
  external int hwndMoveSize;

  @IntPtr()
  external int hwndCaret;

  external RECT rcCaret;
}

/// Contains information about a simulated message generated by an input
/// device other than a keyboard or mouse.
///
/// {@category struct}
base class HARDWAREINPUT extends Struct {
  @Uint32()
  external int uMsg;

  @Uint16()
  external int wParamL;

  @Uint16()
  external int wParamH;
}

/// The hostent structure is used by functions to store information about a
/// given host, such as host name, IPv4 address, and so forth. An
/// application should never attempt to modify this structure or to free any
/// of its components. Furthermore, only one copy of the hostent structure
/// is allocated per thread, and an application should therefore copy any
/// information that it needs before issuing any other Windows Sockets API
/// calls.
///
/// {@category struct}
base class HOSTENT extends Struct {
  external Pointer<Utf8> h_name;

  external Pointer<Pointer<Int8>> h_aliases;

  @Int16()
  external int h_addrtype;

  @Int16()
  external int h_length;

  external Pointer<Pointer<Int8>> h_addr_list;
}

/// Handle of an open waveform-audio input device.
///
/// {@category struct}
base class HWAVEIN extends Struct {
  @IntPtr()
  external int Value;
}

/// Contains information about an icon or a cursor.
///
/// {@category struct}
base class ICONINFO extends Struct {
  @Int32()
  external int fIcon;

  @Uint32()
  external int xHotspot;

  @Uint32()
  external int yHotspot;

  @IntPtr()
  external int hbmMask;

  @IntPtr()
  external int hbmColor;
}

/// Contains information about an icon or a cursor. Extends ICONINFO. Used
/// by GetIconInfoEx.
///
/// {@category struct}
base class ICONINFOEX extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int fIcon;

  @Uint32()
  external int xHotspot;

  @Uint32()
  external int yHotspot;

  @IntPtr()
  external int hbmMask;

  @IntPtr()
  external int hbmColor;

  @Uint16()
  external int wResID;

  @Array(260)
  external Array<Uint16> _szModName;

  String get szModName => _szModName.toDartString();

  set szModName(String value) => _szModName.setString(value);

  @Array(260)
  external Array<Uint16> _szResName;

  String get szResName => _szResName.toDartString();

  set szResName(String value) => _szResName.setString(value);
}

/// Contains the IDL attributes of a type.
///
/// {@category struct}
base class IDLDESC extends Struct {
  @IntPtr()
  external int dwReserved;

  @Uint16()
  external int wIDLFlags;
}

/// Carries information used to load common control classes from the
/// dynamic-link library (DLL). This structure is used with the
/// InitCommonControlsEx function.
///
/// {@category struct}
base class INITCOMMONCONTROLSEX extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwICC;
}

/// Used by SendInput to store information for synthesizing input events
/// such as keystrokes, mouse movement, and mouse clicks.
///
/// {@category struct}
base class INPUT extends Struct {
  @Uint32()
  external int type;

  external _INPUT__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _INPUT__Anonymous_e__Union extends Union {
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

/// Describes an input event in the console input buffer. These records can
/// be read from the input buffer by using the ReadConsoleInput or
/// PeekConsoleInput function, or written to the input buffer by using the
/// WriteConsoleInput function.
///
/// {@category struct}
base class INPUT_RECORD extends Struct {
  @Uint16()
  external int EventType;

  external _INPUT_RECORD__Event_e__Union Event;
}

/// {@category struct}
sealed class _INPUT_RECORD__Event_e__Union extends Union {
  external KEY_EVENT_RECORD KeyEvent;

  external MOUSE_EVENT_RECORD MouseEvent;

  external WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;

  external MENU_EVENT_RECORD MenuEvent;

  external FOCUS_EVENT_RECORD FocusEvent;
}

extension INPUT_RECORD_Extension on INPUT_RECORD {
  KEY_EVENT_RECORD get KeyEvent => this.Event.KeyEvent;
  set KeyEvent(KEY_EVENT_RECORD value) => this.Event.KeyEvent = value;

  MOUSE_EVENT_RECORD get MouseEvent => this.Event.MouseEvent;
  set MouseEvent(MOUSE_EVENT_RECORD value) => this.Event.MouseEvent = value;

  WINDOW_BUFFER_SIZE_RECORD get WindowBufferSizeEvent =>
      this.Event.WindowBufferSizeEvent;
  set WindowBufferSizeEvent(WINDOW_BUFFER_SIZE_RECORD value) =>
      this.Event.WindowBufferSizeEvent = value;

  MENU_EVENT_RECORD get MenuEvent => this.Event.MenuEvent;
  set MenuEvent(MENU_EVENT_RECORD value) => this.Event.MenuEvent = value;

  FOCUS_EVENT_RECORD get FocusEvent => this.Event.FocusEvent;
  set FocusEvent(FOCUS_EVENT_RECORD value) => this.Event.FocusEvent = value;
}

/// Defines the matrix that represents a transform on a message consumer.
/// This matrix can be used to transform pointer input data from client
/// coordinates to screen coordinates, while the inverse can be used to
/// transform pointer input data from screen coordinates to client
/// coordinates.
///
/// {@category struct}
base class INPUT_TRANSFORM extends Struct {
  external _INPUT_TRANSFORM__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _INPUT_TRANSFORM__Anonymous_e__Union extends Union {
  external _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Array(16)
  external Array<Float> m;
}

/// {@category struct}
sealed class _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Float()
  external double x11;

  @Float()
  external double x12;

  @Float()
  external double x13;

  @Float()
  external double x14;

  @Float()
  external double x21;

  @Float()
  external double x22;

  @Float()
  external double x23;

  @Float()
  external double x24;

  @Float()
  external double x31;

  @Float()
  external double x32;

  @Float()
  external double x33;

  @Float()
  external double x34;

  @Float()
  external double x41;

  @Float()
  external double x42;

  @Float()
  external double x43;

  @Float()
  external double x44;
}

extension INPUT_TRANSFORM__Anonymous_e__Union_Extension on INPUT_TRANSFORM {
  double get x11 => this.Anonymous.Anonymous.x11;
  set x11(double value) => this.Anonymous.Anonymous.x11 = value;

  double get x12 => this.Anonymous.Anonymous.x12;
  set x12(double value) => this.Anonymous.Anonymous.x12 = value;

  double get x13 => this.Anonymous.Anonymous.x13;
  set x13(double value) => this.Anonymous.Anonymous.x13 = value;

  double get x14 => this.Anonymous.Anonymous.x14;
  set x14(double value) => this.Anonymous.Anonymous.x14 = value;

  double get x21 => this.Anonymous.Anonymous.x21;
  set x21(double value) => this.Anonymous.Anonymous.x21 = value;

  double get x22 => this.Anonymous.Anonymous.x22;
  set x22(double value) => this.Anonymous.Anonymous.x22 = value;

  double get x23 => this.Anonymous.Anonymous.x23;
  set x23(double value) => this.Anonymous.Anonymous.x23 = value;

  double get x24 => this.Anonymous.Anonymous.x24;
  set x24(double value) => this.Anonymous.Anonymous.x24 = value;

  double get x31 => this.Anonymous.Anonymous.x31;
  set x31(double value) => this.Anonymous.Anonymous.x31 = value;

  double get x32 => this.Anonymous.Anonymous.x32;
  set x32(double value) => this.Anonymous.Anonymous.x32 = value;

  double get x33 => this.Anonymous.Anonymous.x33;
  set x33(double value) => this.Anonymous.Anonymous.x33 = value;

  double get x34 => this.Anonymous.Anonymous.x34;
  set x34(double value) => this.Anonymous.Anonymous.x34 = value;

  double get x41 => this.Anonymous.Anonymous.x41;
  set x41(double value) => this.Anonymous.Anonymous.x41 = value;

  double get x42 => this.Anonymous.Anonymous.x42;
  set x42(double value) => this.Anonymous.Anonymous.x42 = value;

  double get x43 => this.Anonymous.Anonymous.x43;
  set x43(double value) => this.Anonymous.Anonymous.x43 = value;

  double get x44 => this.Anonymous.Anonymous.x44;
  set x44(double value) => this.Anonymous.Anonymous.x44 = value;
}

extension INPUT_TRANSFORM_Extension on INPUT_TRANSFORM {
  _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
    _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct value,
  ) => this.Anonymous.Anonymous = value;

  Array<Float> get m => this.Anonymous.m;
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// The IN_ADDR structure represents an IPv4 Internet address.
///
/// {@category struct}
base class IN_ADDR extends Struct {
  external _IN_ADDR__S_un_e__Union S_un;
}

/// {@category struct}
sealed class _IN_ADDR__S_un_e__Union extends Union {
  external _IN_ADDR__S_un_e__Union__S_un_b_e__Struct S_un_b;

  external _IN_ADDR__S_un_e__Union__S_un_w_e__Struct S_un_w;

  @Uint32()
  external int S_addr;
}

/// {@category struct}
sealed class _IN_ADDR__S_un_e__Union__S_un_b_e__Struct extends Struct {
  @Uint8()
  external int s_b1;

  @Uint8()
  external int s_b2;

  @Uint8()
  external int s_b3;

  @Uint8()
  external int s_b4;
}

extension IN_ADDR__S_un_e__Union_Extension on IN_ADDR {
  int get s_b1 => this.S_un.S_un_b.s_b1;
  set s_b1(int value) => this.S_un.S_un_b.s_b1 = value;

  int get s_b2 => this.S_un.S_un_b.s_b2;
  set s_b2(int value) => this.S_un.S_un_b.s_b2 = value;

  int get s_b3 => this.S_un.S_un_b.s_b3;
  set s_b3(int value) => this.S_un.S_un_b.s_b3 = value;

  int get s_b4 => this.S_un.S_un_b.s_b4;
  set s_b4(int value) => this.S_un.S_un_b.s_b4 = value;
}

/// {@category struct}
sealed class _IN_ADDR__S_un_e__Union__S_un_w_e__Struct extends Struct {
  @Uint16()
  external int s_w1;

  @Uint16()
  external int s_w2;
}

extension IN_ADDR__S_un_e__Union_Extension_1 on IN_ADDR {
  int get s_w1 => this.S_un.S_un_w.s_w1;
  set s_w1(int value) => this.S_un.S_un_w.s_w1 = value;

  int get s_w2 => this.S_un.S_un_w.s_w2;
  set s_w2(int value) => this.S_un.S_un_w.s_w2 = value;
}

extension IN_ADDR_Extension on IN_ADDR {
  _IN_ADDR__S_un_e__Union__S_un_b_e__Struct get S_un_b => this.S_un.S_un_b;
  set S_un_b(_IN_ADDR__S_un_e__Union__S_un_b_e__Struct value) =>
      this.S_un.S_un_b = value;

  _IN_ADDR__S_un_e__Union__S_un_w_e__Struct get S_un_w => this.S_un.S_un_w;
  set S_un_w(_IN_ADDR__S_un_e__Union__S_un_w_e__Struct value) =>
      this.S_un.S_un_w = value;

  int get S_addr => this.S_un.S_addr;
  set S_addr(int value) => this.S_un.S_addr = value;
}

/// The IP_ADAPTER_ADDRESSES structure is the header node for a linked list
/// of addresses for a particular adapter. This structure can simultaneously
/// be used as part of a linked list of IP_ADAPTER_ADDRESSES structures.
///
/// {@category struct}
base class IP_ADAPTER_ADDRESSES_LH extends Struct {
  external _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union Anonymous1;

  external Pointer<IP_ADAPTER_ADDRESSES_LH> Next;

  external Pointer<Utf8> AdapterName;

  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> FirstUnicastAddress;

  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> FirstAnycastAddress;

  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> FirstMulticastAddress;

  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> FirstDnsServerAddress;

  external Pointer<Utf16> DnsSuffix;

  external Pointer<Utf16> Description;

  external Pointer<Utf16> FriendlyName;

  @Array(8)
  external Array<Uint8> PhysicalAddress;

  @Uint32()
  external int PhysicalAddressLength;

  external _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int Mtu;

  @Uint32()
  external int IfType;

  @Int32()
  external int OperStatus;

  @Uint32()
  external int Ipv6IfIndex;

  @Array(16)
  external Array<Uint32> ZoneIndices;

  external Pointer<IP_ADAPTER_PREFIX_XP> FirstPrefix;

  @Uint64()
  external int TransmitLinkSpeed;

  @Uint64()
  external int ReceiveLinkSpeed;

  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> FirstWinsServerAddress;

  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> FirstGatewayAddress;

  @Uint32()
  external int Ipv4Metric;

  @Uint32()
  external int Ipv6Metric;

  external NET_LUID_LH Luid;

  external SOCKET_ADDRESS Dhcpv4Server;

  @Uint32()
  external int CompartmentId;

  external GUID NetworkGuid;

  @Int32()
  external int ConnectionType;

  @Int32()
  external int TunnelType;

  external SOCKET_ADDRESS Dhcpv6Server;

  @Array(130)
  external Array<Uint8> Dhcpv6ClientDuid;

  @Uint32()
  external int Dhcpv6ClientDuidLength;

  @Uint32()
  external int Dhcpv6Iaid;

  external Pointer<IP_ADAPTER_DNS_SUFFIX> FirstDnsSuffix;
}

/// {@category struct}
sealed class _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int IfIndex;
}

extension IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union_Extension
    on IP_ADAPTER_ADDRESSES_LH {
  int get Length => this.Anonymous1.Anonymous.Length;
  set Length(int value) => this.Anonymous1.Anonymous.Length = value;

  int get IfIndex => this.Anonymous1.Anonymous.IfIndex;
  set IfIndex(int value) => this.Anonymous1.Anonymous.IfIndex = value;
}

extension IP_ADAPTER_ADDRESSES_LH_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Alignment => this.Anonymous1.Alignment;
  set Alignment(int value) => this.Anonymous1.Alignment = value;

  _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
    _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct value,
  ) => this.Anonymous1.Anonymous = value;
}

/// {@category struct}
sealed class _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union extends Union {
  @Uint32()
  external int Flags;

  external _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union_Extension
    on IP_ADAPTER_ADDRESSES_LH {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension IP_ADAPTER_ADDRESSES_LH_Extension_1 on IP_ADAPTER_ADDRESSES_LH {
  int get Flags => this.Anonymous2.Flags;
  set Flags(int value) => this.Anonymous2.Flags = value;

  _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
    _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct value,
  ) => this.Anonymous2.Anonymous = value;
}

/// The IP_ADAPTER_ANYCAST_ADDRESS structure stores a single anycast IP
/// address in a linked list of addresses for a particular adapter.
///
/// {@category struct}
base class IP_ADAPTER_ANYCAST_ADDRESS_XP extends Struct {
  external _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category struct}
sealed class _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The IP_ADAPTER_DNS_SERVER_ADDRESS structure stores a single DNS server
/// address in a linked list of DNS server addresses for a particular
/// adapter.
///
/// {@category struct}
base class IP_ADAPTER_DNS_SERVER_ADDRESS_XP extends Struct {
  external _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category struct}
sealed class _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Reserved => this.Anonymous.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Anonymous.Reserved = value;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The IP_ADAPTER_DNS_SUFFIX structure stores a DNS suffix in a linked list
/// of DNS suffixes for a particular adapter.
///
/// {@category struct}
base class IP_ADAPTER_DNS_SUFFIX extends Struct {
  external Pointer<IP_ADAPTER_DNS_SUFFIX> Next;

  @Array(256)
  external Array<Uint16> _String_;

  String get String_ => _String_.toDartString();

  set String_(String value) => _String_.setString(value);
}

/// The IP_ADAPTER_GATEWAY_ADDRESS structure stores a single gateway address
/// in a linked list of gateway addresses for a particular adapter.
///
/// {@category struct}
base class IP_ADAPTER_GATEWAY_ADDRESS_LH extends Struct {
  external _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category struct}
sealed class _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Reserved => this.Anonymous.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Anonymous.Reserved = value;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The IP_ADAPTER_INDEX_MAP structure stores the interface index associated
/// with a network adapter with IPv4 enabled together with the name of the
/// network adapter.
///
/// {@category struct}
base class IP_ADAPTER_INDEX_MAP extends Struct {
  @Uint32()
  external int Index;

  @Array(128)
  external Array<Uint16> _Name;

  String get Name => _Name.toDartString();

  set Name(String value) => _Name.setString(value);
}

/// The IP_ADAPTER_MULTICAST_ADDRESS structure stores a single multicast
/// address in a linked-list of addresses for a particular adapter.
///
/// {@category struct}
base class IP_ADAPTER_MULTICAST_ADDRESS_XP extends Struct {
  external _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category struct}
sealed class _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The IP_ADAPTER_PREFIX structure stores an IP address prefix.
///
/// {@category struct}
base class IP_ADAPTER_PREFIX_XP extends Struct {
  external _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_PREFIX_XP> Next;

  external SOCKET_ADDRESS Address;

  @Uint32()
  external int PrefixLength;
}

/// {@category struct}
sealed class _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_PREFIX_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_PREFIX_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_PREFIX_XP_Extension on IP_ADAPTER_PREFIX_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct value,
  ) => this.Anonymous.Anonymous = value;
}

/// The IP_ADAPTER_UNICAST_ADDRESS structure stores a single unicast IP
/// address in a linked list of IP addresses for a particular adapter.
///
/// {@category struct}
base class IP_ADAPTER_UNICAST_ADDRESS_LH extends Struct {
  external _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> Next;

  external SOCKET_ADDRESS Address;

  @Int32()
  external int PrefixOrigin;

  @Int32()
  external int SuffixOrigin;

  @Int32()
  external int DadState;

  @Uint32()
  external int ValidLifetime;

  @Uint32()
  external int PreferredLifetime;

  @Uint32()
  external int LeaseLifetime;

  @Uint8()
  external int OnLinkPrefixLength;
}

/// {@category struct}
sealed class _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The IP_ADAPTER_WINS_SERVER_ADDRESS structure stores a single Windows
/// Internet Name Service (WINS) server address in a linked list of WINS
/// server addresses for a particular adapter.
///
/// {@category struct}
base class IP_ADAPTER_WINS_SERVER_ADDRESS_LH extends Struct {
  external _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category struct}
sealed class _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
  Anonymous;
}

/// {@category struct}
sealed class _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Reserved => this.Anonymous.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Anonymous.Reserved = value;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
  get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
    _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    value,
  ) => this.Anonymous.Anonymous = value;
}

/// The IP_ADDRESS_STRING structure stores an IPv4 address in dotted decimal
/// notation. The IP_ADDRESS_STRING structure definition is also the type
/// definition for the IP_MASK_STRING structure.
///
/// {@category struct}
base class IP_ADDRESS_STRING extends Struct {
  @Array(16)
  external Array<Uint8> String_;
}

/// The IP_ADDR_STRING structure represents a node in a linked-list of IPv4
/// addresses.
///
/// {@category struct}
base class IP_ADDR_STRING extends Struct {
  external Pointer<IP_ADDR_STRING> Next;

  external IP_ADDRESS_STRING IpAddress;

  external IP_ADDRESS_STRING IpMask;

  @Uint32()
  external int Context;
}

/// The IP_INTERFACE_INFO structure contains a list of the network interface
/// adapters with IPv4 enabled on the local system.
///
/// {@category struct}
base class IP_INTERFACE_INFO extends Struct {
  @Int32()
  external int NumAdapters;

  @Array.variableWithVariableDimension(1)
  external Array<IP_ADAPTER_INDEX_MAP> Adapter;
}

/// The IP_PER_ADAPTER_INFO structure contains information specific to a
/// particular adapter.
///
/// {@category struct}
base class IP_PER_ADAPTER_INFO_W2KSP1 extends Struct {
  @Uint32()
  external int AutoconfigEnabled;

  @Uint32()
  external int AutoconfigActive;

  external Pointer<IP_ADDR_STRING> CurrentDnsServer;

  external IP_ADDR_STRING DnsServerList;
}

/// Contains a list of item identifiers.
///
/// {@category struct}
@Packed(1)
base class ITEMIDLIST extends Struct {
  external SHITEMID mkid;
}

/// Contains information used to control the I/O rate for a job.
///
/// {@category struct}
base class JOBOBJECT_IO_RATE_CONTROL_INFORMATION extends Struct {
  @Int64()
  external int MaxIops;

  @Int64()
  external int MaxBandwidth;

  @Int64()
  external int ReservationIops;

  external Pointer<Utf16> VolumeName;

  @Uint32()
  external int BaseIoSize;

  @Int32()
  external int ControlFlags;
}

/// The JOB_INFO_1 structure specifies print-job information such as the
/// job-identifier value, the name of the printer for which the job is
/// spooled, the name of the machine that created the print job, the name of
/// the user that owns the print job, and so on.
///
/// {@category struct}
base class JOB_INFO_1 extends Struct {
  @Uint32()
  external int JobId;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pMachineName;

  external Pointer<Utf16> pUserName;

  external Pointer<Utf16> pDocument;

  external Pointer<Utf16> pDatatype;

  external Pointer<Utf16> pStatus;

  @Uint32()
  external int Status;

  @Uint32()
  external int Priority;

  @Uint32()
  external int Position;

  @Uint32()
  external int TotalPages;

  @Uint32()
  external int PagesPrinted;

  external SYSTEMTIME Submitted;
}

/// Contains information about a low-level keyboard input event.
///
/// {@category struct}
base class KBDLLHOOKSTRUCT extends Struct {
  @Uint32()
  external int vkCode;

  @Uint32()
  external int scanCode;

  @Uint32()
  external int flags;

  @Uint32()
  external int time;

  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information about a simulated keyboard event.
///
/// {@category struct}
base class KEYBDINPUT extends Struct {
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

/// Describes a keyboard input event in a console INPUT_RECORD structure.
///
/// {@category struct}
base class KEY_EVENT_RECORD extends Struct {
  @Int32()
  external int bKeyDown;

  @Uint16()
  external int wRepeatCount;

  @Uint16()
  external int wVirtualKeyCode;

  @Uint16()
  external int wVirtualScanCode;

  external _KEY_EVENT_RECORD__uChar_e__Union uChar;

  @Uint32()
  external int dwControlKeyState;
}

/// {@category struct}
sealed class _KEY_EVENT_RECORD__uChar_e__Union extends Union {
  @Uint16()
  external int UnicodeChar;

  @Uint8()
  external int AsciiChar;
}

extension KEY_EVENT_RECORD_Extension on KEY_EVENT_RECORD {
  int get UnicodeChar => this.uChar.UnicodeChar;
  set UnicodeChar(int value) => this.uChar.UnicodeChar = value;

  int get AsciiChar => this.uChar.AsciiChar;
  set AsciiChar(int value) => this.uChar.AsciiChar = value;
}

/// Defines the specifics of a known folder.
///
/// {@category struct}
base class KNOWNFOLDER_DEFINITION extends Struct {
  @Int32()
  external int category;

  external Pointer<Utf16> pszName;

  external Pointer<Utf16> pszDescription;

  external GUID fidParent;

  external Pointer<Utf16> pszRelativePath;

  external Pointer<Utf16> pszParsingName;

  external Pointer<Utf16> pszTooltip;

  external Pointer<Utf16> pszLocalizedName;

  external Pointer<Utf16> pszIcon;

  external Pointer<Utf16> pszSecurity;

  @Uint32()
  external int dwAttributes;

  @Uint32()
  external int kfdFlags;

  external GUID ftidType;
}

/// The L2_NOTIFICATION_DATA structure is used by the IHV Extensions DLL to
/// send notifications to any service or applications that has registered
/// for the notification.
///
/// {@category struct}
base class L2_NOTIFICATION_DATA extends Struct {
  @Uint32()
  external int NotificationSource;

  @Uint32()
  external int NotificationCode;

  external GUID InterfaceGuid;

  @Uint32()
  external int dwDataSize;

  external Pointer pData;
}

/// Contains the time of the last input.
///
/// {@category struct}
base class LASTINPUTINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwTime;
}

/// The LOGBRUSH structure defines the style, color, and pattern of a
/// physical brush. It is used by the CreateBrushIndirect and ExtCreatePen
/// functions.
///
/// {@category struct}
base class LOGBRUSH extends Struct {
  @Uint32()
  external int lbStyle;

  @Uint32()
  external int lbColor;

  @IntPtr()
  external int lbHatch;
}

/// The LOGFONT structure defines the attributes of a font.
///
/// {@category struct}
base class LOGFONT extends Struct {
  @Int32()
  external int lfHeight;

  @Int32()
  external int lfWidth;

  @Int32()
  external int lfEscapement;

  @Int32()
  external int lfOrientation;

  @Int32()
  external int lfWeight;

  @Uint8()
  external int lfItalic;

  @Uint8()
  external int lfUnderline;

  @Uint8()
  external int lfStrikeOut;

  @Uint8()
  external int lfCharSet;

  @Uint8()
  external int lfOutPrecision;

  @Uint8()
  external int lfClipPrecision;

  @Uint8()
  external int lfQuality;

  @Uint8()
  external int lfPitchAndFamily;

  @Array(32)
  external Array<Uint16> _lfFaceName;

  String get lfFaceName => _lfFaceName.toDartString();

  set lfFaceName(String value) => _lfFaceName.setString(value);
}

/// The LOGPALETTE structure defines a logical palette.
///
/// {@category struct}
base class LOGPALETTE extends Struct {
  @Uint16()
  external int palVersion;

  @Uint16()
  external int palNumEntries;

  @Array.variableWithVariableDimension(1)
  external Array<PALETTEENTRY> palPalEntry;
}

/// A Locally Unique Identifier (LUID). This is a value guaranteed to be
/// unique only on the system on which it was generated. The uniqueness of a
/// locally unique identifier is guaranteed only until the system is
/// restarted.
///
/// {@category struct}
base class LUID extends Struct {
  @Uint32()
  external int LowPart;

  @Int32()
  external int HighPart;
}

/// Describes a color transformation matrix that a magnifier control uses to
/// apply a color effect to magnified screen content.
///
/// {@category struct}
base class MAGCOLOREFFECT extends Struct {
  @Array(25)
  external Array<Float> transform;
}

/// Describes an image format.
///
/// {@category struct}
base class MAGIMAGEHEADER extends Struct {
  @Uint32()
  external int width;

  @Uint32()
  external int height;

  external GUID format;

  @Uint32()
  external int stride;

  @Uint32()
  external int offset;

  @IntPtr()
  external int cbSize;
}

/// Describes a transformation matrix that a magnifier control uses to
/// magnify screen content.
///
/// {@category struct}
base class MAGTRANSFORM extends Struct {
  @Array(9)
  external Array<Float> v;
}

/// Returned by the GetThemeMargins function to define the margins of
/// windows that have visual styles applied.
///
/// {@category struct}
base class MARGINS extends Struct {
  @Int32()
  external int cxLeftWidth;

  @Int32()
  external int cxRightWidth;

  @Int32()
  external int cyTopHeight;

  @Int32()
  external int cyBottomHeight;
}

/// The MCI_OPEN_PARMS structure contains information for the MCI_OPEN
/// command.
///
/// {@category struct}
@Packed(1)
base class MCI_OPEN_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;

  @Uint32()
  external int wDeviceID;

  external Pointer<Utf16> lpstrDeviceType;

  external Pointer<Utf16> lpstrElementName;

  external Pointer<Utf16> lpstrAlias;
}

/// The MCI_PLAY_PARMS structure contains positioning information for the
/// MCI_PLAY command.
///
/// {@category struct}
@Packed(1)
base class MCI_PLAY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;

  @Uint32()
  external int dwFrom;

  @Uint32()
  external int dwTo;
}

/// The MCI_SEEK_PARMS structure contains positioning information for the
/// MCI_SEEK command.
///
/// {@category struct}
@Packed(1)
base class MCI_SEEK_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;

  @Uint32()
  external int dwTo;
}

/// The MCI_STATUS_PARMS structure contains information for the MCI_STATUS
/// command.
///
/// {@category struct}
@Packed(1)
base class MCI_STATUS_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;

  @IntPtr()
  external int dwReturn;

  @Uint32()
  external int dwItem;

  @Uint32()
  external int dwTrack;
}

/// Contains information about the current state of both physical and
/// virtual memory, including extended memory. The GlobalMemoryStatusEx
/// function stores information in this structure.
///
/// {@category struct}
base class MEMORYSTATUSEX extends Struct {
  @Uint32()
  external int dwLength;

  @Uint32()
  external int dwMemoryLoad;

  @Uint64()
  external int ullTotalPhys;

  @Uint64()
  external int ullAvailPhys;

  @Uint64()
  external int ullTotalPageFile;

  @Uint64()
  external int ullAvailPageFile;

  @Uint64()
  external int ullTotalVirtual;

  @Uint64()
  external int ullAvailVirtual;

  @Uint64()
  external int ullAvailExtendedVirtual;
}

/// Contains information about a range of pages in the virtual address space
/// of a process. The VirtualQuery and VirtualQueryEx functions use this
/// structure.
///
/// {@category struct}
base class MEMORY_BASIC_INFORMATION extends Struct {
  external Pointer BaseAddress;

  external Pointer AllocationBase;

  @Uint32()
  external int AllocationProtect;

  @Uint16()
  external int PartitionId;

  @IntPtr()
  external int RegionSize;

  @Uint32()
  external int State;

  @Uint32()
  external int Protect;

  @Uint32()
  external int Type;
}

/// Contains menu bar information.
///
/// {@category struct}
base class MENUBARINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcBar;

  @IntPtr()
  external int hMenu;

  @IntPtr()
  external int hwndMenu;

  @Int32()
  external int bitfield;
}

/// Contains information about a menu.
///
/// {@category struct}
base class MENUINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @Uint32()
  external int dwStyle;

  @Uint32()
  external int cyMax;

  @IntPtr()
  external int hbrBack;

  @Uint32()
  external int dwContextHelpID;

  @IntPtr()
  external int dwMenuData;
}

/// Contains information about a menu item.
///
/// {@category struct}
base class MENUITEMINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @Uint32()
  external int fType;

  @Uint32()
  external int fState;

  @Uint32()
  external int wID;

  @IntPtr()
  external int hSubMenu;

  @IntPtr()
  external int hbmpChecked;

  @IntPtr()
  external int hbmpUnchecked;

  @IntPtr()
  external int dwItemData;

  external Pointer<Utf16> dwTypeData;

  @Uint32()
  external int cch;

  @IntPtr()
  external int hbmpItem;
}

/// Defines a menu item in a menu template.
///
/// {@category struct}
base class MENUITEMTEMPLATE extends Struct {
  @Uint16()
  external int mtOption;

  @Uint16()
  external int mtID;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _mtString;

  String get mtString => _mtString.toDartString();

  set mtString(String value) => _mtString.setString(value);
}

/// Defines the header for a menu template. A complete menu template
/// consists of a header and one or more menu item lists.
///
/// {@category struct}
base class MENUITEMTEMPLATEHEADER extends Struct {
  @Uint16()
  external int versionNumber;

  @Uint16()
  external int offset;
}

/// Describes a menu event in a console INPUT_RECORD structure. These events
/// are used internally and should be ignored.
///
/// {@category struct}
base class MENU_EVENT_RECORD extends Struct {
  @Uint32()
  external int dwCommandId;
}

/// Defines the metafile picture format used for exchanging metafile data
/// through the clipboard.
///
/// {@category struct}
base class METAFILEPICT extends Struct {
  @Int32()
  external int mm;

  @Int32()
  external int xExt;

  @Int32()
  external int yExt;

  @IntPtr()
  external int hMF;
}

/// The MIDIEVENT structure describes a MIDI event in a stream buffer.
///
/// {@category struct}
@Packed(1)
base class MIDIEVENT extends Struct {
  @Uint32()
  external int dwDeltaTime;

  @Uint32()
  external int dwStreamID;

  @Uint32()
  external int dwEvent;

  @Array.variableWithVariableDimension(1)
  external Array<Uint32> dwParms;
}

/// The MIDIHDR structure defines the header used to identify a MIDI
/// system-exclusive or stream buffer.
///
/// {@category struct}
@Packed(1)
base class MIDIHDR extends Struct {
  external Pointer<Utf8> lpData;

  @Uint32()
  external int dwBufferLength;

  @Uint32()
  external int dwBytesRecorded;

  @IntPtr()
  external int dwUser;

  @Uint32()
  external int dwFlags;

  external Pointer<MIDIHDR> lpNext;

  @IntPtr()
  external int reserved;

  @Uint32()
  external int dwOffset;

  @Array(8)
  external Array<IntPtr> dwReserved;
}

/// The MIDIINCAPS structure describes the capabilities of a MIDI input
/// device.
///
/// {@category struct}
@Packed(1)
base class MIDIINCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  @Uint32()
  external int dwSupport;
}

/// The MIDIOUTCAPS structure describes the capabilities of a MIDI output
/// device.
///
/// {@category struct}
@Packed(1)
base class MIDIOUTCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  @Uint16()
  external int wTechnology;

  @Uint16()
  external int wVoices;

  @Uint16()
  external int wNotes;

  @Uint16()
  external int wChannelMask;

  @Uint32()
  external int dwSupport;
}

/// The MIDIPROPTEMPO structure contains the tempo property for a stream.
///
/// {@category struct}
@Packed(1)
base class MIDIPROPTEMPO extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwTempo;
}

/// The MIDIPROPTIMEDIV structure contains the time division property for a
/// stream.
///
/// {@category struct}
@Packed(1)
base class MIDIPROPTIMEDIV extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwTimeDiv;
}

/// The MIDISTRMBUFFVER structure contains version information for a long
/// MIDI event of the MEVT_VERSION type.
///
/// {@category struct}
@Packed(1)
base class MIDISTRMBUFFVER extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwMid;

  @Uint32()
  external int dwOEMVersion;
}

/// Contains information about a window's maximized size and position and
/// its minimum and maximum tracking size.
///
/// {@category struct}
base class MINMAXINFO extends Struct {
  external POINT ptReserved;

  external POINT ptMaxSize;

  external POINT ptMaxPosition;

  external POINT ptMinTrackSize;

  external POINT ptMaxTrackSize;
}

/// The MMTIME structure contains timing information for different types of
/// multimedia data.
///
/// {@category struct}
base class MMTIME extends Struct {
  @Uint32()
  external int wType;

  external _MMTIME__u_e__Union u;
}

/// {@category struct}
sealed class _MMTIME__u_e__Union extends Union {
  @Uint32()
  external int ms;

  @Uint32()
  external int sample;

  @Uint32()
  external int cb;

  @Uint32()
  external int ticks;

  external _MMTIME__u_e__Union__smpte_e__Struct smpte;

  external _MMTIME__u_e__Union__midi_e__Struct midi;
}

/// {@category struct}
sealed class _MMTIME__u_e__Union__smpte_e__Struct extends Struct {
  @Uint8()
  external int hour;

  @Uint8()
  external int min;

  @Uint8()
  external int sec;

  @Uint8()
  external int frame;

  @Uint8()
  external int fps;

  @Uint8()
  external int dummy;

  @Array(2)
  external Array<Uint8> pad;
}

extension MMTIME__u_e__Union_Extension on MMTIME {
  int get hour => this.u.smpte.hour;
  set hour(int value) => this.u.smpte.hour = value;

  int get min => this.u.smpte.min;
  set min(int value) => this.u.smpte.min = value;

  int get sec => this.u.smpte.sec;
  set sec(int value) => this.u.smpte.sec = value;

  int get frame => this.u.smpte.frame;
  set frame(int value) => this.u.smpte.frame = value;

  int get fps => this.u.smpte.fps;
  set fps(int value) => this.u.smpte.fps = value;

  int get dummy => this.u.smpte.dummy;
  set dummy(int value) => this.u.smpte.dummy = value;

  Array<Uint8> get pad => this.u.smpte.pad;
  set pad(Array<Uint8> value) => this.u.smpte.pad = value;
}

/// {@category struct}
@Packed(1)
sealed class _MMTIME__u_e__Union__midi_e__Struct extends Struct {
  @Uint32()
  external int songptrpos;
}

extension MMTIME__u_e__Union_Extension_1 on MMTIME {
  int get songptrpos => this.u.midi.songptrpos;
  set songptrpos(int value) => this.u.midi.songptrpos = value;
}

extension MMTIME_Extension on MMTIME {
  int get ms => this.u.ms;
  set ms(int value) => this.u.ms = value;

  int get sample => this.u.sample;
  set sample(int value) => this.u.sample = value;

  int get cb => this.u.cb;
  set cb(int value) => this.u.cb = value;

  int get ticks => this.u.ticks;
  set ticks(int value) => this.u.ticks = value;

  _MMTIME__u_e__Union__smpte_e__Struct get smpte => this.u.smpte;
  set smpte(_MMTIME__u_e__Union__smpte_e__Struct value) => this.u.smpte = value;

  _MMTIME__u_e__Union__midi_e__Struct get midi => this.u.midi;
  set midi(_MMTIME__u_e__Union__midi_e__Struct value) => this.u.midi = value;
}

/// Contains information about the capabilities of a modem.
///
/// {@category struct}
base class MODEMDEVCAPS extends Struct {
  @Uint32()
  external int dwActualSize;

  @Uint32()
  external int dwRequiredSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwModemProviderVersion;

  @Uint32()
  external int dwModemManufacturerOffset;

  @Uint32()
  external int dwModemManufacturerSize;

  @Uint32()
  external int dwModemModelOffset;

  @Uint32()
  external int dwModemModelSize;

  @Uint32()
  external int dwModemVersionOffset;

  @Uint32()
  external int dwModemVersionSize;

  @Uint32()
  external int dwDialOptions;

  @Uint32()
  external int dwCallSetupFailTimer;

  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int dwSpeakerVolume;

  @Uint32()
  external int dwSpeakerMode;

  @Uint32()
  external int dwModemOptions;

  @Uint32()
  external int dwMaxDTERate;

  @Uint32()
  external int dwMaxDCERate;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> abVariablePortion;
}

/// Contains information about a modem's configuration.
///
/// {@category struct}
base class MODEMSETTINGS extends Struct {
  @Uint32()
  external int dwActualSize;

  @Uint32()
  external int dwRequiredSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwCallSetupFailTimer;

  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int dwSpeakerVolume;

  @Uint32()
  external int dwSpeakerMode;

  @Uint32()
  external int dwPreferredModemOptions;

  @Uint32()
  external int dwNegotiatedModemOptions;

  @Uint32()
  external int dwNegotiatedDCERate;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> abVariablePortion;
}

/// Contains module data.
///
/// {@category struct}
base class MODLOAD_DATA extends Struct {
  @Uint32()
  external int ssize;

  @Uint32()
  external int ssig;

  external Pointer data;

  @Uint32()
  external int size;

  @Uint32()
  external int flags;
}

/// Contains the module load address, size, and entry point.
///
/// {@category struct}
base class MODULEINFO extends Struct {
  external Pointer lpBaseOfDll;

  @Uint32()
  external int SizeOfImage;

  external Pointer EntryPoint;
}

/// The MONITORINFO structure contains information about a display monitor.
///
/// {@category struct}
base class MONITORINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcMonitor;

  external RECT rcWork;

  @Uint32()
  external int dwFlags;
}

/// The MONITORINFOEX structure contains information about a display
/// monitor.
///
/// {@category struct}
base class MONITORINFOEX extends Struct {
  external MONITORINFO monitorInfo;

  @Array(32)
  external Array<Uint16> _szDevice;

  String get szDevice => _szDevice.toDartString();

  set szDevice(String value) => _szDevice.setString(value);
}

/// Contains information about a mouse event passed to a WH_MOUSE hook
/// procedure, MouseProc.
///
/// {@category struct}
base class MOUSEHOOKSTRUCT extends Struct {
  external POINT pt;

  @IntPtr()
  external int hwnd;

  @Uint32()
  external int wHitTestCode;

  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information about a mouse event passed to a WH_MOUSE hook
/// procedure, MouseProc. This is an extension of the MOUSEHOOKSTRUCT
/// structure that includes information about wheel movement or the use of
/// the X button.
///
/// {@category struct}
base class MOUSEHOOKSTRUCTEX extends Struct {
  external MOUSEHOOKSTRUCT Base;

  @Uint32()
  external int mouseData;
}

/// Contains information about a simulated mouse event.
///
/// {@category struct}
base class MOUSEINPUT extends Struct {
  @Int32()
  external int dx;

  @Int32()
  external int dy;

  @Int32()
  external int mouseData;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int time;

  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information about the mouse's location in screen coordinates.
///
/// {@category struct}
base class MOUSEMOVEPOINT extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;

  @Uint32()
  external int time;

  @IntPtr()
  external int dwExtraInfo;
}

/// Describes a mouse input event in a console INPUT_RECORD structure.
///
/// {@category struct}
base class MOUSE_EVENT_RECORD extends Struct {
  external COORD dwMousePosition;

  @Uint32()
  external int dwButtonState;

  @Uint32()
  external int dwControlKeyState;

  @Uint32()
  external int dwEventFlags;
}

/// Contains message information from a thread's message queue.
///
/// {@category struct}
base class MSG extends Struct {
  @IntPtr()
  external int hwnd;

  @Uint32()
  external int message;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;

  @Uint32()
  external int time;

  external POINT pt;
}

/// Contains information about a low-level mouse input event.
///
/// {@category struct}
base class MSLLHOOKSTRUCT extends Struct {
  external POINT pt;

  @Uint32()
  external int mouseData;

  @Uint32()
  external int flags;

  @Uint32()
  external int time;

  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information that an application can use while processing the
/// WM_NCCALCSIZE message to calculate the size, position, and valid
/// contents of the client area of a window.
///
/// {@category struct}
base class NCCALCSIZE_PARAMS extends Struct {
  @Array(3)
  external Array<RECT> rgrc;

  external Pointer<WINDOWPOS> lppos;
}

/// The NDIS_OBJECT_HEADER structure packages the object type, version, and
/// size information that is required in many NDIS 6.0 structures.
///
/// {@category struct}
base class NDIS_OBJECT_HEADER extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Revision;

  @Uint16()
  external int Size;
}

/// The NET_LUID union is the locally unique identifier (LUID) for a network
/// interface.
///
/// {@category struct}
base class NET_LUID_LH extends Union {
  @Uint64()
  external int Value;

  external _NET_LUID_LH__Info_e__Struct Info;
}

/// {@category struct}
sealed class _NET_LUID_LH__Info_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension NET_LUID_LH_Extension on NET_LUID_LH {
  int get bitfield => this.Info.bitfield;
  set bitfield(int value) => this.Info.bitfield = value;
}

/// The NEWTEXTMETRIC structure contains data that describes a physical
/// font.
///
/// {@category struct}
base class NEWTEXTMETRIC extends Struct {
  @Int32()
  external int tmHeight;

  @Int32()
  external int tmAscent;

  @Int32()
  external int tmDescent;

  @Int32()
  external int tmInternalLeading;

  @Int32()
  external int tmExternalLeading;

  @Int32()
  external int tmAveCharWidth;

  @Int32()
  external int tmMaxCharWidth;

  @Int32()
  external int tmWeight;

  @Int32()
  external int tmOverhang;

  @Int32()
  external int tmDigitizedAspectX;

  @Int32()
  external int tmDigitizedAspectY;

  @Uint16()
  external int tmFirstChar;

  @Uint16()
  external int tmLastChar;

  @Uint16()
  external int tmDefaultChar;

  @Uint16()
  external int tmBreakChar;

  @Uint8()
  external int tmItalic;

  @Uint8()
  external int tmUnderlined;

  @Uint8()
  external int tmStruckOut;

  @Uint8()
  external int tmPitchAndFamily;

  @Uint8()
  external int tmCharSet;

  @Uint32()
  external int ntmFlags;

  @Uint32()
  external int ntmSizeEM;

  @Uint32()
  external int ntmCellHeight;

  @Uint32()
  external int ntmAvgWidth;
}

/// Used to specify values that are used by SetSimulatedProfileInfo to
/// override current internet connection profile values in an RDP Child
/// Session to support the simulation of specific metered internet
/// connection conditions.
///
/// {@category struct}
base class NLM_SIMULATED_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _ProfileName;

  String get ProfileName => _ProfileName.toDartString();

  set ProfileName(String value) => _ProfileName.setString(value);

  @Int32()
  external int cost;

  @Uint32()
  external int UsageInMegabytes;

  @Uint32()
  external int DataLimitInMegabytes;
}

/// Contains the scalable metrics associated with the nonclient area of a
/// nonminimized window. This structure is used by the
/// SPI_GETNONCLIENTMETRICS and SPI_SETNONCLIENTMETRICS actions of the
/// SystemParametersInfo function.
///
/// {@category struct}
base class NONCLIENTMETRICS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int iBorderWidth;

  @Int32()
  external int iScrollWidth;

  @Int32()
  external int iScrollHeight;

  @Int32()
  external int iCaptionWidth;

  @Int32()
  external int iCaptionHeight;

  external LOGFONT lfCaptionFont;

  @Int32()
  external int iSmCaptionWidth;

  @Int32()
  external int iSmCaptionHeight;

  external LOGFONT lfSmCaptionFont;

  @Int32()
  external int iMenuWidth;

  @Int32()
  external int iMenuHeight;

  external LOGFONT lfMenuFont;

  external LOGFONT lfStatusFont;

  external LOGFONT lfMessageFont;

  @Int32()
  external int iPaddedBorderWidth;
}

/// Contains information that the system needs to display notifications in
/// the notification area. Used by Shell_NotifyIcon.
///
/// {@category struct}
base class NOTIFYICONDATA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hWnd;

  @Uint32()
  external int uID;

  @Uint32()
  external int uFlags;

  @Uint32()
  external int uCallbackMessage;

  @IntPtr()
  external int hIcon;

  @Array(128)
  external Array<Uint16> _szTip;

  String get szTip => _szTip.toDartString();

  set szTip(String value) => _szTip.setString(value);

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwStateMask;

  @Array(256)
  external Array<Uint16> _szInfo;

  String get szInfo => _szInfo.toDartString();

  set szInfo(String value) => _szInfo.setString(value);

  external _NOTIFYICONDATAW__Anonymous_e__Union Anonymous;

  @Array(64)
  external Array<Uint16> _szInfoTitle;

  String get szInfoTitle => _szInfoTitle.toDartString();

  set szInfoTitle(String value) => _szInfoTitle.setString(value);

  @Uint32()
  external int dwInfoFlags;

  external GUID guidItem;

  @IntPtr()
  external int hBalloonIcon;
}

/// {@category struct}
sealed class _NOTIFYICONDATAW__Anonymous_e__Union extends Union {
  @Uint32()
  external int uTimeout;

  @Uint32()
  external int uVersion;
}

extension NOTIFYICONDATAW_Extension on NOTIFYICONDATA {
  int get uTimeout => this.Anonymous.uTimeout;
  set uTimeout(int value) => this.Anonymous.uTimeout = value;

  int get uVersion => this.Anonymous.uVersion;
  set uVersion(int value) => this.Anonymous.uVersion = value;
}

/// The OPENCARDNAME structure contains the information that the
/// GetOpenCardName function uses to initialize a smart card Select Card
/// dialog box. Calling SCardUIDlgSelectCard with OPENCARDNAME_EX is
/// recommended over calling GetOpenCardName with OPENCARDNAME. OPENCARDNAME
/// is provided for backward compatibility.
///
/// {@category struct}
base class OPENCARDNAME extends Struct {
  @Uint32()
  external int dwStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hSCardContext;

  external Pointer<Utf16> lpstrGroupNames;

  @Uint32()
  external int nMaxGroupNames;

  external Pointer<Utf16> lpstrCardNames;

  @Uint32()
  external int nMaxCardNames;

  external Pointer<GUID> rgguidInterfaces;

  @Uint32()
  external int cguidInterfaces;

  external Pointer<Utf16> lpstrRdr;

  @Uint32()
  external int nMaxRdr;

  external Pointer<Utf16> lpstrCard;

  @Uint32()
  external int nMaxCard;

  external Pointer<Utf16> lpstrTitle;

  @Uint32()
  external int dwFlags;

  external Pointer pvUserData;

  @Uint32()
  external int dwShareMode;

  @Uint32()
  external int dwPreferredProtocols;

  @Uint32()
  external int dwActiveProtocol;

  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  @IntPtr()
  external int hCardHandle;
}

/// The OPENCARDNAME_EX structure contains the information that the
/// SCardUIDlgSelectCard function uses to initialize a smart card Select
/// Card dialog box.
///
/// {@category struct}
base class OPENCARDNAME_EX extends Struct {
  @Uint32()
  external int dwStructSize;

  @IntPtr()
  external int hSCardContext;

  @IntPtr()
  external int hwndOwner;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> lpstrTitle;

  external Pointer<Utf16> lpstrSearchDesc;

  @IntPtr()
  external int hIcon;

  external Pointer<OPENCARD_SEARCH_CRITERIA> pOpenCardSearchCriteria;

  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  external Pointer pvUserData;

  @Uint32()
  external int dwShareMode;

  @Uint32()
  external int dwPreferredProtocols;

  external Pointer<Utf16> lpstrRdr;

  @Uint32()
  external int nMaxRdr;

  external Pointer<Utf16> lpstrCard;

  @Uint32()
  external int nMaxCard;

  @Uint32()
  external int dwActiveProtocol;

  @IntPtr()
  external int hCardHandle;
}

/// The OPENCARD_SEARCH_CRITERIA structure is used by the
/// SCardUIDlgSelectCard function in order to recognize cards that meet the
/// requirements set forth by the caller. You can, however, call
/// SCardUIDlgSelectCard without using this structure.
///
/// {@category struct}
base class OPENCARD_SEARCH_CRITERIA extends Struct {
  @Uint32()
  external int dwStructSize;

  external Pointer<Utf16> lpstrGroupNames;

  @Uint32()
  external int nMaxGroupNames;

  external Pointer<GUID> rgguidInterfaces;

  @Uint32()
  external int cguidInterfaces;

  external Pointer<Utf16> lpstrCardNames;

  @Uint32()
  external int nMaxCardNames;

  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  external Pointer pvUserData;

  @Uint32()
  external int dwShareMode;

  @Uint32()
  external int dwPreferredProtocols;
}

/// Contains information that the GetOpenFileName and GetSaveFileName
/// functions use to initialize an Open or Save As dialog box. After the
/// user closes the dialog box, the system returns information about the
/// user's selection in this structure.
///
/// {@category struct}
base class OPENFILENAME extends Struct {
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

/// Contains details about the operating system for an assembly or module.
///
/// {@category struct}
base class OSINFO extends Struct {
  @Uint32()
  external int dwOSPlatformId;

  @Uint32()
  external int dwOSMajorVersion;

  @Uint32()
  external int dwOSMinorVersion;
}

/// Contains operating system version information. The information includes
/// major and minor version numbers, a build number, a platform identifier,
/// and information about product suites and the latest Service Pack
/// installed on the system. This structure is used with the GetVersionEx
/// and VerifyVersionInfo functions.
///
/// {@category struct}
base class OSVERSIONINFOEX extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion => _szCSDVersion.toDartString();

  set szCSDVersion(String value) => _szCSDVersion.setString(value);

  @Uint16()
  external int wServicePackMajor;

  @Uint16()
  external int wServicePackMinor;

  @Uint16()
  external int wSuiteMask;

  @Uint8()
  external int wProductType;

  @Uint8()
  external int wReserved;
}

/// Contains operating system version information. The information includes
/// major and minor version numbers, a build number, a platform identifier,
/// and descriptive text about the operating system. This structure is used
/// with the GetVersionEx function.
///
/// {@category struct}
base class OSVERSIONINFO extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion => _szCSDVersion.toDartString();

  set szCSDVersion(String value) => _szCSDVersion.setString(value);
}

/// Contains information used in asynchronous (or overlapped) input and
/// output (I/O).
///
/// {@category struct}
base class OVERLAPPED extends Struct {
  @IntPtr()
  external int Internal;

  @IntPtr()
  external int InternalHigh;

  external _OVERLAPPED__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int hEvent;
}

/// {@category struct}
sealed class _OVERLAPPED__Anonymous_e__Union extends Union {
  external _OVERLAPPED__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  external Pointer Pointer_;
}

/// {@category struct}
sealed class _OVERLAPPED__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int OffsetHigh;
}

extension OVERLAPPED__Anonymous_e__Union_Extension on OVERLAPPED {
  int get Offset => this.Anonymous.Anonymous.Offset;
  set Offset(int value) => this.Anonymous.Anonymous.Offset = value;

  int get OffsetHigh => this.Anonymous.Anonymous.OffsetHigh;
  set OffsetHigh(int value) => this.Anonymous.Anonymous.OffsetHigh = value;
}

extension OVERLAPPED_Extension on OVERLAPPED {
  _OVERLAPPED__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_OVERLAPPED__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  Pointer get Pointer_ => this.Anonymous.Pointer_;
  set Pointer_(Pointer value) => this.Anonymous.Pointer_ = value;
}

/// Contains the information returned by a call to the
/// GetQueuedCompletionStatusEx function.
///
/// {@category struct}
base class OVERLAPPED_ENTRY extends Struct {
  @IntPtr()
  external int lpCompletionKey;

  external Pointer<OVERLAPPED> lpOverlapped;

  @IntPtr()
  external int Internal;

  @Uint32()
  external int dwNumberOfBytesTransferred;
}

/// The PAINTSTRUCT structure contains information for an application. This
/// information can be used to paint the client area of a window owned by
/// that application.
///
/// {@category struct}
base class PAINTSTRUCT extends Struct {
  @IntPtr()
  external int hdc;

  @Int32()
  external int fErase;

  external RECT rcPaint;

  @Int32()
  external int fRestore;

  @Int32()
  external int fIncUpdate;

  @Array(32)
  external Array<Uint8> rgbReserved;
}

/// The PALETTEENTRY structure specifies the color and usage of an entry in
/// a logical palette. A logical palette is defined by a LOGPALETTE
/// structure.
///
/// {@category struct}
base class PALETTEENTRY extends Struct {
  @Uint8()
  external int peRed;

  @Uint8()
  external int peGreen;

  @Uint8()
  external int peBlue;

  @Uint8()
  external int peFlags;
}

/// Contains information needed for transferring a structure element,
/// parameter, or function return value between processes.
///
/// {@category struct}
base class PARAMDESC extends Struct {
  external Pointer<PARAMDESCEX> pparamdescex;

  @Uint16()
  external int wParamFlags;
}

/// Contains information about the default value of a parameter.
///
/// {@category struct}
base class PARAMDESCEX extends Struct {
  @Uint32()
  external int cBytes;

  external VARIANT varDefaultValue;
}

/// Contains performance information.
///
/// {@category struct}
base class PERFORMANCE_INFORMATION extends Struct {
  @Uint32()
  external int cb;

  @IntPtr()
  external int CommitTotal;

  @IntPtr()
  external int CommitLimit;

  @IntPtr()
  external int CommitPeak;

  @IntPtr()
  external int PhysicalTotal;

  @IntPtr()
  external int PhysicalAvailable;

  @IntPtr()
  external int SystemCache;

  @IntPtr()
  external int KernelTotal;

  @IntPtr()
  external int KernelPaged;

  @IntPtr()
  external int KernelNonpaged;

  @IntPtr()
  external int PageSize;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int ProcessCount;

  @Uint32()
  external int ThreadCount;
}

/// Contains a handle and text description corresponding to a physical
/// monitor.
///
/// {@category struct}
@Packed(1)
base class PHYSICAL_MONITOR extends Struct {
  @IntPtr()
  external int hPhysicalMonitor;

  @Array(128)
  external Array<Uint16> _szPhysicalMonitorDescription;

  String get szPhysicalMonitorDescription =>
      _szPhysicalMonitorDescription.toDartString();

  set szPhysicalMonitorDescription(String value) =>
      _szPhysicalMonitorDescription.setString(value);
}

/// The POINT structure defines the x- and y-coordinates of a point.
///
/// {@category struct}
base class POINT extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;
}

/// Contains basic pointer information common to all pointer types.
/// Applications can retrieve this information using the GetPointerInfo,
/// GetPointerFrameInfo, GetPointerInfoHistory and
/// GetPointerFrameInfoHistory functions.
///
/// {@category struct}
base class POINTER_INFO extends Struct {
  @Int32()
  external int pointerType;

  @Uint32()
  external int pointerId;

  @Uint32()
  external int frameId;

  @Uint32()
  external int pointerFlags;

  @IntPtr()
  external int sourceDevice;

  @IntPtr()
  external int hwndTarget;

  external POINT ptPixelLocation;

  external POINT ptHimetricLocation;

  external POINT ptPixelLocationRaw;

  external POINT ptHimetricLocationRaw;

  @Uint32()
  external int dwTime;

  @Uint32()
  external int historyCount;

  @Int32()
  external int InputData;

  @Uint32()
  external int dwKeyStates;

  @Uint64()
  external int PerformanceCount;

  @Int32()
  external int ButtonChangeType;
}

/// Defines basic pen information common to all pointer types.
///
/// {@category struct}
base class POINTER_PEN_INFO extends Struct {
  external POINTER_INFO pointerInfo;

  @Uint32()
  external int penFlags;

  @Uint32()
  external int penMask;

  @Uint32()
  external int pressure;

  @Uint32()
  external int rotation;

  @Int32()
  external int tiltX;

  @Int32()
  external int tiltY;
}

/// Defines basic touch information common to all pointer types.
///
/// {@category struct}
base class POINTER_TOUCH_INFO extends Struct {
  external POINTER_INFO pointerInfo;

  @Uint32()
  external int touchFlags;

  @Uint32()
  external int touchMask;

  external RECT rcContact;

  external RECT rcContactRaw;

  @Uint32()
  external int orientation;

  @Uint32()
  external int pressure;
}

/// The POINTL structure defines the x- and y-coordinates of a point.
///
/// {@category struct}
base class POINTL extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;
}

/// The POINTS structure defines the x- and y-coordinates of a point.
///
/// {@category struct}
base class POINTS extends Struct {
  @Int16()
  external int x;

  @Int16()
  external int y;
}

/// The POLYTEXT structure describes how the PolyTextOut function should
/// draw a string of text.
///
/// {@category struct}
base class POLYTEXT extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;

  @Uint32()
  external int n;

  external Pointer<Utf16> lpstr;

  @Uint32()
  external int uiFlags;

  external RECT rcl;

  external Pointer<Int32> pdx;
}

/// The PORT_INFO_1 structure identifies a supported printer port.
///
/// {@category struct}
base class PORT_INFO_1 extends Struct {
  external Pointer<Utf16> pName;
}

/// The PORT_INFO_2 structure identifies a supported printer port.
///
/// {@category struct}
base class PORT_INFO_2 extends Struct {
  external Pointer<Utf16> pPortName;

  external Pointer<Utf16> pMonitorName;

  external Pointer<Utf16> pDescription;

  @Uint32()
  external int fPortType;

  @Uint32()
  external int Reserved;
}

/// Sent with a power setting event and contains data about the specific
/// change.
///
/// {@category struct}
base class POWERBROADCAST_SETTING extends Struct {
  external GUID PowerSetting;

  @Uint32()
  external int DataLength;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;
}

/// The PRINTER_DEFAULTS structure specifies the default data type,
/// environment, initialization data, and access rights for a printer.
///
/// {@category struct}
base class PRINTER_DEFAULTS extends Struct {
  external Pointer<Utf16> pDatatype;

  external Pointer<DEVMODE> pDevMode;

  @Uint32()
  external int DesiredAccess;
}

/// The PRINTER_INFO_1 structure specifies general printer information.
///
/// {@category struct}
base class PRINTER_INFO_1 extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> pDescription;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pComment;
}

/// The PRINTER_INFO_2 structure specifies detailed printer information.
///
/// {@category struct}
base class PRINTER_INFO_2 extends Struct {
  external Pointer<Utf16> pServerName;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pShareName;

  external Pointer<Utf16> pPortName;

  external Pointer<Utf16> pDriverName;

  external Pointer<Utf16> pComment;

  external Pointer<Utf16> pLocation;

  external Pointer<DEVMODE> pDevMode;

  external Pointer<Utf16> pSepFile;

  external Pointer<Utf16> pPrintProcessor;

  external Pointer<Utf16> pDatatype;

  external Pointer<Utf16> pParameters;

  external Pointer pSecurityDescriptor;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int Priority;

  @Uint32()
  external int DefaultPriority;

  @Uint32()
  external int StartTime;

  @Uint32()
  external int UntilTime;

  @Uint32()
  external int Status;

  @Uint32()
  external int cJobs;

  @Uint32()
  external int AveragePPM;
}

/// The PRINTER_INFO_3 structure specifies printer security information.
///
/// {@category struct}
base class PRINTER_INFO_3 extends Struct {
  external Pointer pSecurityDescriptor;
}

/// The PRINTER_INFO_4 structure specifies general printer information. The
/// structure can be used to retrieve minimal printer information on a call
/// to EnumPrinters. Such a call is a fast and easy way to retrieve the
/// names and attributes of all locally installed printers on a system and
/// all remote printer connections that a user has established.
///
/// {@category struct}
base class PRINTER_INFO_4 extends Struct {
  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pServerName;

  @Uint32()
  external int Attributes;
}

/// The PRINTER_INFO_5 structure specifies detailed printer information.
///
/// {@category struct}
base class PRINTER_INFO_5 extends Struct {
  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pPortName;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int DeviceNotSelectedTimeout;

  @Uint32()
  external int TransmissionRetryTimeout;
}

/// The PRINTER_INFO_6 specifies the status value of a printer.
///
/// {@category struct}
base class PRINTER_INFO_6 extends Struct {
  @Uint32()
  external int dwStatus;
}

/// The PRINTER_NOTIFY_INFO structure contains printer information returned
/// by the FindNextPrinterChangeNotification function. The function returns
/// this information after a wait operation on a printer change notification
/// object has been satisfied.
///
/// {@category struct}
base class PRINTER_NOTIFY_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Count;

  @Array.variableWithVariableDimension(1)
  external Array<PRINTER_NOTIFY_INFO_DATA> aData;
}

/// The PRINTER_NOTIFY_INFO_DATA structure identifies a job or printer
/// information field and provides the current data for that field.
///
/// {@category struct}
base class PRINTER_NOTIFY_INFO_DATA extends Struct {
  @Uint16()
  external int Type;

  @Uint16()
  external int Field;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int Id;

  external _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union NotifyData;
}

/// {@category struct}
sealed class _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union extends Union {
  @Array(2)
  external Array<Uint32> adwData;

  external _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct Data;
}

/// {@category struct}
sealed class _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct
    extends Struct {
  @Uint32()
  external int cbBuf;

  external Pointer pBuf;
}

extension PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union_Extension
    on PRINTER_NOTIFY_INFO_DATA {
  int get cbBuf => this.NotifyData.Data.cbBuf;
  set cbBuf(int value) => this.NotifyData.Data.cbBuf = value;

  Pointer get pBuf => this.NotifyData.Data.pBuf;
  set pBuf(Pointer value) => this.NotifyData.Data.pBuf = value;
}

extension PRINTER_NOTIFY_INFO_DATA_Extension on PRINTER_NOTIFY_INFO_DATA {
  Array<Uint32> get adwData => this.NotifyData.adwData;
  set adwData(Array<Uint32> value) => this.NotifyData.adwData = value;

  _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct get Data =>
      this.NotifyData.Data;
  set Data(
    _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct value,
  ) => this.NotifyData.Data = value;
}

/// Represents printer options.
///
/// {@category struct}
base class PRINTER_OPTIONS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int dwFlags;
}

/// Contains the execution context of the printer driver that calls
/// GetPrintExecutionData.
///
/// {@category struct}
base class PRINT_EXECUTION_DATA extends Struct {
  @Int32()
  external int context;

  @Uint32()
  external int clientAppPID;
}

/// Contains information about a heap element. The HeapWalk function uses a
/// PROCESS_HEAP_ENTRY structure to enumerate the elements of a heap.
///
/// {@category struct}
base class PROCESS_HEAP_ENTRY extends Struct {
  external Pointer lpData;

  @Uint32()
  external int cbData;

  @Uint8()
  external int cbOverhead;

  @Uint8()
  external int iRegionIndex;

  @Uint16()
  external int wFlags;

  external _PROCESS_HEAP_ENTRY__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _PROCESS_HEAP_ENTRY__Anonymous_e__Union extends Union {
  external _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct Block;

  external _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct Region;
}

/// {@category struct}
sealed class _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct
    extends Struct {
  @IntPtr()
  external int hMem;

  @Array(3)
  external Array<Uint32> dwReserved;
}

extension PROCESS_HEAP_ENTRY__Anonymous_e__Union_Extension
    on PROCESS_HEAP_ENTRY {
  int get hMem => this.Anonymous.Block.hMem;
  set hMem(int value) => this.Anonymous.Block.hMem = value;

  Array<Uint32> get dwReserved => this.Anonymous.Block.dwReserved;
  set dwReserved(Array<Uint32> value) =>
      this.Anonymous.Block.dwReserved = value;
}

/// {@category struct}
sealed class _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct
    extends Struct {
  @Uint32()
  external int dwCommittedSize;

  @Uint32()
  external int dwUnCommittedSize;

  external Pointer lpFirstBlock;

  external Pointer lpLastBlock;
}

extension PROCESS_HEAP_ENTRY__Anonymous_e__Union_Extension_1
    on PROCESS_HEAP_ENTRY {
  int get dwCommittedSize => this.Anonymous.Region.dwCommittedSize;
  set dwCommittedSize(int value) =>
      this.Anonymous.Region.dwCommittedSize = value;

  int get dwUnCommittedSize => this.Anonymous.Region.dwUnCommittedSize;
  set dwUnCommittedSize(int value) =>
      this.Anonymous.Region.dwUnCommittedSize = value;

  Pointer get lpFirstBlock => this.Anonymous.Region.lpFirstBlock;
  set lpFirstBlock(Pointer value) => this.Anonymous.Region.lpFirstBlock = value;

  Pointer get lpLastBlock => this.Anonymous.Region.lpLastBlock;
  set lpLastBlock(Pointer value) => this.Anonymous.Region.lpLastBlock = value;
}

extension PROCESS_HEAP_ENTRY_Extension on PROCESS_HEAP_ENTRY {
  _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct get Block =>
      this.Anonymous.Block;
  set Block(_PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct value) =>
      this.Anonymous.Block = value;

  _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct get Region =>
      this.Anonymous.Region;
  set Region(_PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct value) =>
      this.Anonymous.Region = value;
}

/// Contains information about a newly created process and its primary
/// thread. It is used with the CreateProcess, CreateProcessAsUser,
/// CreateProcessWithLogonW, or CreateProcessWithTokenW function.
///
/// {@category struct}
base class PROCESS_INFORMATION extends Struct {
  @IntPtr()
  external int hProcess;

  @IntPtr()
  external int hThread;

  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwThreadId;
}

/// The PROPSPEC structure is used by many of the methods of
/// IPropertyStorage to specify a property either by its property identifier
/// (ID) or the associated string name.
///
/// {@category struct}
base class PROPSPEC extends Struct {
  @Uint32()
  external int ulKind;

  external _PROPSPEC__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _PROPSPEC__Anonymous_e__Union extends Union {
  @Uint32()
  external int propid;

  external Pointer<Utf16> lpwstr;
}

extension PROPSPEC_Extension on PROPSPEC {
  int get propid => this.Anonymous.propid;
  set propid(int value) => this.Anonymous.propid = value;

  Pointer<Utf16> get lpwstr => this.Anonymous.lpwstr;
  set lpwstr(Pointer<Utf16> value) => this.Anonymous.lpwstr = value;
}

/// The protoent structure contains the name and protocol numbers that
/// correspond to a given protocol name. Applications must never attempt to
/// modify this structure or to free any of its components. Furthermore,
/// only one copy of this structure is allocated per thread, and therefore,
/// the application should copy any information it needs before issuing any
/// other Windows Sockets function calls.
///
/// {@category struct}
base class PROTOENT extends Struct {
  external Pointer<Utf8> p_name;

  external Pointer<Pointer<Int8>> p_aliases;

  @Int16()
  external int p_proto;
}

/// Contains configuration information for an installed service. It is used
/// by the QueryServiceConfig function.
///
/// {@category struct}
base class QUERY_SERVICE_CONFIG extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwStartType;

  @Uint32()
  external int dwErrorControl;

  external Pointer<Utf16> lpBinaryPathName;

  external Pointer<Utf16> lpLoadOrderGroup;

  @Uint32()
  external int dwTagId;

  external Pointer<Utf16> lpDependencies;

  external Pointer<Utf16> lpServiceStartName;

  external Pointer<Utf16> lpDisplayName;
}

/// Contains information about the lock status of a service control manager
/// database. It is used by the QueryServiceLockStatus function.
///
/// {@category struct}
base class QUERY_SERVICE_LOCK_STATUS extends Struct {
  @Uint32()
  external int fIsLocked;

  external Pointer<Utf16> lpLockOwner;

  @Uint32()
  external int dwLockDuration;
}

/// Describes the format of the raw input from a Human Interface Device
/// (HID).
///
/// {@category struct}
base class RAWHID extends Struct {
  @Uint32()
  external int dwSizeHid;

  @Uint32()
  external int dwCount;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> bRawData;
}

/// Contains the raw input from a device.
///
/// {@category struct}
base class RAWINPUT extends Struct {
  external RAWINPUTHEADER header;

  external _RAWINPUT__data_e__Union data;
}

/// {@category struct}
sealed class _RAWINPUT__data_e__Union extends Union {
  external RAWMOUSE mouse;

  external RAWKEYBOARD keyboard;

  external RAWHID hid;
}

extension RAWINPUT_Extension on RAWINPUT {
  RAWMOUSE get mouse => this.data.mouse;
  set mouse(RAWMOUSE value) => this.data.mouse = value;

  RAWKEYBOARD get keyboard => this.data.keyboard;
  set keyboard(RAWKEYBOARD value) => this.data.keyboard = value;

  RAWHID get hid => this.data.hid;
  set hid(RAWHID value) => this.data.hid = value;
}

/// Defines information for the raw input devices.
///
/// {@category struct}
base class RAWINPUTDEVICE extends Struct {
  @Uint16()
  external int usUsagePage;

  @Uint16()
  external int usUsage;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndTarget;
}

/// Contains information about a raw input device.
///
/// {@category struct}
base class RAWINPUTDEVICELIST extends Struct {
  @IntPtr()
  external int hDevice;

  @Uint32()
  external int dwType;
}

/// Contains the header information that is part of the raw input data.
///
/// {@category struct}
base class RAWINPUTHEADER extends Struct {
  @Uint32()
  external int dwType;

  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hDevice;

  @IntPtr()
  external int wParam;
}

/// Contains information about the state of the keyboard.
///
/// {@category struct}
base class RAWKEYBOARD extends Struct {
  @Uint16()
  external int MakeCode;

  @Uint16()
  external int Flags;

  @Uint16()
  external int Reserved;

  @Uint16()
  external int VKey;

  @Uint32()
  external int Message;

  @Uint32()
  external int ExtraInformation;
}

/// Contains information about the state of the mouse.
///
/// {@category struct}
base class RAWMOUSE extends Struct {
  @Uint16()
  external int usFlags;

  external _RAWMOUSE__Anonymous_e__Union Anonymous;

  @Uint32()
  external int ulRawButtons;

  @Int32()
  external int lLastX;

  @Int32()
  external int lLastY;

  @Uint32()
  external int ulExtraInformation;
}

/// {@category struct}
sealed class _RAWMOUSE__Anonymous_e__Union extends Union {
  @Uint32()
  external int ulButtons;

  external _RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category struct}
sealed class _RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int usButtonFlags;

  @Uint16()
  external int usButtonData;
}

extension RAWMOUSE__Anonymous_e__Union_Extension on RAWMOUSE {
  int get usButtonFlags => this.Anonymous.Anonymous.usButtonFlags;
  set usButtonFlags(int value) =>
      this.Anonymous.Anonymous.usButtonFlags = value;

  int get usButtonData => this.Anonymous.Anonymous.usButtonData;
  set usButtonData(int value) => this.Anonymous.Anonymous.usButtonData = value;
}

extension RAWMOUSE_Extension on RAWMOUSE {
  int get ulButtons => this.Anonymous.ulButtons;
  set ulButtons(int value) => this.Anonymous.ulButtons = value;

  _RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// The RECT structure defines a rectangle by the coordinates of its
/// upper-left and lower-right corners.
///
/// {@category struct}
base class RECT extends Struct {
  @Int32()
  external int left;

  @Int32()
  external int top;

  @Int32()
  external int right;

  @Int32()
  external int bottom;
}

/// The RECTL structure defines a rectangle by the coordinates of its
/// upper-left and lower-right corners.
///
/// {@category struct}
base class RECTL extends Struct {
  @Int32()
  external int left;

  @Int32()
  external int top;

  @Int32()
  external int right;

  @Int32()
  external int bottom;
}

/// The RGBQUAD structure describes a color consisting of relative
/// intensities of red, green, and blue.
///
/// {@category struct}
base class RGBQUAD extends Struct {
  @Uint8()
  external int rgbBlue;

  @Uint8()
  external int rgbGreen;

  @Uint8()
  external int rgbRed;

  @Uint8()
  external int rgbReserved;
}

/// Represents a safe array.
///
/// {@category struct}
base class SAFEARRAY extends Struct {
  @Uint16()
  external int cDims;

  @Uint16()
  external int fFeatures;

  @Uint32()
  external int cbElements;

  @Uint32()
  external int cLocks;

  external Pointer pvData;

  @Array.variableWithVariableDimension(1)
  external Array<SAFEARRAYBOUND> rgsabound;
}

/// Represents the bounds of one dimension of the array.
///
/// {@category struct}
base class SAFEARRAYBOUND extends Struct {
  @Uint32()
  external int cElements;

  @Int32()
  external int lLbound;
}

/// The SCARD_ATRMASK structure is used by the SCardLocateCardsByATR
/// function to locate cards.
///
/// {@category struct}
base class SCARD_ATRMASK extends Struct {
  @Uint32()
  external int cbAtr;

  @Array(36)
  external Array<Uint8> rgbAtr;

  @Array(36)
  external Array<Uint8> rgbMask;
}

/// The SCARD_IO_REQUEST structure begins a protocol control information
/// structure. Any protocol-specific information then immediately follows
/// this structure. The entire length of the structure must be aligned with
/// the underlying hardware architecture word size. For example, in Win32
/// the length of any PCI information must be a multiple of four bytes so
/// that it aligns on a 32-bit boundary.
///
/// {@category struct}
base class SCARD_IO_REQUEST extends Struct {
  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int cbPciLength;
}

/// The SCARD_READERSTATE structure is used by functions for tracking smart
/// cards within readers.
///
/// {@category struct}
base class SCARD_READERSTATE extends Struct {
  external Pointer<Utf16> szReader;

  external Pointer pvUserData;

  @Uint32()
  external int dwCurrentState;

  @Uint32()
  external int dwEventState;

  @Uint32()
  external int cbAtr;

  @Array(36)
  external Array<Uint8> rgbAtr;
}

/// The SCROLLBARINFO structure contains scroll bar information.
///
/// {@category struct}
base class SCROLLBARINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcScrollBar;

  @Int32()
  external int dxyLineButton;

  @Int32()
  external int xyThumbTop;

  @Int32()
  external int xyThumbBottom;

  @Int32()
  external int reserved;

  @Array(6)
  external Array<Uint32> rgstate;
}

/// The SCROLLINFO structure contains scroll bar parameters to be set by the
/// SetScrollInfo function (or SBM_SETSCROLLINFO message), or retrieved by
/// the GetScrollInfo function (or SBM_GETSCROLLINFO message)
///
/// {@category struct}
base class SCROLLINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @Int32()
  external int nMin;

  @Int32()
  external int nMax;

  @Uint32()
  external int nPage;

  @Int32()
  external int nPos;

  @Int32()
  external int nTrackPos;
}

/// Represents an action that the service control manager can perform.
///
/// {@category struct}
base class SC_ACTION extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Delay;
}

/// The SDP_ELEMENT_DATA structure stores SDP element data.
///
/// {@category struct}
base class SDP_ELEMENT_DATA extends Struct {
  @Int32()
  external int type;

  @Int32()
  external int specificType;

  external _SDP_ELEMENT_DATA__data_e__Union data;
}

/// {@category struct}
sealed class _SDP_ELEMENT_DATA__data_e__Union extends Union {
  external SDP_LARGE_INTEGER_16 int128;

  @Int64()
  external int int64;

  @Int32()
  external int int32;

  @Int16()
  external int int16;

  @Uint8()
  external int int8;

  external SDP_ULARGE_INTEGER_16 uint128;

  @Uint64()
  external int uint64;

  @Uint32()
  external int uint32;

  @Uint16()
  external int uint16;

  @Uint8()
  external int uint8;

  @Uint8()
  external int booleanVal;

  external GUID uuid128;

  @Uint32()
  external int uuid32;

  @Uint16()
  external int uuid16;

  external _SDP_ELEMENT_DATA__data_e__Union__string_e__Struct string;

  external _SDP_ELEMENT_DATA__data_e__Union__url_e__Struct url;

  external _SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct sequence;

  external _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct alternative;
}

/// {@category struct}
sealed class _SDP_ELEMENT_DATA__data_e__Union__string_e__Struct extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.string.value;
  set value(Pointer<Uint8> value) => this.data.string.value = value;

  int get length => this.data.string.length;
  set length(int value) => this.data.string.length = value;
}

/// {@category struct}
sealed class _SDP_ELEMENT_DATA__data_e__Union__url_e__Struct extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension_1 on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.url.value;
  set value(Pointer<Uint8> value) => this.data.url.value = value;

  int get length => this.data.url.length;
  set length(int value) => this.data.url.length = value;
}

/// {@category struct}
sealed class _SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct
    extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension_2 on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.sequence.value;
  set value(Pointer<Uint8> value) => this.data.sequence.value = value;

  int get length => this.data.sequence.length;
  set length(int value) => this.data.sequence.length = value;
}

/// {@category struct}
sealed class _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct
    extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension_3 on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.alternative.value;
  set value(Pointer<Uint8> value) => this.data.alternative.value = value;

  int get length => this.data.alternative.length;
  set length(int value) => this.data.alternative.length = value;
}

extension SDP_ELEMENT_DATA_Extension on SDP_ELEMENT_DATA {
  SDP_LARGE_INTEGER_16 get int128 => this.data.int128;
  set int128(SDP_LARGE_INTEGER_16 value) => this.data.int128 = value;

  int get int64 => this.data.int64;
  set int64(int value) => this.data.int64 = value;

  int get int32 => this.data.int32;
  set int32(int value) => this.data.int32 = value;

  int get int16 => this.data.int16;
  set int16(int value) => this.data.int16 = value;

  int get int8 => this.data.int8;
  set int8(int value) => this.data.int8 = value;

  SDP_ULARGE_INTEGER_16 get uint128 => this.data.uint128;
  set uint128(SDP_ULARGE_INTEGER_16 value) => this.data.uint128 = value;

  int get uint64 => this.data.uint64;
  set uint64(int value) => this.data.uint64 = value;

  int get uint32 => this.data.uint32;
  set uint32(int value) => this.data.uint32 = value;

  int get uint16 => this.data.uint16;
  set uint16(int value) => this.data.uint16 = value;

  int get uint8 => this.data.uint8;
  set uint8(int value) => this.data.uint8 = value;

  int get booleanVal => this.data.booleanVal;
  set booleanVal(int value) => this.data.booleanVal = value;

  GUID get uuid128 => this.data.uuid128;
  set uuid128(GUID value) => this.data.uuid128 = value;

  int get uuid32 => this.data.uuid32;
  set uuid32(int value) => this.data.uuid32 = value;

  int get uuid16 => this.data.uuid16;
  set uuid16(int value) => this.data.uuid16 = value;

  _SDP_ELEMENT_DATA__data_e__Union__string_e__Struct get string =>
      this.data.string;
  set string(_SDP_ELEMENT_DATA__data_e__Union__string_e__Struct value) =>
      this.data.string = value;

  _SDP_ELEMENT_DATA__data_e__Union__url_e__Struct get url => this.data.url;
  set url(_SDP_ELEMENT_DATA__data_e__Union__url_e__Struct value) =>
      this.data.url = value;

  _SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct get sequence =>
      this.data.sequence;
  set sequence(_SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct value) =>
      this.data.sequence = value;

  _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct get alternative =>
      this.data.alternative;
  set alternative(
    _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct value,
  ) => this.data.alternative = value;
}

/// The union member for a 128-bit integer.
///
/// {@category struct}
base class SDP_LARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

/// The SDP_STRING_TYPE_DATA structure stores information about SDP string
/// types.
///
/// {@category struct}
base class SDP_STRING_TYPE_DATA extends Struct {
  @Uint16()
  external int encoding;

  @Uint16()
  external int mibeNum;

  @Uint16()
  external int attributeId;
}

/// The union member for a 128-bit unsigned integer.
///
/// {@category struct}
base class SDP_ULARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Uint64()
  external int HighPart;
}

/// The SECURITY_ATTRIBUTES structure contains the security descriptor for
/// an object and specifies whether the handle retrieved by specifying this
/// structure is inheritable. This structure provides security settings for
/// objects created by various functions, such as CreateFile, CreatePipe,
/// CreateProcess, RegCreateKeyEx, or RegSaveKeyEx.
///
/// {@category struct}
base class SECURITY_ATTRIBUTES extends Struct {
  @Uint32()
  external int nLength;

  external Pointer lpSecurityDescriptor;

  @Int32()
  external int bInheritHandle;
}

/// The SECURITY_DESCRIPTOR structure contains the security information
/// associated with an object. Applications use this structure to set and
/// query an object's security status.
///
/// {@category struct}
base class SECURITY_DESCRIPTOR extends Struct {
  @Uint8()
  external int Revision;

  @Uint8()
  external int Sbz1;

  @Uint16()
  external int Control;

  external Pointer Owner;

  external Pointer Group;

  external Pointer<ACL> Sacl;

  external Pointer<ACL> Dacl;
}

/// The servent structure is used to store or return the name and service
/// number for a given service name.
///
/// {@category struct}
base class SERVENT extends Struct {
  external Pointer<Utf8> s_name;

  external Pointer<Pointer<Int8>> s_aliases;

  external Pointer<Utf8> s_proto;

  @Int16()
  external int s_port;
}

/// Contains service control parameters.
///
/// {@category struct}
base class SERVICE_CONTROL_STATUS_REASON_PARAMS extends Struct {
  @Uint32()
  external int dwReason;

  external Pointer<Utf16> pszComment;

  external SERVICE_STATUS_PROCESS ServiceStatus;
}

/// Contains the delayed auto-start setting of an auto-start service.
///
/// {@category struct}
base class SERVICE_DELAYED_AUTO_START_INFO extends Struct {
  @Int32()
  external int fDelayedAutostart;
}

/// Contains a service description.
///
/// {@category struct}
base class SERVICE_DESCRIPTION extends Struct {
  external Pointer<Utf16> lpDescription;
}

/// Represents the action the service controller should take on each failure
/// of a service. A service is considered failed when it terminates without
/// reporting a status of SERVICE_STOPPED to the service controller.
///
/// {@category struct}
base class SERVICE_FAILURE_ACTIONS extends Struct {
  @Uint32()
  external int dwResetPeriod;

  external Pointer<Utf16> lpRebootMsg;

  external Pointer<Utf16> lpCommand;

  @Uint32()
  external int cActions;

  external Pointer<SC_ACTION> lpsaActions;
}

/// Contains the failure actions flag setting of a service. This setting
/// determines when failure actions are to be executed.
///
/// {@category struct}
base class SERVICE_FAILURE_ACTIONS_FLAG extends Struct {
  @Int32()
  external int fFailureActionsOnNonCrashFailures;
}

/// Indicates a service protection type.
///
/// {@category struct}
base class SERVICE_LAUNCH_PROTECTED_INFO extends Struct {
  @Uint32()
  external int dwLaunchProtected;
}

/// Represents service status notification information. It is used by the
/// NotifyServiceStatusChange function.
///
/// {@category struct}
base class SERVICE_NOTIFY_2 extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<NativeFunction<PFN_SC_NOTIFY_CALLBACK>> pfnNotifyCallback;

  external Pointer pContext;

  @Uint32()
  external int dwNotificationStatus;

  external SERVICE_STATUS_PROCESS ServiceStatus;

  @Uint32()
  external int dwNotificationTriggered;

  external Pointer<Utf16> pszServiceNames;
}

/// Represents the preferred node on which to run a service.
///
/// {@category struct}
base class SERVICE_PREFERRED_NODE_INFO extends Struct {
  @Uint16()
  external int usPreferredNode;

  @Uint8()
  external int fDelete;
}

/// Contains preshutdown settings.
///
/// {@category struct}
base class SERVICE_PRESHUTDOWN_INFO extends Struct {
  @Uint32()
  external int dwPreshutdownTimeout;
}

/// Represents the required privileges for a service.
///
/// {@category struct}
base class SERVICE_REQUIRED_PRIVILEGES_INFO extends Struct {
  external Pointer<Utf16> pmszRequiredPrivileges;
}

/// Represents a service security identifier (SID).
///
/// {@category struct}
base class SERVICE_SID_INFO extends Struct {
  @Uint32()
  external int dwServiceSidType;
}

/// Contains status information for a service. The ControlService,
/// EnumDependentServices, EnumServicesStatus, and QueryServiceStatus
/// functions use this structure. A service uses this structure in the
/// SetServiceStatus function to report its current status to the service
/// control manager.
///
/// {@category struct}
base class SERVICE_STATUS extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwCurrentState;

  @Uint32()
  external int dwControlsAccepted;

  @Uint32()
  external int dwWin32ExitCode;

  @Uint32()
  external int dwServiceSpecificExitCode;

  @Uint32()
  external int dwCheckPoint;

  @Uint32()
  external int dwWaitHint;
}

/// Contains process status information for a service. The ControlServiceEx,
/// EnumServicesStatusEx, NotifyServiceStatusChange, and
/// QueryServiceStatusEx functions use this structure.
///
/// {@category struct}
base class SERVICE_STATUS_PROCESS extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwCurrentState;

  @Uint32()
  external int dwControlsAccepted;

  @Uint32()
  external int dwWin32ExitCode;

  @Uint32()
  external int dwServiceSpecificExitCode;

  @Uint32()
  external int dwCheckPoint;

  @Uint32()
  external int dwWaitHint;

  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwServiceFlags;
}

/// Specifies the ServiceMain function for a service that can run in the
/// calling process. It is used by the StartServiceCtrlDispatcher function.
///
/// {@category struct}
base class SERVICE_TABLE_ENTRY extends Struct {
  external Pointer<Utf16> lpServiceName;

  external Pointer<NativeFunction<LPSERVICE_MAIN_FUNCTION>> lpServiceProc;
}

/// Contains system time change settings.
///
/// {@category struct}
base class SERVICE_TIMECHANGE_INFO extends Struct {
  @Int64()
  external int liNewTime;

  @Int64()
  external int liOldTime;
}

/// Represents a service trigger event. This structure is used by the
/// SERVICE_TRIGGER_INFO structure.
///
/// {@category struct}
base class SERVICE_TRIGGER extends Struct {
  @Uint32()
  external int dwTriggerType;

  @Uint32()
  external int dwAction;

  external Pointer<GUID> pTriggerSubtype;

  @Uint32()
  external int cDataItems;

  external Pointer<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM> pDataItems;
}

/// Contains trigger event information for a service. This structure is used
/// by the ChangeServiceConfig2 and QueryServiceConfig2 functions.
///
/// {@category struct}
base class SERVICE_TRIGGER_INFO extends Struct {
  @Uint32()
  external int cTriggers;

  external Pointer<SERVICE_TRIGGER> pTriggers;

  external Pointer<Uint8> pReserved;
}

/// Contains trigger-specific data for a service trigger event. This
/// structure is used by the SERVICE_TRIGGER structure for
/// SERVICE_TRIGGER_TYPE_CUSTOM, SERVICE_TRIGGER_TYPE_DEVICE_ARRIVAL,
/// SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT, or
/// SERVICE_TRIGGER_TYPE_NETWORK_ENDPOINT trigger events.
///
/// {@category struct}
base class SERVICE_TRIGGER_SPECIFIC_DATA_ITEM extends Struct {
  @Uint32()
  external int dwDataType;

  @Uint32()
  external int cbData;

  external Pointer<Uint8> pData;
}

/// Contains information used by ShellExecuteEx.
///
/// {@category struct}
base class SHELLEXECUTEINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf16> lpVerb;

  external Pointer<Utf16> lpFile;

  external Pointer<Utf16> lpParameters;

  external Pointer<Utf16> lpDirectory;

  @Int32()
  external int nShow;

  @IntPtr()
  external int hInstApp;

  external Pointer lpIDList;

  external Pointer<Utf16> lpClass;

  @IntPtr()
  external int hkeyClass;

  @Uint32()
  external int dwHotKey;

  external _SHELLEXECUTEINFOW__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int hProcess;
}

/// {@category struct}
sealed class _SHELLEXECUTEINFOW__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int hMonitor;
}

extension SHELLEXECUTEINFOW_Extension on SHELLEXECUTEINFO {
  int get hIcon => this.Anonymous.hIcon;
  set hIcon(int value) => this.Anonymous.hIcon = value;

  int get hMonitor => this.Anonymous.hMonitor;
  set hMonitor(int value) => this.Anonymous.hMonitor = value;
}

/// Defines Shell item resource.
///
/// {@category struct}
base class SHELL_ITEM_RESOURCE extends Struct {
  external GUID guidType;

  @Array(260)
  external Array<Uint16> _szName;

  String get szName => _szName.toDartString();

  set szName(String value) => _szName.setString(value);
}

/// Contains information about a file object.
///
/// {@category struct}
base class SHFILEINFO extends Struct {
  @IntPtr()
  external int hIcon;

  @Int32()
  external int iIcon;

  @Uint32()
  external int dwAttributes;

  @Array(260)
  external Array<Uint16> _szDisplayName;

  String get szDisplayName => _szDisplayName.toDartString();

  set szDisplayName(String value) => _szDisplayName.setString(value);

  @Array(80)
  external Array<Uint16> _szTypeName;

  String get szTypeName => _szTypeName.toDartString();

  set szTypeName(String value) => _szTypeName.setString(value);
}

/// Contains information that the SHFileOperation function uses to perform
/// file operations.
///
/// {@category struct}
base class SHFILEOPSTRUCT extends Struct {
  @IntPtr()
  external int hwnd;

  @Uint32()
  external int wFunc;

  external Pointer<Utf16> pFrom;

  external Pointer<Utf16> pTo;

  @Uint16()
  external int fFlags;

  @Int32()
  external int fAnyOperationsAborted;

  external Pointer hNameMappings;

  external Pointer<Utf16> lpszProgressTitle;
}

/// Defines an item identifier.
///
/// {@category struct}
@Packed(1)
base class SHITEMID extends Struct {
  @Uint16()
  external int cb;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> abID;
}

/// Contains the size and item count information retrieved by the
/// SHQueryRecycleBin function.
///
/// {@category struct}
base class SHQUERYRBINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int64()
  external int i64Size;

  @Int64()
  external int i64NumItems;
}

/// The SIZE structure defines the width and height of a rectangle.
///
/// {@category struct}
base class SIZE extends Struct {
  @Int32()
  external int cx;

  @Int32()
  external int cy;
}

/// Defines the coordinates of the upper left and lower right corners of a
/// rectangle.
///
/// {@category struct}
base class SMALL_RECT extends Struct {
  @Int16()
  external int Left;

  @Int16()
  external int Top;

  @Int16()
  external int Right;

  @Int16()
  external int Bottom;
}

/// The SOCKADDR structure stores socket address information.
///
/// {@category struct}
base class SOCKADDR extends Struct {
  @Uint16()
  external int sa_family;

  @Array(14)
  external Array<Uint8> sa_data;
}

/// The SOCKADDR_BTH structure is used in conjunction with Bluetooth socket
/// operations, defined by address family AF_BTH.
///
/// {@category struct}
@Packed(1)
base class SOCKADDR_BTH extends Struct {
  @Uint16()
  external int addressFamily;

  @Uint64()
  external int btAddr;

  external GUID serviceClassId;

  @Uint32()
  external int port;
}

/// The SOCKET_ADDRESS structure stores protocol-specific address
/// information.
///
/// {@category struct}
base class SOCKET_ADDRESS extends Struct {
  external Pointer<SOCKADDR> lpSockaddr;

  @Int32()
  external int iSockaddrLength;
}

/// Identifies an authentication service that a server is willing to use to
/// communicate to a client.
///
/// {@category struct}
base class SOLE_AUTHENTICATION_SERVICE extends Struct {
  @Uint32()
  external int dwAuthnSvc;

  @Uint32()
  external int dwAuthzSvc;

  external Pointer<Utf16> pPrincipalName;

  @Int32()
  external int hr;
}

/// SPEVENT contains information about an event. Events are passed from the
/// text-to-speech (TTS) or speech recognition (SR) engines or audio devices
/// back to applications.
///
/// {@category struct}
base class SPEVENT extends Struct {
  @Int32()
  external int bitfield;

  @Uint32()
  external int ulStreamNum;

  @Uint64()
  external int ullAudioStreamOffset;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;
}

/// SPEVENTSOURCEINFO is used by ISpEventSource::GetInfo to pass back
/// information about the event source. Event sources contain a queue, which
/// hold events until a caller retrieves the events using ::GetEvents.
///
/// {@category struct}
base class SPEVENTSOURCEINFO extends Struct {
  @Uint64()
  external int ullEventInterest;

  @Uint64()
  external int ullQueuedInterest;

  @Uint32()
  external int ulCount;
}

/// SPVOICESTATUS contains voice status information. This structure is
/// returned by ISpVoice::GetStatus.
///
/// {@category struct}
base class SPVOICESTATUS extends Struct {
  @Uint32()
  external int ulCurrentStream;

  @Uint32()
  external int ulLastStreamQueued;

  @Int32()
  external int hrLastResult;

  @Uint32()
  external int dwRunningState;

  @Uint32()
  external int ulInputWordPos;

  @Uint32()
  external int ulInputWordLen;

  @Uint32()
  external int ulInputSentPos;

  @Uint32()
  external int ulInputSentLen;

  @Int32()
  external int lBookmarkId;

  @Uint16()
  external int PhonemeId;

  @Int32()
  external int VisemeId;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;
}

/// An SP_DEVICE_INTERFACE_DATA structure defines a device interface in a
/// device information set.
///
/// {@category struct}
base class SP_DEVICE_INTERFACE_DATA extends Struct {
  @Uint32()
  external int cbSize;

  external GUID InterfaceClassGuid;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int Reserved;
}

/// An SP_DEVICE_INTERFACE_DATA structure defines a device interface in a
/// device information set.
///
/// {@category struct}
base class SP_DEVICE_INTERFACE_DETAIL_DATA_ extends Struct {
  @Uint32()
  external int cbSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _DevicePath;

  String get DevicePath => _DevicePath.toDartString();

  set DevicePath(String value) => _DevicePath.setString(value);
}

/// An SP_DEVINFO_DATA structure defines a device instance that is a member
/// of a device information set.
///
/// {@category struct}
base class SP_DEVINFO_DATA extends Struct {
  @Uint32()
  external int cbSize;

  external GUID ClassGuid;

  @Uint32()
  external int DevInst;

  @IntPtr()
  external int Reserved;
}

/// Specifies the window station, desktop, standard handles, and attributes
/// for a new process. It is used with the CreateProcess and
/// CreateProcessAsUser functions.
///
/// {@category struct}
base class STARTUPINFOEX extends Struct {
  external STARTUPINFO StartupInfo;

  external Pointer lpAttributeList;
}

/// Specifies the window station, desktop, standard handles, and appearance
/// of the main window for a process at creation time.
///
/// {@category struct}
base class STARTUPINFO extends Struct {
  @Uint32()
  external int cb;

  external Pointer<Utf16> lpReserved;

  external Pointer<Utf16> lpDesktop;

  external Pointer<Utf16> lpTitle;

  @Uint32()
  external int dwX;

  @Uint32()
  external int dwY;

  @Uint32()
  external int dwXSize;

  @Uint32()
  external int dwYSize;

  @Uint32()
  external int dwXCountChars;

  @Uint32()
  external int dwYCountChars;

  @Uint32()
  external int dwFillAttribute;

  @Uint32()
  external int dwFlags;

  @Uint16()
  external int wShowWindow;

  @Uint16()
  external int cbReserved2;

  external Pointer<Uint8> lpReserved2;

  @IntPtr()
  external int hStdInput;

  @IntPtr()
  external int hStdOutput;

  @IntPtr()
  external int hStdError;
}

/// The STATPROPSETSTG structure contains information about a property set.
///
/// {@category struct}
base class STATPROPSETSTG extends Struct {
  external GUID fmtid;

  external GUID clsid;

  @Uint32()
  external int grfFlags;

  external FILETIME mtime;

  external FILETIME ctime;

  external FILETIME atime;

  @Uint32()
  external int dwOSVersion;
}

/// The STATPROPSTG structure contains data about a single property in a
/// property set. This data is the property ID and type tag, and the
/// optional string name that may be associated with the property.
///
/// {@category struct}
base class STATPROPSTG extends Struct {
  external Pointer<Utf16> lpwstrName;

  @Uint32()
  external int propid;

  @Uint16()
  external int vt;
}

/// The STATSTG structure contains statistical data about an open storage,
/// stream, or byte-array object. This structure is used in the
/// IEnumSTATSTG, ILockBytes, IStorage, and IStream interfaces.
///
/// {@category struct}
base class STATSTG extends Struct {
  external Pointer<Utf16> pwcsName;

  @Uint32()
  external int type;

  @Uint64()
  external int cbSize;

  external FILETIME mtime;

  external FILETIME ctime;

  external FILETIME atime;

  @Uint32()
  external int grfMode;

  @Int32()
  external int grfLocksSupported;

  external GUID clsid;

  @Uint32()
  external int grfStateBits;

  @Uint32()
  external int reserved;
}

/// Contains information about a device. This structure is used by the
/// IOCTL_STORAGE_GET_DEVICE_NUMBER control code.
///
/// {@category struct}
base class STORAGE_DEVICE_NUMBER extends Struct {
  @Uint32()
  external int DeviceType;

  @Uint32()
  external int DeviceNumber;

  @Uint32()
  external int PartitionNumber;
}

/// Contains strings returned from the IShellFolder interface methods.
///
/// {@category struct}
base class STRRET extends Struct {
  @Uint32()
  external int uType;

  external _STRRET__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _STRRET__Anonymous_e__Union extends Union {
  external Pointer<Utf16> pOleStr;

  @Uint32()
  external int uOffset;

  @Array(260)
  external Array<Uint8> cStr;
}

extension STRRET_Extension on STRRET {
  Pointer<Utf16> get pOleStr => this.Anonymous.pOleStr;
  set pOleStr(Pointer<Utf16> value) => this.Anonymous.pOleStr = value;

  int get uOffset => this.Anonymous.uOffset;
  set uOffset(int value) => this.Anonymous.uOffset = value;

  Array<Uint8> get cStr => this.Anonymous.cStr;
  set cStr(Array<Uint8> value) => this.Anonymous.cStr = value;
}

/// Contains the styles for a window.
///
/// {@category struct}
base class STYLESTRUCT extends Struct {
  @Uint32()
  external int styleOld;

  @Uint32()
  external int styleNew;
}

/// Contains symbol information.
///
/// {@category struct}
base class SYMBOL_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int TypeIndex;

  @Array(2)
  external Array<Uint64> Reserved;

  @Uint32()
  external int Index;

  @Uint32()
  external int Size;

  @Uint64()
  external int ModBase;

  @Uint32()
  external int Flags;

  @Uint64()
  external int Value;

  @Uint64()
  external int Address;

  @Uint32()
  external int Register;

  @Uint32()
  external int Scope;

  @Uint32()
  external int Tag;

  @Uint32()
  external int NameLen;

  @Uint32()
  external int MaxNameLen;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _Name;

  String get Name => _Name.toDartString();

  set Name(String value) => _Name.setString(value);
}

/// Specifies a date and time, using individual members for the month, day,
/// year, weekday, hour, minute, second, and millisecond. The time is either
/// in coordinated universal time (UTC) or local time, depending on the
/// function that is being called.
///
/// {@category struct}
base class SYSTEMTIME extends Struct {
  @Uint16()
  external int wYear;

  @Uint16()
  external int wMonth;

  @Uint16()
  external int wDayOfWeek;

  @Uint16()
  external int wDay;

  @Uint16()
  external int wHour;

  @Uint16()
  external int wMinute;

  @Uint16()
  external int wSecond;

  @Uint16()
  external int wMilliseconds;
}

/// The SYSTEM_BASIC_INFORMATION structure contains information about the
/// number of processors present in the system.
///
/// {@category struct}
base class SYSTEM_BASIC_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> Reserved1;

  @Array(4)
  external Array<Pointer> Reserved2;

  @Int8()
  external int NumberOfProcessors;
}

/// Contains information about the current state of the system battery.
///
/// {@category struct}
base class SYSTEM_BATTERY_STATE extends Struct {
  @Uint8()
  external int AcOnLine;

  @Uint8()
  external int BatteryPresent;

  @Uint8()
  external int Charging;

  @Uint8()
  external int Discharging;

  @Array(3)
  external Array<Uint8> Spare1;

  @Uint8()
  external int Tag;

  @Uint32()
  external int MaxCapacity;

  @Uint32()
  external int RemainingCapacity;

  @Uint32()
  external int Rate;

  @Uint32()
  external int EstimatedTime;

  @Uint32()
  external int DefaultAlert1;

  @Uint32()
  external int DefaultAlert2;
}

/// The SYSTEM_CODEINTEGRITY_INFORMATION structure contains information
/// about the code integrity policy.
///
/// {@category struct}
base class SYSTEM_CODEINTEGRITY_INFORMATION extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int CodeIntegrityOptions;
}

/// {@category struct}
base class SYSTEM_EXCEPTION_INFORMATION extends Struct {
  @Array(16)
  external Array<Uint8> Reserved1;
}

/// Contains information about the current computer system. This includes
/// the architecture and type of the processor, the number of processors in
/// the system, the page size, and other such information.
///
/// {@category struct}
base class SYSTEM_INFO extends Struct {
  external _SYSTEM_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwPageSize;

  external Pointer lpMinimumApplicationAddress;

  external Pointer lpMaximumApplicationAddress;

  @IntPtr()
  external int dwActiveProcessorMask;

  @Uint32()
  external int dwNumberOfProcessors;

  @Uint32()
  external int dwProcessorType;

  @Uint32()
  external int dwAllocationGranularity;

  @Uint16()
  external int wProcessorLevel;

  @Uint16()
  external int wProcessorRevision;
}

/// {@category struct}
sealed class _SYSTEM_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwOemId;

  external _SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category struct}
sealed class _SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int wProcessorArchitecture;

  @Uint16()
  external int wReserved;
}

extension SYSTEM_INFO__Anonymous_e__Union_Extension on SYSTEM_INFO {
  int get wProcessorArchitecture =>
      this.Anonymous.Anonymous.wProcessorArchitecture;
  set wProcessorArchitecture(int value) =>
      this.Anonymous.Anonymous.wProcessorArchitecture = value;

  int get wReserved => this.Anonymous.Anonymous.wReserved;
  set wReserved(int value) => this.Anonymous.Anonymous.wReserved = value;
}

extension SYSTEM_INFO_Extension on SYSTEM_INFO {
  int get dwOemId => this.Anonymous.dwOemId;
  set dwOemId(int value) => this.Anonymous.dwOemId = value;

  _SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
base class SYSTEM_INTERRUPT_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> Reserved1;
}

/// Describes the relationship between the specified processor set. This
/// structure is used with the GetLogicalProcessorInformation function.
///
/// {@category struct}
base class SYSTEM_LOGICAL_PROCESSOR_INFORMATION extends Struct {
  @IntPtr()
  external int ProcessorMask;

  @Int32()
  external int Relationship;

  external _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union Anonymous;
}

/// {@category struct}
sealed class _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union
    extends Union {
  external _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
  ProcessorCore;

  external _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
  NumaNode;

  external CACHE_DESCRIPTOR Cache;

  @Array(2)
  external Array<Uint64> Reserved;
}

/// {@category struct}
sealed class _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
    extends Struct {
  @Uint8()
  external int Flags;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get Flags => this.Anonymous.ProcessorCore.Flags;
  set Flags(int value) => this.Anonymous.ProcessorCore.Flags = value;
}

/// {@category struct}
sealed class _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
    extends Struct {
  @Uint32()
  external int NodeNumber;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union_Extension_1
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get NodeNumber => this.Anonymous.NumaNode.NodeNumber;
  set NodeNumber(int value) => this.Anonymous.NumaNode.NodeNumber = value;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
  get ProcessorCore => this.Anonymous.ProcessorCore;
  set ProcessorCore(
    _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
    value,
  ) => this.Anonymous.ProcessorCore = value;

  _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
  get NumaNode => this.Anonymous.NumaNode;
  set NumaNode(
    _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
    value,
  ) => this.Anonymous.NumaNode = value;

  CACHE_DESCRIPTOR get Cache => this.Anonymous.Cache;
  set Cache(CACHE_DESCRIPTOR value) => this.Anonymous.Cache = value;

  Array<Uint64> get Reserved => this.Anonymous.Reserved;
  set Reserved(Array<Uint64> value) => this.Anonymous.Reserved = value;
}

/// {@category struct}
base class SYSTEM_LOOKASIDE_INFORMATION extends Struct {
  @Array(32)
  external Array<Uint8> Reserved1;
}

/// {@category struct}
base class SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Array(312)
  external Array<Uint8> Reserved1;
}

/// {@category struct}
base class SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  external Array<Pointer> Reserved1;

  @Array(3)
  external Array<Uint32> Reserved2;
}

/// Contains information about the power status of the system.
///
/// {@category struct}
base class SYSTEM_POWER_STATUS extends Struct {
  @Uint8()
  external int ACLineStatus;

  @Uint8()
  external int BatteryFlag;

  @Uint8()
  external int BatteryLifePercent;

  @Uint8()
  external int SystemStatusFlag;

  @Uint32()
  external int BatteryLifeTime;

  @Uint32()
  external int BatteryFullLifeTime;
}

/// The SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION structure contains
/// performance information for a processor.
///
/// {@category struct}
base class SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION extends Struct {
  @Int64()
  external int IdleTime;

  @Int64()
  external int KernelTime;

  @Int64()
  external int UserTime;

  @Array(2)
  external Array<Int64> Reserved1;

  @Uint32()
  external int Reserved2;
}

/// The SYSTEM_PROCESS_INFORMATION structure contains information about a
/// system process.
///
/// {@category struct}
base class SYSTEM_PROCESS_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int NumberOfThreads;

  @Array(48)
  external Array<Uint8> Reserved1;

  external UNICODE_STRING ImageName;

  @Int32()
  external int BasePriority;

  @IntPtr()
  external int UniqueProcessId;

  external Pointer Reserved2;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int SessionId;

  external Pointer Reserved3;

  @IntPtr()
  external int PeakVirtualSize;

  @IntPtr()
  external int VirtualSize;

  @Uint32()
  external int Reserved4;

  @IntPtr()
  external int PeakWorkingSetSize;

  @IntPtr()
  external int WorkingSetSize;

  external Pointer Reserved5;

  @IntPtr()
  external int QuotaPagedPoolUsage;

  external Pointer Reserved6;

  @IntPtr()
  external int QuotaNonPagedPoolUsage;

  @IntPtr()
  external int PagefileUsage;

  @IntPtr()
  external int PeakPagefileUsage;

  @IntPtr()
  external int PrivatePageCount;

  @Array(6)
  external Array<Int64> Reserved7;
}

/// {@category struct}
base class SYSTEM_REGISTRY_QUOTA_INFORMATION extends Struct {
  @Uint32()
  external int RegistryQuotaAllowed;

  @Uint32()
  external int RegistryQuotaUsed;

  external Pointer Reserved1;
}

/// The SYSTEM_THREAD_INFORMATION structure contains information about a
/// thread running on a system.
///
/// {@category struct}
base class SYSTEM_THREAD_INFORMATION extends Struct {
  @Array(3)
  external Array<Int64> Reserved1;

  @Uint32()
  external int Reserved2;

  external Pointer StartAddress;

  external CLIENT_ID ClientId;

  @Int32()
  external int Priority;

  @Int32()
  external int BasePriority;

  @Uint32()
  external int Reserved3;

  @Uint32()
  external int ThreadState;

  @Uint32()
  external int WaitReason;
}

/// {@category struct}
base class SYSTEM_TIMEOFDAY_INFORMATION extends Struct {
  @Array(48)
  external Array<Uint8> Reserved1;
}

/// The SdpAttributeRange structure is used in a Bluetooth query to
/// constrain the set of attributes to return in the query.
///
/// {@category struct}
base class SdpAttributeRange extends Struct {
  @Uint16()
  external int minAttribute;

  @Uint16()
  external int maxAttribute;
}

/// The SdpQueryUuid structure facilitates searching for UUIDs.
///
/// {@category struct}
base class SdpQueryUuid extends Struct {
  external SdpQueryUuidUnion u;

  @Uint16()
  external int uuidType;
}

/// The SdpQueryUuidUnion union contains the UUID on which to perform an SDP
/// query. Used in conjunction with the SdpQueryUuid structure.
///
/// {@category struct}
base class SdpQueryUuidUnion extends Union {
  external GUID uuid128;

  @Uint32()
  external int uuid32;

  @Uint16()
  external int uuid16;
}

/// The TASKDIALOGCONFIG structure contains information used to display a
/// task dialog. The TaskDialogIndirect function uses this structure.
///
/// {@category struct}
@Packed(1)
base class TASKDIALOGCONFIG extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  @Int32()
  external int dwFlags;

  @Int32()
  external int dwCommonButtons;

  external Pointer<Utf16> pszWindowTitle;

  external _TASKDIALOGCONFIG__Anonymous1_e__Union Anonymous1;

  external Pointer<Utf16> pszMainInstruction;

  external Pointer<Utf16> pszContent;

  @Uint32()
  external int cButtons;

  external Pointer<TASKDIALOG_BUTTON> pButtons;

  @Int32()
  external int nDefaultButton;

  @Uint32()
  external int cRadioButtons;

  external Pointer<TASKDIALOG_BUTTON> pRadioButtons;

  @Int32()
  external int nDefaultRadioButton;

  external Pointer<Utf16> pszVerificationText;

  external Pointer<Utf16> pszExpandedInformation;

  external Pointer<Utf16> pszExpandedControlText;

  external Pointer<Utf16> pszCollapsedControlText;

  external _TASKDIALOGCONFIG__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> pszFooter;

  external Pointer<NativeFunction<PFTASKDIALOGCALLBACK>> pfCallback;

  @IntPtr()
  external int lpCallbackData;

  @Uint32()
  external int cxWidth;
}

/// {@category struct}
@Packed(1)
sealed class _TASKDIALOGCONFIG__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int hMainIcon;

  external Pointer<Utf16> pszMainIcon;
}

extension TASKDIALOGCONFIG_Extension on TASKDIALOGCONFIG {
  int get hMainIcon => this.Anonymous1.hMainIcon;
  set hMainIcon(int value) => this.Anonymous1.hMainIcon = value;

  Pointer<Utf16> get pszMainIcon => this.Anonymous1.pszMainIcon;
  set pszMainIcon(Pointer<Utf16> value) => this.Anonymous1.pszMainIcon = value;
}

/// {@category struct}
@Packed(1)
sealed class _TASKDIALOGCONFIG__Anonymous2_e__Union extends Union {
  @IntPtr()
  external int hFooterIcon;

  external Pointer<Utf16> pszFooterIcon;
}

extension TASKDIALOGCONFIG_Extension_1 on TASKDIALOGCONFIG {
  int get hFooterIcon => this.Anonymous2.hFooterIcon;
  set hFooterIcon(int value) => this.Anonymous2.hFooterIcon = value;

  Pointer<Utf16> get pszFooterIcon => this.Anonymous2.pszFooterIcon;
  set pszFooterIcon(Pointer<Utf16> value) =>
      this.Anonymous2.pszFooterIcon = value;
}

/// The TASKDIALOG_BUTTON structure contains information used to display a
/// button in a task dialog. The TASKDIALOGCONFIG structure uses this
/// structure.
///
/// {@category struct}
@Packed(1)
base class TASKDIALOG_BUTTON extends Struct {
  @Int32()
  external int nButtonID;

  external Pointer<Utf16> pszButtonText;
}

/// The TEXTMETRIC structure contains basic information about a physical
/// font. All sizes are specified in logical units; that is, they depend on
/// the current mapping mode of the display context.
///
/// {@category struct}
base class TEXTMETRIC extends Struct {
  @Int32()
  external int tmHeight;

  @Int32()
  external int tmAscent;

  @Int32()
  external int tmDescent;

  @Int32()
  external int tmInternalLeading;

  @Int32()
  external int tmExternalLeading;

  @Int32()
  external int tmAveCharWidth;

  @Int32()
  external int tmMaxCharWidth;

  @Int32()
  external int tmWeight;

  @Int32()
  external int tmOverhang;

  @Int32()
  external int tmDigitizedAspectX;

  @Int32()
  external int tmDigitizedAspectY;

  @Uint16()
  external int tmFirstChar;

  @Uint16()
  external int tmLastChar;

  @Uint16()
  external int tmDefaultChar;

  @Uint16()
  external int tmBreakChar;

  @Uint8()
  external int tmItalic;

  @Uint8()
  external int tmUnderlined;

  @Uint8()
  external int tmStruckOut;

  @Uint8()
  external int tmPitchAndFamily;

  @Uint8()
  external int tmCharSet;
}

/// The timeval structure is used to specify a time interval. It is
/// associated with the Berkeley Software Distribution (BSD) Time.h header
/// file.
///
/// {@category struct}
base class TIMEVAL extends Struct {
  @Int32()
  external int tv_sec;

  @Int32()
  external int tv_usec;
}

/// Contains title bar information.
///
/// {@category struct}
base class TITLEBARINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcTitleBar;

  @Array(6)
  external Array<Uint32> rgstate;
}

/// Expands on the information described in the TITLEBARINFO structure by
/// including the coordinates of each element of the title bar. This
/// structure is sent with the WM_GETTITLEBARINFOEX message.
///
/// {@category struct}
base class TITLEBARINFOEX extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcTitleBar;

  @Array(6)
  external Array<Uint32> rgstate;

  @Array(6)
  external Array<RECT> rgrect;
}

/// The TOKEN_APPCONTAINER_INFORMATION structure specifies all the
/// information in a token that is necessary for an app container.
///
/// {@category struct}
base class TOKEN_APPCONTAINER_INFORMATION extends Struct {
  external Pointer TokenAppContainer;
}

/// Encapsulates data for touch input.
///
/// {@category struct}
base class TOUCHINPUT extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;

  @IntPtr()
  external int hSource;

  @Uint32()
  external int dwID;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwTime;

  @IntPtr()
  external int dwExtraInfo;

  @Uint32()
  external int cxContact;

  @Uint32()
  external int cyContact;
}

/// Contains hardware input details that can be used to predict touch
/// targets and help compensate for hardware latency when processing touch
/// and gesture input that contains distance and velocity data.
///
/// {@category struct}
base class TOUCHPREDICTIONPARAMETERS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwLatency;

  @Uint32()
  external int dwSampleTime;

  @Uint32()
  external int bUseHWTimeStamp;
}

/// Contains extended parameters for the TrackPopupMenuEx function.
///
/// {@category struct}
base class TPMPARAMS extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcExclude;
}

/// Contains attributes of a type.
///
/// {@category struct}
base class TYPEATTR extends Struct {
  external GUID guid;

  @Uint32()
  external int lcid;

  @Uint32()
  external int dwReserved;

  @Int32()
  external int memidConstructor;

  @Int32()
  external int memidDestructor;

  external Pointer<Utf16> lpstrSchema;

  @Uint32()
  external int cbSizeInstance;

  @Int32()
  external int typekind;

  @Uint16()
  external int cFuncs;

  @Uint16()
  external int cVars;

  @Uint16()
  external int cImplTypes;

  @Uint16()
  external int cbSizeVft;

  @Uint16()
  external int cbAlignment;

  @Uint16()
  external int wTypeFlags;

  @Uint16()
  external int wMajorVerNum;

  @Uint16()
  external int wMinorVerNum;

  external TYPEDESC tdescAlias;

  external IDLDESC idldescType;
}

/// Describes the type of a variable, the return type of a function, or the
/// type of a function parameter.
///
/// {@category struct}
base class TYPEDESC extends Struct {
  external _TYPEDESC__Anonymous_e__Union Anonymous;

  @Uint16()
  external int vt;
}

/// {@category struct}
sealed class _TYPEDESC__Anonymous_e__Union extends Union {
  external Pointer<TYPEDESC> lptdesc;

  external Pointer<ARRAYDESC> lpadesc;

  @Uint32()
  external int hreftype;
}

extension TYPEDESC_Extension on TYPEDESC {
  Pointer<TYPEDESC> get lptdesc => this.Anonymous.lptdesc;
  set lptdesc(Pointer<TYPEDESC> value) => this.Anonymous.lptdesc = value;

  Pointer<ARRAYDESC> get lpadesc => this.Anonymous.lpadesc;
  set lpadesc(Pointer<ARRAYDESC> value) => this.Anonymous.lpadesc = value;

  int get hreftype => this.Anonymous.hreftype;
  set hreftype(int value) => this.Anonymous.hreftype = value;
}

/// The UNICODE_STRING structure is used by various Local Security Authority
/// (LSA) functions to specify a Unicode string.
///
/// {@category struct}
base class UNICODE_STRING extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  external Pointer<Utf16> Buffer;
}

/// Defines a data type used by the Desktop Window Manager (DWM) APIs. It
/// represents a generic ratio and is used for different purposes and units
/// even within a single API.
///
/// {@category struct}
@Packed(1)
base class UNSIGNED_RATIO extends Struct {
  @Uint32()
  external int uiNumerator;

  @Uint32()
  external int uiDenominator;
}

/// Used by UpdateLayeredWindowIndirect to provide position, size, shape,
/// content, and translucency information for a layered window.
///
/// {@category struct}
base class UPDATELAYEREDWINDOWINFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hdcDst;

  external Pointer<POINT> pptDst;

  external Pointer<SIZE> psize;

  @IntPtr()
  external int hdcSrc;

  external Pointer<POINT> pptSrc;

  @Uint32()
  external int crKey;

  external Pointer<BLENDFUNCTION> pblend;

  @Uint32()
  external int dwFlags;

  external Pointer<RECT> prcDirty;
}

/// Contains information about a registry value. The RegQueryMultipleValues
/// function uses this structure.
///
/// {@category struct}
base class VALENT extends Struct {
  external Pointer<Utf16> ve_valuename;

  @Uint32()
  external int ve_valuelen;

  @IntPtr()
  external int ve_valueptr;

  @Uint32()
  external int ve_type;
}

/// Describes a variable, constant, or data member.
///
/// {@category struct}
base class VARDESC extends Struct {
  @Int32()
  external int memid;

  external Pointer<Utf16> lpstrSchema;

  external _VARDESC__Anonymous_e__Union Anonymous;

  external ELEMDESC elemdescVar;

  @Uint16()
  external int wVarFlags;

  @Int32()
  external int varkind;
}

/// {@category struct}
sealed class _VARDESC__Anonymous_e__Union extends Union {
  @Uint32()
  external int oInst;

  external Pointer<VARIANT> lpvarValue;
}

extension VARDESC_Extension on VARDESC {
  int get oInst => this.Anonymous.oInst;
  set oInst(int value) => this.Anonymous.oInst = value;

  Pointer<VARIANT> get lpvarValue => this.Anonymous.lpvarValue;
  set lpvarValue(Pointer<VARIANT> value) => this.Anonymous.lpvarValue = value;
}

/// Represents a physical location on a disk. It is the output buffer for
/// the IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS control code.
///
/// {@category struct}
base class VOLUME_DISK_EXTENTS extends Struct {
  @Uint32()
  external int NumberOfDiskExtents;

  @Array.variableWithVariableDimension(1)
  external Array<DISK_EXTENT> Extents;
}

/// Contains version information for a file. This information is language
/// and code page independent.
///
/// {@category struct}
base class VS_FIXEDFILEINFO extends Struct {
  @Uint32()
  external int dwSignature;

  @Uint32()
  external int dwStrucVersion;

  @Uint32()
  external int dwFileVersionMS;

  @Uint32()
  external int dwFileVersionLS;

  @Uint32()
  external int dwProductVersionMS;

  @Uint32()
  external int dwProductVersionLS;

  @Uint32()
  external int dwFileFlagsMask;

  @Uint32()
  external int dwFileFlags;

  @Int32()
  external int dwFileOS;

  @Int32()
  external int dwFileType;

  @Int32()
  external int dwFileSubtype;

  @Uint32()
  external int dwFileDateMS;

  @Uint32()
  external int dwFileDateLS;
}

/// The WAVEFORMATEX structure defines the format of waveform-audio data.
/// Only format information common to all waveform-audio data formats is
/// included in this structure. For formats that require additional
/// information, this structure is included as the first member in another
/// structure, along with the additional information.
///
/// {@category struct}
@Packed(1)
base class WAVEFORMATEX extends Struct {
  @Uint16()
  external int wFormatTag;

  @Uint16()
  external int nChannels;

  @Uint32()
  external int nSamplesPerSec;

  @Uint32()
  external int nAvgBytesPerSec;

  @Uint16()
  external int nBlockAlign;

  @Uint16()
  external int wBitsPerSample;

  @Uint16()
  external int cbSize;
}

/// The WAVEFORMATEXTENSIBLE structure defines the format of waveform-audio
/// data for formats having more than two channels or higher sample
/// resolutions than allowed by WAVEFORMATEX. It can also be used to define
/// any format that can be defined by WAVEFORMATEX.
///
/// {@category struct}
@Packed(1)
base class WAVEFORMATEXTENSIBLE extends Struct {
  external WAVEFORMATEX Format;

  external _WAVEFORMATEXTENSIBLE__Samples_e__Union Samples;

  @Uint32()
  external int dwChannelMask;

  external GUID SubFormat;
}

/// {@category struct}
@Packed(1)
sealed class _WAVEFORMATEXTENSIBLE__Samples_e__Union extends Union {
  @Uint16()
  external int wValidBitsPerSample;

  @Uint16()
  external int wSamplesPerBlock;

  @Uint16()
  external int wReserved;
}

extension WAVEFORMATEXTENSIBLE_Extension on WAVEFORMATEXTENSIBLE {
  int get wValidBitsPerSample => this.Samples.wValidBitsPerSample;
  set wValidBitsPerSample(int value) =>
      this.Samples.wValidBitsPerSample = value;

  int get wSamplesPerBlock => this.Samples.wSamplesPerBlock;
  set wSamplesPerBlock(int value) => this.Samples.wSamplesPerBlock = value;

  int get wReserved => this.Samples.wReserved;
  set wReserved(int value) => this.Samples.wReserved = value;
}

/// The WAVEHDR structure defines the header used to identify a
/// waveform-audio buffer.
///
/// {@category struct}
@Packed(1)
base class WAVEHDR extends Struct {
  external Pointer<Utf8> lpData;

  @Uint32()
  external int dwBufferLength;

  @Uint32()
  external int dwBytesRecorded;

  @IntPtr()
  external int dwUser;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwLoops;

  external Pointer<WAVEHDR> lpNext;

  @IntPtr()
  external int reserved;
}

/// The WAVEINCAPS structure describes the capabilities of a waveform-audio
/// input device.
///
/// {@category struct}
@Packed(1)
base class WAVEINCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;
}

/// The WAVEOUTCAPS structure describes the capabilities of a waveform-audio
/// output device.
///
/// {@category struct}
@Packed(1)
base class WAVEOUTCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;

  @Uint32()
  external int dwSupport;
}

/// Contains information about the file that is found by the FindFirstFile,
/// FindFirstFileEx, or FindNextFile function.
///
/// {@category struct}
base class WIN32_FIND_DATA extends Struct {
  @Uint32()
  external int dwFileAttributes;

  external FILETIME ftCreationTime;

  external FILETIME ftLastAccessTime;

  external FILETIME ftLastWriteTime;

  @Uint32()
  external int nFileSizeHigh;

  @Uint32()
  external int nFileSizeLow;

  @Uint32()
  external int dwReserved0;

  @Uint32()
  external int dwReserved1;

  @Array(260)
  external Array<Uint16> _cFileName;

  String get cFileName => _cFileName.toDartString();

  set cFileName(String value) => _cFileName.setString(value);

  @Array(14)
  external Array<Uint16> _cAlternateFileName;

  String get cAlternateFileName => _cAlternateFileName.toDartString();

  set cAlternateFileName(String value) => _cAlternateFileName.setString(value);
}

/// Contains window information.
///
/// {@category struct}
base class WINDOWINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcWindow;

  external RECT rcClient;

  @Uint32()
  external int dwStyle;

  @Uint32()
  external int dwExStyle;

  @Uint32()
  external int dwWindowStatus;

  @Uint32()
  external int cxWindowBorders;

  @Uint32()
  external int cyWindowBorders;

  @Uint16()
  external int atomWindowType;

  @Uint16()
  external int wCreatorVersion;
}

/// Contains information about the placement of a window on the screen.
///
/// {@category struct}
base class WINDOWPLACEMENT extends Struct {
  @Uint32()
  external int length;

  @Uint32()
  external int flags;

  @Uint32()
  external int showCmd;

  external POINT ptMinPosition;

  external POINT ptMaxPosition;

  external RECT rcNormalPosition;
}

/// Contains information about the size and position of a window.
///
/// {@category struct}
base class WINDOWPOS extends Struct {
  @IntPtr()
  external int hwnd;

  @IntPtr()
  external int hwndInsertAfter;

  @Int32()
  external int x;

  @Int32()
  external int y;

  @Int32()
  external int cx;

  @Int32()
  external int cy;

  @Uint32()
  external int flags;
}

/// Describes a change in the size of the console screen buffer.
///
/// {@category struct}
base class WINDOW_BUFFER_SIZE_RECORD extends Struct {
  external COORD dwSize;
}

/// The WLAN_ASSOCIATION_ATTRIBUTES structure contains association
/// attributes for a connection.
///
/// {@category struct}
base class WLAN_ASSOCIATION_ATTRIBUTES extends Struct {
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Array(6)
  external Array<Uint8> dot11Bssid;

  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int uDot11PhyIndex;

  @Uint32()
  external int wlanSignalQuality;

  @Uint32()
  external int ulRxRate;

  @Uint32()
  external int ulTxRate;
}

/// The WLAN_AUTH_CIPHER_PAIR_LIST structure contains a list of
/// authentication and cipher algorithm pairs.
///
/// {@category struct}
base class WLAN_AUTH_CIPHER_PAIR_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Array.variableWithVariableDimension(1)
  external Array<DOT11_AUTH_CIPHER_PAIR> pAuthCipherPairList;
}

/// The WLAN_AVAILABLE_NETWORK structure contains information about an
/// available wireless network.
///
/// {@category struct}
base class WLAN_AVAILABLE_NETWORK extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Uint32()
  external int uNumberOfBssids;

  @Int32()
  external int bNetworkConnectable;

  @Uint32()
  external int wlanNotConnectableReason;

  @Uint32()
  external int uNumberOfPhyTypes;

  @Array(8)
  external Array<Int32> dot11PhyTypes;

  @Int32()
  external int bMorePhyTypes;

  @Uint32()
  external int wlanSignalQuality;

  @Int32()
  external int bSecurityEnabled;

  @Int32()
  external int dot11DefaultAuthAlgorithm;

  @Int32()
  external int dot11DefaultCipherAlgorithm;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;
}

/// The WLAN_AVAILABLE_NETWORK_LIST structure contains an array of
/// information about available networks.
///
/// {@category struct}
base class WLAN_AVAILABLE_NETWORK_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array.variableWithVariableDimension(1)
  external Array<WLAN_AVAILABLE_NETWORK> Network;
}

/// The WLAN_BSS_ENTRY structure contains information about a basic service
/// set (BSS).
///
/// {@category struct}
base class WLAN_BSS_ENTRY extends Struct {
  external DOT11_SSID dot11Ssid;

  @Uint32()
  external int uPhyId;

  @Array(6)
  external Array<Uint8> dot11Bssid;

  @Int32()
  external int dot11BssType;

  @Int32()
  external int dot11BssPhyType;

  @Int32()
  external int lRssi;

  @Uint32()
  external int uLinkQuality;

  @Uint8()
  external int bInRegDomain;

  @Uint16()
  external int usBeaconPeriod;

  @Uint64()
  external int ullTimestamp;

  @Uint64()
  external int ullHostTimestamp;

  @Uint16()
  external int usCapabilityInformation;

  @Uint32()
  external int ulChCenterFrequency;

  external WLAN_RATE_SET wlanRateSet;

  @Uint32()
  external int ulIeOffset;

  @Uint32()
  external int ulIeSize;
}

/// The WLAN_BSS_LIST structure contains a list of basic service set (BSS)
/// entries.
///
/// {@category struct}
base class WLAN_BSS_LIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNumberOfItems;

  @Array.variableWithVariableDimension(1)
  external Array<WLAN_BSS_ENTRY> wlanBssEntries;
}

/// The WLAN_CONNECTION_ATTRIBUTES structure defines the attributes of a
/// wireless connection.
///
/// {@category struct}
base class WLAN_CONNECTION_ATTRIBUTES extends Struct {
  @Int32()
  external int isState;

  @Int32()
  external int wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  external WLAN_ASSOCIATION_ATTRIBUTES wlanAssociationAttributes;

  external WLAN_SECURITY_ATTRIBUTES wlanSecurityAttributes;
}

/// The WLAN_CONNECTION_NOTIFICATION_DATA structure contains information
/// about connection related notifications.
///
/// {@category struct}
base class WLAN_CONNECTION_NOTIFICATION_DATA extends Struct {
  @Int32()
  external int wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Int32()
  external int bSecurityEnabled;

  @Uint32()
  external int wlanReasonCode;

  @Uint32()
  external int dwFlags;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _strProfileXml;

  String get strProfileXml => _strProfileXml.toDartString();

  set strProfileXml(String value) => _strProfileXml.setString(value);
}

/// The WLAN_CONNECTION_PARAMETERS structure specifies the parameters used
/// when using the WlanConnect function.
///
/// {@category struct}
base class WLAN_CONNECTION_PARAMETERS extends Struct {
  @Int32()
  external int wlanConnectionMode;

  external Pointer<Utf16> strProfile;

  external Pointer<DOT11_SSID> pDot11Ssid;

  external Pointer<DOT11_BSSID_LIST> pDesiredBssidList;

  @Int32()
  external int dot11BssType;

  @Uint32()
  external int dwFlags;
}

/// A WLAN_COUNTRY_OR_REGION_STRING_LIST structure contains a list of
/// supported country or region strings.
///
/// {@category struct}
base class WLAN_COUNTRY_OR_REGION_STRING_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Array.variableWithVariableDimension(3)
  external Array<Uint8> pCountryOrRegionStringList;
}

/// Contains an array of device service GUIDs.
///
/// {@category struct}
base class WLAN_DEVICE_SERVICE_GUID_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array.variableWithVariableDimension(1)
  external Array<GUID> DeviceService;
}

/// A structure that represents a device service notification.
///
/// {@category struct}
base class WLAN_DEVICE_SERVICE_NOTIFICATION_DATA extends Struct {
  external GUID DeviceService;

  @Uint32()
  external int dwOpCode;

  @Uint32()
  external int dwDataSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> DataBlob;
}

/// The WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS structure contains
/// information about the connection settings on the wireless Hosted
/// Network.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS extends Struct {
  external DOT11_SSID hostedNetworkSSID;

  @Uint32()
  external int dwMaxNumberOfPeers;
}

/// The WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE structure contains
/// information about a network state change for a data peer on the wireless
/// Hosted Network.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE extends Struct {
  external WLAN_HOSTED_NETWORK_PEER_STATE OldState;

  external WLAN_HOSTED_NETWORK_PEER_STATE NewState;

  @Int32()
  external int PeerStateChangeReason;
}

/// The WLAN_HOSTED_NETWORK_PEER_STATE structure contains information about
/// the peer state for a peer on the wireless Hosted Network.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_PEER_STATE extends Struct {
  @Array(6)
  external Array<Uint8> PeerMacAddress;

  @Int32()
  external int PeerAuthState;
}

/// The WLAN_HOSTED_NETWORK_RADIO_STATE structure contains information about
/// the radio state on the wireless Hosted Network.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_RADIO_STATE extends Struct {
  @Int32()
  external int dot11SoftwareRadioState;

  @Int32()
  external int dot11HardwareRadioState;
}

/// The WLAN_HOSTED_NETWORK_SECURITY_SETTINGS structure contains information
/// about the security settings on the wireless Hosted Network.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_SECURITY_SETTINGS extends Struct {
  @Int32()
  external int dot11AuthAlgo;

  @Int32()
  external int dot11CipherAlgo;
}

/// The WLAN_HOSTED_NETWORK_STATE_CHANGE structure contains information
/// about a network state change on the wireless Hosted Network.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_STATE_CHANGE extends Struct {
  @Int32()
  external int OldState;

  @Int32()
  external int NewState;

  @Int32()
  external int StateChangeReason;
}

/// The WLAN_HOSTED_NETWORK_STATUS structure contains information about the
/// status of the wireless Hosted Network.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_STATUS extends Struct {
  @Int32()
  external int HostedNetworkState;

  external GUID IPDeviceID;

  @Array(6)
  external Array<Uint8> wlanHostedNetworkBSSID;

  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int ulChannelFrequency;

  @Uint32()
  external int dwNumberOfPeers;

  @Array.variableWithVariableDimension(1)
  external Array<WLAN_HOSTED_NETWORK_PEER_STATE> PeerList;
}

/// The WLAN_INTERFACE_CAPABILITY structure contains information about the
/// capabilities of an interface.
///
/// {@category struct}
base class WLAN_INTERFACE_CAPABILITY extends Struct {
  @Int32()
  external int interfaceType;

  @Int32()
  external int bDot11DSupported;

  @Uint32()
  external int dwMaxDesiredSsidListSize;

  @Uint32()
  external int dwMaxDesiredBssidListSize;

  @Uint32()
  external int dwNumberOfSupportedPhys;

  @Array(64)
  external Array<Int32> dot11PhyTypes;
}

/// The WLAN_INTERFACE_INFO structure contains information about a wireless
/// LAN interface.
///
/// {@category struct}
base class WLAN_INTERFACE_INFO extends Struct {
  external GUID InterfaceGuid;

  @Array(256)
  external Array<Uint16> _strInterfaceDescription;

  String get strInterfaceDescription => _strInterfaceDescription.toDartString();

  set strInterfaceDescription(String value) =>
      _strInterfaceDescription.setString(value);

  @Int32()
  external int isState;
}

/// The WLAN_INTERFACE_INFO_LIST structure contains an array of NIC
/// interface information.
///
/// {@category struct}
base class WLAN_INTERFACE_INFO_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array.variableWithVariableDimension(1)
  external Array<WLAN_INTERFACE_INFO> InterfaceInfo;
}

/// The WLAN_MAC_FRAME_STATISTICS structure contains information about sent
/// and received MAC frames.
///
/// {@category struct}
base class WLAN_MAC_FRAME_STATISTICS extends Struct {
  @Uint64()
  external int ullTransmittedFrameCount;

  @Uint64()
  external int ullReceivedFrameCount;

  @Uint64()
  external int ullWEPExcludedCount;

  @Uint64()
  external int ullTKIPLocalMICFailures;

  @Uint64()
  external int ullTKIPReplays;

  @Uint64()
  external int ullTKIPICVErrorCount;

  @Uint64()
  external int ullCCMPReplays;

  @Uint64()
  external int ullCCMPDecryptErrors;

  @Uint64()
  external int ullWEPUndecryptableCount;

  @Uint64()
  external int ullWEPICVErrorCount;

  @Uint64()
  external int ullDecryptSuccessCount;

  @Uint64()
  external int ullDecryptFailureCount;
}

/// The WLAN_MSM_NOTIFICATION_DATA structure contains information about
/// media specific module (MSM) connection related notifications.
///
/// {@category struct}
base class WLAN_MSM_NOTIFICATION_DATA extends Struct {
  @Int32()
  external int wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Array(6)
  external Array<Uint8> dot11MacAddr;

  @Int32()
  external int bSecurityEnabled;

  @Int32()
  external int bFirstPeer;

  @Int32()
  external int bLastPeer;

  @Uint32()
  external int wlanReasonCode;
}

/// The WLAN_PHY_FRAME_STATISTICS structure contains information about sent
/// and received PHY frames.
///
/// {@category struct}
base class WLAN_PHY_FRAME_STATISTICS extends Struct {
  @Uint64()
  external int ullTransmittedFrameCount;

  @Uint64()
  external int ullMulticastTransmittedFrameCount;

  @Uint64()
  external int ullFailedCount;

  @Uint64()
  external int ullRetryCount;

  @Uint64()
  external int ullMultipleRetryCount;

  @Uint64()
  external int ullMaxTXLifetimeExceededCount;

  @Uint64()
  external int ullTransmittedFragmentCount;

  @Uint64()
  external int ullRTSSuccessCount;

  @Uint64()
  external int ullRTSFailureCount;

  @Uint64()
  external int ullACKFailureCount;

  @Uint64()
  external int ullReceivedFrameCount;

  @Uint64()
  external int ullMulticastReceivedFrameCount;

  @Uint64()
  external int ullPromiscuousReceivedFrameCount;

  @Uint64()
  external int ullMaxRXLifetimeExceededCount;

  @Uint64()
  external int ullFrameDuplicateCount;

  @Uint64()
  external int ullReceivedFragmentCount;

  @Uint64()
  external int ullPromiscuousReceivedFragmentCount;

  @Uint64()
  external int ullFCSErrorCount;
}

/// The WLAN_PHY_RADIO_STATE structure specifies the radio state on a
/// specific physical layer (PHY) type.
///
/// {@category struct}
base class WLAN_PHY_RADIO_STATE extends Struct {
  @Uint32()
  external int dwPhyIndex;

  @Int32()
  external int dot11SoftwareRadioState;

  @Int32()
  external int dot11HardwareRadioState;
}

/// The WLAN_PROFILE_INFO structure contains basic information about a
/// profile.
///
/// {@category struct}
base class WLAN_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  @Uint32()
  external int dwFlags;
}

/// The WLAN_PROFILE_INFO_LIST structure contains a list of wireless profile
/// information.
///
/// {@category struct}
base class WLAN_PROFILE_INFO_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array.variableWithVariableDimension(1)
  external Array<WLAN_PROFILE_INFO> ProfileInfo;
}

/// The WLAN_RADIO_STATE structure specifies the radio state on a list of
/// physical layer (PHY) types.
///
/// {@category struct}
base class WLAN_RADIO_STATE extends Struct {
  @Uint32()
  external int dwNumberOfPhys;

  @Array(64)
  external Array<WLAN_PHY_RADIO_STATE> PhyRadioState;
}

/// The set of supported data rates.
///
/// {@category struct}
base class WLAN_RATE_SET extends Struct {
  @Uint32()
  external int uRateSetLength;

  @Array(126)
  external Array<Uint16> usRateSet;
}

/// The WLAN_RAW_DATA structure contains raw data in the form of a blob that
/// is used by some Native Wifi functions.
///
/// {@category struct}
base class WLAN_RAW_DATA extends Struct {
  @Uint32()
  external int dwDataSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint8> DataBlob;
}

/// The WLAN_RAW_DATA_LIST structure contains raw data in the form of an
/// array of data blobs that are used by some Native Wifi functions.
///
/// {@category struct}
base class WLAN_RAW_DATA_LIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNumberOfItems;

  @Array.variableWithVariableDimension(1)
  external Array<_WLAN_RAW_DATA_LIST__Anonymous_e__Struct> DataList;
}

/// {@category struct}
base class _WLAN_RAW_DATA_LIST__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;
}

/// The WLAN_SECURITY_ATTRIBUTES structure defines the security attributes
/// for a wireless connection.
///
/// {@category struct}
base class WLAN_SECURITY_ATTRIBUTES extends Struct {
  @Int32()
  external int bSecurityEnabled;

  @Int32()
  external int bOneXEnabled;

  @Int32()
  external int dot11AuthAlgorithm;

  @Int32()
  external int dot11CipherAlgorithm;
}

/// The WLAN_STATISTICS structure contains assorted statistics about an
/// interface.
///
/// {@category struct}
base class WLAN_STATISTICS extends Struct {
  @Uint64()
  external int ullFourWayHandshakeFailures;

  @Uint64()
  external int ullTKIPCounterMeasuresInvoked;

  @Uint64()
  external int ullReserved;

  external WLAN_MAC_FRAME_STATISTICS MacUcastCounters;

  external WLAN_MAC_FRAME_STATISTICS MacMcastCounters;

  @Uint32()
  external int dwNumberOfPhys;

  @Array.variableWithVariableDimension(1)
  external Array<WLAN_PHY_FRAME_STATISTICS> PhyCounters;
}

/// Contains window class information. It is used with the RegisterClassEx
/// and GetClassInfoEx functions. The WNDCLASSEX structure is similar to the
/// WNDCLASS structure. There are two differences. WNDCLASSEX includes the
/// cbSize member, which specifies the size of the structure, and the
/// hIconSm member, which contains a handle to a small icon associated with
/// the window class.
///
/// {@category struct}
base class WNDCLASSEX extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int style;

  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;

  @Int32()
  external int cbClsExtra;

  @Int32()
  external int cbWndExtra;

  @IntPtr()
  external int hInstance;

  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int hCursor;

  @IntPtr()
  external int hbrBackground;

  external Pointer<Utf16> lpszMenuName;

  external Pointer<Utf16> lpszClassName;

  @IntPtr()
  external int hIconSm;
}

/// Contains the window class attributes that are registered by the
/// RegisterClass function.
///
/// {@category struct}
base class WNDCLASS extends Struct {
  @Uint32()
  external int style;

  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;

  @Int32()
  external int cbClsExtra;

  @Int32()
  external int cbWndExtra;

  @IntPtr()
  external int hInstance;

  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int hCursor;

  @IntPtr()
  external int hbrBackground;

  external Pointer<Utf16> lpszMenuName;

  external Pointer<Utf16> lpszClassName;
}

/// Defines options that are used to set window visual style attributes.
///
/// {@category struct}
base class WTA_OPTIONS extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwMask;
}

/// The XFORM structure specifies a world-space to page-space
/// transformation.
///
/// {@category struct}
base class XFORM extends Struct {
  @Float()
  external double eM11;

  @Float()
  external double eM12;

  @Float()
  external double eM21;

  @Float()
  external double eM22;

  @Float()
  external double eDx;

  @Float()
  external double eDy;
}

/// Contains information on battery type and charge state.
///
/// {@category struct}
base class XINPUT_BATTERY_INFORMATION extends Struct {
  @Uint8()
  external int BatteryType;

  @Uint8()
  external int BatteryLevel;
}

/// Describes the capabilities of a connected controller. The
/// XInputGetCapabilities function returns XINPUT_CAPABILITIES.
///
/// {@category struct}
base class XINPUT_CAPABILITIES extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int SubType;

  @Uint16()
  external int Flags;

  external XINPUT_GAMEPAD Gamepad;

  external XINPUT_VIBRATION Vibration;
}

/// Describes the current state of the controller.
///
/// {@category struct}
base class XINPUT_GAMEPAD extends Struct {
  @Uint16()
  external int wButtons;

  @Uint8()
  external int bLeftTrigger;

  @Uint8()
  external int bRightTrigger;

  @Int16()
  external int sThumbLX;

  @Int16()
  external int sThumbLY;

  @Int16()
  external int sThumbRX;

  @Int16()
  external int sThumbRY;
}

/// Specifies keystroke data returned by XInputGetKeystroke.
///
/// {@category struct}
base class XINPUT_KEYSTROKE extends Struct {
  @Uint16()
  external int VirtualKey;

  @Uint16()
  external int Unicode;

  @Uint16()
  external int Flags;

  @Uint8()
  external int UserIndex;

  @Uint8()
  external int HidCode;
}

/// Represents the state of a controller.
///
/// {@category struct}
base class XINPUT_STATE extends Struct {
  @Uint32()
  external int dwPacketNumber;

  external XINPUT_GAMEPAD Gamepad;
}

/// Specifies motor speed levels for the vibration function of a controller.
///
/// {@category struct}
base class XINPUT_VIBRATION extends Struct {
  @Uint16()
  external int wLeftMotorSpeed;

  @Uint16()
  external int wRightMotorSpeed;
}
