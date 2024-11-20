// Dart representations of Win32 structs.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: non_constant_identifier_names, unnecessary_this
// ignore_for_file: unused_field

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../_com.g.dart';
import 'callbacks.g.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'extensions/_internal.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'types.dart';

/// Defines an accelerator key used in an accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-accel>.
///
/// {@category struct}
base class ACCEL extends Struct {
  @Uint8()
  external int _fVirt;

  /// The accelerator key.
  @Uint16()
  external int key;

  /// The accelerator identifier.
  @Uint16()
  external int cmd;

  @pragma('vm:prefer-inline')
  ACCEL_VIRT_FLAGS get fVirt => ACCEL_VIRT_FLAGS(_fVirt);

  @pragma('vm:prefer-inline')
  set fVirt(ACCEL_VIRT_FLAGS value) => _fVirt = value;
}

/// Header of an access control list (ACL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-acl>.
///
/// {@category struct}
base class ACL extends Struct {
  /// Specifies the revision level of the ACL.
  @Uint8()
  external int AclRevision;

  /// Specifies a zero byte of <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/p-gly">padding</a>
  /// that aligns the <b>AclRevision</b> member on a 16-bit boundary.
  @Uint8()
  external int Sbz1;

  /// Specifies the size, in bytes, of the ACL.
  @Uint16()
  external int AclSize;

  /// Specifies the number of ACEs stored in the ACL.
  @Uint16()
  external int AceCount;

  /// Specifies two zero-bytes of <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/p-gly">padding</a>
  /// that align the <b>ACL</b> structure on a 32-bit boundary.
  @Uint16()
  external int Sbz2;
}

/// Used by the CreateActCtx function to create the activation context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-actctxw>.
///
/// {@category struct}
base class ACTCTX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Flags that indicate how the values included in this structure are to be
  /// used.
  @Uint32()
  external int dwFlags;

  /// Null-terminated string specifying the path of the manifest file or PE
  /// image to be used to create the activation context.
  external PWSTR lpSource;

  /// Identifies the type of processor used.
  @Uint16()
  external int wProcessorArchitecture;

  /// Specifies the language manifest that should be used.
  @Uint16()
  external int wLangId;

  /// The base directory in which to perform private assembly probing if
  /// assemblies in the activation context are not present in the system-wide
  /// store.
  external PWSTR lpAssemblyDirectory;

  /// Pointer to a null-terminated string that contains the resource name to be
  /// loaded from the PE specified in <b>hModule</b> or <b>lpSource</b>.
  external PWSTR lpResourceName;

  /// The name of the current application.
  external PWSTR lpApplicationName;

  /// Use this member rather than <b>lpSource</b> if you have already loaded a
  /// DLL and wish to use it to create activation contexts rather than using a
  /// path in <b>lpSource</b>.
  @IntPtr()
  external int hModule;
}

/// Identifies a print job as well as the directory and file in which an
/// application can store that job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addjob-info-1>.
///
/// {@category struct}
base class ADDJOB_INFO_1 extends Struct {
  /// Pointer to a null-terminated string that contains the path and file name
  /// that the application can use to store the print job.
  external PWSTR Path;

  /// A handle to the print job.
  @Uint32()
  external int JobId;
}

/// Used by the GetAddrInfoW function to hold host address information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2def/ns-ws2def-addrinfow>.
///
/// {@category struct}
base class ADDRINFO extends Struct {
  /// Flags that indicate options used in the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/ws2tcpip/nf-ws2tcpip-getaddrinfow">GetAddrInfoW</a>
  /// function.
  @Int32()
  external int ai_flags;

  /// The address family.
  @Int32()
  external int ai_family;

  /// The socket type.
  @Int32()
  external int ai_socktype;

  /// The protocol type.
  @Int32()
  external int ai_protocol;

  /// The length, in bytes, of the buffer pointed to by the <b>ai_addr</b>
  /// member.
  @IntPtr()
  external int ai_addrlen;

  /// The canonical name for the host.
  external PWSTR ai_canonname;

  /// A pointer to a `sockaddr` structure.
  external Pointer<SOCKADDR> ai_addr;

  /// A pointer to the next structure in a linked list.
  external Pointer<ADDRINFO> ai_next;
}

/// Contains status information for the application-switching (ALT+TAB) window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-alttabinfo>.
///
/// {@category struct}
base class ALTTABINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The number of items in the window.
  @Int32()
  external int cItems;

  /// The number of columns in the window.
  @Int32()
  external int cColumns;

  /// The number of rows in the window.
  @Int32()
  external int cRows;

  /// The column of the item that has the focus.
  @Int32()
  external int iColFocus;

  /// The row of the item that has the focus.
  @Int32()
  external int iRowFocus;

  /// The width of each icon in the application-switching window.
  @Int32()
  external int cxItem;

  /// The height of each icon in the application-switching window.
  @Int32()
  external int cyItem;

  /// The top-left corner of the first icon.
  external POINT ptStart;
}

/// Represents package settings used to create a package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ns-appxpackaging-appx_package_settings>.
///
/// {@category struct}
base class APPX_PACKAGE_SETTINGS extends Struct {
  @Int32()
  external int _forceZip32;

  external VTablePointer _hashMethod;

  /// [TRUE] if the package is created as Zip32; [FALSE] if the package is
  /// created as Zip64.
  @pragma('vm:prefer-inline')
  bool get forceZip32 => _forceZip32 != FALSE;

  @pragma('vm:prefer-inline')
  set forceZip32(bool value) => _forceZip32 = value ? TRUE : FALSE;

  /// The hash algorithm URI to use for the block map of the package.
  @pragma('vm:prefer-inline')
  IUri? get hashMethod =>
      _hashMethod.isNull ? null : (IUri(_hashMethod)..addRef());

  @pragma('vm:prefer-inline')
  set hashMethod(IUri? value) => _hashMethod = value?.ptr ?? nullptr;
}

/// Describes an array, its element type, and its dimension.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-arraydesc>.
///
/// {@category struct}
base class ARRAYDESC extends Struct {
  /// The element type.
  external TYPEDESC tdescElem;

  /// The dimension count.
  @Uint16()
  external int cDims;

  /// A variable-length array containing one element for each dimension.
  @Array.variableWithVariableDimension(1)
  external Array<SAFEARRAYBOUND> rgbounds;
}

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

  external PWSTR szLocale;

  @Uint32()
  external int cbLocale;

  external Pointer<Uint32> rProcessor;

  @Uint32()
  external int ulProcessor;

  external Pointer<OSINFO> rOS;

  @Uint32()
  external int ulOS;
}

final ApplicationActivationManager = Guid.fromComponents(
  0x45ba127d,
  0x10a8,
  0x46ea,
  Uint8List.fromList(const [0x8a, 0xb7, 0x56, 0xea, 0x90, 0x78, 0x94, 0x3c]),
);

final AppxFactory = Guid.fromComponents(
  0x5842a140,
  0xff9f,
  0x4166,
  Uint8List.fromList(const [0x8f, 0x5c, 0x62, 0xf5, 0xb7, 0xb0, 0xc7, 0x81]),
);

/// Used to set the parameters that describe the properties of the client's
/// audio stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/ns-audioclient-audioclientproperties~r1>.
///
/// {@category struct}
base class AudioClientProperties extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Int32()
  external int _bIsOffload;

  @Int32()
  external int _eCategory;

  @Int32()
  external int _Options;

  /// Boolean value to indicate whether or not the audio stream is
  /// hardware-offloaded.
  @pragma('vm:prefer-inline')
  bool get bIsOffload => _bIsOffload != FALSE;

  @pragma('vm:prefer-inline')
  set bIsOffload(bool value) => _bIsOffload = value ? TRUE : FALSE;

  /// An enumeration that is used to specify the category of the audio stream.
  @pragma('vm:prefer-inline')
  AUDIO_STREAM_CATEGORY get eCategory => AUDIO_STREAM_CATEGORY(_eCategory);

  @pragma('vm:prefer-inline')
  set eCategory(AUDIO_STREAM_CATEGORY value) => _eCategory = value;

  @pragma('vm:prefer-inline')
  AUDCLNT_STREAMOPTIONS get Options => AUDCLNT_STREAMOPTIONS(_Options);

  @pragma('vm:prefer-inline')
  set Options(AUDCLNT_STREAMOPTIONS value) => _Options = value;
}

/// Describes a pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-bindptr>.
///
/// {@category union}
sealed class BINDPTR extends Union {
  /// Pointer to a function.
  external Pointer<FUNCDESC> lpfuncdesc;

  /// Pointer to a variable, constant, or data member.
  external Pointer<VARDESC> lpvardesc;

  external VTablePointer _lptcomp;

  /// The <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nn-oaidl-itypecomp">ITypeComp</a>
  /// that binds the pointer.
  @pragma('vm:prefer-inline')
  ITypeComp? get lptcomp =>
      _lptcomp.isNull ? null : (ITypeComp(_lptcomp)..addRef());

  @pragma('vm:prefer-inline')
  set lptcomp(ITypeComp? value) => _lptcomp = value?.ptr ?? nullptr;
}

/// Contains parameters used during a moniker-binding operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ns-objidl-bind_opts>.
///
/// {@category struct}
base class BIND_OPTS extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int cbStruct;

  /// Flags that control aspects of moniker binding operations.
  @Uint32()
  external int grfFlags;

  /// Flags that should be used when opening the file that contains the object
  /// identified by the moniker.
  @Uint32()
  external int grfMode;

  /// The clock time by which the caller would like the binding operation to be
  /// completed, in milliseconds.
  @Uint32()
  external int dwTickCountDeadline;
}

/// Defines the type, width, height, color format, and bit values of a bitmap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmap>.
///
/// {@category struct}
base class BITMAP extends Struct {
  /// The bitmap type.
  @Int32()
  external int bmType;

  /// The width, in pixels, of the bitmap.
  @Int32()
  external int bmWidth;

  /// The height, in pixels, of the bitmap.
  @Int32()
  external int bmHeight;

  /// The number of bytes in each scan line.
  @Int32()
  external int bmWidthBytes;

  /// The count of color planes.
  @Uint16()
  external int bmPlanes;

  /// The number of bits required to indicate the color of a pixel.
  @Uint16()
  external int bmBitsPixel;

  /// A pointer to the location of the bit values for the bitmap.
  external Pointer bmBits;
}

/// Contains information about the type, size, and layout of a file that
/// contains a DIB.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmapfileheader>.
///
/// {@category struct}
@Packed(2)
base class BITMAPFILEHEADER extends Struct {
  /// The file type; must be BM.
  @Uint16()
  external int bfType;

  /// The size, in bytes, of the bitmap file.
  @Uint32()
  external int bfSize;

  @Uint16()
  external int _bfReserved1;

  @Uint16()
  external int _bfReserved2;

  /// The offset, in bytes, from the beginning of the <b>BITMAPFILEHEADER</b>
  /// structure to the bitmap bits.
  @Uint32()
  external int bfOffBits;
}

/// Defines the dimensions and color information for a DIB.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmapinfo>.
///
/// {@category struct}
base class BITMAPINFO extends Struct {
  /// A `BITMAPINFOHEADER` structure that contains information about the
  /// dimensions of color format.
  external BITMAPINFOHEADER bmiHeader;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-rgbquad">RGBQUAD</a>.
  @Array.variableWithVariableDimension(1)
  external Array<RGBQUAD> bmiColors;
}

/// Contains information about the dimensions and color format of a
/// device-independent bitmap (DIB).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmapinfoheader>.
///
/// {@category struct}
base class BITMAPINFOHEADER extends Struct {
  /// Specifies the number of bytes required by the structure.
  @Uint32()
  external int biSize;

  /// Specifies the width of the bitmap, in pixels.
  @Int32()
  external int biWidth;

  /// Specifies the height of the bitmap, in pixels.
  @Int32()
  external int biHeight;

  /// Specifies the number of planes for the target device.
  @Uint16()
  external int biPlanes;

  /// Specifies the number of bits per pixel (bpp).
  @Uint16()
  external int biBitCount;

  /// For compressed video and YUV formats, this member is a FOURCC code,
  /// specified as a <b>DWORD</b> in little-endian order.
  @Uint32()
  external int biCompression;

  /// Specifies the size, in bytes, of the image.
  @Uint32()
  external int biSizeImage;

  /// Specifies the horizontal resolution, in pixels per meter, of the target
  /// device for the bitmap.
  @Int32()
  external int biXPelsPerMeter;

  /// Specifies the vertical resolution, in pixels per meter, of the target
  /// device for the bitmap.
  @Int32()
  external int biYPelsPerMeter;

  /// Specifies the number of color indices in the color table that are actually
  /// used by the bitmap.
  @Uint32()
  external int biClrUsed;

  /// Specifies the number of color indices that are considered important for
  /// displaying the bitmap.
  @Uint32()
  external int biClrImportant;
}

/// The bitmap information header file.
///
/// It is an extended version of the BITMAPINFOHEADER structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-bitmapv5header>.
///
/// {@category struct}
base class BITMAPV5HEADER extends Struct {
  /// The number of bytes required by the structure.
  @Uint32()
  external int bV5Size;

  /// The width of the bitmap, in pixels.
  @Int32()
  external int bV5Width;

  /// The height of the bitmap, in pixels.
  @Int32()
  external int bV5Height;

  /// The number of planes for the target device.
  @Uint16()
  external int bV5Planes;

  /// The number of bits that define each pixel and the maximum number of colors
  /// in the bitmap.
  @Uint16()
  external int bV5BitCount;

  @Uint32()
  external int _bV5Compression;

  /// The size, in bytes, of the image.
  @Uint32()
  external int bV5SizeImage;

  /// The horizontal resolution, in pixels-per-meter, of the target device for
  /// the bitmap.
  @Int32()
  external int bV5XPelsPerMeter;

  /// The vertical resolution, in pixels-per-meter, of the target device for the
  /// bitmap.
  @Int32()
  external int bV5YPelsPerMeter;

  /// The number of color indexes in the color table that are actually used by
  /// the bitmap.
  @Uint32()
  external int bV5ClrUsed;

  /// The number of color indexes that are required for displaying the bitmap.
  @Uint32()
  external int bV5ClrImportant;

  /// Color mask that specifies the red component of each pixel, valid only if
  /// <b>bV5Compression</b> is set to BI_BITFIELDS.
  @Uint32()
  external int bV5RedMask;

  /// Color mask that specifies the green component of each pixel, valid only if
  /// <b>bV5Compression</b> is set to BI_BITFIELDS.
  @Uint32()
  external int bV5GreenMask;

  /// Color mask that specifies the blue component of each pixel, valid only if
  /// <b>bV5Compression</b> is set to BI_BITFIELDS.
  @Uint32()
  external int bV5BlueMask;

  /// Color mask that specifies the alpha component of each pixel.
  @Uint32()
  external int bV5AlphaMask;

  /// The color space of the DIB.
  @Uint32()
  external int bV5CSType;

  /// A `CIEXYZTRIPLE` structure that specifies the x, y, and z coordinates of
  /// the three colors that correspond to the red, green, and blue endpoints for
  /// the logical color space associated with the bitmap.
  external CIEXYZTRIPLE bV5Endpoints;

  /// Toned response curve for red.
  @Uint32()
  external int bV5GammaRed;

  /// Toned response curve for green.
  @Uint32()
  external int bV5GammaGreen;

  /// Toned response curve for blue.
  @Uint32()
  external int bV5GammaBlue;

  @Uint32()
  external int bV5Intent;

  /// The offset, in bytes, from the beginning of the <b>BITMAPV5HEADER</b>
  /// structure to the start of the profile data.
  @Uint32()
  external int bV5ProfileData;

  /// Size, in bytes, of embedded profile data.
  @Uint32()
  external int bV5ProfileSize;

  @Uint32()
  external int _bV5Reserved;

  @pragma('vm:prefer-inline')
  BI_COMPRESSION get bV5Compression => BI_COMPRESSION(_bV5Compression);

  @pragma('vm:prefer-inline')
  set bV5Compression(BI_COMPRESSION value) => _bV5Compression = value;
}

/// Controls blending by specifying the blending functions for source and
/// destination bitmaps.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-blendfunction>.
///
/// {@category struct}
base class BLENDFUNCTION extends Struct {
  /// The source blend operation.
  @Uint8()
  external int BlendOp;

  /// Must be zero.
  @Uint8()
  external int BlendFlags;

  /// Specifies an alpha transparency value to be used on the entire source
  /// bitmap.
  @Uint8()
  external int SourceConstantAlpha;

  /// This member controls the way the source and destination bitmaps are
  /// interpreted.
  @Uint8()
  external int AlphaFormat;
}

/// Contains information about a block of data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/nspapi/ns-nspapi-blob>.
///
/// {@category struct}
base class BLOB extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pBlobData;
}

/// {@category struct}
base class BLUETOOTH_ADDRESS extends Struct {
  external BLUETOOTH_ADDRESS_0 Anonymous;
}

/// {@category union}
sealed class BLUETOOTH_ADDRESS_0 extends Union {
  @Uint64()
  external int ullLong;

  @Array(6)
  external Array<Uint8> rgBytes;
}

extension BLUETOOTH_ADDRESS_0_Extension on BLUETOOTH_ADDRESS {
  @pragma('vm:prefer-inline')
  int get ullLong => this.Anonymous.ullLong;

  @pragma('vm:prefer-inline')
  set ullLong(int value) => this.Anonymous.ullLong = value;

  @pragma('vm:prefer-inline')
  Array<Uint8> get rgBytes => this.Anonymous.rgBytes;

  @pragma('vm:prefer-inline')
  set rgBytes(Array<Uint8> value) => this.Anonymous.rgBytes = value;
}

/// Contains information passed in response to a BTH_REMOTE_AUTHENTICATE_REQUEST
/// event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_authenticate_response>.
///
/// {@category struct}
base class BLUETOOTH_AUTHENTICATE_RESPONSE extends Struct {
  /// A `BLUETOOTH_ADDRESS` structure that contains the address of the device
  /// requesting the authentication response.
  external BLUETOOTH_ADDRESS bthAddressRemote;

  @Int32()
  external int _authMethod;

  external BLUETOOTH_AUTHENTICATE_RESPONSE_0 Anonymous;

  /// [TRUE] if the authentication request was rejected; otherwise [FALSE].
  @Uint8()
  external int negativeResponse;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_method">BLUETOOTH_AUTHENTICATION_METHOD</a>
  /// enumeration that defines the supported authentication method.
  @pragma('vm:prefer-inline')
  BLUETOOTH_AUTHENTICATION_METHOD get authMethod =>
      BLUETOOTH_AUTHENTICATION_METHOD(_authMethod);

  @pragma('vm:prefer-inline')
  set authMethod(BLUETOOTH_AUTHENTICATION_METHOD value) => _authMethod = value;
}

/// {@category union}
sealed class BLUETOOTH_AUTHENTICATE_RESPONSE_0 extends Union {
  external BLUETOOTH_PIN_INFO pinInfo;
  external BLUETOOTH_OOB_DATA_INFO oobInfo;
  external BLUETOOTH_NUMERIC_COMPARISON_INFO numericCompInfo;
  external BLUETOOTH_PASSKEY_INFO passkeyInfo;
}

extension BLUETOOTH_AUTHENTICATE_RESPONSE_0_Extension
    on BLUETOOTH_AUTHENTICATE_RESPONSE {
  @pragma('vm:prefer-inline')
  BLUETOOTH_PIN_INFO get pinInfo => this.Anonymous.pinInfo;

  @pragma('vm:prefer-inline')
  set pinInfo(BLUETOOTH_PIN_INFO value) => this.Anonymous.pinInfo = value;

  @pragma('vm:prefer-inline')
  BLUETOOTH_OOB_DATA_INFO get oobInfo => this.Anonymous.oobInfo;

  @pragma('vm:prefer-inline')
  set oobInfo(BLUETOOTH_OOB_DATA_INFO value) => this.Anonymous.oobInfo = value;

  @pragma('vm:prefer-inline')
  BLUETOOTH_NUMERIC_COMPARISON_INFO get numericCompInfo =>
      this.Anonymous.numericCompInfo;

  @pragma('vm:prefer-inline')
  set numericCompInfo(BLUETOOTH_NUMERIC_COMPARISON_INFO value) =>
      this.Anonymous.numericCompInfo = value;

  @pragma('vm:prefer-inline')
  BLUETOOTH_PASSKEY_INFO get passkeyInfo => this.Anonymous.passkeyInfo;

  @pragma('vm:prefer-inline')
  set passkeyInfo(BLUETOOTH_PASSKEY_INFO value) =>
      this.Anonymous.passkeyInfo = value;
}

/// Contains specific configuration information about the Bluetooth device
/// responding to an authentication request.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_authentication_callback_params>.
///
/// {@category struct}
base class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS extends Struct {
  /// A `BLUETOOTH_DEVICE_INFO` structure that contains information about a
  /// Bluetooth device.
  external BLUETOOTH_DEVICE_INFO deviceInfo;

  @Int32()
  external int _authenticationMethod;

  @Int32()
  external int _ioCapability;

  @Int32()
  external int _authenticationRequirements;

  external BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0 Anonymous;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_method">BLUETOOTH_AUTHENTICATION_METHOD</a>
  /// enumeration that defines the authentication method utilized by the
  /// Bluetooth device.
  @pragma('vm:prefer-inline')
  BLUETOOTH_AUTHENTICATION_METHOD get authenticationMethod =>
      BLUETOOTH_AUTHENTICATION_METHOD(_authenticationMethod);

  @pragma('vm:prefer-inline')
  set authenticationMethod(BLUETOOTH_AUTHENTICATION_METHOD value) =>
      _authenticationMethod = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_io_capability">BLUETOOTH_IO_CAPABILITY</a>
  /// enumeration that defines the input/output capabilities of the Bluetooth
  /// device.
  @pragma('vm:prefer-inline')
  BLUETOOTH_IO_CAPABILITY get ioCapability =>
      BLUETOOTH_IO_CAPABILITY(_ioCapability);

  @pragma('vm:prefer-inline')
  set ioCapability(BLUETOOTH_IO_CAPABILITY value) => _ioCapability = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_requirements">BLUETOOTH_AUTHENTICATION_REQUIREMENTS</a>
  /// specifies the 'Man in the Middle' protection required for authentication.
  @pragma('vm:prefer-inline')
  BLUETOOTH_AUTHENTICATION_REQUIREMENTS get authenticationRequirements =>
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(_authenticationRequirements);

  @pragma('vm:prefer-inline')
  set authenticationRequirements(BLUETOOTH_AUTHENTICATION_REQUIREMENTS value) =>
      _authenticationRequirements = value;
}

/// {@category union}
sealed class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0 extends Union {
  @Uint32()
  external int Numeric_Value;

  @Uint32()
  external int Passkey;
}

extension BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0_Extension
    on BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS {
  @pragma('vm:prefer-inline')
  int get Numeric_Value => this.Anonymous.Numeric_Value;

  @pragma('vm:prefer-inline')
  set Numeric_Value(int value) => this.Anonymous.Numeric_Value = value;

  @pragma('vm:prefer-inline')
  int get Passkey => this.Anonymous.Passkey;

  @pragma('vm:prefer-inline')
  set Passkey(int value) => this.Anonymous.Passkey = value;
}

/// Provides for specification and retrieval of Bluetooth Class Of Device (COD)
/// information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_cod_pairs>.
///
/// {@category struct}
base class BLUETOOTH_COD_PAIRS extends Struct {
  /// A mask to compare to determine the class of device.
  @Uint32()
  external int ulCODMask;

  /// Descriptive string of the mask.
  external PWSTR pcszDescription;
}

/// {@category struct}
base class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external BLUETOOTH_ADDRESS Address;

  @Uint32()
  external int ulClassofDevice;

  @Int32()
  external int _fConnected;

  @Int32()
  external int _fRemembered;

  @Int32()
  external int _fAuthenticated;

  external SYSTEMTIME stLastSeen;
  external SYSTEMTIME stLastUsed;

  @Array(248)
  external Array<Uint16> _szName;

  @pragma('vm:prefer-inline')
  bool get fConnected => _fConnected != FALSE;

  @pragma('vm:prefer-inline')
  set fConnected(bool value) => _fConnected = value ? TRUE : FALSE;

  @pragma('vm:prefer-inline')
  bool get fRemembered => _fRemembered != FALSE;

  @pragma('vm:prefer-inline')
  set fRemembered(bool value) => _fRemembered = value ? TRUE : FALSE;

  @pragma('vm:prefer-inline')
  bool get fAuthenticated => _fAuthenticated != FALSE;

  @pragma('vm:prefer-inline')
  set fAuthenticated(bool value) => _fAuthenticated = value ? TRUE : FALSE;

  @pragma('vm:prefer-inline')
  String get szName => _szName.toDartString();

  @pragma('vm:prefer-inline')
  set szName(String value) => _szName.setString(value);
}

/// Specifies search criteria for Bluetooth device searches.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_device_search_params>.
///
/// {@category struct}
base class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  /// The size, in bytes, of the structure.
  @Uint32()
  external int dwSize;

  @Int32()
  external int _fReturnAuthenticated;

  @Int32()
  external int _fReturnRemembered;

  @Int32()
  external int _fReturnUnknown;

  @Int32()
  external int _fReturnConnected;

  @Int32()
  external int _fIssueInquiry;

  /// A value that indicates the time out for the inquiry, expressed in
  /// increments of 1.28 seconds.
  @Uint8()
  external int cTimeoutMultiplier;

  /// A handle for the radio on which to perform the inquiry.
  @IntPtr()
  external int hRadio;

  /// A value that specifies that the search should return authenticated
  /// Bluetooth devices.
  @pragma('vm:prefer-inline')
  bool get fReturnAuthenticated => _fReturnAuthenticated != FALSE;

  @pragma('vm:prefer-inline')
  set fReturnAuthenticated(bool value) =>
      _fReturnAuthenticated = value ? TRUE : FALSE;

  /// A value that specifies that the search should return remembered Bluetooth
  /// devices.
  @pragma('vm:prefer-inline')
  bool get fReturnRemembered => _fReturnRemembered != FALSE;

  @pragma('vm:prefer-inline')
  set fReturnRemembered(bool value) =>
      _fReturnRemembered = value ? TRUE : FALSE;

  /// A value that specifies that the search should return unknown Bluetooth
  /// devices.
  @pragma('vm:prefer-inline')
  bool get fReturnUnknown => _fReturnUnknown != FALSE;

  @pragma('vm:prefer-inline')
  set fReturnUnknown(bool value) => _fReturnUnknown = value ? TRUE : FALSE;

  /// A value that specifies that the search should return connected Bluetooth
  /// devices.
  @pragma('vm:prefer-inline')
  bool get fReturnConnected => _fReturnConnected != FALSE;

  @pragma('vm:prefer-inline')
  set fReturnConnected(bool value) => _fReturnConnected = value ? TRUE : FALSE;

  /// A value that specifies that a new inquiry should be issued.
  @pragma('vm:prefer-inline')
  bool get fIssueInquiry => _fIssueInquiry != FALSE;

  @pragma('vm:prefer-inline')
  set fIssueInquiry(bool value) => _fIssueInquiry = value ? TRUE : FALSE;
}

/// Facilitates enumerating installed Bluetooth radios.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_find_radio_params>.
///
/// {@category struct}
base class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  /// Size of the <b>BLUETOOTH_FIND_RADIO_PARAMS</b> structure, in bytes.
  @Uint32()
  external int dwSize;
}

/// Describes a changed attribute value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bluetooth_gatt_value_changed_event>.
///
/// {@category struct}
base class BLUETOOTH_GATT_VALUE_CHANGED_EVENT extends Struct {
  /// The handle to the attribute.
  @Uint16()
  external int ChangedAttributeHandle;

  /// The size, in bytes, of <b>CharacteristicValue</b>.
  @IntPtr()
  external int CharacteristicValueDataSize;

  /// The characteristic value.
  external Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> CharacteristicValue;
}

/// Describes one or more characteristics that have changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bluetooth_gatt_value_changed_event_registration>.
///
/// {@category struct}
base class BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION extends Struct {
  /// The number of characteristics that follow this member in memory.
  @Uint16()
  external int NumCharacteristics;

  /// Array of characteristics to monitor for incoming events.
  @Array.variableWithVariableDimension(1)
  external Array<BTH_LE_GATT_CHARACTERISTIC> Characteristics;
}

/// Contains the numeric value used for authentication via numeric comparison.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_numeric_comparison_info>.
///
/// {@category struct}
base class BLUETOOTH_NUMERIC_COMPARISON_INFO extends Struct {
  /// The numeric value.
  @Uint32()
  external int NumericValue;
}

/// Contains data used to authenticate prior to establishing an Out-of-Band
/// device pairing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_oob_data_info>.
///
/// {@category struct}
base class BLUETOOTH_OOB_DATA_INFO extends Struct {
  /// A 128-bit cryptographic key used for two-way authentication.
  @Array(16)
  external Array<Uint8> C;

  /// A randomly generated number used for one-way authentication.
  @Array(16)
  external Array<Uint8> R;
}

/// Contains a passkey value used for authentication.
///
/// A passkey is similar to a password, except that a passkey value is used for
/// authentication only once.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_passkey_info>.
///
/// {@category struct}
base class BLUETOOTH_PASSKEY_INFO extends Struct {
  /// The passkey used for authentication.
  @Uint32()
  external int passkey;
}

/// Contains information used for authentication via PIN.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_pin_info>.
///
/// {@category struct}
base class BLUETOOTH_PIN_INFO extends Struct {
  /// The PIN used for authentication.
  @Array(16)
  external Array<Uint8> pin;

  /// The length of <i>pin</i>.
  @Uint8()
  external int pinLength;
}

/// Contains information about a Bluetooth radio.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_radio_info>.
///
/// {@category struct}
base class BLUETOOTH_RADIO_INFO extends Struct {
  /// Size, in bytes, of the structure.
  @Uint32()
  external int dwSize;

  /// Address of the local Bluetooth radio.
  external BLUETOOTH_ADDRESS address;

  @Array(248)
  external Array<Uint16> _szName;

  /// Device class for the local Bluetooth radio.
  @Uint32()
  external int ulClassofDevice;

  /// This member contains data specific to individual Bluetooth device
  /// manufacturers.
  @Uint16()
  external int lmpSubversion;

  /// Manufacturer of the Bluetooth radio, expressed as a <b>BTH_MFG_Xxx</b>
  /// value.
  @Uint16()
  external int manufacturer;

  /// Name of the local Bluetooth radio.
  @pragma('vm:prefer-inline')
  String get szName => _szName.toDartString();

  @pragma('vm:prefer-inline')
  set szName(String value) => _szName.setString(value);
}

/// Facilitates and manages the visibility, authentication, and selection of
/// Bluetooth devices and services.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_select_device_params>.
///
/// {@category struct}
base class BLUETOOTH_SELECT_DEVICE_PARAMS extends Struct {
  /// Size, in bytes, of the <b>BLUETOOTH_SELECT_DEVICE_PARAMS</b> structure.
  @Uint32()
  external int dwSize;

  /// Number of classes in <b>prgClassOfDevices</b>.
  @Uint32()
  external int cNumOfClasses;

  /// Array of class of devices to find.
  external Pointer<BLUETOOTH_COD_PAIRS> prgClassOfDevices;

  /// Sets the information text when not <b>NULL</b>.
  external PWSTR pszInfo;

  /// Handle to the parent window.
  @IntPtr()
  external int hwndParent;

  @Int32()
  external int _fForceAuthentication;

  @Int32()
  external int _fShowAuthenticated;

  @Int32()
  external int _fShowRemembered;

  @Int32()
  external int _fShowUnknown;

  @Int32()
  external int _fAddNewDeviceWizard;

  @Int32()
  external int _fSkipServicesPage;

  /// A pointer to a callback function that is called for each device.
  external Pointer<NativeFunction<PFN_DEVICE_CALLBACK>> pfnDeviceCallback;

  /// Parameter to be passed as <b>pvParam</b> to the callback function pointed
  /// to in <b>pfnDeviceCallback</b>.
  external Pointer pvParam;

  /// On input, specifies the number of desired calls.
  @Uint32()
  external int cNumDevices;

  /// Pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-bluetooth_device_info_struct">BLUETOOTH_DEVICE_INFO</a>
  /// structures.
  external Pointer<BLUETOOTH_DEVICE_INFO> pDevices;

  /// If [TRUE], forces authentication before returning.
  @pragma('vm:prefer-inline')
  bool get fForceAuthentication => _fForceAuthentication != FALSE;

  @pragma('vm:prefer-inline')
  set fForceAuthentication(bool value) =>
      _fForceAuthentication = value ? TRUE : FALSE;

  /// If [TRUE], authenticated devices are shown in the picker.
  @pragma('vm:prefer-inline')
  bool get fShowAuthenticated => _fShowAuthenticated != FALSE;

  @pragma('vm:prefer-inline')
  set fShowAuthenticated(bool value) =>
      _fShowAuthenticated = value ? TRUE : FALSE;

  /// If [TRUE], remembered devices are shown in the picker.
  @pragma('vm:prefer-inline')
  bool get fShowRemembered => _fShowRemembered != FALSE;

  @pragma('vm:prefer-inline')
  set fShowRemembered(bool value) => _fShowRemembered = value ? TRUE : FALSE;

  /// If [TRUE], unknown devices that are not authenticated or remembered are
  /// shown in the picker.
  @pragma('vm:prefer-inline')
  bool get fShowUnknown => _fShowUnknown != FALSE;

  @pragma('vm:prefer-inline')
  set fShowUnknown(bool value) => _fShowUnknown = value ? TRUE : FALSE;

  /// If [TRUE], starts the Add New Device wizard.
  @pragma('vm:prefer-inline')
  bool get fAddNewDeviceWizard => _fAddNewDeviceWizard != FALSE;

  @pragma('vm:prefer-inline')
  set fAddNewDeviceWizard(bool value) =>
      _fAddNewDeviceWizard = value ? TRUE : FALSE;

  /// If [TRUE], skips the Services page in the Add New Device wizard.
  @pragma('vm:prefer-inline')
  bool get fSkipServicesPage => _fSkipServicesPage != FALSE;

  @pragma('vm:prefer-inline')
  set fSkipServicesPage(bool value) =>
      _fSkipServicesPage = value ? TRUE : FALSE;
}

typedef BOOL = Int32;

typedef BOOLEAN = Uint8;

/// Contains parameters for the SHBrowseForFolder function and receives
/// information about the folder selected by the user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/ns-shlobj_core-browseinfow>.
///
/// {@category struct}
base class BROWSEINFO extends Struct {
  /// A handle to the owner window for the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// A PIDL that specifies the location of the root folder from which to start
  /// browsing.
  external Pointer<ITEMIDLIST> pidlRoot;

  /// Pointer to a buffer to receive the display name of the folder selected by
  /// the user.
  external PWSTR pszDisplayName;

  /// Pointer to a null-terminated string that is displayed above the tree view
  /// control in the dialog box.
  external PWSTR lpszTitle;

  @Uint32()
  external int ulFlags;

  /// Pointer to an application-defined function that the dialog box calls when
  /// an event occurs.
  external Pointer<NativeFunction<BFFCALLBACK>> lpfn;

  /// An application-defined value that the dialog box passes to the callback
  /// function, if one is specified in <b>lpfn</b>.
  @IntPtr()
  external int lParam;

  /// An integer value that receives the index of the image associated with the
  /// selected folder, stored in the system image list.
  @Int32()
  external int iImage;
}

/// Contains information about a window that denied a request from
/// BroadcastSystemMessageEx.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-bsminfo>.
///
/// {@category struct}
base class BSMINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A desktop handle to the window specified by <b>hwnd</b>.
  @IntPtr()
  external int hdesk;

  /// A handle to the window that denied the request.
  @IntPtr()
  external int hwnd;

  /// A locally unique identifier (LUID) for the window.
  external LUID luid;
}

/// A BSTR (Basic string or binary string) is a string data type that is used by
/// COM, Automation, and Interop functions.
///
/// The handle must be released using the `SysFreeString` function.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/automat/bstr>.
typedef BSTR = Pointer<Utf16>;

/// {@category struct}
base class BSTRBLOB extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pData;
}

/// Stores information about a Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_device_info>.
///
/// {@category struct}
base class BTH_DEVICE_INFO extends Struct {
  /// A combination of one or more of the flags listed in the following table.
  @Uint32()
  external int flags;

  /// Address of the remote Bluetooth device.
  @Uint64()
  external int address;

  /// Bit field that describes the device class of device (COD) of the remote
  /// device.
  @Uint32()
  external int classOfDevice;

  /// Name of the remote Bluetooth device, as reported by the device, encoded in
  /// UTF8.
  @Array(248)
  external Array<CHAR> name;
}

/// Used in connection with obtaining WM_DEVICECHANGE messages for Bluetooth.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_hci_event_info>.
///
/// {@category struct}
base class BTH_HCI_EVENT_INFO extends Struct {
  /// Address of the remote device, in the form of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothapis/nf-bluetoothapis-bluetoothauthenticatemultipledevices">BTH_ADDR</a>
  /// structure.
  @Uint64()
  external int bthAddress;

  /// Type of connection.
  @Uint8()
  external int connectionType;

  /// Status of the connection.
  @Uint8()
  external int connected;
}

/// Contains data about events associated with an L2CAP channel.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_l2cap_event_info>.
///
/// {@category struct}
base class BTH_L2CAP_EVENT_INFO extends Struct {
  /// Remote radio address with which the L2CAP event is associated, in the form
  /// of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothapis/nf-bluetoothapis-bluetoothauthenticatemultipledevices">BTH_ADDR</a>
  /// structure.
  @Uint64()
  external int bthAddress;

  /// Channel number established or terminated.
  @Uint16()
  external int psm;

  /// Status of the connection.
  @Uint8()
  external int connected;

  /// Provides connection information.
  @Uint8()
  external int initiated;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// characteristic.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_characteristic>.
///
/// {@category struct}
base class BTH_LE_GATT_CHARACTERISTIC extends Struct {
  /// The handle to the Bluetooth LE GATT profile service.
  @Uint16()
  external int ServiceHandle;

  /// The Universally Unique ID (UUID) of the characteristic.
  external BTH_LE_UUID CharacteristicUuid;

  /// The handle to the Bluetooth LE GATT profile attributes.
  @Uint16()
  external int AttributeHandle;

  /// The handle to the Bluetooth LE GATT profile characteristic value.
  @Uint16()
  external int CharacteristicValueHandle;

  @Uint8()
  external int _IsBroadcastable;

  @Uint8()
  external int _IsReadable;

  @Uint8()
  external int _IsWritable;

  @Uint8()
  external int _IsWritableWithoutResponse;

  @Uint8()
  external int _IsSignedWritable;

  @Uint8()
  external int _IsNotifiable;

  @Uint8()
  external int _IsIndicatable;

  @Uint8()
  external int _HasExtendedProperties;

  /// The characteristic can be broadcast.
  @pragma('vm:prefer-inline')
  bool get IsBroadcastable => _IsBroadcastable != FALSE;

  @pragma('vm:prefer-inline')
  set IsBroadcastable(bool value) => _IsBroadcastable = value ? TRUE : FALSE;

  /// The characteristic can be read.
  @pragma('vm:prefer-inline')
  bool get IsReadable => _IsReadable != FALSE;

  @pragma('vm:prefer-inline')
  set IsReadable(bool value) => _IsReadable = value ? TRUE : FALSE;

  /// The characteristic can be written to.
  @pragma('vm:prefer-inline')
  bool get IsWritable => _IsWritable != FALSE;

  @pragma('vm:prefer-inline')
  set IsWritable(bool value) => _IsWritable = value ? TRUE : FALSE;

  /// The characteristic can be written to without requiring a response.
  @pragma('vm:prefer-inline')
  bool get IsWritableWithoutResponse => _IsWritableWithoutResponse != FALSE;

  @pragma('vm:prefer-inline')
  set IsWritableWithoutResponse(bool value) =>
      _IsWritableWithoutResponse = value ? TRUE : FALSE;

  /// The characteristic can be signed writable.
  @pragma('vm:prefer-inline')
  bool get IsSignedWritable => _IsSignedWritable != FALSE;

  @pragma('vm:prefer-inline')
  set IsSignedWritable(bool value) => _IsSignedWritable = value ? TRUE : FALSE;

  /// The characteristic can be updated by the device through Handle Value
  /// Notifications, and the new value will be returned through the callback
  /// function registered via <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent">BluetoothGATTRegisterEvent</a>.
  @pragma('vm:prefer-inline')
  bool get IsNotifiable => _IsNotifiable != FALSE;

  @pragma('vm:prefer-inline')
  set IsNotifiable(bool value) => _IsNotifiable = value ? TRUE : FALSE;

  /// The characteristic can be updated by the device through Handle Value
  /// Indications, and the new value will be returned through the callback
  /// function registered via <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent">BluetoothGATTRegisterEvent</a>.
  @pragma('vm:prefer-inline')
  bool get IsIndicatable => _IsIndicatable != FALSE;

  @pragma('vm:prefer-inline')
  set IsIndicatable(bool value) => _IsIndicatable = value ? TRUE : FALSE;

  /// The characteristic has extended properties, which will be presented
  /// through a Characteristic Extended Properties descriptor.
  @pragma('vm:prefer-inline')
  bool get HasExtendedProperties => _HasExtendedProperties != FALSE;

  @pragma('vm:prefer-inline')
  set HasExtendedProperties(bool value) =>
      _HasExtendedProperties = value ? TRUE : FALSE;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// characteristic value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_characteristic_value>.
///
/// {@category struct}
base class BTH_LE_GATT_CHARACTERISTIC_VALUE extends Struct {
  /// The size, in bytes, of the Bluetooth LE GATT characteristic value.
  @Uint32()
  external int DataSize;

  /// A pointer to the Bluetooth LE GATT characteristic value data.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// descriptor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_descriptor>.
///
/// {@category struct}
base class BTH_LE_GATT_DESCRIPTOR extends Struct {
  /// The handle to the Bluetooth LE GATT profile service.
  @Uint16()
  external int ServiceHandle;

  /// The handle to the Bluetooth LE GATT profile characteristic.
  @Uint16()
  external int CharacteristicHandle;

  @Int32()
  external int _DescriptorType;

  /// The Universally Unique ID (UUID) of the Bluetooth LE GATT descriptor.
  external BTH_LE_UUID DescriptorUuid;

  /// The handle to the Bluetooth LE GATT profile attributes.
  @Uint16()
  external int AttributeHandle;

  /// The type of the Bluetooth LE GATT descriptor.
  @pragma('vm:prefer-inline')
  BTH_LE_GATT_DESCRIPTOR_TYPE get DescriptorType =>
      BTH_LE_GATT_DESCRIPTOR_TYPE(_DescriptorType);

  @pragma('vm:prefer-inline')
  set DescriptorType(BTH_LE_GATT_DESCRIPTOR_TYPE value) =>
      _DescriptorType = value;
}

/// Describes a parent characteristic.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_descriptor_value>.
///
/// {@category struct}
base class BTH_LE_GATT_DESCRIPTOR_VALUE extends Struct {
  @Int32()
  external int _DescriptorType;

  /// The Universally Unique ID (UUID) of the descriptor value.
  external BTH_LE_UUID DescriptorUuid;

  external BTH_LE_GATT_DESCRIPTOR_VALUE_0 Anonymous;

  /// The size, in bytes, of the descriptor value.
  @Uint32()
  external int DataSize;

  /// A pointer to the descriptor value data.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;

  /// The type of the descriptor value.
  @pragma('vm:prefer-inline')
  BTH_LE_GATT_DESCRIPTOR_TYPE get DescriptorType =>
      BTH_LE_GATT_DESCRIPTOR_TYPE(_DescriptorType);

  @pragma('vm:prefer-inline')
  set DescriptorType(BTH_LE_GATT_DESCRIPTOR_TYPE value) =>
      _DescriptorType = value;
}

/// {@category union}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0 extends Union {
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 CharacteristicExtendedProperties;
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 ClientCharacteristicConfiguration;
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 ServerCharacteristicConfiguration;
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 CharacteristicFormat;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  @pragma('vm:prefer-inline')
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 get CharacteristicExtendedProperties =>
      this.Anonymous.CharacteristicExtendedProperties;

  @pragma('vm:prefer-inline')
  set CharacteristicExtendedProperties(
    BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 value,
  ) => this.Anonymous.CharacteristicExtendedProperties = value;

  @pragma('vm:prefer-inline')
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 get ClientCharacteristicConfiguration =>
      this.Anonymous.ClientCharacteristicConfiguration;

  @pragma('vm:prefer-inline')
  set ClientCharacteristicConfiguration(
    BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 value,
  ) => this.Anonymous.ClientCharacteristicConfiguration = value;

  @pragma('vm:prefer-inline')
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 get ServerCharacteristicConfiguration =>
      this.Anonymous.ServerCharacteristicConfiguration;

  @pragma('vm:prefer-inline')
  set ServerCharacteristicConfiguration(
    BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 value,
  ) => this.Anonymous.ServerCharacteristicConfiguration = value;

  @pragma('vm:prefer-inline')
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 get CharacteristicFormat =>
      this.Anonymous.CharacteristicFormat;

  @pragma('vm:prefer-inline')
  set CharacteristicFormat(BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 value) =>
      this.Anonymous.CharacteristicFormat = value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 extends Struct {
  @Uint8()
  external int _IsReliableWriteEnabled;

  @Uint8()
  external int _IsAuxiliariesWritable;

  @pragma('vm:prefer-inline')
  bool get IsReliableWriteEnabled => _IsReliableWriteEnabled != FALSE;

  @pragma('vm:prefer-inline')
  set IsReliableWriteEnabled(bool value) =>
      _IsReliableWriteEnabled = value ? TRUE : FALSE;

  @pragma('vm:prefer-inline')
  bool get IsAuxiliariesWritable => _IsAuxiliariesWritable != FALSE;

  @pragma('vm:prefer-inline')
  set IsAuxiliariesWritable(bool value) =>
      _IsAuxiliariesWritable = value ? TRUE : FALSE;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_0_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  @pragma('vm:prefer-inline')
  bool get IsReliableWriteEnabled =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled;

  @pragma('vm:prefer-inline')
  set IsReliableWriteEnabled(bool value) =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled =
          value;

  @pragma('vm:prefer-inline')
  bool get IsAuxiliariesWritable =>
      this.Anonymous.CharacteristicExtendedProperties.IsAuxiliariesWritable;

  @pragma('vm:prefer-inline')
  set IsAuxiliariesWritable(bool value) =>
      this.Anonymous.CharacteristicExtendedProperties.IsAuxiliariesWritable =
          value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 extends Struct {
  @Uint8()
  external int _IsSubscribeToNotification;

  @Uint8()
  external int _IsSubscribeToIndication;

  @pragma('vm:prefer-inline')
  bool get IsSubscribeToNotification => _IsSubscribeToNotification != FALSE;

  @pragma('vm:prefer-inline')
  set IsSubscribeToNotification(bool value) =>
      _IsSubscribeToNotification = value ? TRUE : FALSE;

  @pragma('vm:prefer-inline')
  bool get IsSubscribeToIndication => _IsSubscribeToIndication != FALSE;

  @pragma('vm:prefer-inline')
  set IsSubscribeToIndication(bool value) =>
      _IsSubscribeToIndication = value ? TRUE : FALSE;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_1_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  @pragma('vm:prefer-inline')
  bool get IsSubscribeToNotification => this
      .Anonymous
      .ClientCharacteristicConfiguration
      .IsSubscribeToNotification;

  @pragma('vm:prefer-inline')
  set IsSubscribeToNotification(bool value) =>
      this
              .Anonymous
              .ClientCharacteristicConfiguration
              .IsSubscribeToNotification =
          value;

  @pragma('vm:prefer-inline')
  bool get IsSubscribeToIndication =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication;

  @pragma('vm:prefer-inline')
  set IsSubscribeToIndication(bool value) =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication =
          value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 extends Struct {
  @Uint8()
  external int _IsBroadcast;

  @pragma('vm:prefer-inline')
  bool get IsBroadcast => _IsBroadcast != FALSE;

  @pragma('vm:prefer-inline')
  set IsBroadcast(bool value) => _IsBroadcast = value ? TRUE : FALSE;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_2_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  @pragma('vm:prefer-inline')
  bool get IsBroadcast =>
      this.Anonymous.ServerCharacteristicConfiguration.IsBroadcast;

  @pragma('vm:prefer-inline')
  set IsBroadcast(bool value) =>
      this.Anonymous.ServerCharacteristicConfiguration.IsBroadcast = value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 extends Struct {
  @Uint8()
  external int Format;

  @Uint8()
  external int Exponent;

  external BTH_LE_UUID Unit;

  @Uint8()
  external int NameSpace;

  external BTH_LE_UUID Description;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_3_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  @pragma('vm:prefer-inline')
  int get Format => this.Anonymous.CharacteristicFormat.Format;

  @pragma('vm:prefer-inline')
  set Format(int value) => this.Anonymous.CharacteristicFormat.Format = value;

  @pragma('vm:prefer-inline')
  int get Exponent => this.Anonymous.CharacteristicFormat.Exponent;

  @pragma('vm:prefer-inline')
  set Exponent(int value) =>
      this.Anonymous.CharacteristicFormat.Exponent = value;

  @pragma('vm:prefer-inline')
  BTH_LE_UUID get Unit => this.Anonymous.CharacteristicFormat.Unit;

  @pragma('vm:prefer-inline')
  set Unit(BTH_LE_UUID value) =>
      this.Anonymous.CharacteristicFormat.Unit = value;

  @pragma('vm:prefer-inline')
  int get NameSpace => this.Anonymous.CharacteristicFormat.NameSpace;

  @pragma('vm:prefer-inline')
  set NameSpace(int value) =>
      this.Anonymous.CharacteristicFormat.NameSpace = value;

  @pragma('vm:prefer-inline')
  BTH_LE_UUID get Description =>
      this.Anonymous.CharacteristicFormat.Description;

  @pragma('vm:prefer-inline')
  set Description(BTH_LE_UUID value) =>
      this.Anonymous.CharacteristicFormat.Description = value;
}

/// Describes a Bluetooth Low Energy (LE) generic attribute (GATT) profile
/// service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_gatt_service>.
///
/// {@category struct}
base class BTH_LE_GATT_SERVICE extends Struct {
  /// The Universally Unique ID (UUID) of the Bluetooth LE GATT profile service.
  external BTH_LE_UUID ServiceUuid;

  /// The handle to the Bluetooth LE GATT profile attributes.
  @Uint16()
  external int AttributeHandle;
}

/// Contains information about a Bluetooth Low Energy (LE) Universally Unique
/// Identifier (UUID).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ns-bthledef-bth_le_uuid>.
///
/// {@category struct}
base class BTH_LE_UUID extends Struct {
  @Uint8()
  external int _IsShortUuid;

  /// The value of the UUID.
  external BTH_LE_UUID_0 Value;

  /// Indicates if the Low Energy (LE) UUID a 16-bit shortened value, or if it
  /// is the long 128-bit value.
  @pragma('vm:prefer-inline')
  bool get IsShortUuid => _IsShortUuid != FALSE;

  @pragma('vm:prefer-inline')
  set IsShortUuid(bool value) => _IsShortUuid = value ? TRUE : FALSE;
}

/// {@category union}
sealed class BTH_LE_UUID_0 extends Union {
  @Uint16()
  external int ShortUuid;

  external GUID LongUuid;
}

extension BTH_LE_UUID_0_Extension on BTH_LE_UUID {
  @pragma('vm:prefer-inline')
  int get ShortUuid => this.Value.ShortUuid;

  @pragma('vm:prefer-inline')
  set ShortUuid(int value) => this.Value.ShortUuid = value;

  @pragma('vm:prefer-inline')
  GUID get LongUuid => this.Value.LongUuid;

  @pragma('vm:prefer-inline')
  set LongUuid(GUID value) => this.Value.LongUuid = value;
}

/// Used when querying for the presence of a Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-bth_query_device>.
///
/// {@category struct}
@Packed(1)
base class BTH_QUERY_DEVICE extends Struct {
  /// Reserved.
  @Uint32()
  external int LAP;

  /// Requested length of the inquiry, in seconds.
  @Uint8()
  external int length;
}

/// Used to query a Bluetooth service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-bth_query_service>.
///
/// {@category struct}
@Packed(1)
base class BTH_QUERY_SERVICE extends Struct {
  /// Type of service to perform.
  @Uint32()
  external int type;

  /// Service handle on which to query the attributes specified in the
  /// <b>pRange</b> member.
  @Uint32()
  external int serviceHandle;

  /// UUIDs that a record must contain to match the search.
  @Array(12)
  external Array<SdpQueryUuid> uuids;

  /// Number of elements in <b>pRange</b>.
  @Uint32()
  external int numRange;

  /// Attribute values to retrieve for any matching records, in the form of an
  /// array of <b>SdpAttributeRange</b> structures.
  @Array.variableWithVariableDimension(1)
  external Array<SdpAttributeRange> pRange;
}

/// Stores data about Bluetooth devices within communication range.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthdef/ns-bthdef-bth_radio_in_range>.
///
/// {@category struct}
base class BTH_RADIO_IN_RANGE extends Struct {
  /// Current set of attributes associated with the remote device, in the form
  /// of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bthdef/ns-bthdef-bth_device_info">BTH_DEVICE_INFO</a>
  /// structure.
  external BTH_DEVICE_INFO deviceInfo;

  /// Previous flags for the <b>flags</b> member of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bthdef/ns-bthdef-bth_device_info">BTH_DEVICE_INFO</a>
  /// structure pointed to by the <b>deviceInfo</b> member.
  @Uint32()
  external int previousDeviceFlags;
}

/// Provides service information for the specified Bluetooth service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-bth_set_service>.
///
/// {@category struct}
@Packed(1)
base class BTH_SET_SERVICE extends Struct {
  /// Version of the SDP.
  external Pointer<Uint32> pSdpVersion;

  /// Handle to the SDP record.
  external Pointer<HANDLE> pRecordHandle;

  /// Class of device (COD) information.
  @Uint32()
  external int fCodService;

  @Array(5)
  external Array<Uint32> _Reserved;

  /// Size, in bytes, of <b>pRecord</b>.
  @Uint32()
  external int ulRecordLength;

  /// SDP record, as defined by the Bluetooth specification.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> pRecord;
}

/// Contains information that the GetFileInformationByHandle function retrieves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/ns-fileapi-by_handle_file_information>.
///
/// {@category struct}
base class BY_HANDLE_FILE_INFORMATION extends Struct {
  /// The file attributes.
  @Uint32()
  external int dwFileAttributes;

  /// A `FILETIME` structure that specifies when a file or directory is created.
  external FILETIME ftCreationTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastAccessTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastWriteTime;

  /// The serial number of the volume that contains a file.
  @Uint32()
  external int dwVolumeSerialNumber;

  /// The high-order part of the file size.
  @Uint32()
  external int nFileSizeHigh;

  /// The low-order part of the file size.
  @Uint32()
  external int nFileSizeLow;

  /// The number of links to this file.
  @Uint32()
  external int nNumberOfLinks;

  /// The high-order part of a unique identifier that is associated with a file.
  @Uint32()
  external int nFileIndexHigh;

  /// The low-order part of a unique identifier that is associated with a file.
  @Uint32()
  external int nFileIndexLow;
}

/// {@category struct}
base class CABOOL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<VARIANT_BOOL> pElems;
}

/// {@category struct}
base class CABSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<BSTR> pElems;
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

  external PSTR pElems;
}

/// Describes the cache attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-cache_descriptor>.
///
/// {@category struct}
base class CACHE_DESCRIPTOR extends Struct {
  @Uint8()
  external int Level;

  /// The cache associativity.
  @Uint8()
  external int Associativity;

  /// The cache line size, in bytes.
  @Uint16()
  external int LineSize;

  /// The cache size, in bytes.
  @Uint32()
  external int Size;

  @Int32()
  external int _Type;

  /// The cache type.
  @pragma('vm:prefer-inline')
  PROCESSOR_CACHE_TYPE get Type => PROCESSOR_CACHE_TYPE(_Type);

  @pragma('vm:prefer-inline')
  set Type(PROCESSOR_CACHE_TYPE value) => _Type = value;
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

  external Pointer<PSTR> pElems;
}

/// {@category struct}
base class CALPWSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<PWSTR> pElems;
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

/// Contains information passed to a WH_CBT hook procedure, CBTProc, before a
/// window is activated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cbtactivatestruct>.
///
/// {@category struct}
base class CBTACTIVATESTRUCT extends Struct {
  @Int32()
  external int _fMouse;

  /// A handle to the active window.
  @IntPtr()
  external int hWndActive;

  /// This member is [TRUE] if a mouse click is causing the activation or
  /// [FALSE] if it is not.
  @pragma('vm:prefer-inline')
  bool get fMouse => _fMouse != FALSE;

  @pragma('vm:prefer-inline')
  set fMouse(bool value) => _fMouse = value ? TRUE : FALSE;
}

/// Contains information passed to a WH_CBT hook procedure, CBTProc, before a
/// window is created.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cbt_createwndw>.
///
/// {@category struct}
base class CBT_CREATEWND extends Struct {
  /// A pointer to a `CREATESTRUCT` structure that contains initialization
  /// parameters for the window about to be created.
  external Pointer<CREATESTRUCT> lpcs;

  /// A handle to the window whose position in the Z order precedes that of the
  /// window being created.
  @IntPtr()
  external int hwndInsertAfter;
}

/// Contains both the encoded and decoded representations of a certificate.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_context>.
///
/// {@category struct}
base class CERT_CONTEXT extends Struct {
  @Uint32()
  external int _dwCertEncodingType;

  /// A pointer to a buffer that contains the encoded certificate.
  external Pointer<Uint8> pbCertEncoded;

  /// The size, in bytes, of the encoded certificate.
  @Uint32()
  external int cbCertEncoded;

  /// The address of a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wincrypt/ns-wincrypt-cert_info">CERT_INFO</a>
  /// structure that contains the certificate information.
  external Pointer<CERT_INFO> pCertInfo;

  /// A handle to the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/c-gly">certificate
  /// store</a> that contains the certificate <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/c-gly">context</a>.
  @IntPtr()
  external int hCertStore;

  /// Type of encoding used.
  @pragma('vm:prefer-inline')
  CERT_QUERY_ENCODING_TYPE get dwCertEncodingType =>
      CERT_QUERY_ENCODING_TYPE(_dwCertEncodingType);

  @pragma('vm:prefer-inline')
  set dwCertEncodingType(CERT_QUERY_ENCODING_TYPE value) =>
      _dwCertEncodingType = value;
}

/// Contains the extension information for a certificate, Certificate Revocation
/// List (CRL) or Certificate Trust List (CTL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_extension>.
///
/// {@category struct}
base class CERT_EXTENSION extends Struct {
  /// <a href="https://docs.microsoft.com/windows/desktop/SecGloss/o-gly">Object
  /// identifier</a> (OID) that specifies the structure of the extension data
  /// contained in the <b>Value</b> member.
  external PSTR pszObjId;

  @Int32()
  external int _fCritical;

  /// A `CRYPT_OBJID_BLOB` structure that contains the encoded extension data.
  external CRYPT_INTEGER_BLOB Value;

  /// If [TRUE], any limitations specified by the extension in the <b>Value</b>
  /// member of this structure are imperative.
  @pragma('vm:prefer-inline')
  bool get fCritical => _fCritical != FALSE;

  @pragma('vm:prefer-inline')
  set fCritical(bool value) => _fCritical = value ? TRUE : FALSE;
}

/// Contains the information of a certificate.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_info>.
///
/// {@category struct}
base class CERT_INFO extends Struct {
  /// The version number of a certificate.
  @Uint32()
  external int dwVersion;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/b-gly">BLOB</a>
  /// that contains the serial number of a certificate.
  external CRYPT_INTEGER_BLOB SerialNumber;

  /// A `CRYPT_ALGORITHM_IDENTIFIER` structure that contains the signature
  /// algorithm type and encoded additional encryption parameters.
  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;

  /// The name, in encoded form, of the issuer of the certificate.
  external CRYPT_INTEGER_BLOB Issuer;

  /// Date and time before which the certificate is not valid.
  external FILETIME NotBefore;

  /// Date and time after which the certificate is not valid.
  external FILETIME NotAfter;

  /// The encoded name of the subject of the certificate.
  external CRYPT_INTEGER_BLOB Subject;

  /// A `CERT_PUBLIC_KEY_INFO` structure that contains the encoded public key
  /// and its algorithm.
  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;

  /// A BLOB that contains a unique identifier of the issuer.
  external CRYPT_BIT_BLOB IssuerUniqueId;

  /// A BLOB that contains a unique identifier of the subject.
  external CRYPT_BIT_BLOB SubjectUniqueId;

  /// The number of elements in the <b>rgExtension</b> array.
  @Uint32()
  external int cExtension;

  /// An array of pointers to <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wincrypt/ns-wincrypt-cert_extension">CERT_EXTENSION</a>
  /// structures, each of which contains extension information about the
  /// certificate.
  external Pointer<CERT_EXTENSION> rgExtension;
}

/// Contains a public key and its algorithm.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_public_key_info>.
///
/// {@category struct}
base class CERT_PUBLIC_KEY_INFO extends Struct {
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wincrypt/ns-wincrypt-crypt_algorithm_identifier">CRYPT_ALGORITHM_IDENTIFIER</a>
  /// structure that contains the public key algorithm type and associated
  /// additional parameters.
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;

  /// BLOB containing an encoded public key.
  external CRYPT_BIT_BLOB PublicKey;
}

/// Contains extended result information obtained by calling the
/// ChangeWindowMessageFilterEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-changefilterstruct>.
///
/// {@category struct}
base class CHANGEFILTERSTRUCT extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _ExtStatus;

  @pragma('vm:prefer-inline')
  MSGFLTINFO_STATUS get ExtStatus => MSGFLTINFO_STATUS(_ExtStatus);

  @pragma('vm:prefer-inline')
  set ExtStatus(MSGFLTINFO_STATUS value) => _ExtStatus = value;
}

typedef CHAR = Int8;

/// Specifies a Unicode or ANSI character and its attributes.
///
/// This structure is used by console functions to read from and write to a
/// console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/char-info-str>.
///
/// {@category struct}
base class CHAR_INFO extends Struct {
  /// A union of the following members.
  external CHAR_INFO_0 Char;

  /// The character attributes.
  @Uint16()
  external int Attributes;
}

/// {@category union}
sealed class CHAR_INFO_0 extends Union {
  @Uint16()
  external int UnicodeChar;

  @Int8()
  external int AsciiChar;
}

extension CHAR_INFO_0_Extension on CHAR_INFO {
  @pragma('vm:prefer-inline')
  int get UnicodeChar => this.Char.UnicodeChar;

  @pragma('vm:prefer-inline')
  set UnicodeChar(int value) => this.Char.UnicodeChar = value;

  @pragma('vm:prefer-inline')
  int get AsciiChar => this.Char.AsciiChar;

  @pragma('vm:prefer-inline')
  set AsciiChar(int value) => this.Char.AsciiChar = value;
}

/// Contains information the ChooseColor function uses to initialize the Color
/// dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-choosecolorw>.
///
/// {@category struct}
base class CHOOSECOLOR extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// If the <b>CC_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  @IntPtr()
  external int hInstance;

  /// If the <b>CC_RGBINIT</b> flag is set, <b>rgbResult</b> specifies the color
  /// initially selected when the dialog box is created.
  @Uint32()
  external int rgbResult;

  /// A pointer to an array of 16 values that contain red, green, blue (RGB)
  /// values for the custom color boxes in the dialog box.
  external Pointer<COLORREF> lpCustColors;

  @Uint32()
  external int _Flags;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to a `CCHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPCCHOOKPROC>> lpfnHook;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  external PWSTR lpTemplateName;

  /// A set of bit flags that you can use to initialize the <b>Color</b> dialog
  /// box.
  @pragma('vm:prefer-inline')
  CHOOSECOLOR_FLAGS get Flags => CHOOSECOLOR_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(CHOOSECOLOR_FLAGS value) => _Flags = value;
}

/// Contains information that the ChooseFont function uses to initialize the
/// Font dialog box.
///
/// After the user closes the dialog box, the system returns information about
/// the user's selection in this structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-choosefontw>.
///
/// {@category struct}
base class CHOOSEFONT extends Struct {
  /// The length of the structure, in bytes.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// This member is ignored by the <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms646914(v=vs.85)">ChooseFont</a>
  /// function.
  @IntPtr()
  external int hDC;

  /// A pointer to a `LOGFONT` structure.
  external Pointer<LOGFONT> lpLogFont;

  /// The size of the selected font, in units of 1/10 of a point.
  @Int32()
  external int iPointSize;

  @Uint32()
  external int _Flags;

  /// If the <b>CF_EFFECTS</b> flag is set, <b>rgbColors</b> specifies the
  /// initial text color.
  @Uint32()
  external int rgbColors;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to a `CFHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPCFHOOKPROC>> lpfnHook;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  external PWSTR lpTemplateName;

  /// If the <b>CF_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  @IntPtr()
  external int hInstance;

  /// The style data.
  external PWSTR lpszStyle;

  @Uint16()
  external int _nFontType;

  @Uint16()
  external int MISSING_ALIGNMENT__;

  /// The minimum point size a user can select.
  @Int32()
  external int nSizeMin;

  /// The maximum point size a user can select.
  @Int32()
  external int nSizeMax;

  @pragma('vm:prefer-inline')
  CHOOSEFONT_FLAGS get Flags => CHOOSEFONT_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(CHOOSEFONT_FLAGS value) => _Flags = value;

  @pragma('vm:prefer-inline')
  CHOOSEFONT_FONT_TYPE get nFontType => CHOOSEFONT_FONT_TYPE(_nFontType);

  @pragma('vm:prefer-inline')
  set nFontType(CHOOSEFONT_FONT_TYPE value) => _nFontType = value;
}

/// Contains the x,y, and z coordinates of a specific color in a specified color
/// space.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-ciexyz>.
///
/// {@category struct}
base class CIEXYZ extends Struct {
  /// The x coordinate in fix point (2.30).
  @Int32()
  external int ciexyzX;

  /// The y coordinate in fix point (2.30).
  @Int32()
  external int ciexyzY;

  /// The z coordinate in fix point (2.30).
  @Int32()
  external int ciexyzZ;
}

/// Contains the x,y, and z coordinates of the three colors that correspond to
/// the red, green, and blue endpoints for a specified logical color space.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-ciexyztriple>.
///
/// {@category struct}
base class CIEXYZTRIPLE extends Struct {
  /// The xyz coordinates of red endpoint.
  external CIEXYZ ciexyzRed;

  /// The xyz coordinates of green endpoint.
  external CIEXYZ ciexyzGreen;

  /// The xyz coordinates of blue endpoint.
  external CIEXYZ ciexyzBlue;
}

/// {@category struct}
base class CLIENT_ID extends Struct {
  @IntPtr()
  external int UniqueProcess;

  @IntPtr()
  external int UniqueThread;
}

/// {@category struct}
base class CLIPDATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Int32()
  external int ulClipFmt;

  external Pointer<Uint8> pClipData;
}

/// Defines the color adjustment values used by the StretchBlt and StretchDIBits
/// functions when the stretch mode is HALFTONE.
///
/// You can set the color adjustment values by calling the SetColorAdjustment
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-coloradjustment>.
///
/// {@category struct}
base class COLORADJUSTMENT extends Struct {
  /// The size, in bytes, of the structure.
  @Uint16()
  external int caSize;

  @Uint16()
  external int caFlags;

  @Uint16()
  external int caIlluminantIndex;

  /// Specifies the <i>n</i><sup>th</sup> power gamma-correction value for the
  /// red primary of the source colors.
  @Uint16()
  external int caRedGamma;

  /// Specifies the <i>n</i><sup>th</sup> power gamma-correction value for the
  /// green primary of the source colors.
  @Uint16()
  external int caGreenGamma;

  /// Specifies the <i>n</i><sup>th</sup> power gamma-correction value for the
  /// blue primary of the source colors.
  @Uint16()
  external int caBlueGamma;

  /// The black reference for the source colors.
  @Uint16()
  external int caReferenceBlack;

  /// The white reference for the source colors.
  @Uint16()
  external int caReferenceWhite;

  /// The amount of contrast to be applied to the source object.
  @Int16()
  external int caContrast;

  /// The amount of brightness to be applied to the source object.
  @Int16()
  external int caBrightness;

  /// The amount of colorfulness to be applied to the source object.
  @Int16()
  external int caColorfulness;

  /// The amount of red or green tint adjustment to be applied to the source
  /// object.
  @Int16()
  external int caRedGreenTint;
}

/// The COLORREF value is used to specify an RGB color.
///
/// To learn more, see <https://learn.microsoft.com/windows/win32/gdi/colorref>.
typedef COLORREF = Uint32;

/// Used generically to filter elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-comdlg_filterspec>.
///
/// {@category struct}
base class COMDLG_FILTERSPEC extends Struct {
  /// A pointer to a buffer that contains the friendly name of the filter.
  external PWSTR pszName;

  /// A pointer to a buffer that contains the filter pattern.
  external PWSTR pszSpec;
}

/// Contains information about the configuration state of a communications
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-commconfig>.
///
/// {@category struct}
base class COMMCONFIG extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int dwSize;

  /// The version number of the structure.
  @Uint16()
  external int wVersion;

  @Uint16()
  external int _wReserved;

  /// The device-control block (<a
  /// href="https://docs.microsoft.com/windows/desktop/api/winbase/ns-winbase-dcb">DCB</a>)
  /// structure for RS-232 serial devices.
  external DCB dcb;

  /// The type of communications provider, and thus the format of the
  /// provider-specific data.
  @Uint32()
  external int dwProviderSubType;

  /// The offset of the provider-specific data relative to the beginning of the
  /// structure, in bytes.
  @Uint32()
  external int dwProviderOffset;

  /// The size of the provider-specific data, in bytes.
  @Uint32()
  external int dwProviderSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _wcProviderData;

  /// Optional provider-specific data.
  @pragma('vm:prefer-inline')
  String get wcProviderData => _wcProviderData.toDartString();

  @pragma('vm:prefer-inline')
  set wcProviderData(String value) => _wcProviderData.setString(value);
}

/// Contains information about a communications driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-commprop>.
///
/// {@category struct}
base class COMMPROP extends Struct {
  /// The size of the entire data packet, regardless of the amount of data
  /// requested, in bytes.
  @Uint16()
  external int wPacketLength;

  /// The version of the structure.
  @Uint16()
  external int wPacketVersion;

  /// A bitmask indicating which services are implemented by this provider.
  @Uint32()
  external int dwServiceMask;

  @Uint32()
  external int _dwReserved1;

  /// The maximum size of the driver's internal output buffer, in bytes.
  @Uint32()
  external int dwMaxTxQueue;

  /// The maximum size of the driver's internal input buffer, in bytes.
  @Uint32()
  external int dwMaxRxQueue;

  /// The maximum allowable baud rate, in bits per second (bps).
  @Uint32()
  external int dwMaxBaud;

  /// The communications-provider type.
  @Uint32()
  external int dwProvSubType;

  /// A bitmask indicating the capabilities offered by the provider.
  @Uint32()
  external int dwProvCapabilities;

  /// A bitmask indicating the communications parameters that can be changed.
  @Uint32()
  external int dwSettableParams;

  /// The baud rates that can be used.
  @Uint32()
  external int dwSettableBaud;

  /// A bitmask indicating the number of data bits that can be set.
  @Uint16()
  external int wSettableData;

  @Uint16()
  external int _wSettableStopParity;

  /// The size of the driver's internal output buffer, in bytes.
  @Uint32()
  external int dwCurrentTxQueue;

  /// The size of the driver's internal input buffer, in bytes.
  @Uint32()
  external int dwCurrentRxQueue;

  /// Any provider-specific data.
  @Uint32()
  external int dwProvSpec1;

  /// Any provider-specific data.
  @Uint32()
  external int dwProvSpec2;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _wcProvChar;

  /// A bitmask indicating the stop bit and parity settings that can be
  /// selected.
  @pragma('vm:prefer-inline')
  COMMPROP_STOP_PARITY get wSettableStopParity =>
      COMMPROP_STOP_PARITY(_wSettableStopParity);

  @pragma('vm:prefer-inline')
  set wSettableStopParity(COMMPROP_STOP_PARITY value) =>
      _wSettableStopParity = value;

  /// Any provider-specific data.
  @pragma('vm:prefer-inline')
  String get wcProvChar => _wcProvChar.toDartString();

  @pragma('vm:prefer-inline')
  set wcProvChar(String value) => _wcProvChar.setString(value);
}

/// Contains the time-out parameters for a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-commtimeouts>.
///
/// {@category struct}
base class COMMTIMEOUTS extends Struct {
  /// The maximum time allowed to elapse before the arrival of the next byte on
  /// the communications line, in milliseconds.
  @Uint32()
  external int ReadIntervalTimeout;

  /// The multiplier used to calculate the total time-out period for read
  /// operations, in milliseconds.
  @Uint32()
  external int ReadTotalTimeoutMultiplier;

  /// A constant used to calculate the total time-out period for read
  /// operations, in milliseconds.
  @Uint32()
  external int ReadTotalTimeoutConstant;

  /// The multiplier used to calculate the total time-out period for write
  /// operations, in milliseconds.
  @Uint32()
  external int WriteTotalTimeoutMultiplier;

  /// A constant used to calculate the total time-out period for write
  /// operations, in milliseconds.
  @Uint32()
  external int WriteTotalTimeoutConstant;
}

/// Contains information about a communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-comstat>.
///
/// {@category struct}
base class COMSTAT extends Struct {
  @Uint32()
  external int bitfield;

  /// The number of bytes received by the serial provider but not yet read by a
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-readfile">ReadFile</a>
  /// operation.
  @Uint32()
  external int cbInQue;

  /// The number of bytes of user data remaining to be transmitted for all write
  /// operations.
  @Uint32()
  external int cbOutQue;

  @pragma('vm:prefer-inline')
  int get fCtsHold => bitfield.getBits(0, 1);

  @pragma('vm:prefer-inline')
  set fCtsHold(int value) => bitfield = bitfield.setBits(0, 1, value);

  @pragma('vm:prefer-inline')
  int get fDsrHold => bitfield.getBits(1, 1);

  @pragma('vm:prefer-inline')
  set fDsrHold(int value) => bitfield = bitfield.setBits(1, 1, value);

  @pragma('vm:prefer-inline')
  int get fRlsdHold => bitfield.getBits(2, 1);

  @pragma('vm:prefer-inline')
  set fRlsdHold(int value) => bitfield = bitfield.setBits(2, 1, value);

  @pragma('vm:prefer-inline')
  int get fXoffHold => bitfield.getBits(3, 1);

  @pragma('vm:prefer-inline')
  set fXoffHold(int value) => bitfield = bitfield.setBits(3, 1, value);

  @pragma('vm:prefer-inline')
  int get fXoffSent => bitfield.getBits(4, 1);

  @pragma('vm:prefer-inline')
  set fXoffSent(int value) => bitfield = bitfield.setBits(4, 1, value);

  @pragma('vm:prefer-inline')
  int get fEof => bitfield.getBits(5, 1);

  @pragma('vm:prefer-inline')
  set fEof(int value) => bitfield = bitfield.setBits(5, 1, value);

  @pragma('vm:prefer-inline')
  int get fTxim => bitfield.getBits(6, 1);

  @pragma('vm:prefer-inline')
  set fTxim(int value) => bitfield = bitfield.setBits(6, 1, value);
}

/// {@category struct}
base class CONDITION_VARIABLE extends Struct {
  external Pointer Ptr;
}

/// Describes a connection that exists to a given connection point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/ns-ocidl-connectdata>.
///
/// {@category struct}
base class CONNECTDATA extends Struct {
  external VTablePointer _pUnk;

  /// Connection where this value is the same token that is returned originally
  /// from calls to <a
  /// href="https://docs.microsoft.com/windows/desktop/api/ocidl/nf-ocidl-iconnectionpoint-advise">IConnectionPoint::Advise</a>.
  @Uint32()
  external int dwCookie;

  /// A pointer to the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/unknwn/nn-unknwn-iunknown">IUnknown</a>
  /// interface on a connected advisory sink.
  @pragma('vm:prefer-inline')
  IUnknown? get pUnk => _pUnk.isNull ? null : (IUnknown(_pUnk)..addRef());

  @pragma('vm:prefer-inline')
  set pUnk(IUnknown? value) => _pUnk = value?.ptr ?? nullptr;
}

/// Contains the size and visibility information about the about the console
/// cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/console-cursor-info-str>.
///
/// {@category struct}
base class CONSOLE_CURSOR_INFO extends Struct {
  /// The percentage of the character cell that is filled by the cursor.
  @Uint32()
  external int dwSize;

  @Int32()
  external int _bVisible;

  /// The visibility of the cursor.
  @pragma('vm:prefer-inline')
  bool get bVisible => _bVisible != FALSE;

  @pragma('vm:prefer-inline')
  set bVisible(bool value) => _bVisible = value ? TRUE : FALSE;
}

/// Contains information for a console read operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/console-readconsole-control>.
///
/// {@category struct}
base class CONSOLE_READCONSOLE_CONTROL extends Struct {
  /// The size of the structure.
  @Uint32()
  external int nLength;

  /// The number of characters to skip (and thus preserve) before writing newly
  /// read input in the buffer passed to the `ReadConsole` function.
  @Uint32()
  external int nInitialChars;

  /// A mask specifying which control characters between `0x00` and `0x1F`
  /// should be used to signal that the read is complete.
  @Uint32()
  external int dwCtrlWakeupMask;

  /// The state of the control keys.
  @Uint32()
  external int dwControlKeyState;
}

/// Contains information about a console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/console-screen-buffer-info-str>.
///
/// {@category struct}
base class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  /// A `COORD` structure that contains the size of the console screen buffer,
  /// in character columns and rows.
  external COORD dwSize;

  /// A `COORD` structure that contains the column and row coordinates of the
  /// cursor in the console screen buffer.
  external COORD dwCursorPosition;

  @Uint16()
  external int _wAttributes;

  /// A `SMALL_RECT` structure that contains the console screen buffer
  /// coordinates of the upper-left and lower-right corners of the display
  /// window.
  external SMALL_RECT srWindow;

  /// A `COORD` structure that contains the maximum size of the console window,
  /// in character columns and rows, given the current screen buffer size and
  /// font and the screen size.
  external COORD dwMaximumWindowSize;

  /// The attributes of the characters written to a screen buffer by the
  /// `WriteFile` and `WriteConsole` functions, or echoed to a screen buffer by
  /// the `ReadFile` and `ReadConsole` functions.
  @pragma('vm:prefer-inline')
  CONSOLE_CHARACTER_ATTRIBUTES get wAttributes =>
      CONSOLE_CHARACTER_ATTRIBUTES(_wAttributes);

  @pragma('vm:prefer-inline')
  set wAttributes(CONSOLE_CHARACTER_ATTRIBUTES value) => _wAttributes = value;
}

/// Contains information for a console selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/console-selection-info-str>.
///
/// {@category struct}
base class CONSOLE_SELECTION_INFO extends Struct {
  /// The selection indicator.
  @Uint32()
  external int dwFlags;

  /// A `COORD` structure that specifies the selection anchor, in characters.
  external COORD dwSelectionAnchor;

  /// A `SMALL_RECT` structure that specifies the selection rectangle.
  external SMALL_RECT srSelection;
}

/// Defines the coordinates of a character cell in a console screen buffer.
///
/// To learn more, see <https://learn.microsoft.com/windows/console/coord-str>.
///
/// {@category struct}
base class COORD extends Struct {
  /// The horizontal coordinate or column value.
  @Int16()
  external int X;

  /// The vertical coordinate or row value.
  @Int16()
  external int Y;
}

/// {@category struct}
base class COR_FIELD_OFFSET extends Struct {
  @Uint32()
  external int ridOfField;

  @Uint32()
  external int ulOffset;
}

/// The handle must be released using the `CoDecrementMTAUsage` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef CO_MTA_USAGE_COOKIE = IntPtr;

/// Contains optional extended parameters for CreateFile2.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/ns-fileapi-createfile2_extended_parameters>.
///
/// {@category struct}
base class CREATEFILE2_EXTENDED_PARAMETERS extends Struct {
  /// Contains the size of this structure,
  /// `sizeOf<CREATEFILE2_EXTENDED_PARAMETERS>()`.
  @Uint32()
  external int dwSize;

  /// The file or device attributes and flags, **FILE_ATTRIBUTE_NORMAL** being
  /// the most common default value for files.
  @Uint32()
  external int dwFileAttributes;

  /// This parameter can contain combinations of flags (<b>FILE_FLAG_*</b>) for
  /// control of file or device caching behavior, access modes, and other
  /// special-purpose flags.
  @Uint32()
  external int dwFileFlags;

  /// The _dwSecurityQosFlags_ parameter specifies SQOS information.
  @Uint32()
  external int dwSecurityQosFlags;

  /// A pointer to a `SECURITY_ATTRIBUTES` structure that contains two separate
  /// but related data members: an optional security descriptor, and a Boolean
  /// value that determines whether the returned handle can be inherited by
  /// child processes.
  external Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes;

  /// A valid handle to a template file with the **GENERIC_READ** access right.
  @IntPtr()
  external int hTemplateFile;
}

/// Defines the initialization parameters passed to the window procedure of an
/// application.
///
/// These members are identical to the parameters of the CreateWindowEx
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-createstructw>.
///
/// {@category struct}
base class CREATESTRUCT extends Struct {
  /// Contains additional data which may be used to create the window.
  external Pointer lpCreateParams;

  /// A handle to the module that owns the new window.
  @IntPtr()
  external int hInstance;

  /// A handle to the menu to be used by the new window.
  @IntPtr()
  external int hMenu;

  /// A handle to the parent window, if the window is a child window.
  @IntPtr()
  external int hwndParent;

  /// The height of the new window, in pixels.
  @Int32()
  external int cy;

  /// The width of the new window, in pixels.
  @Int32()
  external int cx;

  /// The y-coordinate of the upper left corner of the new window.
  @Int32()
  external int y;

  /// The x-coordinate of the upper left corner of the new window.
  @Int32()
  external int x;

  @Int32()
  external int _style;

  /// The name of the new window.
  external PWSTR lpszName;

  /// A pointer to a null-terminated string or an atom that specifies the class
  /// name of the new window.
  external PWSTR lpszClass;

  @Uint32()
  external int _dwExStyle;

  /// The style for the new window.
  @pragma('vm:prefer-inline')
  WINDOW_STYLE get style => WINDOW_STYLE(_style);

  @pragma('vm:prefer-inline')
  set style(WINDOW_STYLE value) => _style = value;

  /// The extended window style for the new window.
  @pragma('vm:prefer-inline')
  WINDOW_EX_STYLE get dwExStyle => WINDOW_EX_STYLE(_dwExStyle);

  @pragma('vm:prefer-inline')
  set dwExStyle(WINDOW_EX_STYLE value) => _dwExStyle = value;
}

/// Contains an individual credential.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/ns-wincred-credentialw>.
///
/// {@category struct}
base class CREDENTIAL extends Struct {
  @Uint32()
  external int _Flags;

  @Uint32()
  external int _Type;

  /// The name of the credential.
  external PWSTR TargetName;

  /// A string comment from the user that describes this credential.
  external PWSTR Comment;

  /// The time, in Coordinated Universal Time (Greenwich Mean Time), of the last
  /// modification of the credential.
  external FILETIME LastWritten;

  /// The size, in bytes, of the <b>CredentialBlob</b> member.
  @Uint32()
  external int CredentialBlobSize;

  /// Secret data for the credential.
  external Pointer<Uint8> CredentialBlob;

  @Uint32()
  external int _Persist;

  /// The number of application-defined attributes to be associated with the
  /// credential.
  @Uint32()
  external int AttributeCount;

  /// An application-defined attributes that are associated with the credential.
  external Pointer<CREDENTIAL_ATTRIBUTE> Attributes;

  /// Alias for the <b>TargetName</b> member.
  external PWSTR TargetAlias;

  /// The user name of the account used to connect to <b>TargetName</b>.
  external PWSTR UserName;

  /// A bit member that identifies characteristics of the credential.
  @pragma('vm:prefer-inline')
  CRED_FLAGS get Flags => CRED_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(CRED_FLAGS value) => _Flags = value;

  /// The type of the credential.
  @pragma('vm:prefer-inline')
  CRED_TYPE get Type => CRED_TYPE(_Type);

  @pragma('vm:prefer-inline')
  set Type(CRED_TYPE value) => _Type = value;

  /// Defines the persistence of this credential.
  @pragma('vm:prefer-inline')
  CRED_PERSIST get Persist => CRED_PERSIST(_Persist);

  @pragma('vm:prefer-inline')
  set Persist(CRED_PERSIST value) => _Persist = value;
}

/// Contains an application-defined attribute of the credential.
///
/// An attribute is a keyword-value pair. It is up to the application to define
/// the meaning of the attribute.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/ns-wincred-credential_attributew>.
///
/// {@category struct}
base class CREDENTIAL_ATTRIBUTE extends Struct {
  /// Name of the application-specific attribute.
  external PWSTR Keyword;

  /// Identifies characteristics of the credential attribute.
  @Uint32()
  external int Flags;

  /// Length of <b>Value</b> in bytes.
  @Uint32()
  external int ValueSize;

  /// Data associated with the attribute.
  external Pointer<Uint8> Value;
}

/// Provides the text of a prompt and information about when and where that
/// prompt is to be displayed when using the CryptProtectData and
/// CryptUnprotectData functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/ns-dpapi-cryptprotect_promptstruct>.
///
/// {@category struct}
base class CRYPTPROTECT_PROMPTSTRUCT extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// <b>DWORD</b> flags that indicate when prompts to the user are to be
  /// displayed.
  @Uint32()
  external int dwPromptFlags;

  /// Window handle to the parent window.
  @IntPtr()
  external int hwndApp;

  /// A string containing the text of a prompt to be displayed.
  external PWSTR szPrompt;
}

/// Specifies an algorithm used to encrypt a private key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-crypt_algorithm_identifier>.
///
/// {@category struct}
base class CRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external PSTR pszObjId;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/b-gly">BLOB</a>
  /// that provides encoded algorithm-specific parameters.
  external CRYPT_INTEGER_BLOB Parameters;
}

/// Contains a set of bits represented by an array of bytes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-crypt_bit_blob>.
///
/// {@category struct}
base class CRYPT_BIT_BLOB extends Struct {
  /// The number of bytes in the <b>pbData</b> array.
  @Uint32()
  external int cbData;

  /// A pointer to an array of bytes that represents the bits.
  external Pointer<Uint8> pbData;

  /// The number of unused bits in the last byte of the array.
  @Uint32()
  external int cUnusedBits;
}

/// Used for an arbitrary array of bytes.
///
/// It is declared in Wincrypt.h and provides flexibility for objects that can
/// contain various data types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/ns-dpapi-crypt_integer_blob>.
///
/// {@category struct}
base class CRYPT_INTEGER_BLOB extends Struct {
  /// The count of bytes in the buffer pointed to by <i>pbData</i>.
  @Uint32()
  external int cbData;

  /// A pointer to a block of data bytes.
  external Pointer<Uint8> pbData;
}

final CUIAutomation = Guid.fromComponents(
  0xff48dba4,
  0x60ef,
  0x4201,
  Uint8List.fromList(const [0xaa, 0x87, 0x54, 0x10, 0x3e, 0xef, 0x59, 0x4e]),
);

final CUIAutomation8 = Guid.fromComponents(
  0xe22ad333,
  0xb25f,
  0x460c,
  Uint8List.fromList(const [0x83, 0xd0, 0x5, 0x81, 0x10, 0x73, 0x95, 0xc9]),
);

/// Contains global cursor information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cursorinfo>.
///
/// {@category struct}
base class CURSORINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _flags;

  /// A handle to the cursor.
  @IntPtr()
  external int hCursor;

  /// A structure that receives the screen coordinates of the cursor.
  external POINT ptScreenPos;

  @pragma('vm:prefer-inline')
  CURSORINFO_FLAGS get flags => CURSORINFO_FLAGS(_flags);

  @pragma('vm:prefer-inline')
  set flags(CURSORINFO_FLAGS value) => _flags = value;
}

/// Defines the message parameters passed to a WH_CALLWNDPROCRET hook procedure,
/// CallWndRetProc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cwpretstruct>.
///
/// {@category struct}
base class CWPRETSTRUCT extends Struct {
  /// The return value of the window procedure that processed the message
  /// specified by the <b>message</b> value.
  @IntPtr()
  external int lResult;

  /// Additional information about the message.
  @IntPtr()
  external int lParam;

  /// Additional information about the message.
  @IntPtr()
  external int wParam;

  /// The message.
  @Uint32()
  external int message;

  /// A handle to the window that processed the message specified by the
  /// <b>message</b> value.
  @IntPtr()
  external int hwnd;
}

/// Defines the message parameters passed to a WH_CALLWNDPROC hook procedure,
/// CallWndProc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cwpstruct>.
///
/// {@category struct}
base class CWPSTRUCT extends Struct {
  /// Additional information about the message.
  @IntPtr()
  external int lParam;

  /// Additional information about the message.
  @IntPtr()
  external int wParam;

  /// The message.
  @Uint32()
  external int message;

  /// A handle to the window to receive the message.
  @IntPtr()
  external int hwnd;
}

/// Useful for calculations involving money, or for any fixed-point calculation
/// where accuracy is particularly important.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ns-wtypes-cy~r1>.
///
/// {@category union}
sealed class CY extends Union {
  external CY_0 Anonymous;

  @Int64()
  external int int64;
}

/// {@category struct}
sealed class CY_0 extends Struct {
  @Uint32()
  external int Lo;

  @Int32()
  external int Hi;
}

extension CY_0_Extension on CY {
  @pragma('vm:prefer-inline')
  int get Lo => this.Anonymous.Lo;

  @pragma('vm:prefer-inline')
  set Lo(int value) => this.Anonymous.Lo = value;

  @pragma('vm:prefer-inline')
  int get Hi => this.Anonymous.Hi;

  @pragma('vm:prefer-inline')
  set Hi(int value) => this.Anonymous.Hi = value;
}

/// Defines the control setting for a serial communications device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
///
/// {@category struct}
base class DCB extends Struct {
  /// The length of the structure, in bytes.
  @Uint32()
  external int DCBlength;

  /// The baud rate at which the communications device operates.
  @Uint32()
  external int BaudRate;

  @Uint32()
  external int bitfield;

  @Uint16()
  external int _wReserved;

  /// The minimum number of bytes in use allowed in the input buffer before flow
  /// control is activated to allow transmission by the sender.
  @Uint16()
  external int XonLim;

  /// The minimum number of free bytes allowed in the input buffer before flow
  /// control is activated to inhibit the sender.
  @Uint16()
  external int XoffLim;

  /// The number of bits in the bytes transmitted and received.
  @Uint8()
  external int ByteSize;

  @Uint8()
  external int _Parity;

  @Uint8()
  external int _StopBits;

  /// The value of the XON character for both transmission and reception.
  @Int8()
  external int XonChar;

  /// The value of the XOFF character for both transmission and reception.
  @Int8()
  external int XoffChar;

  /// The value of the character used to replace bytes received with a parity
  /// error.
  @Int8()
  external int ErrorChar;

  /// The value of the character used to signal the end of data.
  @Int8()
  external int EofChar;

  /// The value of the character used to signal an event.
  @Int8()
  external int EvtChar;

  @Uint16()
  external int _wReserved1;

  @pragma('vm:prefer-inline')
  int get fBinary => bitfield.getBits(0, 1);

  @pragma('vm:prefer-inline')
  set fBinary(int value) => bitfield = bitfield.setBits(0, 1, value);

  @pragma('vm:prefer-inline')
  int get fParity => bitfield.getBits(1, 1);

  @pragma('vm:prefer-inline')
  set fParity(int value) => bitfield = bitfield.setBits(1, 1, value);

  @pragma('vm:prefer-inline')
  int get fOutxCtsFlow => bitfield.getBits(2, 1);

  @pragma('vm:prefer-inline')
  set fOutxCtsFlow(int value) => bitfield = bitfield.setBits(2, 1, value);

  @pragma('vm:prefer-inline')
  int get fOutxDsrFlow => bitfield.getBits(3, 1);

  @pragma('vm:prefer-inline')
  set fOutxDsrFlow(int value) => bitfield = bitfield.setBits(3, 1, value);

  @pragma('vm:prefer-inline')
  int get fDtrControl => bitfield.getBits(4, 2);

  @pragma('vm:prefer-inline')
  set fDtrControl(int value) => bitfield = bitfield.setBits(4, 2, value);

  @pragma('vm:prefer-inline')
  int get fDsrSensitivity => bitfield.getBits(6, 1);

  @pragma('vm:prefer-inline')
  set fDsrSensitivity(int value) => bitfield = bitfield.setBits(6, 1, value);

  @pragma('vm:prefer-inline')
  int get fTXContinueOnXoff => bitfield.getBits(7, 1);

  @pragma('vm:prefer-inline')
  set fTXContinueOnXoff(int value) => bitfield = bitfield.setBits(7, 1, value);

  @pragma('vm:prefer-inline')
  int get fOutX => bitfield.getBits(8, 1);

  @pragma('vm:prefer-inline')
  set fOutX(int value) => bitfield = bitfield.setBits(8, 1, value);

  @pragma('vm:prefer-inline')
  int get fInX => bitfield.getBits(9, 1);

  @pragma('vm:prefer-inline')
  set fInX(int value) => bitfield = bitfield.setBits(9, 1, value);

  @pragma('vm:prefer-inline')
  int get fErrorChar => bitfield.getBits(10, 1);

  @pragma('vm:prefer-inline')
  set fErrorChar(int value) => bitfield = bitfield.setBits(10, 1, value);

  @pragma('vm:prefer-inline')
  int get fNull => bitfield.getBits(11, 1);

  @pragma('vm:prefer-inline')
  set fNull(int value) => bitfield = bitfield.setBits(11, 1, value);

  @pragma('vm:prefer-inline')
  int get fRtsControl => bitfield.getBits(12, 2);

  @pragma('vm:prefer-inline')
  set fRtsControl(int value) => bitfield = bitfield.setBits(12, 2, value);

  @pragma('vm:prefer-inline')
  int get fAbortOnError => bitfield.getBits(14, 1);

  @pragma('vm:prefer-inline')
  set fAbortOnError(int value) => bitfield = bitfield.setBits(14, 1, value);

  @pragma('vm:prefer-inline')
  int get fDummy2 => bitfield.getBits(15, 17);

  @pragma('vm:prefer-inline')
  set fDummy2(int value) => bitfield = bitfield.setBits(15, 17, value);

  @pragma('vm:prefer-inline')
  DCB_PARITY get Parity => DCB_PARITY(_Parity);

  @pragma('vm:prefer-inline')
  set Parity(DCB_PARITY value) => _Parity = value;

  @pragma('vm:prefer-inline')
  DCB_STOP_BITS get StopBits => DCB_STOP_BITS(_StopBits);

  @pragma('vm:prefer-inline')
  set StopBits(DCB_STOP_BITS value) => _StopBits = value;
}

/// Contains debugging information passed to a WH_DEBUG hook procedure,
/// DebugProc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-debughookinfo>.
///
/// {@category struct}
base class DEBUGHOOKINFO extends Struct {
  /// A handle to the thread containing the filter function.
  @Uint32()
  external int idThread;

  /// A handle to the thread that installed the debugging filter function.
  @Uint32()
  external int idThreadInstaller;

  /// The value to be passed to the hook in the <i>lParam</i> parameter of the
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  @IntPtr()
  external int lParam;

  /// The value to be passed to the hook in the <i>wParam</i> parameter of the
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  @IntPtr()
  external int wParam;

  /// The value to be passed to the hook in the <i>nCode</i> parameter of the <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  @Int32()
  external int code;
}

/// Represents a decimal data type that provides a sign and scale for a number.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ns-wtypes-decimal~r1>.
///
/// {@category struct}
base class DECIMAL extends Struct {
  @Uint16()
  external int _wReserved;

  external DECIMAL_0 Anonymous1;

  /// The high 32 bits of the number.
  @Uint32()
  external int Hi32;

  external DECIMAL_1 Anonymous2;
}

/// {@category union}
sealed class DECIMAL_0 extends Union {
  external DECIMAL_0_0 Anonymous;

  @Uint16()
  external int signscale;
}

extension DECIMAL_0_Extension on DECIMAL {
  @pragma('vm:prefer-inline')
  DECIMAL_0_0 get Anonymous => this.Anonymous1.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(DECIMAL_0_0 value) => this.Anonymous1.Anonymous = value;

  @pragma('vm:prefer-inline')
  int get signscale => this.Anonymous1.signscale;

  @pragma('vm:prefer-inline')
  set signscale(int value) => this.Anonymous1.signscale = value;
}

/// {@category struct}
sealed class DECIMAL_0_0 extends Struct {
  @Uint8()
  external int scale;

  @Uint8()
  external int sign;
}

extension DECIMAL_0_0_Extension on DECIMAL {
  @pragma('vm:prefer-inline')
  int get scale => this.Anonymous1.Anonymous.scale;

  @pragma('vm:prefer-inline')
  set scale(int value) => this.Anonymous1.Anonymous.scale = value;

  @pragma('vm:prefer-inline')
  int get sign => this.Anonymous1.Anonymous.sign;

  @pragma('vm:prefer-inline')
  set sign(int value) => this.Anonymous1.Anonymous.sign = value;
}

/// {@category union}
sealed class DECIMAL_1 extends Union {
  external DECIMAL_1_0 Anonymous;

  @Uint64()
  external int Lo64;
}

extension DECIMAL_1_Extension on DECIMAL {
  @pragma('vm:prefer-inline')
  DECIMAL_1_0 get Anonymous => this.Anonymous2.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(DECIMAL_1_0 value) => this.Anonymous2.Anonymous = value;

  @pragma('vm:prefer-inline')
  int get Lo64 => this.Anonymous2.Lo64;

  @pragma('vm:prefer-inline')
  set Lo64(int value) => this.Anonymous2.Lo64 = value;
}

/// {@category struct}
sealed class DECIMAL_1_0 extends Struct {
  @Uint32()
  external int Lo32;

  @Uint32()
  external int Mid32;
}

extension DECIMAL_1_0_Extension on DECIMAL {
  @pragma('vm:prefer-inline')
  int get Lo32 => this.Anonymous2.Anonymous.Lo32;

  @pragma('vm:prefer-inline')
  set Lo32(int value) => this.Anonymous2.Anonymous.Lo32 = value;

  @pragma('vm:prefer-inline')
  int get Mid32 => this.Anonymous2.Anonymous.Mid32;

  @pragma('vm:prefer-inline')
  set Mid32(int value) => this.Anonymous2.Anonymous.Mid32 = value;
}

/// Used by an application to specify values for the axes of a multiple master
/// font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-designvector>.
///
/// {@category struct}
base class DESIGNVECTOR extends Struct {
  @Uint32()
  external int _dvReserved;

  /// Number of values in the <b>dvValues</b> array.
  @Uint32()
  external int dvNumAxes;

  /// An array specifying the values of the axes of a multiple master OpenType
  /// font.
  @Array(16)
  external Array<Int32> dvValues;
}

/// Used for specifying characteristics of display and print devices in the
/// Unicode (wide) character set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-devmodew>.
///
/// {@category struct}
base class DEVMODE extends Struct {
  @Array(32)
  external Array<Uint16> _dmDeviceName;

  /// Specifies the version number of this DEVMODEW structure.
  @Uint16()
  external int dmSpecVersion;

  /// For a printer, specifies the printer driver version number assigned by the
  /// printer driver developer.
  @Uint16()
  external int dmDriverVersion;

  /// Specifies the size in bytes of the public DEVMODEW structure, not
  /// including any private, driver-specified members identified by the
  /// <b>dmDriverExtra</b> member.
  @Uint16()
  external int dmSize;

  /// Specifies the number of bytes of private driver data that follow the
  /// public structure members.
  @Uint16()
  external int dmDriverExtra;

  @Uint32()
  external int _dmFields;

  external DEVMODE_0 Anonymous1;

  @Int16()
  external int _dmColor;

  @Int16()
  external int _dmDuplex;

  /// For printers, specifies the <i>y</i> resolution of the printer, in DPI.
  @Int16()
  external int dmYResolution;

  @Int16()
  external int _dmTTOption;

  @Int16()
  external int _dmCollate;

  @Array(32)
  external Array<Uint16> _dmFormName;

  /// For displays, specifies the number of logical pixels per inch of a display
  /// device and should be equal to the <b>ulLogPixels</b> member of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winddi/ns-winddi-gdiinfo">GDIINFO</a>
  /// structure.
  @Uint16()
  external int dmLogPixels;

  /// For displays, specifies the color resolution, in bits per pixel, of a
  /// display device.
  @Uint32()
  external int dmBitsPerPel;

  /// For displays, specifies the width, in pixels, of the visible device
  /// surface.
  @Uint32()
  external int dmPelsWidth;

  /// For displays, specifies the height, in pixels, of the visible device
  /// surface.
  @Uint32()
  external int dmPelsHeight;

  external DEVMODE_1 Anonymous2;

  /// For displays, specifies the frequency, in hertz, of a display device in
  /// its current mode.
  @Uint32()
  external int dmDisplayFrequency;

  /// Specifies one of the DMICMMETHOD-prefixed constants defined in
  /// <i>wingdi.h</i>.
  @Uint32()
  external int dmICMMethod;

  /// Specifies one of the DMICM-prefixed constants defined in <i>wingdi.h</i>.
  @Uint32()
  external int dmICMIntent;

  /// Specifies one of the DMMEDIA-prefixed constants defined in
  /// <i>wingdi.h</i>.
  @Uint32()
  external int dmMediaType;

  /// Specifies one of the DMDITHER-prefixed constants defined in
  /// <i>wingdi.h</i>.
  @Uint32()
  external int dmDitherType;

  @Uint32()
  external int _dmReserved1;

  @Uint32()
  external int _dmReserved2;

  /// Is reserved for system use and should be ignored by the driver.
  @Uint32()
  external int dmPanningWidth;

  /// Is reserved for system use and should be ignored by the driver.
  @Uint32()
  external int dmPanningHeight;

  /// For a display, specifies the name of the display driver's DLL; for
  /// example, "perm3dd" for the 3Dlabs Permedia3 display driver.
  @pragma('vm:prefer-inline')
  String get dmDeviceName => _dmDeviceName.toDartString();

  @pragma('vm:prefer-inline')
  set dmDeviceName(String value) => _dmDeviceName.setString(value);

  /// Specifies bit flags identifying which of the following DEVMODEW members
  /// are in use.
  @pragma('vm:prefer-inline')
  DEVMODE_FIELD_FLAGS get dmFields => DEVMODE_FIELD_FLAGS(_dmFields);

  @pragma('vm:prefer-inline')
  set dmFields(DEVMODE_FIELD_FLAGS value) => _dmFields = value;

  /// For printers, specifies whether a color printer should print color or
  /// monochrome.
  @pragma('vm:prefer-inline')
  DEVMODE_COLOR get dmColor => DEVMODE_COLOR(_dmColor);

  @pragma('vm:prefer-inline')
  set dmColor(DEVMODE_COLOR value) => _dmColor = value;

  @pragma('vm:prefer-inline')
  DEVMODE_DUPLEX get dmDuplex => DEVMODE_DUPLEX(_dmDuplex);

  @pragma('vm:prefer-inline')
  set dmDuplex(DEVMODE_DUPLEX value) => _dmDuplex = value;

  /// For printers, specifies how TrueType fonts should be printed.
  @pragma('vm:prefer-inline')
  DEVMODE_TRUETYPE_OPTION get dmTTOption =>
      DEVMODE_TRUETYPE_OPTION(_dmTTOption);

  @pragma('vm:prefer-inline')
  set dmTTOption(DEVMODE_TRUETYPE_OPTION value) => _dmTTOption = value;

  @pragma('vm:prefer-inline')
  DEVMODE_COLLATE get dmCollate => DEVMODE_COLLATE(_dmCollate);

  @pragma('vm:prefer-inline')
  set dmCollate(DEVMODE_COLLATE value) => _dmCollate = value;

  /// For printers, specifies the name of the form to use; such as "Letter" or
  /// "Legal".
  @pragma('vm:prefer-inline')
  String get dmFormName => _dmFormName.toDartString();

  @pragma('vm:prefer-inline')
  set dmFormName(String value) => _dmFormName.setString(value);
}

/// {@category union}
sealed class DEVMODE_0 extends Union {
  external DEVMODE_0_0 Anonymous1;
  external DEVMODE_0_1 Anonymous2;
}

extension DEVMODE_0_Extension on DEVMODE {
  @pragma('vm:prefer-inline')
  DEVMODE_0_0 get Anonymous1 => this.Anonymous1.Anonymous1;

  @pragma('vm:prefer-inline')
  set Anonymous1(DEVMODE_0_0 value) => this.Anonymous1.Anonymous1 = value;

  @pragma('vm:prefer-inline')
  DEVMODE_0_1 get Anonymous2 => this.Anonymous1.Anonymous2;

  @pragma('vm:prefer-inline')
  set Anonymous2(DEVMODE_0_1 value) => this.Anonymous1.Anonymous2 = value;
}

/// {@category struct}
sealed class DEVMODE_0_0 extends Struct {
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

extension DEVMODE_0_0_Extension on DEVMODE {
  @pragma('vm:prefer-inline')
  int get dmOrientation => this.Anonymous1.Anonymous1.dmOrientation;

  @pragma('vm:prefer-inline')
  set dmOrientation(int value) =>
      this.Anonymous1.Anonymous1.dmOrientation = value;

  @pragma('vm:prefer-inline')
  int get dmPaperSize => this.Anonymous1.Anonymous1.dmPaperSize;

  @pragma('vm:prefer-inline')
  set dmPaperSize(int value) => this.Anonymous1.Anonymous1.dmPaperSize = value;

  @pragma('vm:prefer-inline')
  int get dmPaperLength => this.Anonymous1.Anonymous1.dmPaperLength;

  @pragma('vm:prefer-inline')
  set dmPaperLength(int value) =>
      this.Anonymous1.Anonymous1.dmPaperLength = value;

  @pragma('vm:prefer-inline')
  int get dmPaperWidth => this.Anonymous1.Anonymous1.dmPaperWidth;

  @pragma('vm:prefer-inline')
  set dmPaperWidth(int value) =>
      this.Anonymous1.Anonymous1.dmPaperWidth = value;

  @pragma('vm:prefer-inline')
  int get dmScale => this.Anonymous1.Anonymous1.dmScale;

  @pragma('vm:prefer-inline')
  set dmScale(int value) => this.Anonymous1.Anonymous1.dmScale = value;

  @pragma('vm:prefer-inline')
  int get dmCopies => this.Anonymous1.Anonymous1.dmCopies;

  @pragma('vm:prefer-inline')
  set dmCopies(int value) => this.Anonymous1.Anonymous1.dmCopies = value;

  @pragma('vm:prefer-inline')
  int get dmDefaultSource => this.Anonymous1.Anonymous1.dmDefaultSource;

  @pragma('vm:prefer-inline')
  set dmDefaultSource(int value) =>
      this.Anonymous1.Anonymous1.dmDefaultSource = value;

  @pragma('vm:prefer-inline')
  int get dmPrintQuality => this.Anonymous1.Anonymous1.dmPrintQuality;

  @pragma('vm:prefer-inline')
  set dmPrintQuality(int value) =>
      this.Anonymous1.Anonymous1.dmPrintQuality = value;
}

/// {@category struct}
sealed class DEVMODE_0_1 extends Struct {
  external POINTL dmPosition;

  @Uint32()
  external int _dmDisplayOrientation;

  @Uint32()
  external int _dmDisplayFixedOutput;

  @pragma('vm:prefer-inline')
  DEVMODE_DISPLAY_ORIENTATION get dmDisplayOrientation =>
      DEVMODE_DISPLAY_ORIENTATION(_dmDisplayOrientation);

  @pragma('vm:prefer-inline')
  set dmDisplayOrientation(DEVMODE_DISPLAY_ORIENTATION value) =>
      _dmDisplayOrientation = value;

  @pragma('vm:prefer-inline')
  DEVMODE_DISPLAY_FIXED_OUTPUT get dmDisplayFixedOutput =>
      DEVMODE_DISPLAY_FIXED_OUTPUT(_dmDisplayFixedOutput);

  @pragma('vm:prefer-inline')
  set dmDisplayFixedOutput(DEVMODE_DISPLAY_FIXED_OUTPUT value) =>
      _dmDisplayFixedOutput = value;
}

extension DEVMODE_0_1_Extension on DEVMODE {
  @pragma('vm:prefer-inline')
  POINTL get dmPosition => this.Anonymous1.Anonymous2.dmPosition;

  @pragma('vm:prefer-inline')
  set dmPosition(POINTL value) => this.Anonymous1.Anonymous2.dmPosition = value;

  @pragma('vm:prefer-inline')
  DEVMODE_DISPLAY_ORIENTATION get dmDisplayOrientation =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation;

  @pragma('vm:prefer-inline')
  set dmDisplayOrientation(DEVMODE_DISPLAY_ORIENTATION value) =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation = value;

  @pragma('vm:prefer-inline')
  DEVMODE_DISPLAY_FIXED_OUTPUT get dmDisplayFixedOutput =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput;

  @pragma('vm:prefer-inline')
  set dmDisplayFixedOutput(DEVMODE_DISPLAY_FIXED_OUTPUT value) =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput = value;
}

/// {@category union}
sealed class DEVMODE_1 extends Union {
  @Uint32()
  external int dmDisplayFlags;

  @Uint32()
  external int dmNup;
}

extension DEVMODE_1_Extension on DEVMODE {
  @pragma('vm:prefer-inline')
  int get dmDisplayFlags => this.Anonymous2.dmDisplayFlags;

  @pragma('vm:prefer-inline')
  set dmDisplayFlags(int value) => this.Anonymous2.dmDisplayFlags = value;

  @pragma('vm:prefer-inline')
  int get dmNup => this.Anonymous2.dmNup;

  @pragma('vm:prefer-inline')
  set dmNup(int value) => this.Anonymous2.dmNup = value;
}

/// {@category struct}
base class DEVPROPKEY extends Struct {
  external GUID fmtid;

  @Uint32()
  external int pid;
}

/// Contains information about a class of devices.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbt/ns-dbt-dev_broadcast_deviceinterface_w>.
///
/// {@category struct}
base class DEV_BROADCAST_DEVICEINTERFACE extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int dbcc_size;

  /// Set to <b>DBT_DEVTYP_DEVICEINTERFACE</b>.
  @Uint32()
  external int dbcc_devicetype;

  @Uint32()
  external int dbcc_reserved;

  /// The GUID for the interface device class.
  external GUID dbcc_classguid;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _dbcc_name;

  /// A string that specifies the name of the device.
  @pragma('vm:prefer-inline')
  String get dbcc_name => _dbcc_name.toDartString();

  @pragma('vm:prefer-inline')
  set dbcc_name(String value) => _dbcc_name.setString(value);
}

/// Serves as a standard header for information related to a device event
/// reported through the WM_DEVICECHANGE message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbt/ns-dbt-dev_broadcast_hdr>.
///
/// {@category struct}
base class DEV_BROADCAST_HDR extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int dbch_size;

  @Uint32()
  external int _dbch_devicetype;

  @Uint32()
  external int dbch_reserved;

  @pragma('vm:prefer-inline')
  DEV_BROADCAST_HDR_DEVICE_TYPE get dbch_devicetype =>
      DEV_BROADCAST_HDR_DEVICE_TYPE(_dbch_devicetype);

  @pragma('vm:prefer-inline')
  set dbch_devicetype(DEV_BROADCAST_HDR_DEVICE_TYPE value) =>
      _dbch_devicetype = value;
}

/// Contains information about a logical volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbt/ns-dbt-dev_broadcast_volume>.
///
/// {@category struct}
base class DEV_BROADCAST_VOLUME extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int dbcv_size;

  /// Set to <b>DBT_DEVTYP_VOLUME</b> (2).
  @Uint32()
  external int dbcv_devicetype;

  @Uint32()
  external int dbcv_reserved;

  /// The logical unit mask identifying one or more logical units.
  @Uint32()
  external int dbcv_unitmask;

  @Uint16()
  external int _dbcv_flags;

  @pragma('vm:prefer-inline')
  DEV_BROADCAST_VOLUME_FLAGS get dbcv_flags =>
      DEV_BROADCAST_VOLUME_FLAGS(_dbcv_flags);

  @pragma('vm:prefer-inline')
  set dbcv_flags(DEV_BROADCAST_VOLUME_FLAGS value) => _dbcv_flags = value;
}

/// Contains information about a DIB created by calling the CreateDIBSection
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-dibsection>.
///
/// {@category struct}
base class DIBSECTION extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-bitmap">BITMAP</a>
  /// data structure that contains information about the DIB: its type, its
  /// dimensions, its color capacities, and a pointer to its bit values.
  external BITMAP dsBm;

  /// A `BITMAPINFOHEADER` structure that contains information about the color
  /// format of the DIB.
  external BITMAPINFOHEADER dsBmih;

  /// Specifies three color masks for the DIB.
  @Array(3)
  external Array<Uint32> dsBitfields;

  /// Contains a handle to the file mapping object that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/nf-wingdi-createdibsection">CreateDIBSection</a>
  /// function used to create the DIB.
  @IntPtr()
  external int dshSection;

  /// The offset to the bitmap's bit values within the file mapping object
  /// referenced by <i>dshSection</i>.
  @Uint32()
  external int dsOffset;
}

/// Represents a disk extent.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-disk_extent>.
///
/// {@category struct}
base class DISK_EXTENT extends Struct {
  /// The number of the disk that contains this extent.
  @Uint32()
  external int DiskNumber;

  /// The offset from the beginning of the disk to the extent, in bytes.
  @Int64()
  external int StartingOffset;

  /// The number of bytes in this extent.
  @Int64()
  external int ExtentLength;
}

/// Describes the geometry of disk devices and media.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-disk_geometry>.
///
/// {@category struct}
base class DISK_GEOMETRY extends Struct {
  /// The number of cylinders.
  @Int64()
  external int Cylinders;

  @Int32()
  external int _MediaType;

  /// The number of tracks per cylinder.
  @Uint32()
  external int TracksPerCylinder;

  /// The number of sectors per track.
  @Uint32()
  external int SectorsPerTrack;

  /// The number of bytes per sector.
  @Uint32()
  external int BytesPerSector;

  /// The type of media.
  @pragma('vm:prefer-inline')
  MEDIA_TYPE get MediaType => MEDIA_TYPE(_MediaType);

  @pragma('vm:prefer-inline')
  set MediaType(MEDIA_TYPE value) => _MediaType = value;
}

/// Describes the extended geometry of disk devices and media.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-disk_geometry_ex>.
///
/// {@category struct}
base class DISK_GEOMETRY_EX extends Struct {
  /// A `DISK_GEOMETRY` structure.
  external DISK_GEOMETRY Geometry;

  /// The disk size, in bytes.
  @Int64()
  external int DiskSize;

  /// Any additional data.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;
}

/// Represents a point or an offset in a two-dimensional space.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_2dregion>.
///
/// {@category struct}
base class DISPLAYCONFIG_2DREGION extends Struct {
  /// The horizontal component of the point or offset.
  @Uint32()
  external int cx;

  /// The vertical component of the point or offset.
  @Uint32()
  external int cy;
}

/// Contains information about the image displayed on the desktop.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_desktop_image_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_DESKTOP_IMAGE_INFO extends Struct {
  /// A `POINTL` structure that specifies the size of the VidPn source surface
  /// that is being displayed on the monitor.
  external POINTL PathSourceSize;

  /// A `RECTL` structure that defines where the desktop image will be
  /// positioned within path source.
  external RECTL DesktopImageRegion;

  /// A `RECTL` structure that defines which part of the desktop image for this
  /// clone group will be displayed on this path.
  external RECTL DesktopImageClip;
}

/// Contains display information about the device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_device_info_header>.
///
/// {@category struct}
base class DISPLAYCONFIG_DEVICE_INFO_HEADER extends Struct {
  @Int32()
  external int _type;

  /// The size, in bytes, of the device information that is retrieved or set.
  @Uint32()
  external int size;

  /// A locally unique identifier (LUID) that identifies the adapter that the
  /// device information packet refers to.
  external LUID adapterId;

  /// The source or target identifier to get or set the device information for.
  @Uint32()
  external int id;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ne-wingdi-displayconfig_device_info_type">DISPLAYCONFIG_DEVICE_INFO_TYPE</a>
  /// enumerated value that determines the type of device information to
  /// retrieve or set.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_DEVICE_INFO_TYPE get type =>
      DISPLAYCONFIG_DEVICE_INFO_TYPE(_type);

  @pragma('vm:prefer-inline')
  set type(DISPLAYCONFIG_DEVICE_INFO_TYPE value) => _type = value;
}

/// Contains either source mode or target mode information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_mode_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_MODE_INFO extends Struct {
  @Int32()
  external int _infoType;

  /// The source or target identifier on the specified adapter that this path
  /// relates to.
  @Uint32()
  external int id;

  /// The identifier of the adapter that this source or target mode information
  /// relates to.
  external LUID adapterId;

  external DISPLAYCONFIG_MODE_INFO_0 Anonymous;

  /// A value that indicates whether the <b>DISPLAYCONFIG_MODE_INFO</b>
  /// structure represents source or target mode information.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_MODE_INFO_TYPE get infoType =>
      DISPLAYCONFIG_MODE_INFO_TYPE(_infoType);

  @pragma('vm:prefer-inline')
  set infoType(DISPLAYCONFIG_MODE_INFO_TYPE value) => _infoType = value;
}

/// {@category union}
sealed class DISPLAYCONFIG_MODE_INFO_0 extends Union {
  external DISPLAYCONFIG_TARGET_MODE targetMode;
  external DISPLAYCONFIG_SOURCE_MODE sourceMode;
  external DISPLAYCONFIG_DESKTOP_IMAGE_INFO desktopImageInfo;
}

extension DISPLAYCONFIG_MODE_INFO_0_Extension on DISPLAYCONFIG_MODE_INFO {
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_TARGET_MODE get targetMode => this.Anonymous.targetMode;

  @pragma('vm:prefer-inline')
  set targetMode(DISPLAYCONFIG_TARGET_MODE value) =>
      this.Anonymous.targetMode = value;

  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_SOURCE_MODE get sourceMode => this.Anonymous.sourceMode;

  @pragma('vm:prefer-inline')
  set sourceMode(DISPLAYCONFIG_SOURCE_MODE value) =>
      this.Anonymous.sourceMode = value;

  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_DESKTOP_IMAGE_INFO get desktopImageInfo =>
      this.Anonymous.desktopImageInfo;

  @pragma('vm:prefer-inline')
  set desktopImageInfo(DISPLAYCONFIG_DESKTOP_IMAGE_INFO value) =>
      this.Anonymous.desktopImageInfo = value;
}

/// Used to describe a single path from a target to a source.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_path_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_INFO extends Struct {
  /// A `DISPLAYCONFIG_PATH_SOURCE_INFO` structure that contains the source
  /// information for the path.
  external DISPLAYCONFIG_PATH_SOURCE_INFO sourceInfo;

  /// A `DISPLAYCONFIG_PATH_TARGET_INFO` structure that contains the target
  /// information for the path.
  external DISPLAYCONFIG_PATH_TARGET_INFO targetInfo;

  /// A bitwise OR of flag values that indicates the state of the path.
  @Uint32()
  external int flags;
}

/// Contains source information for a single path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_path_source_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_SOURCE_INFO extends Struct {
  /// The identifier of the adapter that this source information relates to.
  external LUID adapterId;

  /// The source identifier on the specified adapter that this path relates to.
  @Uint32()
  external int id;

  external DISPLAYCONFIG_PATH_SOURCE_INFO_0 Anonymous;

  /// A bitwise OR of flag values that indicates the status of the source.
  @Uint32()
  external int statusFlags;
}

/// {@category union}
sealed class DISPLAYCONFIG_PATH_SOURCE_INFO_0 extends Union {
  @Uint32()
  external int modeInfoIdx;

  external DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 Anonymous;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_0_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  @pragma('vm:prefer-inline')
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;

  @pragma('vm:prefer-inline')
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;

  @pragma('vm:prefer-inline')
  int get cloneGroupId => bitfield.getBits(0, 16);

  @pragma('vm:prefer-inline')
  set cloneGroupId(int value) => bitfield = bitfield.setBits(0, 16, value);

  @pragma('vm:prefer-inline')
  int get sourceModeInfoIdx => bitfield.getBits(16, 16);

  @pragma('vm:prefer-inline')
  set sourceModeInfoIdx(int value) =>
      bitfield = bitfield.setBits(16, 16, value);
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_0_0_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  @pragma('vm:prefer-inline')
  int get bitfield => this.Anonymous.Anonymous.bitfield;

  @pragma('vm:prefer-inline')
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;

  @pragma('vm:prefer-inline')
  int get cloneGroupId => this.Anonymous.Anonymous.cloneGroupId;

  @pragma('vm:prefer-inline')
  set cloneGroupId(int value) => this.Anonymous.Anonymous.cloneGroupId = value;

  @pragma('vm:prefer-inline')
  int get sourceModeInfoIdx => this.Anonymous.Anonymous.sourceModeInfoIdx;

  @pragma('vm:prefer-inline')
  set sourceModeInfoIdx(int value) =>
      this.Anonymous.Anonymous.sourceModeInfoIdx = value;
}

/// Contains target information for a single path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_path_target_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_PATH_TARGET_INFO extends Struct {
  /// The identifier of the adapter that the path is on.
  external LUID adapterId;

  /// The target identifier on the specified adapter that this path relates to.
  @Uint32()
  external int id;

  external DISPLAYCONFIG_PATH_TARGET_INFO_0 Anonymous;

  @Int32()
  external int _outputTechnology;

  @Int32()
  external int _rotation;

  @Int32()
  external int _scaling;

  /// A `DISPLAYCONFIG_RATIONAL` structure that specifies the refresh rate of
  /// the target.
  external DISPLAYCONFIG_RATIONAL refreshRate;

  @Int32()
  external int _scanLineOrdering;

  @Int32()
  external int _targetAvailable;

  /// A bitwise OR of flag values that indicates the status of the target.
  @Uint32()
  external int statusFlags;

  /// The target's connector type.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY get outputTechnology =>
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(_outputTechnology);

  @pragma('vm:prefer-inline')
  set outputTechnology(DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY value) =>
      _outputTechnology = value;

  /// A value that specifies the rotation of the target.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_ROTATION get rotation => DISPLAYCONFIG_ROTATION(_rotation);

  @pragma('vm:prefer-inline')
  set rotation(DISPLAYCONFIG_ROTATION value) => _rotation = value;

  /// A value that specifies how the source image is scaled to the target.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_SCALING get scaling => DISPLAYCONFIG_SCALING(_scaling);

  @pragma('vm:prefer-inline')
  set scaling(DISPLAYCONFIG_SCALING value) => _scaling = value;

  /// A value that specifies the scan-line ordering of the output on the target.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_SCANLINE_ORDERING get scanLineOrdering =>
      DISPLAYCONFIG_SCANLINE_ORDERING(_scanLineOrdering);

  @pragma('vm:prefer-inline')
  set scanLineOrdering(DISPLAYCONFIG_SCANLINE_ORDERING value) =>
      _scanLineOrdering = value;

  /// A Boolean value that specifies whether the target is available.
  @pragma('vm:prefer-inline')
  bool get targetAvailable => _targetAvailable != FALSE;

  @pragma('vm:prefer-inline')
  set targetAvailable(bool value) => _targetAvailable = value ? TRUE : FALSE;
}

/// {@category union}
sealed class DISPLAYCONFIG_PATH_TARGET_INFO_0 extends Union {
  @Uint32()
  external int modeInfoIdx;

  external DISPLAYCONFIG_PATH_TARGET_INFO_0_0 Anonymous;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_0_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  @pragma('vm:prefer-inline')
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;

  @pragma('vm:prefer-inline')
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_PATH_TARGET_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(DISPLAYCONFIG_PATH_TARGET_INFO_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_PATH_TARGET_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;

  @pragma('vm:prefer-inline')
  int get desktopModeInfoIdx => bitfield.getBits(0, 16);

  @pragma('vm:prefer-inline')
  set desktopModeInfoIdx(int value) =>
      bitfield = bitfield.setBits(0, 16, value);

  @pragma('vm:prefer-inline')
  int get targetModeInfoIdx => bitfield.getBits(16, 16);

  @pragma('vm:prefer-inline')
  set targetModeInfoIdx(int value) =>
      bitfield = bitfield.setBits(16, 16, value);
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_0_0_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  @pragma('vm:prefer-inline')
  int get bitfield => this.Anonymous.Anonymous.bitfield;

  @pragma('vm:prefer-inline')
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;

  @pragma('vm:prefer-inline')
  int get desktopModeInfoIdx => this.Anonymous.Anonymous.desktopModeInfoIdx;

  @pragma('vm:prefer-inline')
  set desktopModeInfoIdx(int value) =>
      this.Anonymous.Anonymous.desktopModeInfoIdx = value;

  @pragma('vm:prefer-inline')
  int get targetModeInfoIdx => this.Anonymous.Anonymous.targetModeInfoIdx;

  @pragma('vm:prefer-inline')
  set targetModeInfoIdx(int value) =>
      this.Anonymous.Anonymous.targetModeInfoIdx = value;
}

/// Describes a fractional value that represents vertical and horizontal
/// frequencies of a video mode (that is, vertical sync and horizontal sync).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_rational>.
///
/// {@category struct}
base class DISPLAYCONFIG_RATIONAL extends Struct {
  /// The numerator of the frequency fraction.
  @Uint32()
  external int Numerator;

  /// The denominator of the frequency fraction.
  @Uint32()
  external int Denominator;
}

/// Represents a point or an offset in a two-dimensional space.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_source_mode>.
///
/// {@category struct}
base class DISPLAYCONFIG_SOURCE_MODE extends Struct {
  /// The width in pixels of the source mode.
  @Uint32()
  external int width;

  /// The height in pixels of the source mode.
  @Uint32()
  external int height;

  @Int32()
  external int _pixelFormat;

  /// A `POINTL` structure that specifies the position in the desktop coordinate
  /// space of the upper-left corner of this source surface.
  external POINTL position;

  /// A value from the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ne-wingdi-displayconfig_pixelformat">DISPLAYCONFIG_PIXELFORMAT</a>
  /// enumeration that specifies the pixel format of the source mode.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_PIXELFORMAT get pixelFormat =>
      DISPLAYCONFIG_PIXELFORMAT(_pixelFormat);

  @pragma('vm:prefer-inline')
  set pixelFormat(DISPLAYCONFIG_PIXELFORMAT value) => _pixelFormat = value;
}

/// Describes a display path target mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_target_mode>.
///
/// {@category struct}
base class DISPLAYCONFIG_TARGET_MODE extends Struct {
  /// A `DISPLAYCONFIG_VIDEO_SIGNAL_INFO` structure that contains a detailed
  /// description of the current target mode.
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO targetVideoSignalInfo;
}

/// Contains information about the video signal for a display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-displayconfig_video_signal_info>.
///
/// {@category struct}
base class DISPLAYCONFIG_VIDEO_SIGNAL_INFO extends Struct {
  /// The pixel clock rate.
  @Uint64()
  external int pixelRate;

  /// A `DISPLAYCONFIG_RATIONAL` structure that represents horizontal sync.
  external DISPLAYCONFIG_RATIONAL hSyncFreq;

  /// A `DISPLAYCONFIG_RATIONAL` structure that represents vertical sync.
  external DISPLAYCONFIG_RATIONAL vSyncFreq;

  /// A `DISPLAYCONFIG_2DREGION` structure that specifies the width and height
  /// (in pixels) of the active portion of the video signal.
  external DISPLAYCONFIG_2DREGION activeSize;

  /// A `DISPLAYCONFIG_2DREGION` structure that specifies the width and height
  /// (in pixels) of the entire video signal.
  external DISPLAYCONFIG_2DREGION totalSize;

  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0 Anonymous;

  @Int32()
  external int _scanLineOrdering;

  /// The scan-line ordering (for example, progressive or interlaced) of the
  /// video signal.
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_SCANLINE_ORDERING get scanLineOrdering =>
      DISPLAYCONFIG_SCANLINE_ORDERING(_scanLineOrdering);

  @pragma('vm:prefer-inline')
  set scanLineOrdering(DISPLAYCONFIG_SCANLINE_ORDERING value) =>
      _scanLineOrdering = value;
}

/// {@category union}
sealed class DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0 extends Union {
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 AdditionalSignalInfo;

  @Uint32()
  external int videoStandard;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  @pragma('vm:prefer-inline')
  DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 get AdditionalSignalInfo =>
      this.Anonymous.AdditionalSignalInfo;

  @pragma('vm:prefer-inline')
  set AdditionalSignalInfo(DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 value) =>
      this.Anonymous.AdditionalSignalInfo = value;

  @pragma('vm:prefer-inline')
  int get videoStandard => this.Anonymous.videoStandard;

  @pragma('vm:prefer-inline')
  set videoStandard(int value) => this.Anonymous.videoStandard = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;

  @pragma('vm:prefer-inline')
  int get videoStandard => bitfield.getBits(0, 16);

  @pragma('vm:prefer-inline')
  set videoStandard(int value) => bitfield = bitfield.setBits(0, 16, value);

  @pragma('vm:prefer-inline')
  int get vSyncFreqDivider => bitfield.getBits(16, 6);

  @pragma('vm:prefer-inline')
  set vSyncFreqDivider(int value) => bitfield = bitfield.setBits(16, 6, value);
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  @pragma('vm:prefer-inline')
  int get bitfield => this.Anonymous.AdditionalSignalInfo.bitfield;

  @pragma('vm:prefer-inline')
  set bitfield(int value) =>
      this.Anonymous.AdditionalSignalInfo.bitfield = value;

  @pragma('vm:prefer-inline')
  int get videoStandard => this.Anonymous.AdditionalSignalInfo.videoStandard;

  @pragma('vm:prefer-inline')
  set videoStandard(int value) =>
      this.Anonymous.AdditionalSignalInfo.videoStandard = value;

  @pragma('vm:prefer-inline')
  int get vSyncFreqDivider =>
      this.Anonymous.AdditionalSignalInfo.vSyncFreqDivider;

  @pragma('vm:prefer-inline')
  set vSyncFreqDivider(int value) =>
      this.Anonymous.AdditionalSignalInfo.vSyncFreqDivider = value;
}

/// Receives information about the display device specified by the iDevNum
/// parameter of the EnumDisplayDevices function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-display_devicew>.
///
/// {@category struct}
base class DISPLAY_DEVICE extends Struct {
  /// Size, in bytes, of the <b>DISPLAY_DEVICE</b> structure.
  @Uint32()
  external int cb;

  @Array(32)
  external Array<Uint16> _DeviceName;

  @Array(128)
  external Array<Uint16> _DeviceString;

  @Uint32()
  external int _StateFlags;

  @Array(128)
  external Array<Uint16> _DeviceID;

  @Array(128)
  external Array<Uint16> _DeviceKey;

  /// A string identifying the device name.
  @pragma('vm:prefer-inline')
  String get DeviceName => _DeviceName.toDartString();

  @pragma('vm:prefer-inline')
  set DeviceName(String value) => _DeviceName.setString(value);

  /// A string containing the device context string.
  @pragma('vm:prefer-inline')
  String get DeviceString => _DeviceString.toDartString();

  @pragma('vm:prefer-inline')
  set DeviceString(String value) => _DeviceString.setString(value);

  /// Device state flags.
  @pragma('vm:prefer-inline')
  DISPLAY_DEVICE_STATE_FLAGS get StateFlags =>
      DISPLAY_DEVICE_STATE_FLAGS(_StateFlags);

  @pragma('vm:prefer-inline')
  set StateFlags(DISPLAY_DEVICE_STATE_FLAGS value) => _StateFlags = value;

  @pragma('vm:prefer-inline')
  String get DeviceID => _DeviceID.toDartString();

  @pragma('vm:prefer-inline')
  set DeviceID(String value) => _DeviceID.setString(value);

  /// Reserved.
  @pragma('vm:prefer-inline')
  String get DeviceKey => _DeviceKey.toDartString();

  @pragma('vm:prefer-inline')
  set DeviceKey(String value) => _DeviceKey.setString(value);
}

/// Contains the arguments passed to a method or property.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-dispparams>.
///
/// {@category struct}
base class DISPPARAMS extends Struct {
  /// An array of arguments.
  external Pointer<VARIANT> rgvarg;

  /// The dispatch IDs of the named arguments.
  external Pointer<Int32> rgdispidNamedArgs;

  /// The number of arguments.
  @Uint32()
  external int cArgs;

  /// The number of named arguments.
  @Uint32()
  external int cNamedArgs;
}

/// Defines the dimensions and style of a control in a dialog box.
///
/// One or more of these structures are combined with a DLGTEMPLATE structure to
/// form a standard template for a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-dlgitemtemplate>.
///
/// {@category struct}
@Packed(2)
base class DLGITEMTEMPLATE extends Struct {
  /// The style of the control.
  @Uint32()
  external int style;

  /// The extended styles for a window.
  @Uint32()
  external int dwExtendedStyle;

  /// The <i>x</i>-coordinate, in dialog box units, of the upper-left corner of
  /// the control.
  @Int16()
  external int x;

  /// The <i>y</i>-coordinate, in dialog box units, of the upper-left corner of
  /// the control.
  @Int16()
  external int y;

  /// The width, in dialog box units, of the control.
  @Int16()
  external int cx;

  /// The height, in dialog box units, of the control.
  @Int16()
  external int cy;

  /// The control identifier.
  @Uint16()
  external int id;
}

/// Defines the dimensions and style of a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-dlgtemplate>.
///
/// {@category struct}
@Packed(2)
base class DLGTEMPLATE extends Struct {
  /// The style of the dialog box.
  @Uint32()
  external int style;

  /// The extended styles for a window.
  @Uint32()
  external int dwExtendedStyle;

  /// The number of items in the dialog box.
  @Uint16()
  external int cdit;

  /// The x-coordinate, in dialog box units, of the upper-left corner of the
  /// dialog box.
  @Int16()
  external int x;

  /// The y-coordinate, in dialog box units, of the upper-left corner of the
  /// dialog box.
  @Int16()
  external int y;

  /// The width, in dialog box units, of the dialog box.
  @Int16()
  external int cx;

  /// The height, in dialog box units, of the dialog box.
  @Int16()
  external int cy;
}

/// Receives DLL-specific version information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlwapi/ns-shlwapi-dllversioninfo>.
///
/// {@category struct}
base class DLLVERSIONINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The major version of the DLL.
  @Uint32()
  external int dwMajorVersion;

  /// The minor version of the DLL.
  @Uint32()
  external int dwMinorVersion;

  /// The build number of the DLL.
  @Uint32()
  external int dwBuildNumber;

  @Uint32()
  external int dwPlatformID;
}

/// Describes a document that will be printed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/doc-info-1>.
///
/// {@category struct}
base class DOC_INFO_1 extends Struct {
  /// Pointer to a null-terminated string that specifies the name of the
  /// document.
  external PWSTR pDocName;

  /// Pointer to a null-terminated string that specifies the name of an output
  /// file.
  external PWSTR pOutputFile;

  /// Pointer to a null-terminated string that identifies the type of data used
  /// to record the document.
  external PWSTR pDatatype;
}

/// Defines a pair of 802.11 authentication and cipher algorithms that can be
/// enabled at the same time on the 802.11 station.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-auth-cipher-pair>.
///
/// {@category struct}
base class DOT11_AUTH_CIPHER_PAIR extends Struct {
  @Int32()
  external int _AuthAlgoId;

  @Int32()
  external int _CipherAlgoId;

  /// An authentication algorithm that uses a `DOT11_AUTH_ALGORITHM` enumerated
  /// type.
  @pragma('vm:prefer-inline')
  DOT11_AUTH_ALGORITHM get AuthAlgoId => DOT11_AUTH_ALGORITHM(_AuthAlgoId);

  @pragma('vm:prefer-inline')
  set AuthAlgoId(DOT11_AUTH_ALGORITHM value) => _AuthAlgoId = value;

  /// A cipher algorithm that uses a `DOT11_CIPHER_ALGORITHM` enumerated type.
  @pragma('vm:prefer-inline')
  DOT11_CIPHER_ALGORITHM get CipherAlgoId =>
      DOT11_CIPHER_ALGORITHM(_CipherAlgoId);

  @pragma('vm:prefer-inline')
  set CipherAlgoId(DOT11_CIPHER_ALGORITHM value) => _CipherAlgoId = value;
}

/// Contains a list of basic service set (BSS) identifiers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-bssid-list>.
///
/// {@category struct}
base class DOT11_BSSID_LIST extends Struct {
  /// An `NDIS_OBJECT_HEADER` structure that contains the type, version, and,
  /// size information of an NDIS structure.
  external NDIS_OBJECT_HEADER Header;

  /// The number of entries in this structure.
  @Uint32()
  external int uNumOfEntries;

  /// The total number of entries supported.
  @Uint32()
  external int uTotalNumOfEntries;

  /// A list of BSS identifiers.
  @Array.variableWithVariableDimension(6)
  external Array<Uint8> BSSIDs;
}

/// Contains information about an available wireless network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-dot11_network>.
///
/// {@category struct}
base class DOT11_NETWORK extends Struct {
  /// A `DOT11_SSID` structure that contains the SSID of a visible wireless
  /// network.
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int _dot11BssType;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS type of the network.
  @pragma('vm:prefer-inline')
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  @pragma('vm:prefer-inline')
  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;
}

/// Contains a list of 802.11 wireless networks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-dot11_network_list>.
///
/// {@category struct}
base class DOT11_NETWORK_LIST extends Struct {
  /// Contains the number of items in the <b>Network</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-dot11_network">DOT11_NETWORK</a>
  /// structures that contain 802.11 wireless network information.
  @Array.variableWithVariableDimension(1)
  external Array<DOT11_NETWORK> Network;
}

/// Contains the SSID of an interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-ssid>.
///
/// {@category struct}
base class DOT11_SSID extends Struct {
  /// The length, in bytes, of the **ucSSID** array.
  @Uint32()
  external int uSSIDLength;

  /// The SSID.
  @Array(32)
  external Array<Uint8> ucSSID;
}

/// Invalid handle values are: `0`.
typedef DPI_AWARENESS_CONTEXT = IntPtr;

/// Contains extended formatting options for the DrawTextEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-drawtextparams>.
///
/// {@category struct}
base class DRAWTEXTPARAMS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The size of each tab stop, in units equal to the average character width.
  @Int32()
  external int iTabLength;

  /// The left margin, in units equal to the average character width.
  @Int32()
  external int iLeftMargin;

  /// The right margin, in units equal to the average character width.
  @Int32()
  external int iRightMargin;

  /// Receives the number of characters processed by <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-drawtextexa">DrawTextEx</a>,
  /// including white-space characters.
  @Uint32()
  external int uiLengthDrawn;
}

/// Defines the CF_HDROP clipboard format.
///
/// The data that follows is a double null-terminated list of file names.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/ns-shlobj_core-dropfiles>.
///
/// {@category struct}
@Packed(1)
base class DROPFILES extends Struct {
  /// The offset of the file list from the beginning of this structure, in
  /// bytes.
  @Uint32()
  external int pFiles;

  /// The drop point.
  external POINT pt;

  @Int32()
  external int _fNC;

  @Int32()
  external int _fWide;

  /// A nonclient area flag.
  @pragma('vm:prefer-inline')
  bool get fNC => _fNC != FALSE;

  @pragma('vm:prefer-inline')
  set fNC(bool value) => _fNC = value ? TRUE : FALSE;

  /// A value that indicates whether the file contains ANSI or Unicode
  /// characters.
  @pragma('vm:prefer-inline')
  bool get fWide => _fWide != FALSE;

  @pragma('vm:prefer-inline')
  set fWide(bool value) => _fWide = value ? TRUE : FALSE;
}

/// Contains information about how a device is joined to Microsoft Azure Active
/// Directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/ns-lmjoin-dsreg_join_info>.
///
/// {@category struct}
base class DSREG_JOIN_INFO extends Struct {
  @Int32()
  external int _joinType;

  /// Representations of the certification for the join.
  external Pointer<CERT_CONTEXT> pJoinCertificate;

  /// The identifier of the device.
  external PWSTR pszDeviceId;

  /// A string that represents Azure Active Directory (Azure AD).
  external PWSTR pszIdpDomain;

  /// The identifier of the joined Azure AD tenant.
  external PWSTR pszTenantId;

  /// The email address for the joined account.
  external PWSTR pszJoinUserEmail;

  /// The display name for the joined account.
  external PWSTR pszTenantDisplayName;

  /// The URL to use to enroll in the Mobile Device Management (MDM) service.
  external PWSTR pszMdmEnrollmentUrl;

  /// The URL that provides information about the terms of use for the MDM
  /// service.
  external PWSTR pszMdmTermsOfUseUrl;

  /// The URL that provides information about compliance for the MDM service.
  external PWSTR pszMdmComplianceUrl;

  /// The URL for synchronizing user settings.
  external PWSTR pszUserSettingSyncUrl;

  /// Information about the user account that was used to join a device to Azure
  /// AD.
  external Pointer<DSREG_USER_INFO> pUserInfo;

  /// An enumeration value that specifies the type of the join.
  @pragma('vm:prefer-inline')
  DSREG_JOIN_TYPE get joinType => DSREG_JOIN_TYPE(_joinType);

  @pragma('vm:prefer-inline')
  set joinType(DSREG_JOIN_TYPE value) => _joinType = value;
}

/// Contains information about a user account that is used to join a device to
/// Microsoft Azure Active Directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/ns-lmjoin-dsreg_user_info>.
///
/// {@category struct}
base class DSREG_USER_INFO extends Struct {
  /// The email address of the user.
  external PWSTR pszUserEmail;

  /// The identifier of the Microsoft Passport key that is provisioned for the
  /// user.
  external PWSTR pszUserKeyId;

  /// The name of the Microsoft Passport key that is provisioned for the user.
  external PWSTR pszUserKeyName;
}

/// Defines the options for the DrawThemeBackgroundEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-dtbgopts>.
///
/// {@category struct}
base class DTBGOPTS extends Struct {
  /// Size of the structure.
  @Uint32()
  external int dwSize;

  /// Flags that specify the selected options.
  @Uint32()
  external int dwFlags;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/windef/ns-windef-rect">RECT</a>
  /// that specifies the bounding rectangle of the clip region.
  external RECT rcClip;
}

/// Defines the options for the DrawThemeTextEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-dttopts>.
///
/// {@category struct}
base class DTTOPTS extends Struct {
  /// Size of the structure.
  @Uint32()
  external int dwSize;

  @Uint32()
  external int _dwFlags;

  /// Specifies the color of the text that will be drawn.
  @Uint32()
  external int crText;

  /// Specifies the color of the outline that will be drawn around the text.
  @Uint32()
  external int crBorder;

  /// Specifies the color of the shadow that will be drawn behind the text.
  @Uint32()
  external int crShadow;

  @Int32()
  external int iTextShadowType;

  /// Specifies the amount of offset, in logical coordinates, between the shadow
  /// and the text.
  external POINT ptShadowOffset;

  /// Specifies the radius of the outline that will be drawn around the text.
  @Int32()
  external int iBorderSize;

  /// Specifies an alternate font property to use when drawing text.
  @Int32()
  external int iFontPropId;

  /// Specifies an alternate color property to use when drawing text.
  @Int32()
  external int iColorPropId;

  /// Specifies an alternate state to use.
  @Int32()
  external int iStateId;

  @Int32()
  external int _fApplyOverlay;

  /// Specifies the size of a glow that will be drawn on the background prior to
  /// any text being drawn.
  @Int32()
  external int iGlowSize;

  /// Pointer to callback function for <a
  /// href="https://docs.microsoft.com/windows/desktop/api/uxtheme/nf-uxtheme-drawthemetextex">DrawThemeTextEx</a>.
  external Pointer<NativeFunction<DTT_CALLBACK_PROC>> pfnDrawTextCallback;

  /// Parameter for callback back function specified by
  /// <b>pfnDrawTextCallback</b>.
  @IntPtr()
  external int lParam;

  /// A combination of flags that specify whether certain values of the
  /// <b>DTTOPTS</b> structure have been specified, and how to interpret these
  /// values.
  @pragma('vm:prefer-inline')
  DTTOPTS_FLAGS get dwFlags => DTTOPTS_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(DTTOPTS_FLAGS value) => _dwFlags = value;

  /// If [TRUE], text will be drawn on top of the shadow and outline effects.
  @pragma('vm:prefer-inline')
  bool get fApplyOverlay => _fApplyOverlay != FALSE;

  @pragma('vm:prefer-inline')
  set fApplyOverlay(bool value) => _fApplyOverlay = value ? TRUE : FALSE;
}

/// Specifies Desktop Window Manager (DWM) blur-behind properties.
///
/// Used by the DwmEnableBlurBehindWindow function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ns-dwmapi-dwm_blurbehind>.
///
/// {@category struct}
@Packed(1)
base class DWM_BLURBEHIND extends Struct {
  /// A bitwise combination of <a
  /// href="https://docs.microsoft.com/windows/desktop/dwm/dwm-bb-constants">DWM
  /// Blur Behind</a> constant values that indicates which of the members of
  /// this structure have been set.
  @Uint32()
  external int dwFlags;

  @Int32()
  external int _fEnable;

  /// The region within the client area where the blur behind will be applied.
  @IntPtr()
  external int hRgnBlur;

  @Int32()
  external int _fTransitionOnMaximized;

  /// [TRUE] to register the window handle to DWM blur behind; [FALSE] to
  /// unregister the window handle from DWM blur behind.
  @pragma('vm:prefer-inline')
  bool get fEnable => _fEnable != FALSE;

  @pragma('vm:prefer-inline')
  set fEnable(bool value) => _fEnable = value ? TRUE : FALSE;

  /// [TRUE] if the window's colorization should transition to match the
  /// maximized windows; otherwise, [FALSE].
  @pragma('vm:prefer-inline')
  bool get fTransitionOnMaximized => _fTransitionOnMaximized != FALSE;

  @pragma('vm:prefer-inline')
  set fTransitionOnMaximized(bool value) =>
      _fTransitionOnMaximized = value ? TRUE : FALSE;
}

final DesktopWallpaper = Guid.fromComponents(
  0xc2cf3110,
  0x460e,
  0x4fc1,
  Uint8List.fromList(const [0xb9, 0xd0, 0x8a, 0x1c, 0xc, 0x9c, 0xc4, 0xbd]),
);

/// Contains type, identification, and author information about an EAP method.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/eaptypes/ns-eaptypes-eap_method_type>.
///
/// {@category struct}
base class EAP_METHOD_TYPE extends Struct {
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/eaptypes/ns-eaptypes-eap_type">EAP_TYPE</a>
  /// structure that contains the ID for the EAP method as well as specific
  /// vendor information.
  external EAP_TYPE eapType;

  /// The numeric ID for the author of the EAP method.
  @Uint32()
  external int dwAuthorId;
}

/// Contains type and vendor identification information for an EAP method.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/eaptypes/ns-eaptypes-eap_type>.
///
/// {@category struct}
base class EAP_TYPE extends Struct {
  /// The numeric type code for this EAP method.
  @Uint8()
  external int type;

  /// The vendor ID for the EAP method.
  @Uint32()
  external int dwVendorId;

  /// The numeric type code for the vendor of this EAP method.
  @Uint32()
  external int dwVendorType;
}

/// Contains the type description and process-transfer information for a
/// variable, a function, or a function parameter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-elemdesc~r1>.
///
/// {@category struct}
base class ELEMDESC extends Struct {
  /// The type of the element.
  external TYPEDESC tdesc;

  external ELEMDESC_0 Anonymous;
}

/// {@category union}
sealed class ELEMDESC_0 extends Union {
  external IDLDESC idldesc;
  external PARAMDESC paramdesc;
}

extension ELEMDESC_0_Extension on ELEMDESC {
  @pragma('vm:prefer-inline')
  IDLDESC get idldesc => this.Anonymous.idldesc;

  @pragma('vm:prefer-inline')
  set idldesc(IDLDESC value) => this.Anonymous.idldesc = value;

  @pragma('vm:prefer-inline')
  PARAMDESC get paramdesc => this.Anonymous.paramdesc;

  @pragma('vm:prefer-inline')
  set paramdesc(PARAMDESC value) => this.Anonymous.paramdesc = value;
}

/// Contains information about an enumerated font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-enumlogfontexw>.
///
/// {@category struct}
base class ENUMLOGFONTEX extends Struct {
  /// A `LOGFONT` structure that contains values defining the font attributes.
  external LOGFONT elfLogFont;

  @Array(64)
  external Array<Uint16> _elfFullName;

  @Array(32)
  external Array<Uint16> _elfStyle;

  @Array(32)
  external Array<Uint16> _elfScript;

  /// The unique name of the font.
  @pragma('vm:prefer-inline')
  String get elfFullName => _elfFullName.toDartString();

  @pragma('vm:prefer-inline')
  set elfFullName(String value) => _elfFullName.setString(value);

  /// The style of the font.
  @pragma('vm:prefer-inline')
  String get elfStyle => _elfStyle.toDartString();

  @pragma('vm:prefer-inline')
  set elfStyle(String value) => _elfStyle.setString(value);

  /// The script, that is, the character set, of the font.
  @pragma('vm:prefer-inline')
  String get elfScript => _elfScript.toDartString();

  @pragma('vm:prefer-inline')
  set elfScript(String value) => _elfScript.setString(value);
}

/// Contains information about a pagefile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/ns-psapi-enum_page_file_information>.
///
/// {@category struct}
base class ENUM_PAGE_FILE_INFORMATION extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int cb;

  @Uint32()
  external int _Reserved;

  /// The total size of the pagefile, in pages.
  @IntPtr()
  external int TotalSize;

  /// The current pagefile usage, in pages.
  @IntPtr()
  external int TotalInUse;

  /// The peak pagefile usage, in pages.
  @IntPtr()
  external int PeakUsage;
}

/// Contains the name of a service in a service control manager database and
/// information about that service.
///
/// It is used by the EnumDependentServices and EnumServicesStatus functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-enum_service_statusw>.
///
/// {@category struct}
base class ENUM_SERVICE_STATUS extends Struct {
  /// The name of a service in the service control manager database.
  external PWSTR lpServiceName;

  /// A display name that can be used by service control programs, such as
  /// Services in Control Panel, to identify the service.
  external PWSTR lpDisplayName;

  /// A `SERVICE_STATUS` structure that contains status information for the
  /// <b>lpServiceName</b> service.
  external SERVICE_STATUS ServiceStatus;
}

/// Contains the name of a service in a service control manager database and
/// information about the service.
///
/// It is used by the EnumServicesStatusEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-enum_service_status_processw>.
///
/// {@category struct}
base class ENUM_SERVICE_STATUS_PROCESS extends Struct {
  /// The name of a service in the service control manager database.
  external PWSTR lpServiceName;

  /// A display name that can be used by service control programs, such as
  /// Services in Control Panel, to identify the service.
  external PWSTR lpDisplayName;

  /// A `SERVICE_STATUS_PROCESS` structure that contains status information for
  /// the <b>lpServiceName</b> service.
  external SERVICE_STATUS_PROCESS ServiceStatusProcess;
}

/// Contains information about a hardware message sent to the system message
/// queue.
///
/// This structure is used to store message information for the
/// JournalPlaybackProc callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-eventmsg>.
///
/// {@category struct}
base class EVENTMSG extends Struct {
  /// The message.
  @Uint32()
  external int message;

  /// Additional information about the message.
  @Uint32()
  external int paramL;

  /// Additional information about the message.
  @Uint32()
  external int paramH;

  /// The time at which the message was posted.
  @Uint32()
  external int time;

  /// A handle to the window to which the message was posted.
  @IntPtr()
  external int hwnd;
}

/// The handle must be released using the `EvtClose` function.
///
/// Invalid handle values are: `0`.
typedef EVT_HANDLE = IntPtr;

/// Contains the information used to connect to a remote computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ns-winevt-evt_rpc_login>.
///
/// {@category struct}
base class EVT_RPC_LOGIN extends Struct {
  /// The name of the remote computer to connect to.
  external PWSTR Server;

  /// The user name to use to connect to the remote computer.
  external PWSTR User;

  /// The domain to which the user account belongs.
  external PWSTR Domain;

  /// The password for the user account.
  external PWSTR Password;

  /// The authentication method to use to authenticate the user when connecting
  /// to the remote computer.
  @Uint32()
  external int Flags;
}

/// Contains event data or property values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ns-winevt-evt_variant>.
///
/// {@category struct}
base class EVT_VARIANT extends Struct {
  external EVT_VARIANT_0 Anonymous;

  /// The number of elements in the array of values.
  @Uint32()
  external int Count;

  /// A flag that specifies the data type of the variant.
  @Uint32()
  external int Type;
}

/// {@category union}
sealed class EVT_VARIANT_0 extends Union {
  @Int32()
  external int _BooleanVal;

  @Int8()
  external int SByteVal;

  @Int16()
  external int Int16Val;

  @Int32()
  external int Int32Val;

  @Int64()
  external int Int64Val;

  @Uint8()
  external int ByteVal;

  @Uint16()
  external int UInt16Val;

  @Uint32()
  external int UInt32Val;

  @Uint64()
  external int UInt64Val;

  @Float()
  external double SingleVal;

  @Double()
  external double DoubleVal;

  @Uint64()
  external int FileTimeVal;

  external Pointer<SYSTEMTIME> SysTimeVal;
  external Pointer<GUID> GuidVal;
  external PWSTR StringVal;
  external PSTR AnsiStringVal;
  external Pointer<Uint8> BinaryVal;

  @IntPtr()
  external int SidVal;

  @IntPtr()
  external int SizeTVal;

  external Pointer<BOOL> BooleanArr;
  external Pointer<Int8> SByteArr;
  external Pointer<Int16> Int16Arr;
  external Pointer<Int32> Int32Arr;
  external Pointer<Int64> Int64Arr;
  external Pointer<Uint8> ByteArr;
  external Pointer<Uint16> UInt16Arr;
  external Pointer<Uint32> UInt32Arr;
  external Pointer<Uint64> UInt64Arr;
  external Pointer<Float> SingleArr;
  external Pointer<Double> DoubleArr;
  external Pointer<FILETIME> FileTimeArr;
  external Pointer<SYSTEMTIME> SysTimeArr;
  external Pointer<GUID> GuidArr;
  external Pointer<PWSTR> StringArr;
  external Pointer<PSTR> AnsiStringArr;
  external Pointer<PSID> SidArr;
  external Pointer<IntPtr> SizeTArr;

  @IntPtr()
  external int EvtHandleVal;

  external PWSTR XmlVal;
  external Pointer<PWSTR> XmlValArr;

  @pragma('vm:prefer-inline')
  bool get BooleanVal => _BooleanVal != FALSE;

  @pragma('vm:prefer-inline')
  set BooleanVal(bool value) => _BooleanVal = value ? TRUE : FALSE;
}

extension EVT_VARIANT_0_Extension on EVT_VARIANT {
  @pragma('vm:prefer-inline')
  bool get BooleanVal => this.Anonymous.BooleanVal;

  @pragma('vm:prefer-inline')
  set BooleanVal(bool value) => this.Anonymous.BooleanVal = value;

  @pragma('vm:prefer-inline')
  int get SByteVal => this.Anonymous.SByteVal;

  @pragma('vm:prefer-inline')
  set SByteVal(int value) => this.Anonymous.SByteVal = value;

  @pragma('vm:prefer-inline')
  int get Int16Val => this.Anonymous.Int16Val;

  @pragma('vm:prefer-inline')
  set Int16Val(int value) => this.Anonymous.Int16Val = value;

  @pragma('vm:prefer-inline')
  int get Int32Val => this.Anonymous.Int32Val;

  @pragma('vm:prefer-inline')
  set Int32Val(int value) => this.Anonymous.Int32Val = value;

  @pragma('vm:prefer-inline')
  int get Int64Val => this.Anonymous.Int64Val;

  @pragma('vm:prefer-inline')
  set Int64Val(int value) => this.Anonymous.Int64Val = value;

  @pragma('vm:prefer-inline')
  int get ByteVal => this.Anonymous.ByteVal;

  @pragma('vm:prefer-inline')
  set ByteVal(int value) => this.Anonymous.ByteVal = value;

  @pragma('vm:prefer-inline')
  int get UInt16Val => this.Anonymous.UInt16Val;

  @pragma('vm:prefer-inline')
  set UInt16Val(int value) => this.Anonymous.UInt16Val = value;

  @pragma('vm:prefer-inline')
  int get UInt32Val => this.Anonymous.UInt32Val;

  @pragma('vm:prefer-inline')
  set UInt32Val(int value) => this.Anonymous.UInt32Val = value;

  @pragma('vm:prefer-inline')
  int get UInt64Val => this.Anonymous.UInt64Val;

  @pragma('vm:prefer-inline')
  set UInt64Val(int value) => this.Anonymous.UInt64Val = value;

  @pragma('vm:prefer-inline')
  double get SingleVal => this.Anonymous.SingleVal;

  @pragma('vm:prefer-inline')
  set SingleVal(double value) => this.Anonymous.SingleVal = value;

  @pragma('vm:prefer-inline')
  double get DoubleVal => this.Anonymous.DoubleVal;

  @pragma('vm:prefer-inline')
  set DoubleVal(double value) => this.Anonymous.DoubleVal = value;

  @pragma('vm:prefer-inline')
  int get FileTimeVal => this.Anonymous.FileTimeVal;

  @pragma('vm:prefer-inline')
  set FileTimeVal(int value) => this.Anonymous.FileTimeVal = value;

  @pragma('vm:prefer-inline')
  Pointer<SYSTEMTIME> get SysTimeVal => this.Anonymous.SysTimeVal;

  @pragma('vm:prefer-inline')
  set SysTimeVal(Pointer<SYSTEMTIME> value) =>
      this.Anonymous.SysTimeVal = value;

  @pragma('vm:prefer-inline')
  Pointer<GUID> get GuidVal => this.Anonymous.GuidVal;

  @pragma('vm:prefer-inline')
  set GuidVal(Pointer<GUID> value) => this.Anonymous.GuidVal = value;

  @pragma('vm:prefer-inline')
  PWSTR get StringVal => this.Anonymous.StringVal;

  @pragma('vm:prefer-inline')
  set StringVal(PWSTR value) => this.Anonymous.StringVal = value;

  @pragma('vm:prefer-inline')
  PSTR get AnsiStringVal => this.Anonymous.AnsiStringVal;

  @pragma('vm:prefer-inline')
  set AnsiStringVal(PSTR value) => this.Anonymous.AnsiStringVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint8> get BinaryVal => this.Anonymous.BinaryVal;

  @pragma('vm:prefer-inline')
  set BinaryVal(Pointer<Uint8> value) => this.Anonymous.BinaryVal = value;

  @pragma('vm:prefer-inline')
  int get SidVal => this.Anonymous.SidVal;

  @pragma('vm:prefer-inline')
  set SidVal(int value) => this.Anonymous.SidVal = value;

  @pragma('vm:prefer-inline')
  int get SizeTVal => this.Anonymous.SizeTVal;

  @pragma('vm:prefer-inline')
  set SizeTVal(int value) => this.Anonymous.SizeTVal = value;

  @pragma('vm:prefer-inline')
  Pointer<BOOL> get BooleanArr => this.Anonymous.BooleanArr;

  @pragma('vm:prefer-inline')
  set BooleanArr(Pointer<BOOL> value) => this.Anonymous.BooleanArr = value;

  @pragma('vm:prefer-inline')
  Pointer<Int8> get SByteArr => this.Anonymous.SByteArr;

  @pragma('vm:prefer-inline')
  set SByteArr(Pointer<Int8> value) => this.Anonymous.SByteArr = value;

  @pragma('vm:prefer-inline')
  Pointer<Int16> get Int16Arr => this.Anonymous.Int16Arr;

  @pragma('vm:prefer-inline')
  set Int16Arr(Pointer<Int16> value) => this.Anonymous.Int16Arr = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get Int32Arr => this.Anonymous.Int32Arr;

  @pragma('vm:prefer-inline')
  set Int32Arr(Pointer<Int32> value) => this.Anonymous.Int32Arr = value;

  @pragma('vm:prefer-inline')
  Pointer<Int64> get Int64Arr => this.Anonymous.Int64Arr;

  @pragma('vm:prefer-inline')
  set Int64Arr(Pointer<Int64> value) => this.Anonymous.Int64Arr = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint8> get ByteArr => this.Anonymous.ByteArr;

  @pragma('vm:prefer-inline')
  set ByteArr(Pointer<Uint8> value) => this.Anonymous.ByteArr = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint16> get UInt16Arr => this.Anonymous.UInt16Arr;

  @pragma('vm:prefer-inline')
  set UInt16Arr(Pointer<Uint16> value) => this.Anonymous.UInt16Arr = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get UInt32Arr => this.Anonymous.UInt32Arr;

  @pragma('vm:prefer-inline')
  set UInt32Arr(Pointer<Uint32> value) => this.Anonymous.UInt32Arr = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint64> get UInt64Arr => this.Anonymous.UInt64Arr;

  @pragma('vm:prefer-inline')
  set UInt64Arr(Pointer<Uint64> value) => this.Anonymous.UInt64Arr = value;

  @pragma('vm:prefer-inline')
  Pointer<Float> get SingleArr => this.Anonymous.SingleArr;

  @pragma('vm:prefer-inline')
  set SingleArr(Pointer<Float> value) => this.Anonymous.SingleArr = value;

  @pragma('vm:prefer-inline')
  Pointer<Double> get DoubleArr => this.Anonymous.DoubleArr;

  @pragma('vm:prefer-inline')
  set DoubleArr(Pointer<Double> value) => this.Anonymous.DoubleArr = value;

  @pragma('vm:prefer-inline')
  Pointer<FILETIME> get FileTimeArr => this.Anonymous.FileTimeArr;

  @pragma('vm:prefer-inline')
  set FileTimeArr(Pointer<FILETIME> value) =>
      this.Anonymous.FileTimeArr = value;

  @pragma('vm:prefer-inline')
  Pointer<SYSTEMTIME> get SysTimeArr => this.Anonymous.SysTimeArr;

  @pragma('vm:prefer-inline')
  set SysTimeArr(Pointer<SYSTEMTIME> value) =>
      this.Anonymous.SysTimeArr = value;

  @pragma('vm:prefer-inline')
  Pointer<GUID> get GuidArr => this.Anonymous.GuidArr;

  @pragma('vm:prefer-inline')
  set GuidArr(Pointer<GUID> value) => this.Anonymous.GuidArr = value;

  @pragma('vm:prefer-inline')
  Pointer<PWSTR> get StringArr => this.Anonymous.StringArr;

  @pragma('vm:prefer-inline')
  set StringArr(Pointer<PWSTR> value) => this.Anonymous.StringArr = value;

  @pragma('vm:prefer-inline')
  Pointer<PSTR> get AnsiStringArr => this.Anonymous.AnsiStringArr;

  @pragma('vm:prefer-inline')
  set AnsiStringArr(Pointer<PSTR> value) =>
      this.Anonymous.AnsiStringArr = value;

  @pragma('vm:prefer-inline')
  Pointer<PSID> get SidArr => this.Anonymous.SidArr;

  @pragma('vm:prefer-inline')
  set SidArr(Pointer<PSID> value) => this.Anonymous.SidArr = value;

  @pragma('vm:prefer-inline')
  Pointer<IntPtr> get SizeTArr => this.Anonymous.SizeTArr;

  @pragma('vm:prefer-inline')
  set SizeTArr(Pointer<IntPtr> value) => this.Anonymous.SizeTArr = value;

  @pragma('vm:prefer-inline')
  int get EvtHandleVal => this.Anonymous.EvtHandleVal;

  @pragma('vm:prefer-inline')
  set EvtHandleVal(int value) => this.Anonymous.EvtHandleVal = value;

  @pragma('vm:prefer-inline')
  PWSTR get XmlVal => this.Anonymous.XmlVal;

  @pragma('vm:prefer-inline')
  set XmlVal(PWSTR value) => this.Anonymous.XmlVal = value;

  @pragma('vm:prefer-inline')
  Pointer<PWSTR> get XmlValArr => this.Anonymous.XmlValArr;

  @pragma('vm:prefer-inline')
  set XmlValArr(Pointer<PWSTR> value) => this.Anonymous.XmlValArr = value;
}

/// Describes an exception that occurred during IDispatch::Invoke.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-excepinfo>.
///
/// {@category struct}
base class EXCEPINFO extends Struct {
  /// The error code.
  @Uint16()
  external int wCode;

  @Uint16()
  external int _wReserved;

  /// The name of the exception source.
  external BSTR bstrSource;

  /// The exception description to display.
  external BSTR bstrDescription;

  /// The fully qualified help file path.
  external BSTR bstrHelpFile;

  /// The help context ID.
  @Uint32()
  external int dwHelpContext;

  external Pointer _pvReserved;

  /// Provides deferred fill-in.
  external Pointer<NativeFunction<LPEXCEPFINO_DEFERRED_FILLIN>>
  pfnDeferredFillIn;

  /// A return value that describes the error.
  @Int32()
  external int scode;
}

/// Represents a Microsoft-extended property.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/SecCrypto/extendedproperty>.
///
/// {@category struct}
base class ExtendedProperty extends Struct {
  external BSTR PropertyName;
  external BSTR PropertyValue;
}

/// Used by Windows Sockets (Winsock) functions and service providers to place
/// sockets into a set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-fd_set>.
///
/// {@category struct}
base class FD_SET extends Struct {
  @Uint32()
  external int fd_count;

  @Array(64)
  external Array<SOCKET> fd_array;
}

/// Holds an unsigned 64-bit date and time value for a file.
///
/// This value represents the number of 100-nanosecond units since the start of
/// January 1, 1601.
///
/// To learn more, see
/// <https://learn.microsoft.com/office/client-developer/outlook/mapi/filetime>.
///
/// {@category struct}
base class FILETIME extends Struct {
  @Uint32()
  external int dwLowDateTime;

  @Uint32()
  external int dwHighDateTime;
}

/// Represents a segment buffer structure for scatter/gather read/write actions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-file_segment_element>.
///
/// {@category union}
sealed class FILE_SEGMENT_ELEMENT extends Union {
  /// Contains the data for the scatter/gather read/write action Assigning a
  /// pointer to the **Buffer** member will sign-extend the value if the code is
  /// compiled as 32-bits; this can break large-address aware applications
  /// running on systems configured with <a
  /// href="https://docs.microsoft.com/windows/desktop/Memory/4-gigabyte-tuning">4-Gigabyte
  /// Tuning</a> or running under WOW64 on 64-bit Windows.
  external Pointer Buffer;

  /// The page alignment of the data.
  @Uint64()
  external int Alignment;
}

/// The handle must be released using the `FindClosePrinterChangeNotification`
/// function.
///
/// Invalid handle values are: `-1`, `0`.
typedef FINDPRINTERCHANGENOTIFICATION_HANDLE = IntPtr;

/// Contains information that the FindText and ReplaceText functions use to
/// initialize the Find and Replace dialog boxes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-findreplacew>.
///
/// {@category struct}
base class FINDREPLACE extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// If the <b>FR_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>,
  /// <b>hInstance</b> is a handle to a memory object containing a dialog box
  /// template.
  @IntPtr()
  external int hInstance;

  @Uint32()
  external int _Flags;

  /// The search string that the user typed in the <b>Find What</b> edit
  /// control.
  external PWSTR lpstrFindWhat;

  /// The replacement string that the user typed in the <b>Replace With</b> edit
  /// control.
  external PWSTR lpstrReplaceWith;

  /// The length, in bytes, of the buffer pointed to by the <b>lpstrFindWhat</b>
  /// member.
  @Uint16()
  external int wFindWhatLen;

  /// The length, in bytes, of the buffer pointed to by the
  /// <b>lpstrReplaceWith</b> member.
  @Uint16()
  external int wReplaceWithLen;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to an `FRHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPFRHOOKPROC>> lpfnHook;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  external PWSTR lpTemplateName;

  @pragma('vm:prefer-inline')
  FINDREPLACE_FLAGS get Flags => FINDREPLACE_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(FINDREPLACE_FLAGS value) => _Flags = value;
}

/// Describes a focus event in a console INPUT_RECORD structure.
///
/// These events are used internally and should be ignored.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/focus-event-record-str>.
///
/// {@category struct}
base class FOCUS_EVENT_RECORD extends Struct {
  @Int32()
  external int _bSetFocus;

  /// Reserved.
  @pragma('vm:prefer-inline')
  bool get bSetFocus => _bSetFocus != FALSE;

  @pragma('vm:prefer-inline')
  set bSetFocus(bool value) => _bSetFocus = value ? TRUE : FALSE;
}

/// Describes a function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-funcdesc>.
///
/// {@category struct}
base class FUNCDESC extends Struct {
  /// The function member ID.
  @Int32()
  external int memid;

  /// The status code.
  external Pointer<Int32> lprgscode;

  /// Description of the element.
  external Pointer<ELEMDESC> lprgelemdescParam;

  @Int32()
  external int _funckind;

  @Int32()
  external int _invkind;

  @Int32()
  external int _callconv;

  /// The total number of parameters.
  @Int16()
  external int cParams;

  /// The number of optional parameters.
  @Int16()
  external int cParamsOpt;

  /// For FUNC_VIRTUAL, specifies the offset in the VTBL.
  @Int16()
  external int oVft;

  /// The number of possible return values.
  @Int16()
  external int cScodes;

  /// The function return type.
  external ELEMDESC elemdescFunc;

  @Uint16()
  external int _wFuncFlags;

  /// Indicates the type of function (virtual, static, or dispatch-only).
  @pragma('vm:prefer-inline')
  FUNCKIND get funckind => FUNCKIND(_funckind);

  @pragma('vm:prefer-inline')
  set funckind(FUNCKIND value) => _funckind = value;

  /// The invocation type.
  @pragma('vm:prefer-inline')
  INVOKEKIND get invkind => INVOKEKIND(_invkind);

  @pragma('vm:prefer-inline')
  set invkind(INVOKEKIND value) => _invkind = value;

  /// The calling convention.
  @pragma('vm:prefer-inline')
  CALLCONV get callconv => CALLCONV(_callconv);

  @pragma('vm:prefer-inline')
  set callconv(CALLCONV value) => _callconv = value;

  /// The function flags.
  @pragma('vm:prefer-inline')
  FUNCFLAGS get wFuncFlags => FUNCFLAGS(_wFuncFlags);

  @pragma('vm:prefer-inline')
  set wFuncFlags(FUNCFLAGS value) => _wFuncFlags = value;
}

final FileOpenDialog = Guid.fromComponents(
  0xdc1c5a9c,
  0xe88a,
  0x4dde,
  Uint8List.fromList(const [0xa5, 0xa1, 0x60, 0xf8, 0x2a, 0x20, 0xae, 0xf7]),
);

final FileSaveDialog = Guid.fromComponents(
  0xc0b4e2f3,
  0xba21,
  0x4773,
  Uint8List.fromList(const [0x8d, 0xba, 0x33, 0x5e, 0xc9, 0x46, 0xeb, 0x8b]),
);

/// Gets and sets the configuration for enabling gesture messages and the type
/// of this configuration.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-gestureconfig>.
///
/// {@category struct}
base class GESTURECONFIG extends Struct {
  @Uint32()
  external int _dwID;

  /// The messages to enable.
  @Uint32()
  external int dwWant;

  /// The messages to disable.
  @Uint32()
  external int dwBlock;

  /// The identifier for the type of configuration that will have messages
  /// enabled or disabled.
  @pragma('vm:prefer-inline')
  GESTURECONFIG_ID get dwID => GESTURECONFIG_ID(_dwID);

  @pragma('vm:prefer-inline')
  set dwID(GESTURECONFIG_ID value) => _dwID = value;
}

/// Stores information about a gesture.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-gestureinfo>.
///
/// {@category struct}
base class GESTUREINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The state of the gesture.
  @Uint32()
  external int dwFlags;

  /// The identifier of the gesture command.
  @Uint32()
  external int dwID;

  /// A handle to the window that is targeted by this gesture.
  @IntPtr()
  external int hwndTarget;

  /// A <b>POINTS</b> structure containing the coordinates associated with the
  /// gesture.
  external POINTS ptsLocation;

  /// An internally used identifier for the structure.
  @Uint32()
  external int dwInstanceID;

  /// An internally used identifier for the sequence.
  @Uint32()
  external int dwSequenceID;

  /// A 64-bit unsigned integer that contains the arguments for gestures that
  /// fit into 8 bytes.
  @Uint64()
  external int ullArguments;

  /// The size, in bytes, of extra arguments that accompany this gesture.
  @Uint32()
  external int cbExtraArgs;
}

/// When transmitted with WM_GESTURENOTIFY messages, passes information about a
/// gesture.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-gesturenotifystruct>.
///
/// {@category struct}
base class GESTURENOTIFYSTRUCT extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Reserved for future use.
  @Uint32()
  external int dwFlags;

  /// The target window for the gesture notification.
  @IntPtr()
  external int hwndTarget;

  /// The location of the gesture in physical screen coordinates.
  external POINTS ptsLocation;

  /// A specific gesture instance with gesture messages starting with
  /// <b>GID_START</b> and ending with <b>GID_END</b>.
  @Uint32()
  external int dwInstanceID;
}

final GUID_NULL = Guid.fromComponents(
  0x0,
  0x0,
  0x0,
  Uint8List.fromList(const [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]),
);

/// Contains information about a GUI thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-guithreadinfo>.
///
/// {@category struct}
base class GUITHREADINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _flags;

  /// A handle to the active window within the thread.
  @IntPtr()
  external int hwndActive;

  /// A handle to the window that has the keyboard focus.
  @IntPtr()
  external int hwndFocus;

  /// A handle to the window that has captured the mouse.
  @IntPtr()
  external int hwndCapture;

  /// A handle to the window that owns any active menus.
  @IntPtr()
  external int hwndMenuOwner;

  /// A handle to the window in a move or size loop.
  @IntPtr()
  external int hwndMoveSize;

  /// A handle to the window that is displaying the caret.
  @IntPtr()
  external int hwndCaret;

  /// The caret's bounding rectangle, in client coordinates, relative to the
  /// window specified by the <b>hwndCaret</b> member.
  external RECT rcCaret;

  @pragma('vm:prefer-inline')
  GUITHREADINFO_FLAGS get flags => GUITHREADINFO_FLAGS(_flags);

  @pragma('vm:prefer-inline')
  set flags(GUITHREADINFO_FLAGS value) => _flags = value;
}

/// The handle must be released using the `DestroyAcceleratorTable` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HACCEL = IntPtr;

/// The handle must be released using the `CloseHandle` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HANDLE = IntPtr;

typedef HANDLE_PTR = IntPtr;

/// Contains information about a simulated message generated by an input device
/// other than a keyboard or mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-hardwareinput>.
///
/// {@category struct}
base class HARDWAREINPUT extends Struct {
  /// The message generated by the input hardware.
  @Uint32()
  external int uMsg;

  /// The low-order word of the <i>lParam </i> parameter for <b>uMsg</b>.
  @Uint16()
  external int wParamL;

  /// The high-order word of the <i>lParam </i> parameter for <b>uMsg</b>.
  @Uint16()
  external int wParamH;
}

/// The handle must be released using the `DeleteObject` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HBITMAP = IntPtr;

/// The handle must be released using the `BluetoothFindDeviceClose` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HBLUETOOTH_DEVICE_FIND = IntPtr;

/// The handle must be released using the `BluetoothFindRadioClose` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HBLUETOOTH_RADIO_FIND = IntPtr;

/// The handle must be released using the `DeleteObject` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HBRUSH = IntPtr;

/// Invalid handle values are: `-1`, `0`.
typedef HCERTSTORE = IntPtr;

/// The handle must be released using the `DestroyCursor` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HCURSOR = IntPtr;

/// Invalid handle values are: `-1`, `0`.
typedef HDC = IntPtr;

/// The handle must be released using the `CloseDesktop` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HDESK = IntPtr;

/// The handle must be released using the `SetupDiDestroyDeviceInfoList`
/// function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HDEVINFO = IntPtr;

/// The handle must be released using the `UnregisterDeviceNotification`
/// function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HDEVNOTIFY = IntPtr;

/// Invalid handle values are: `-1`, `0`.
typedef HDROP = IntPtr;

/// Invalid handle values are: `0`.
typedef HDWP = IntPtr;

/// The handle must be released using the `DeleteObject` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HFONT = IntPtr;

/// The handle must be released using the `DeleteObject` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HGDIOBJ = IntPtr;

/// The handle must be released using the `CloseGestureInfoHandle` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HGESTUREINFO = IntPtr;

/// The handle must be released using the `GlobalFree` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HGLOBAL = IntPtr;

/// The handle must be released using the `UnhookWindowsHookEx` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HHOOK = IntPtr;

/// The handle must be released using the `DestroyIcon` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HICON = IntPtr;

/// The handle must be released using the `ImageList_Destroy` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HIMAGELIST = IntPtr;

/// The handle must be released using the `FreeLibrary` function.
///
/// Invalid handle values are: `0`.
typedef HINSTANCE = IntPtr;

/// The handle must be released using the `RegCloseKey` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HKEY = IntPtr;

/// The handle must be released using the `UnloadKeyboardLayout` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HKL = IntPtr;

/// The handle must be released using the `LocalFree` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HLOCAL = IntPtr;

/// The handle must be released using the `DestroyMenu` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HMENU = IntPtr;

/// The handle must be released using the `DeleteMetaFile` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HMETAFILE = IntPtr;

/// Invalid handle values are: `-1`, `0`.
typedef HMIDI = IntPtr;

/// The handle must be released using the `midiInClose` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HMIDIIN = IntPtr;

/// The handle must be released using the `midiOutClose` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HMIDIOUT = IntPtr;

/// The handle must be released using the `FreeLibrary` function.
///
/// Invalid handle values are: `0`.
typedef HMODULE = IntPtr;

/// Invalid handle values are: `-1`, `0`.
typedef HMONITOR = IntPtr;

/// Used by functions to store information about a given host, such as host
/// name, IPv4 address, and so forth.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-hostent>.
///
/// {@category struct}
base class HOSTENT extends Struct {
  /// The official name of the host (PC).
  external PSTR h_name;

  /// A <b>NULL</b>-terminated array of alternate names.
  external Pointer<Pointer<Int8>> h_aliases;

  /// The type of address being returned.
  @Int16()
  external int h_addrtype;

  /// The length, in bytes, of each address.
  @Int16()
  external int h_length;

  /// A <b>NULL</b>-terminated list of addresses for the host.
  external Pointer<Pointer<Int8>> h_addr_list;
}

/// The handle must be released using the `DeleteObject` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HPALETTE = IntPtr;

/// The handle must be released using the `ClosePseudoConsole` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HPCON = IntPtr;

/// The handle must be released using the `DeleteObject` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HPEN = IntPtr;

/// The handle must be released using the `UnregisterPowerSettingNotification`
/// function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HPOWERNOTIFY = IntPtr;

/// Invalid handle values are: `-1`, `0`.
typedef HRAWINPUT = IntPtr;

/// The handle must be released using the `DeleteObject` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HRGN = IntPtr;

/// Invalid handle values are: `-1`, `0`.
typedef HRSRC = IntPtr;

/// A handle to a Windows Runtime string.
///
/// The handle must be released using the `WindowsDeleteString` function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinRT/hstring>.
typedef HSTRING = IntPtr;

/// A handle to a mutable string buffer that you can use to create an HSTRING.
///
/// The handle must be released using the `WindowsDeleteStringBuffer` function.
///
/// Invalid handle values are: `-1`, `0`.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinRT/hstring-buffer>.
typedef HSTRING_BUFFER = IntPtr;

/// The handle must be released using the `CloseThemeData` function.
///
/// Invalid handle values are: `0`.
typedef HTHEME = IntPtr;

/// The handle must be released using the `CloseTouchInputHandle` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HTOUCHINPUT = IntPtr;

/// The handle must be released using the `waveInClose` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HWAVEIN = IntPtr;

/// The handle must be released using the `waveOutClose` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HWAVEOUT = IntPtr;

/// The handle must be released using the `CloseWindowStation` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef HWINSTA = IntPtr;

typedef HWND = IntPtr;

/// Contains information about an icon or a cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-iconinfo>.
///
/// {@category struct}
base class ICONINFO extends Struct {
  @Int32()
  external int _fIcon;

  /// The x-coordinate of a cursor's hot spot.
  @Uint32()
  external int xHotspot;

  /// The y-coordinate of the cursor's hot spot.
  @Uint32()
  external int yHotspot;

  /// A handle to the icon monochrome mask <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmMask;

  /// A handle to the icon color <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmColor;

  /// Specifies whether this structure defines an icon or a cursor.
  @pragma('vm:prefer-inline')
  bool get fIcon => _fIcon != FALSE;

  @pragma('vm:prefer-inline')
  set fIcon(bool value) => _fIcon = value ? TRUE : FALSE;
}

/// Contains information about an icon or a cursor.
///
/// Extends ICONINFO. Used by GetIconInfoEx.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-iconinfoexw>.
///
/// {@category struct}
base class ICONINFOEX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Int32()
  external int _fIcon;

  /// The x-coordinate of a cursor's hot spot.
  @Uint32()
  external int xHotspot;

  /// The y-coordinate of the cursor's hot spot.
  @Uint32()
  external int yHotspot;

  /// A handle to the icon monochrome mask <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmMask;

  /// A handle to the icon color <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  @IntPtr()
  external int hbmColor;

  /// The icon or cursor resource bits.
  @Uint16()
  external int wResID;

  @Array(260)
  external Array<Uint16> _szModName;

  @Array(260)
  external Array<Uint16> _szResName;

  /// Specifies whether this structure defines an icon or a cursor.
  @pragma('vm:prefer-inline')
  bool get fIcon => _fIcon != FALSE;

  @pragma('vm:prefer-inline')
  set fIcon(bool value) => _fIcon = value ? TRUE : FALSE;

  /// The fully qualified path of the module.
  @pragma('vm:prefer-inline')
  String get szModName => _szModName.toDartString();

  @pragma('vm:prefer-inline')
  set szModName(String value) => _szModName.setString(value);

  /// The fully qualified path of the resource.
  @pragma('vm:prefer-inline')
  String get szResName => _szResName.toDartString();

  @pragma('vm:prefer-inline')
  set szResName(String value) => _szResName.setString(value);
}

/// {@category struct}
base class IDLDESC extends Struct {
  @IntPtr()
  external int _dwReserved;

  @Uint16()
  external int _wIDLFlags;

  @pragma('vm:prefer-inline')
  IDLFLAGS get wIDLFlags => IDLFLAGS(_wIDLFlags);

  @pragma('vm:prefer-inline')
  set wIDLFlags(IDLFLAGS value) => _wIDLFlags = value;
}

/// Carries information used to load common control classes from the
/// dynamic-link library (DLL).
///
/// This structure is used with the InitCommonControlsEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/ns-commctrl-initcommoncontrolsex>.
///
/// {@category struct}
base class INITCOMMONCONTROLSEX extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int dwSize;

  @Uint32()
  external int _dwICC;

  @pragma('vm:prefer-inline')
  INITCOMMONCONTROLSEX_ICC get dwICC => INITCOMMONCONTROLSEX_ICC(_dwICC);

  @pragma('vm:prefer-inline')
  set dwICC(INITCOMMONCONTROLSEX_ICC value) => _dwICC = value;
}

/// {@category struct}
base class INIT_ONCE extends Struct {
  external Pointer Ptr;
}

/// Used by SendInput to store information for synthesizing input events such as
/// keystrokes, mouse movement, and mouse clicks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-input>.
///
/// {@category struct}
base class INPUT extends Struct {
  @Uint32()
  external int _type;

  external INPUT_0 Anonymous;

  @pragma('vm:prefer-inline')
  INPUT_TYPE get type => INPUT_TYPE(_type);

  @pragma('vm:prefer-inline')
  set type(INPUT_TYPE value) => _type = value;
}

/// {@category union}
sealed class INPUT_0 extends Union {
  external MOUSEINPUT mi;
  external KEYBDINPUT ki;
  external HARDWAREINPUT hi;
}

extension INPUT_0_Extension on INPUT {
  @pragma('vm:prefer-inline')
  MOUSEINPUT get mi => this.Anonymous.mi;

  @pragma('vm:prefer-inline')
  set mi(MOUSEINPUT value) => this.Anonymous.mi = value;

  @pragma('vm:prefer-inline')
  KEYBDINPUT get ki => this.Anonymous.ki;

  @pragma('vm:prefer-inline')
  set ki(KEYBDINPUT value) => this.Anonymous.ki = value;

  @pragma('vm:prefer-inline')
  HARDWAREINPUT get hi => this.Anonymous.hi;

  @pragma('vm:prefer-inline')
  set hi(HARDWAREINPUT value) => this.Anonymous.hi = value;
}

/// Describes an input event in the console input buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/input-record-str>.
///
/// {@category struct}
base class INPUT_RECORD extends Struct {
  /// A handle to the type of input event and the event record stored in the
  /// **Event** member.
  @Uint16()
  external int EventType;

  /// The event information.
  external INPUT_RECORD_0 Event;
}

/// {@category union}
sealed class INPUT_RECORD_0 extends Union {
  external KEY_EVENT_RECORD KeyEvent;
  external MOUSE_EVENT_RECORD MouseEvent;
  external WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
  external MENU_EVENT_RECORD MenuEvent;
  external FOCUS_EVENT_RECORD FocusEvent;
}

extension INPUT_RECORD_0_Extension on INPUT_RECORD {
  @pragma('vm:prefer-inline')
  KEY_EVENT_RECORD get KeyEvent => this.Event.KeyEvent;

  @pragma('vm:prefer-inline')
  set KeyEvent(KEY_EVENT_RECORD value) => this.Event.KeyEvent = value;

  @pragma('vm:prefer-inline')
  MOUSE_EVENT_RECORD get MouseEvent => this.Event.MouseEvent;

  @pragma('vm:prefer-inline')
  set MouseEvent(MOUSE_EVENT_RECORD value) => this.Event.MouseEvent = value;

  @pragma('vm:prefer-inline')
  WINDOW_BUFFER_SIZE_RECORD get WindowBufferSizeEvent =>
      this.Event.WindowBufferSizeEvent;

  @pragma('vm:prefer-inline')
  set WindowBufferSizeEvent(WINDOW_BUFFER_SIZE_RECORD value) =>
      this.Event.WindowBufferSizeEvent = value;

  @pragma('vm:prefer-inline')
  MENU_EVENT_RECORD get MenuEvent => this.Event.MenuEvent;

  @pragma('vm:prefer-inline')
  set MenuEvent(MENU_EVENT_RECORD value) => this.Event.MenuEvent = value;

  @pragma('vm:prefer-inline')
  FOCUS_EVENT_RECORD get FocusEvent => this.Event.FocusEvent;

  @pragma('vm:prefer-inline')
  set FocusEvent(FOCUS_EVENT_RECORD value) => this.Event.FocusEvent = value;
}

/// Defines the matrix that represents a transform on a message consumer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-input_transform>.
///
/// {@category struct}
base class INPUT_TRANSFORM extends Struct {
  external INPUT_TRANSFORM_0 Anonymous;
}

/// {@category union}
sealed class INPUT_TRANSFORM_0 extends Union {
  external INPUT_TRANSFORM_0_0 Anonymous;

  @Array(16)
  external Array<Float> m;
}

extension INPUT_TRANSFORM_0_Extension on INPUT_TRANSFORM {
  @pragma('vm:prefer-inline')
  INPUT_TRANSFORM_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(INPUT_TRANSFORM_0_0 value) => this.Anonymous.Anonymous = value;

  @pragma('vm:prefer-inline')
  Array<Float> get m => this.Anonymous.m;

  @pragma('vm:prefer-inline')
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// {@category struct}
sealed class INPUT_TRANSFORM_0_0 extends Struct {
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

extension INPUT_TRANSFORM_0_0_Extension on INPUT_TRANSFORM {
  @pragma('vm:prefer-inline')
  double get x11 => this.Anonymous.Anonymous.x11;

  @pragma('vm:prefer-inline')
  set x11(double value) => this.Anonymous.Anonymous.x11 = value;

  @pragma('vm:prefer-inline')
  double get x12 => this.Anonymous.Anonymous.x12;

  @pragma('vm:prefer-inline')
  set x12(double value) => this.Anonymous.Anonymous.x12 = value;

  @pragma('vm:prefer-inline')
  double get x13 => this.Anonymous.Anonymous.x13;

  @pragma('vm:prefer-inline')
  set x13(double value) => this.Anonymous.Anonymous.x13 = value;

  @pragma('vm:prefer-inline')
  double get x14 => this.Anonymous.Anonymous.x14;

  @pragma('vm:prefer-inline')
  set x14(double value) => this.Anonymous.Anonymous.x14 = value;

  @pragma('vm:prefer-inline')
  double get x21 => this.Anonymous.Anonymous.x21;

  @pragma('vm:prefer-inline')
  set x21(double value) => this.Anonymous.Anonymous.x21 = value;

  @pragma('vm:prefer-inline')
  double get x22 => this.Anonymous.Anonymous.x22;

  @pragma('vm:prefer-inline')
  set x22(double value) => this.Anonymous.Anonymous.x22 = value;

  @pragma('vm:prefer-inline')
  double get x23 => this.Anonymous.Anonymous.x23;

  @pragma('vm:prefer-inline')
  set x23(double value) => this.Anonymous.Anonymous.x23 = value;

  @pragma('vm:prefer-inline')
  double get x24 => this.Anonymous.Anonymous.x24;

  @pragma('vm:prefer-inline')
  set x24(double value) => this.Anonymous.Anonymous.x24 = value;

  @pragma('vm:prefer-inline')
  double get x31 => this.Anonymous.Anonymous.x31;

  @pragma('vm:prefer-inline')
  set x31(double value) => this.Anonymous.Anonymous.x31 = value;

  @pragma('vm:prefer-inline')
  double get x32 => this.Anonymous.Anonymous.x32;

  @pragma('vm:prefer-inline')
  set x32(double value) => this.Anonymous.Anonymous.x32 = value;

  @pragma('vm:prefer-inline')
  double get x33 => this.Anonymous.Anonymous.x33;

  @pragma('vm:prefer-inline')
  set x33(double value) => this.Anonymous.Anonymous.x33 = value;

  @pragma('vm:prefer-inline')
  double get x34 => this.Anonymous.Anonymous.x34;

  @pragma('vm:prefer-inline')
  set x34(double value) => this.Anonymous.Anonymous.x34 = value;

  @pragma('vm:prefer-inline')
  double get x41 => this.Anonymous.Anonymous.x41;

  @pragma('vm:prefer-inline')
  set x41(double value) => this.Anonymous.Anonymous.x41 = value;

  @pragma('vm:prefer-inline')
  double get x42 => this.Anonymous.Anonymous.x42;

  @pragma('vm:prefer-inline')
  set x42(double value) => this.Anonymous.Anonymous.x42 = value;

  @pragma('vm:prefer-inline')
  double get x43 => this.Anonymous.Anonymous.x43;

  @pragma('vm:prefer-inline')
  set x43(double value) => this.Anonymous.Anonymous.x43 = value;

  @pragma('vm:prefer-inline')
  double get x44 => this.Anonymous.Anonymous.x44;

  @pragma('vm:prefer-inline')
  set x44(double value) => this.Anonymous.Anonymous.x44 = value;
}

/// Represents an IPv4 address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/inaddr/ns-inaddr-in_addr>.
///
/// {@category struct}
base class IN_ADDR extends Struct {
  external IN_ADDR_0 S_un;
}

/// {@category union}
sealed class IN_ADDR_0 extends Union {
  external IN_ADDR_0_0 S_un_b;
  external IN_ADDR_0_1 S_un_w;

  @Uint32()
  external int S_addr;
}

extension IN_ADDR_0_Extension on IN_ADDR {
  @pragma('vm:prefer-inline')
  IN_ADDR_0_0 get S_un_b => this.S_un.S_un_b;

  @pragma('vm:prefer-inline')
  set S_un_b(IN_ADDR_0_0 value) => this.S_un.S_un_b = value;

  @pragma('vm:prefer-inline')
  IN_ADDR_0_1 get S_un_w => this.S_un.S_un_w;

  @pragma('vm:prefer-inline')
  set S_un_w(IN_ADDR_0_1 value) => this.S_un.S_un_w = value;

  @pragma('vm:prefer-inline')
  int get S_addr => this.S_un.S_addr;

  @pragma('vm:prefer-inline')
  set S_addr(int value) => this.S_un.S_addr = value;
}

/// {@category struct}
sealed class IN_ADDR_0_0 extends Struct {
  @Uint8()
  external int s_b1;

  @Uint8()
  external int s_b2;

  @Uint8()
  external int s_b3;

  @Uint8()
  external int s_b4;
}

extension IN_ADDR_0_0_Extension on IN_ADDR {
  @pragma('vm:prefer-inline')
  int get s_b1 => this.S_un.S_un_b.s_b1;

  @pragma('vm:prefer-inline')
  set s_b1(int value) => this.S_un.S_un_b.s_b1 = value;

  @pragma('vm:prefer-inline')
  int get s_b2 => this.S_un.S_un_b.s_b2;

  @pragma('vm:prefer-inline')
  set s_b2(int value) => this.S_un.S_un_b.s_b2 = value;

  @pragma('vm:prefer-inline')
  int get s_b3 => this.S_un.S_un_b.s_b3;

  @pragma('vm:prefer-inline')
  set s_b3(int value) => this.S_un.S_un_b.s_b3 = value;

  @pragma('vm:prefer-inline')
  int get s_b4 => this.S_un.S_un_b.s_b4;

  @pragma('vm:prefer-inline')
  set s_b4(int value) => this.S_un.S_un_b.s_b4 = value;
}

/// {@category struct}
sealed class IN_ADDR_0_1 extends Struct {
  @Uint16()
  external int s_w1;

  @Uint16()
  external int s_w2;
}

extension IN_ADDR_0_1_Extension on IN_ADDR {
  @pragma('vm:prefer-inline')
  int get s_w1 => this.S_un.S_un_w.s_w1;

  @pragma('vm:prefer-inline')
  set s_w1(int value) => this.S_un.S_un_w.s_w1 = value;

  @pragma('vm:prefer-inline')
  int get s_w2 => this.S_un.S_un_w.s_w2;

  @pragma('vm:prefer-inline')
  set s_w2(int value) => this.S_un.S_un_w.s_w2 = value;
}

/// The header node for a linked list of addresses for a particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_addresses_lh>.
///
/// {@category struct}
base class IP_ADAPTER_ADDRESSES_LH extends Struct {
  external IP_ADAPTER_ADDRESSES_LH_0 Anonymous1;

  /// A pointer to the next adapter addresses structure in the list.
  external Pointer<IP_ADAPTER_ADDRESSES_LH> Next;

  /// An array of characters that contains the name of the adapter with which
  /// these addresses are associated.
  external PSTR AdapterName;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_unicast_address_lh">IP_ADAPTER_UNICAST_ADDRESS</a>
  /// structure in a linked list of IP unicast addresses for the adapter.
  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> FirstUnicastAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_anycast_address_xp">IP_ADAPTER_ANYCAST_ADDRESS</a>
  /// structure in a linked list of IP anycast addresses for the adapter.
  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> FirstAnycastAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_multicast_address_xp">IP_ADAPTER_MULTICAST_ADDRESS</a>
  /// structure in a list of IP multicast addresses for the adapter.
  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> FirstMulticastAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_dns_server_address_xp">IP_ADAPTER_DNS_SERVER_ADDRESS</a>
  /// structure in a linked list of DNS server addresses for the adapter.
  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> FirstDnsServerAddress;

  /// The Domain Name System (DNS) suffix associated with this adapter.
  external PWSTR DnsSuffix;

  /// A description for the adapter.
  external PWSTR Description;

  /// A user-friendly name for the adapter.
  external PWSTR FriendlyName;

  /// The Media Access Control (MAC) address for the adapter.
  @Array(8)
  external Array<Uint8> PhysicalAddress;

  /// The length, in bytes, of the address specified in the
  /// <b>PhysicalAddress</b> member.
  @Uint32()
  external int PhysicalAddressLength;

  external IP_ADAPTER_ADDRESSES_LH_1 Anonymous2;

  /// The maximum transmission unit (MTU) size, in bytes.
  @Uint32()
  external int Mtu;

  /// The interface type as defined by the Internet Assigned Names Authority
  /// (IANA).
  @Uint32()
  external int IfType;

  @Int32()
  external int _OperStatus;

  /// The interface index for the IPv6 IP address.
  @Uint32()
  external int Ipv6IfIndex;

  /// An array of scope IDs for each scope level used for composing <a
  /// href="https://docs.microsoft.com/windows/desktop/WinSock/sockaddr-2">sockaddr</a>
  /// structures.
  @Array(16)
  external Array<Uint32> ZoneIndices;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_prefix_xp">IP_ADAPTER_PREFIX</a>
  /// structure in a linked list of IP adapter prefixes for the adapter.
  external Pointer<IP_ADAPTER_PREFIX_XP> FirstPrefix;

  /// The current speed in bits per second of the transmit link for the adapter.
  @Uint64()
  external int TransmitLinkSpeed;

  /// The current speed in bits per second of the receive link for the adapter.
  @Uint64()
  external int ReceiveLinkSpeed;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_wins_server_address_lh">IP_ADAPTER_WINS_SERVER_ADDRESS</a>
  /// structure in a linked list of Windows Internet Name Service (WINS) server
  /// addresses for the adapter.
  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> FirstWinsServerAddress;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_gateway_address_lh">IP_ADAPTER_GATEWAY_ADDRESS</a>
  /// structure in a linked list of gateways for the adapter.
  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> FirstGatewayAddress;

  /// The IPv4 interface metric for the adapter address.
  @Uint32()
  external int Ipv4Metric;

  /// The IPv6 interface metric for the adapter address.
  @Uint32()
  external int Ipv6Metric;

  /// The interface LUID for the adapter address.
  external NET_LUID_LH Luid;

  /// The IPv4 address of the DHCP server for the adapter address.
  external SOCKET_ADDRESS Dhcpv4Server;

  /// The routing compartment ID for the adapter address.
  @Uint32()
  external int CompartmentId;

  /// The [GUID] that is associated with the network that the interface belongs
  /// to.
  external GUID NetworkGuid;

  @Int32()
  external int _ConnectionType;

  @Int32()
  external int _TunnelType;

  /// The IPv6 address of the DHCPv6 server for the adapter address.
  external SOCKET_ADDRESS Dhcpv6Server;

  /// The DHCP unique identifier (DUID) for the DHCPv6 client.
  @Array(130)
  external Array<Uint8> Dhcpv6ClientDuid;

  /// The length, in bytes, of the DHCP unique identifier (DUID) for the DHCPv6
  /// client.
  @Uint32()
  external int Dhcpv6ClientDuidLength;

  /// The identifier for an identity association chosen by the DHCPv6 client.
  @Uint32()
  external int Dhcpv6Iaid;

  /// A pointer to the first <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_adapter_dns_suffix">IP_ADAPTER_DNS_SUFFIX</a>
  /// structure in a linked list of DNS suffixes for the adapter.
  external Pointer<IP_ADAPTER_DNS_SUFFIX> FirstDnsSuffix;

  /// The operational status for the interface as defined in RFC 2863.
  @pragma('vm:prefer-inline')
  IF_OPER_STATUS get OperStatus => IF_OPER_STATUS(_OperStatus);

  @pragma('vm:prefer-inline')
  set OperStatus(IF_OPER_STATUS value) => _OperStatus = value;

  /// The interface connection type for the adapter address.
  @pragma('vm:prefer-inline')
  NET_IF_CONNECTION_TYPE get ConnectionType =>
      NET_IF_CONNECTION_TYPE(_ConnectionType);

  @pragma('vm:prefer-inline')
  set ConnectionType(NET_IF_CONNECTION_TYPE value) => _ConnectionType = value;

  /// The encapsulation method used by a tunnel if the adapter address is a
  /// tunnel.
  @pragma('vm:prefer-inline')
  TUNNEL_TYPE get TunnelType => TUNNEL_TYPE(_TunnelType);

  @pragma('vm:prefer-inline')
  set TunnelType(TUNNEL_TYPE value) => _TunnelType = value;
}

/// {@category union}
sealed class IP_ADAPTER_ADDRESSES_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_ADDRESSES_LH_0_0 Anonymous;
}

extension IP_ADAPTER_ADDRESSES_LH_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous1.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous1.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_ADDRESSES_LH_0_0 get Anonymous => this.Anonymous1.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_ADDRESSES_LH_0_0 value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ADDRESSES_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int IfIndex;
}

extension IP_ADAPTER_ADDRESSES_LH_0_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous1.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous1.Anonymous.Length = value;

  @pragma('vm:prefer-inline')
  int get IfIndex => this.Anonymous1.Anonymous.IfIndex;

  @pragma('vm:prefer-inline')
  set IfIndex(int value) => this.Anonymous1.Anonymous.IfIndex = value;
}

/// {@category union}
sealed class IP_ADAPTER_ADDRESSES_LH_1 extends Union {
  @Uint32()
  external int Flags;

  external IP_ADAPTER_ADDRESSES_LH_1_0 Anonymous;
}

extension IP_ADAPTER_ADDRESSES_LH_1_Extension on IP_ADAPTER_ADDRESSES_LH {
  @pragma('vm:prefer-inline')
  int get Flags => this.Anonymous2.Flags;

  @pragma('vm:prefer-inline')
  set Flags(int value) => this.Anonymous2.Flags = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_ADDRESSES_LH_1_0 get Anonymous => this.Anonymous2.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_ADDRESSES_LH_1_0 value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ADDRESSES_LH_1_0 extends Struct {
  @Uint32()
  external int bitfield;

  @pragma('vm:prefer-inline')
  int get DdnsEnabled => bitfield.getBits(0, 1);

  @pragma('vm:prefer-inline')
  set DdnsEnabled(int value) => bitfield = bitfield.setBits(0, 1, value);

  @pragma('vm:prefer-inline')
  int get RegisterAdapterSuffix => bitfield.getBits(1, 1);

  @pragma('vm:prefer-inline')
  set RegisterAdapterSuffix(int value) =>
      bitfield = bitfield.setBits(1, 1, value);

  @pragma('vm:prefer-inline')
  int get Dhcpv4Enabled => bitfield.getBits(2, 1);

  @pragma('vm:prefer-inline')
  set Dhcpv4Enabled(int value) => bitfield = bitfield.setBits(2, 1, value);

  @pragma('vm:prefer-inline')
  int get ReceiveOnly => bitfield.getBits(3, 1);

  @pragma('vm:prefer-inline')
  set ReceiveOnly(int value) => bitfield = bitfield.setBits(3, 1, value);

  @pragma('vm:prefer-inline')
  int get NoMulticast => bitfield.getBits(4, 1);

  @pragma('vm:prefer-inline')
  set NoMulticast(int value) => bitfield = bitfield.setBits(4, 1, value);

  @pragma('vm:prefer-inline')
  int get Ipv6OtherStatefulConfig => bitfield.getBits(5, 1);

  @pragma('vm:prefer-inline')
  set Ipv6OtherStatefulConfig(int value) =>
      bitfield = bitfield.setBits(5, 1, value);

  @pragma('vm:prefer-inline')
  int get NetbiosOverTcpipEnabled => bitfield.getBits(6, 1);

  @pragma('vm:prefer-inline')
  set NetbiosOverTcpipEnabled(int value) =>
      bitfield = bitfield.setBits(6, 1, value);

  @pragma('vm:prefer-inline')
  int get Ipv4Enabled => bitfield.getBits(7, 1);

  @pragma('vm:prefer-inline')
  set Ipv4Enabled(int value) => bitfield = bitfield.setBits(7, 1, value);

  @pragma('vm:prefer-inline')
  int get Ipv6Enabled => bitfield.getBits(8, 1);

  @pragma('vm:prefer-inline')
  set Ipv6Enabled(int value) => bitfield = bitfield.setBits(8, 1, value);

  @pragma('vm:prefer-inline')
  int get Ipv6ManagedAddressConfigurationSupported => bitfield.getBits(9, 1);

  @pragma('vm:prefer-inline')
  set Ipv6ManagedAddressConfigurationSupported(int value) =>
      bitfield = bitfield.setBits(9, 1, value);
}

extension IP_ADAPTER_ADDRESSES_LH_1_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  @pragma('vm:prefer-inline')
  int get bitfield => this.Anonymous2.Anonymous.bitfield;

  @pragma('vm:prefer-inline')
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;

  @pragma('vm:prefer-inline')
  int get DdnsEnabled => this.Anonymous2.Anonymous.DdnsEnabled;

  @pragma('vm:prefer-inline')
  set DdnsEnabled(int value) => this.Anonymous2.Anonymous.DdnsEnabled = value;

  @pragma('vm:prefer-inline')
  int get RegisterAdapterSuffix =>
      this.Anonymous2.Anonymous.RegisterAdapterSuffix;

  @pragma('vm:prefer-inline')
  set RegisterAdapterSuffix(int value) =>
      this.Anonymous2.Anonymous.RegisterAdapterSuffix = value;

  @pragma('vm:prefer-inline')
  int get Dhcpv4Enabled => this.Anonymous2.Anonymous.Dhcpv4Enabled;

  @pragma('vm:prefer-inline')
  set Dhcpv4Enabled(int value) =>
      this.Anonymous2.Anonymous.Dhcpv4Enabled = value;

  @pragma('vm:prefer-inline')
  int get ReceiveOnly => this.Anonymous2.Anonymous.ReceiveOnly;

  @pragma('vm:prefer-inline')
  set ReceiveOnly(int value) => this.Anonymous2.Anonymous.ReceiveOnly = value;

  @pragma('vm:prefer-inline')
  int get NoMulticast => this.Anonymous2.Anonymous.NoMulticast;

  @pragma('vm:prefer-inline')
  set NoMulticast(int value) => this.Anonymous2.Anonymous.NoMulticast = value;

  @pragma('vm:prefer-inline')
  int get Ipv6OtherStatefulConfig =>
      this.Anonymous2.Anonymous.Ipv6OtherStatefulConfig;

  @pragma('vm:prefer-inline')
  set Ipv6OtherStatefulConfig(int value) =>
      this.Anonymous2.Anonymous.Ipv6OtherStatefulConfig = value;

  @pragma('vm:prefer-inline')
  int get NetbiosOverTcpipEnabled =>
      this.Anonymous2.Anonymous.NetbiosOverTcpipEnabled;

  @pragma('vm:prefer-inline')
  set NetbiosOverTcpipEnabled(int value) =>
      this.Anonymous2.Anonymous.NetbiosOverTcpipEnabled = value;

  @pragma('vm:prefer-inline')
  int get Ipv4Enabled => this.Anonymous2.Anonymous.Ipv4Enabled;

  @pragma('vm:prefer-inline')
  set Ipv4Enabled(int value) => this.Anonymous2.Anonymous.Ipv4Enabled = value;

  @pragma('vm:prefer-inline')
  int get Ipv6Enabled => this.Anonymous2.Anonymous.Ipv6Enabled;

  @pragma('vm:prefer-inline')
  set Ipv6Enabled(int value) => this.Anonymous2.Anonymous.Ipv6Enabled = value;

  @pragma('vm:prefer-inline')
  int get Ipv6ManagedAddressConfigurationSupported =>
      this.Anonymous2.Anonymous.Ipv6ManagedAddressConfigurationSupported;

  @pragma('vm:prefer-inline')
  set Ipv6ManagedAddressConfigurationSupported(int value) =>
      this.Anonymous2.Anonymous.Ipv6ManagedAddressConfigurationSupported =
          value;
}

/// Stores a single anycast IP address in a linked list of addresses for a
/// particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_anycast_address_xp>.
///
/// {@category struct}
base class IP_ADAPTER_ANYCAST_ADDRESS_XP extends Struct {
  external IP_ADAPTER_ANYCAST_ADDRESS_XP_0 Anonymous;

  /// A pointer to the next anycast IP address structure in the list.
  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> Next;

  /// The IP address for this anycast IP address entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_ANYCAST_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 Anonymous;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_0_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  @pragma('vm:prefer-inline')
  int get Flags => this.Anonymous.Anonymous.Flags;

  @pragma('vm:prefer-inline')
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores a single DNS server address in a linked list of DNS server addresses
/// for a particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_dns_server_address_xp>.
///
/// {@category struct}
base class IP_ADAPTER_DNS_SERVER_ADDRESS_XP extends Struct {
  external IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0 Anonymous;

  /// A pointer to the next DNS server address structure in the list.
  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> Next;

  /// The IP address for this DNS server entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 Anonymous;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 get Anonymous =>
      this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int _Reserved;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
}

/// Stores a DNS suffix in a linked list of DNS suffixes for a particular
/// adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_dns_suffix>.
///
/// {@category struct}
base class IP_ADAPTER_DNS_SUFFIX extends Struct {
  /// A pointer to the next DNS suffix in the linked list.
  external Pointer<IP_ADAPTER_DNS_SUFFIX> Next;

  @Array(256)
  external Array<Uint16> _String$;

  /// The DNS suffix for this DNS suffix entry.
  @pragma('vm:prefer-inline')
  String get String$ => _String$.toDartString();

  @pragma('vm:prefer-inline')
  set String$(String value) => _String$.setString(value);
}

/// Stores a single gateway address in a linked list of gateway addresses for a
/// particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_gateway_address_lh>.
///
/// {@category struct}
base class IP_ADAPTER_GATEWAY_ADDRESS_LH extends Struct {
  external IP_ADAPTER_GATEWAY_ADDRESS_LH_0 Anonymous;

  /// A pointer to the next gateway address structure in the list.
  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> Next;

  /// The IP address for this gateway entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_GATEWAY_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 Anonymous;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_0_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int _Reserved;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
}

/// Stores the interface index associated with a network adapter with IPv4
/// enabled together with the name of the network adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ipexport/ns-ipexport-ip_adapter_index_map>.
///
/// {@category struct}
base class IP_ADAPTER_INDEX_MAP extends Struct {
  /// The interface index associated with the network adapter.
  @Uint32()
  external int Index;

  @Array(128)
  external Array<Uint16> _Name;

  /// A string that contains the name of the adapter.
  @pragma('vm:prefer-inline')
  String get Name => _Name.toDartString();

  @pragma('vm:prefer-inline')
  set Name(String value) => _Name.setString(value);
}

/// Stores a single multicast address in a linked-list of addresses for a
/// particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_multicast_address_xp>.
///
/// {@category struct}
base class IP_ADAPTER_MULTICAST_ADDRESS_XP extends Struct {
  external IP_ADAPTER_MULTICAST_ADDRESS_XP_0 Anonymous;

  /// A pointer to the next multicast IP address structure in the list.
  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> Next;

  /// The IP address for this multicast IP address entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_MULTICAST_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 Anonymous;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_0_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  @pragma('vm:prefer-inline')
  int get Flags => this.Anonymous.Anonymous.Flags;

  @pragma('vm:prefer-inline')
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores an IP address prefix.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_prefix_xp>.
///
/// {@category struct}
base class IP_ADAPTER_PREFIX_XP extends Struct {
  external IP_ADAPTER_PREFIX_XP_0 Anonymous;
  external Pointer<IP_ADAPTER_PREFIX_XP> Next;
  external SOCKET_ADDRESS Address;

  @Uint32()
  external int PrefixLength;
}

/// {@category union}
sealed class IP_ADAPTER_PREFIX_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_PREFIX_XP_0_0 Anonymous;
}

extension IP_ADAPTER_PREFIX_XP_0_Extension on IP_ADAPTER_PREFIX_XP {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_PREFIX_XP_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_PREFIX_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_PREFIX_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_PREFIX_XP_0_0_Extension on IP_ADAPTER_PREFIX_XP {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  @pragma('vm:prefer-inline')
  int get Flags => this.Anonymous.Anonymous.Flags;

  @pragma('vm:prefer-inline')
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores a single unicast IP address in a linked list of IP addresses for a
/// particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_unicast_address_lh>.
///
/// {@category struct}
base class IP_ADAPTER_UNICAST_ADDRESS_LH extends Struct {
  external IP_ADAPTER_UNICAST_ADDRESS_LH_0 Anonymous;

  /// A pointer to the next IP adapter address structure in the list.
  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> Next;

  /// The IP address for this unicast IP address entry.
  external SOCKET_ADDRESS Address;

  @Int32()
  external int _PrefixOrigin;

  @Int32()
  external int _SuffixOrigin;

  @Int32()
  external int _DadState;

  /// The maximum lifetime, in seconds, that the IP address is valid.
  @Uint32()
  external int ValidLifetime;

  /// The preferred lifetime, in seconds, that the IP address is valid.
  @Uint32()
  external int PreferredLifetime;

  /// The lease lifetime, in seconds, that the IP address is valid.
  @Uint32()
  external int LeaseLifetime;

  /// The length, in bits, of the prefix or network part of the IP address.
  @Uint8()
  external int OnLinkPrefixLength;

  /// The prefix or network part of IP the address.
  @pragma('vm:prefer-inline')
  NL_PREFIX_ORIGIN get PrefixOrigin => NL_PREFIX_ORIGIN(_PrefixOrigin);

  @pragma('vm:prefer-inline')
  set PrefixOrigin(NL_PREFIX_ORIGIN value) => _PrefixOrigin = value;

  /// The suffix or host part of the IP address.
  @pragma('vm:prefer-inline')
  NL_SUFFIX_ORIGIN get SuffixOrigin => NL_SUFFIX_ORIGIN(_SuffixOrigin);

  @pragma('vm:prefer-inline')
  set SuffixOrigin(NL_SUFFIX_ORIGIN value) => _SuffixOrigin = value;

  /// The duplicate address detection (DAD) state.
  @pragma('vm:prefer-inline')
  NL_DAD_STATE get DadState => NL_DAD_STATE(_DadState);

  @pragma('vm:prefer-inline')
  set DadState(NL_DAD_STATE value) => _DadState = value;
}

/// {@category union}
sealed class IP_ADAPTER_UNICAST_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 Anonymous;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_0_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  @pragma('vm:prefer-inline')
  int get Flags => this.Anonymous.Anonymous.Flags;

  @pragma('vm:prefer-inline')
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

/// Stores a single Windows Internet Name Service (WINS) server address in a
/// linked list of WINS server addresses for a particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_wins_server_address_lh>.
///
/// {@category struct}
base class IP_ADAPTER_WINS_SERVER_ADDRESS_LH extends Struct {
  external IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0 Anonymous;

  /// A pointer to the next WINS server address structure in the list.
  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> Next;

  /// The IP address for this WINS server entry.
  external SOCKET_ADDRESS Address;
}

/// {@category union}
sealed class IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 Anonymous;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  @pragma('vm:prefer-inline')
  int get Alignment => this.Anonymous.Alignment;

  @pragma('vm:prefer-inline')
  set Alignment(int value) => this.Anonymous.Alignment = value;

  @pragma('vm:prefer-inline')
  IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 get Anonymous =>
      this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int _Reserved;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  @pragma('vm:prefer-inline')
  int get Length => this.Anonymous.Anonymous.Length;

  @pragma('vm:prefer-inline')
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
}

/// Stores an IPv4 address in dotted decimal notation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_address_string>.
///
/// {@category struct}
base class IP_ADDRESS_STRING extends Struct {
  /// A character string that represents an IPv4 address or an IPv4 subnet mask
  /// in dotted decimal notation.
  @Array(16)
  external Array<CHAR> String$;
}

/// Represents a node in a linked-list of IPv4 addresses.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_addr_string>.
///
/// {@category struct}
base class IP_ADDR_STRING extends Struct {
  /// A pointer to the next <b>IP_ADDR_STRING</b> structure in the list.
  external Pointer<IP_ADDR_STRING> Next;

  /// A value that specifies a structure type with a single member,
  /// <b>String</b>.
  external IP_ADDRESS_STRING IpAddress;

  /// A value that specifies a structure type with a single member,
  /// <b>String</b>.
  external IP_ADDRESS_STRING IpMask;

  /// A network table entry (NTE).
  @Uint32()
  external int Context;
}

/// Contains a list of the network interface adapters with IPv4 enabled on the
/// local system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ipexport/ns-ipexport-ip_interface_info>.
///
/// {@category struct}
base class IP_INTERFACE_INFO extends Struct {
  /// The number of adapters listed in the array pointed to by the
  /// <b>Adapter</b> member.
  @Int32()
  external int NumAdapters;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/ipexport/ns-ipexport-ip_adapter_index_map">IP_ADAPTER_INDEX_MAP</a>
  /// structures.
  @Array.variableWithVariableDimension(1)
  external Array<IP_ADAPTER_INDEX_MAP> Adapter;
}

/// Contains information specific to a particular adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_per_adapter_info_w2ksp1>.
///
/// {@category struct}
base class IP_PER_ADAPTER_INFO_W2KSP1 extends Struct {
  /// Specifies whether IP address auto-configuration (APIPA) is enabled on this
  /// adapter.
  @Uint32()
  external int AutoconfigEnabled;

  /// Specifies whether this adapter's IP address is currently auto-configured
  /// by APIPA.
  @Uint32()
  external int AutoconfigActive;

  /// Reserved.
  external Pointer<IP_ADDR_STRING> CurrentDnsServer;

  /// A linked list of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/iptypes/ns-iptypes-ip_addr_string">IP_ADDR_STRING</a>
  /// structures that specify the set of DNS servers used by the local computer.
  external IP_ADDR_STRING DnsServerList;
}

/// Contains a list of item identifiers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-itemidlist>.
///
/// {@category struct}
@Packed(1)
base class ITEMIDLIST extends Struct {
  /// A list of item identifiers.
  external SHITEMID mkid;
}

/// Contains information used to control the I/O rate for a job.
///
/// This structure is used by the SetIoRateControlInformationJobObject and
/// QueryIoRateControlInformationJobObject functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/ns-jobapi2-jobobject_io_rate_control_information>.
///
/// {@category struct}
base class JOBOBJECT_IO_RATE_CONTROL_INFORMATION extends Struct {
  /// The maximum limit for the I/O rate in I/O operations per second (IOPS).
  @Int64()
  external int MaxIops;

  /// The maximum limit for the I/O rate in bytes per second.
  @Int64()
  external int MaxBandwidth;

  /// Sets a minimum I/O rate which the operating system reserves for the job.
  @Int64()
  external int ReservationIops;

  /// The NT device name for the volume to which you want to apply the policy
  /// for the I/O rate.
  external PWSTR VolumeName;

  /// The base size of the normalized I/O unit, in bytes.
  @Uint32()
  external int BaseIoSize;

  @Uint32()
  external int _ControlFlags;

  @pragma('vm:prefer-inline')
  JOB_OBJECT_IO_RATE_CONTROL_FLAGS get ControlFlags =>
      JOB_OBJECT_IO_RATE_CONTROL_FLAGS(_ControlFlags);

  @pragma('vm:prefer-inline')
  set ControlFlags(JOB_OBJECT_IO_RATE_CONTROL_FLAGS value) =>
      _ControlFlags = value;
}

/// Specifies print-job information such as the job-identifier value, the name
/// of the printer for which the job is spooled, the name of the machine that
/// created the print job, the name of the user that owns the print job, and so
/// on.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/job-info-1>.
///
/// {@category struct}
base class JOB_INFO_1 extends Struct {
  /// A job identifier.
  @Uint32()
  external int JobId;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer for which the job is spooled.
  external PWSTR pPrinterName;

  /// A pointer to a null-terminated string that specifies the name of the
  /// machine that created the print job.
  external PWSTR pMachineName;

  /// A pointer to a null-terminated string that specifies the name of the user
  /// that owns the print job.
  external PWSTR pUserName;

  /// A pointer to a null-terminated string that specifies the name of the print
  /// job (for example, "MS-WORD: Review.doc").
  external PWSTR pDocument;

  /// A pointer to a null-terminated string that specifies the type of data used
  /// to record the print job.
  external PWSTR pDatatype;

  /// A pointer to a null-terminated string that specifies the status of the
  /// print job.
  external PWSTR pStatus;

  /// The job status.
  @Uint32()
  external int Status;

  /// The job priority.
  @Uint32()
  external int Priority;

  /// The job's position in the print queue.
  @Uint32()
  external int Position;

  /// The total number of pages that the document contains.
  @Uint32()
  external int TotalPages;

  /// The number of pages that have printed.
  @Uint32()
  external int PagesPrinted;

  /// A `SYSTEMTIME` format.
  external SYSTEMTIME Submitted;
}

/// Contains information about a low-level keyboard input event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-kbdllhookstruct>.
///
/// {@category struct}
base class KBDLLHOOKSTRUCT extends Struct {
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/virtual-key-codes">virtual-key
  /// code</a>.
  @Uint32()
  external int vkCode;

  /// A hardware scan code for the key.
  @Uint32()
  external int scanCode;

  @Uint32()
  external int _flags;

  /// The time stamp for this message, equivalent to what <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-getmessagetime">GetMessageTime</a>
  /// would return for this message.
  @Uint32()
  external int time;

  /// Additional information associated with the message.
  @IntPtr()
  external int dwExtraInfo;

  /// The extended-key flag, event-injected flags, context code, and
  /// transition-state flag.
  @pragma('vm:prefer-inline')
  KBDLLHOOKSTRUCT_FLAGS get flags => KBDLLHOOKSTRUCT_FLAGS(_flags);

  @pragma('vm:prefer-inline')
  set flags(KBDLLHOOKSTRUCT_FLAGS value) => _flags = value;
}

/// Contains information about a simulated keyboard event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-keybdinput>.
///
/// {@category struct}
base class KEYBDINPUT extends Struct {
  @Uint16()
  external int _wVk;

  /// A hardware scan code for the key.
  @Uint16()
  external int wScan;

  @Uint32()
  external int _dwFlags;

  /// The time stamp for the event, in milliseconds.
  @Uint32()
  external int time;

  /// An additional value associated with the keystroke.
  @IntPtr()
  external int dwExtraInfo;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/virtual-key-codes">virtual-key
  /// code</a>.
  @pragma('vm:prefer-inline')
  VIRTUAL_KEY get wVk => VIRTUAL_KEY(_wVk);

  @pragma('vm:prefer-inline')
  set wVk(VIRTUAL_KEY value) => _wVk = value;

  @pragma('vm:prefer-inline')
  KEYBD_EVENT_FLAGS get dwFlags => KEYBD_EVENT_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(KEYBD_EVENT_FLAGS value) => _dwFlags = value;
}

/// Describes a keyboard input event in a console INPUT_RECORD structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/key-event-record-str>.
///
/// {@category struct}
base class KEY_EVENT_RECORD extends Struct {
  @Int32()
  external int _bKeyDown;

  /// The repeat count, which indicates that a key is being held down.
  @Uint16()
  external int wRepeatCount;

  /// A `virtual-key code` that identifies the given key in a device-independent
  /// manner.
  @Uint16()
  external int wVirtualKeyCode;

  /// The virtual scan code of the given key that represents the
  /// device-dependent value generated by the keyboard hardware.
  @Uint16()
  external int wVirtualScanCode;

  /// A union of the following members.
  external KEY_EVENT_RECORD_0 uChar;

  /// The state of the control keys.
  @Uint32()
  external int dwControlKeyState;

  /// If the key is pressed, this member is [TRUE].
  @pragma('vm:prefer-inline')
  bool get bKeyDown => _bKeyDown != FALSE;

  @pragma('vm:prefer-inline')
  set bKeyDown(bool value) => _bKeyDown = value ? TRUE : FALSE;
}

/// {@category union}
sealed class KEY_EVENT_RECORD_0 extends Union {
  @Uint16()
  external int UnicodeChar;

  @Int8()
  external int AsciiChar;
}

extension KEY_EVENT_RECORD_0_Extension on KEY_EVENT_RECORD {
  @pragma('vm:prefer-inline')
  int get UnicodeChar => this.uChar.UnicodeChar;

  @pragma('vm:prefer-inline')
  set UnicodeChar(int value) => this.uChar.UnicodeChar = value;

  @pragma('vm:prefer-inline')
  int get AsciiChar => this.uChar.AsciiChar;

  @pragma('vm:prefer-inline')
  set AsciiChar(int value) => this.uChar.AsciiChar = value;
}

/// Defines the specifics of a known folder.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ns-shobjidl_core-knownfolder_definition>.
///
/// {@category struct}
base class KNOWNFOLDER_DEFINITION extends Struct {
  @Int32()
  external int _category;

  /// A pointer to the non-localized, canonical name for the known folder,
  /// stored as a null-terminated Unicode string.
  external PWSTR pszName;

  /// A pointer to a short description of the known folder, stored as a
  /// null-terminated Unicode string.
  external PWSTR pszDescription;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/shell/knownfolderid">KNOWNFOLDERID</a>
  /// value that names another known folder to serve as the parent folder.
  external GUID fidParent;

  /// Optional.
  external PWSTR pszRelativePath;

  /// A pointer to the Shell namespace folder path of the folder, stored as a
  /// null-terminated Unicode string.
  external PWSTR pszParsingName;

  /// Optional.
  external PWSTR pszTooltip;

  /// Optional.
  external PWSTR pszLocalizedName;

  /// Optional.
  external PWSTR pszIcon;

  /// Optional.
  external PWSTR pszSecurity;

  /// Optional.
  @Uint32()
  external int dwAttributes;

  /// Optional.
  @Uint32()
  external int kfdFlags;

  /// One of the <a
  /// href="https://docs.microsoft.com/windows/desktop/shell/foldertypeid">FOLDERTYPEID</a>
  /// values that identifies the known folder type based on its contents (such
  /// as documents, music, or photographs).
  external GUID ftidType;

  /// A single value from the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shobjidl_core/ne-shobjidl_core-kf_category">KF_CATEGORY</a>
  /// constants that classifies the folder as virtual, fixed, common, or
  /// per-user.
  @pragma('vm:prefer-inline')
  KF_CATEGORY get category => KF_CATEGORY(_category);

  @pragma('vm:prefer-inline')
  set category(KF_CATEGORY value) => _category = value;
}

final KnownFolderManager = Guid.fromComponents(
  0x4df0c730,
  0xdf9d,
  0x4ae3,
  Uint8List.fromList(const [0x91, 0x53, 0xaa, 0x6b, 0x82, 0xe9, 0x79, 0x5a]),
);

/// Used by the IHV Extensions DLL to send notifications to any service or
/// applications that has registered for the notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/l2cmn/ns-l2cmn-l2_notification_data>.
///
/// {@category struct}
base class L2_NOTIFICATION_DATA extends Struct {
  @Uint32()
  external int _NotificationSource;

  @Uint32()
  external int NotificationCode;

  external GUID InterfaceGuid;

  @Uint32()
  external int dwDataSize;

  external Pointer pData;

  @pragma('vm:prefer-inline')
  WLAN_NOTIFICATION_SOURCES get NotificationSource =>
      WLAN_NOTIFICATION_SOURCES(_NotificationSource);

  @pragma('vm:prefer-inline')
  set NotificationSource(WLAN_NOTIFICATION_SOURCES value) =>
      _NotificationSource = value;
}

/// Contains the time of the last input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-lastinputinfo>.
///
/// {@category struct}
base class LASTINPUTINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The tick count when the last input event was received.
  @Uint32()
  external int dwTime;
}

/// Defines the style, color, and pattern of a physical brush.
///
/// It is used by the CreateBrushIndirect and ExtCreatePen functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-logbrush>.
///
/// {@category struct}
base class LOGBRUSH extends Struct {
  @Uint32()
  external int _lbStyle;

  /// The color in which the brush is to be drawn.
  @Uint32()
  external int lbColor;

  /// A hatch style.
  @IntPtr()
  external int lbHatch;

  /// The brush style.
  @pragma('vm:prefer-inline')
  BRUSH_STYLE get lbStyle => BRUSH_STYLE(_lbStyle);

  @pragma('vm:prefer-inline')
  set lbStyle(BRUSH_STYLE value) => _lbStyle = value;
}

/// Defines the attributes of a font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-logfontw>.
///
/// {@category struct}
base class LOGFONT extends Struct {
  /// Specifies the height, in logical units, of the font's character cell or
  /// character.
  @Int32()
  external int lfHeight;

  /// Specifies the average width, in logical units, of characters in the font.
  @Int32()
  external int lfWidth;

  /// Specifies the angle, in tenths of degrees, between the escapement vector
  /// and the x-axis of the device.
  @Int32()
  external int lfEscapement;

  /// Specifies the angle, in tenths of degrees, between each character's base
  /// line and the x-axis of the device.
  @Int32()
  external int lfOrientation;

  /// Specifies the weight of the font in the range 0 through 1000.
  @Int32()
  external int lfWeight;

  /// [TRUE] to specify an italic font.
  @Uint8()
  external int lfItalic;

  /// [TRUE] to specify an underlined font.
  @Uint8()
  external int lfUnderline;

  /// [TRUE] to specify a strikeout font.
  @Uint8()
  external int lfStrikeOut;

  @Uint8()
  external int _lfCharSet;

  @Uint8()
  external int _lfOutPrecision;

  @Uint8()
  external int _lfClipPrecision;

  @Uint8()
  external int _lfQuality;

  @Uint8()
  external int lfPitchAndFamily;

  @Array(32)
  external Array<Uint16> _lfFaceName;

  /// Specifies the character set.
  @pragma('vm:prefer-inline')
  FONT_CHARSET get lfCharSet => FONT_CHARSET(_lfCharSet);

  @pragma('vm:prefer-inline')
  set lfCharSet(FONT_CHARSET value) => _lfCharSet = value;

  @pragma('vm:prefer-inline')
  FONT_OUTPUT_PRECISION get lfOutPrecision =>
      FONT_OUTPUT_PRECISION(_lfOutPrecision);

  @pragma('vm:prefer-inline')
  set lfOutPrecision(FONT_OUTPUT_PRECISION value) => _lfOutPrecision = value;

  @pragma('vm:prefer-inline')
  FONT_CLIP_PRECISION get lfClipPrecision =>
      FONT_CLIP_PRECISION(_lfClipPrecision);

  @pragma('vm:prefer-inline')
  set lfClipPrecision(FONT_CLIP_PRECISION value) => _lfClipPrecision = value;

  @pragma('vm:prefer-inline')
  FONT_QUALITY get lfQuality => FONT_QUALITY(_lfQuality);

  @pragma('vm:prefer-inline')
  set lfQuality(FONT_QUALITY value) => _lfQuality = value;

  /// Specifies a string that specifies the typeface name of the font.
  @pragma('vm:prefer-inline')
  String get lfFaceName => _lfFaceName.toDartString();

  @pragma('vm:prefer-inline')
  set lfFaceName(String value) => _lfFaceName.setString(value);
}

/// Defines a logical palette.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-logpalette>.
///
/// {@category struct}
base class LOGPALETTE extends Struct {
  /// The version number of the system.
  @Uint16()
  external int palVersion;

  /// The number of entries in the logical palette.
  @Uint16()
  external int palNumEntries;

  /// Specifies an array of <a
  /// href="https://docs.microsoft.com/previous-versions/dd162769(v=vs.85)">PALETTEENTRY</a>
  /// structures that define the color and usage of each entry in the logical
  /// palette.
  @Array.variableWithVariableDimension(1)
  external Array<PALETTEENTRY> palPalEntry;
}

typedef LPARAM = IntPtr;

/// The handle must be released using the `DeleteProcThreadAttributeList`
/// function.
typedef LPPROC_THREAD_ATTRIBUTE_LIST = IntPtr;

typedef LRESULT = IntPtr;

/// An opaque structure that specifies an identifier that is guaranteed to be
/// unique on the local machine.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ntdef/ns-ntdef-luid>.
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
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/ns-magnification-magcoloreffect>.
///
/// {@category struct}
base class MAGCOLOREFFECT extends Struct {
  /// The color transformation matrix.
  @Array(25)
  external Array<Float> transform;
}

/// Describes an image format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/ns-magnification-magimageheader>.
///
/// {@category struct}
base class MAGIMAGEHEADER extends Struct {
  /// The width of the image.
  @Uint32()
  external int width;

  /// The height of the image.
  @Uint32()
  external int height;

  /// A WICPixelFormatGUID (declared in wincodec.h) that specifies the pixel
  /// format of the image.
  external GUID format;

  /// The stride, or number of bytes in a row of the image.
  @Uint32()
  external int stride;

  /// The offset of the start of the image data from the beginning of the file.
  @Uint32()
  external int offset;

  /// The size of the struct in bytes.
  @IntPtr()
  external int cbSize;
}

/// Describes a transformation matrix that a magnifier control uses to magnify
/// screen content.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/ns-magnification-magtransform>.
///
/// {@category struct}
base class MAGTRANSFORM extends Struct {
  /// The transformation matrix.
  @Array(9)
  external Array<Float> v;
}

/// Returned by the GetThemeMargins function to define the margins of windows
/// that have visual styles applied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-margins>.
///
/// {@category struct}
base class MARGINS extends Struct {
  /// Width of the left border that retains its size.
  @Int32()
  external int cxLeftWidth;

  /// Width of the right border that retains its size.
  @Int32()
  external int cxRightWidth;

  /// Height of the top border that retains its size.
  @Int32()
  external int cyTopHeight;

  /// Height of the bottom border that retains its size.
  @Int32()
  external int cyBottomHeight;
}

/// Contains information for the MCI_OPEN command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-open-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_OPEN_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Identifier returned to application.
  @Uint32()
  external int wDeviceID;

  /// Name or constant identifier of the device type.
  external PWSTR lpstrDeviceType;

  /// Device element (often a path).
  external PWSTR lpstrElementName;

  /// Optional device alias.
  external PWSTR lpstrAlias;
}

/// Contains positioning information for the MCI_PLAY command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-play-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_PLAY_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Position to play from.
  @Uint32()
  external int dwFrom;

  /// Position to play to.
  @Uint32()
  external int dwTo;
}

/// Contains positioning information for the MCI_SEEK command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-seek-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_SEEK_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Position to seek to.
  @Uint32()
  external int dwTo;
}

/// Contains information for the MCI_STATUS command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-status-parms>.
///
/// {@category struct}
@Packed(1)
base class MCI_STATUS_PARMS extends Struct {
  /// The low-order word specifies a window handle used for the MCI_NOTIFY flag.
  @IntPtr()
  external int dwCallback;

  /// Contains information on return.
  @IntPtr()
  external int dwReturn;

  /// Capability being queried.
  @Uint32()
  external int dwItem;

  /// Length or number of tracks.
  @Uint32()
  external int dwTrack;
}

/// Contains information about the current state of both physical and virtual
/// memory, including extended memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/ns-sysinfoapi-memorystatusex>.
///
/// {@category struct}
base class MEMORYSTATUSEX extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int dwLength;

  /// A number between 0 and 100 that specifies the approximate percentage of
  /// physical memory that is in use (0 indicates no memory use and 100
  /// indicates full memory use).
  @Uint32()
  external int dwMemoryLoad;

  /// The amount of actual physical memory, in bytes.
  @Uint64()
  external int ullTotalPhys;

  /// The amount of physical memory currently available, in bytes.
  @Uint64()
  external int ullAvailPhys;

  /// The current committed memory limit for the system or the current process,
  /// whichever is smaller, in bytes.
  @Uint64()
  external int ullTotalPageFile;

  /// The maximum amount of memory the current process can commit, in bytes.
  @Uint64()
  external int ullAvailPageFile;

  /// The size of the user-mode portion of the virtual address space of the
  /// calling process, in bytes.
  @Uint64()
  external int ullTotalVirtual;

  /// The amount of unreserved and uncommitted memory currently in the user-mode
  /// portion of the virtual address space of the calling process, in bytes.
  @Uint64()
  external int ullAvailVirtual;

  /// Reserved.
  @Uint64()
  external int ullAvailExtendedVirtual;
}

/// Contains information about a range of pages in the virtual address space of
/// a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-memory_basic_information>.
///
/// {@category struct}
base class MEMORY_BASIC_INFORMATION extends Struct {
  /// A pointer to the base address of the region of pages.
  external Pointer BaseAddress;

  /// A pointer to the base address of a range of pages allocated by the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/memoryapi/nf-memoryapi-virtualalloc">VirtualAlloc</a>
  /// function.
  external Pointer AllocationBase;

  @Uint32()
  external int _AllocationProtect;

  @Uint16()
  external int PartitionId;

  /// The size of the region beginning at the base address in which all pages
  /// have identical attributes, in bytes.
  @IntPtr()
  external int RegionSize;

  @Uint32()
  external int _State;

  @Uint32()
  external int _Protect;

  @Uint32()
  external int _Type;

  /// The memory protection option when the region was initially allocated.
  @pragma('vm:prefer-inline')
  PAGE_PROTECTION_FLAGS get AllocationProtect =>
      PAGE_PROTECTION_FLAGS(_AllocationProtect);

  @pragma('vm:prefer-inline')
  set AllocationProtect(PAGE_PROTECTION_FLAGS value) =>
      _AllocationProtect = value;

  @pragma('vm:prefer-inline')
  VIRTUAL_ALLOCATION_TYPE get State => VIRTUAL_ALLOCATION_TYPE(_State);

  @pragma('vm:prefer-inline')
  set State(VIRTUAL_ALLOCATION_TYPE value) => _State = value;

  /// The access protection of the pages in the region.
  @pragma('vm:prefer-inline')
  PAGE_PROTECTION_FLAGS get Protect => PAGE_PROTECTION_FLAGS(_Protect);

  @pragma('vm:prefer-inline')
  set Protect(PAGE_PROTECTION_FLAGS value) => _Protect = value;

  /// The type of pages in the region.
  @pragma('vm:prefer-inline')
  PAGE_TYPE get Type => PAGE_TYPE(_Type);

  @pragma('vm:prefer-inline')
  set Type(PAGE_TYPE value) => _Type = value;
}

/// Contains menu bar information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menubarinfo>.
///
/// {@category struct}
base class MENUBARINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The coordinates of the menu bar, popup menu, or menu item.
  external RECT rcBar;

  /// A handle to the menu bar or popup menu.
  @IntPtr()
  external int hMenu;

  /// A handle to the submenu.
  @IntPtr()
  external int hwndMenu;

  @Int32()
  external int bitfield;

  @pragma('vm:prefer-inline')
  int get fBarFocused => bitfield.getBits(0, 1);

  @pragma('vm:prefer-inline')
  set fBarFocused(int value) => bitfield = bitfield.setBits(0, 1, value);

  @pragma('vm:prefer-inline')
  int get fFocused => bitfield.getBits(1, 1);

  @pragma('vm:prefer-inline')
  set fFocused(int value) => bitfield = bitfield.setBits(1, 1, value);

  @pragma('vm:prefer-inline')
  int get fUnused => bitfield.getBits(2, 30);

  @pragma('vm:prefer-inline')
  set fUnused(int value) => bitfield = bitfield.setBits(2, 30, value);
}

/// Contains information about a menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuinfo>.
///
/// {@category struct}
base class MENUINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _fMask;

  @Uint32()
  external int _dwStyle;

  /// The maximum height of the menu in pixels.
  @Uint32()
  external int cyMax;

  /// A handle to the brush to be used for the menu's background.
  @IntPtr()
  external int hbrBack;

  /// The context help identifier.
  @Uint32()
  external int dwContextHelpID;

  /// An application-defined value.
  @IntPtr()
  external int dwMenuData;

  @pragma('vm:prefer-inline')
  MENUINFO_MASK get fMask => MENUINFO_MASK(_fMask);

  @pragma('vm:prefer-inline')
  set fMask(MENUINFO_MASK value) => _fMask = value;

  @pragma('vm:prefer-inline')
  MENUINFO_STYLE get dwStyle => MENUINFO_STYLE(_dwStyle);

  @pragma('vm:prefer-inline')
  set dwStyle(MENUINFO_STYLE value) => _dwStyle = value;
}

/// Contains information about a menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuiteminfow>.
///
/// {@category struct}
base class MENUITEMINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _fMask;

  @Uint32()
  external int _fType;

  @Uint32()
  external int _fState;

  /// An application-defined value that identifies the menu item.
  @Uint32()
  external int wID;

  /// A handle to the drop-down menu or submenu associated with the menu item.
  @IntPtr()
  external int hSubMenu;

  /// A handle to the bitmap to display next to the item if it is selected.
  @IntPtr()
  external int hbmpChecked;

  /// A handle to the bitmap to display next to the item if it is not selected.
  @IntPtr()
  external int hbmpUnchecked;

  /// An application-defined value associated with the menu item.
  @IntPtr()
  external int dwItemData;

  /// The contents of the menu item.
  external PWSTR dwTypeData;

  /// The length of the menu item text, in characters, when information is
  /// received about a menu item of the <b>MFT_STRING</b> type.
  @Uint32()
  external int cch;

  /// A handle to the bitmap to be displayed, or it can be one of the values in
  /// the following table.
  @IntPtr()
  external int hbmpItem;

  @pragma('vm:prefer-inline')
  MENU_ITEM_MASK get fMask => MENU_ITEM_MASK(_fMask);

  @pragma('vm:prefer-inline')
  set fMask(MENU_ITEM_MASK value) => _fMask = value;

  @pragma('vm:prefer-inline')
  MENU_ITEM_TYPE get fType => MENU_ITEM_TYPE(_fType);

  @pragma('vm:prefer-inline')
  set fType(MENU_ITEM_TYPE value) => _fType = value;

  /// The menu item state.
  @pragma('vm:prefer-inline')
  MENU_ITEM_STATE get fState => MENU_ITEM_STATE(_fState);

  @pragma('vm:prefer-inline')
  set fState(MENU_ITEM_STATE value) => _fState = value;
}

/// Defines a menu item in a menu template.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuitemtemplate>.
///
/// {@category struct}
base class MENUITEMTEMPLATE extends Struct {
  /// One or more of the following predefined menu options that control the
  /// appearance of the menu item as shown in the following table.
  @Uint16()
  external int mtOption;

  /// The menu item identifier of a command item; a command item sends a command
  /// message to its owner window.
  @Uint16()
  external int mtID;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _mtString;

  /// The menu item.
  @pragma('vm:prefer-inline')
  String get mtString => _mtString.toDartString();

  @pragma('vm:prefer-inline')
  set mtString(String value) => _mtString.setString(value);
}

/// Defines the header for a menu template.
///
/// A complete menu template consists of a header and one or more menu item
/// lists.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-menuitemtemplateheader>.
///
/// {@category struct}
base class MENUITEMTEMPLATEHEADER extends Struct {
  /// The version number.
  @Uint16()
  external int versionNumber;

  /// The offset, in bytes, from the end of the header.
  @Uint16()
  external int offset;
}

/// Describes a menu event in a console INPUT_RECORD structure.
///
/// These events are used internally and should be ignored.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/menu-event-record-str>.
///
/// {@category struct}
base class MENU_EVENT_RECORD extends Struct {
  /// Reserved.
  @Uint32()
  external int dwCommandId;
}

/// Defines the metafile picture format used for exchanging metafile data
/// through the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-metafilepict>.
///
/// {@category struct}
base class METAFILEPICT extends Struct {
  /// The mapping mode in which the picture is drawn.
  @Int32()
  external int mm;

  /// The size of the metafile picture for all modes except the
  /// <b>MM_ISOTROPIC</b> and <b>MM_ANISOTROPIC</b> modes.
  @Int32()
  external int xExt;

  /// The size of the metafile picture for all modes except the
  /// <b>MM_ISOTROPIC</b> and <b>MM_ANISOTROPIC</b> modes.
  @Int32()
  external int yExt;

  /// A handle to a memory metafile.
  @IntPtr()
  external int hMF;
}

/// Describes a MIDI event in a stream buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midievent>.
///
/// {@category struct}
@Packed(1)
base class MIDIEVENT extends Struct {
  /// Time, in MIDI ticks, between the previous event and the current event.
  @Uint32()
  external int dwDeltaTime;

  /// Reserved; must be zero.
  @Uint32()
  external int dwStreamID;

  /// Event code and event parameters or length.
  @Uint32()
  external int dwEvent;

  /// If <b>dwEvent</b> specifies MEVT_F_LONG and the length of the buffer, this
  /// member contains parameters for the event.
  @Array.variableWithVariableDimension(1)
  external Array<Uint32> dwParms;
}

/// Defines the header used to identify a MIDI system-exclusive or stream
/// buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midihdr>.
///
/// {@category struct}
@Packed(1)
base class MIDIHDR extends Struct {
  /// Pointer to MIDI data.
  external PSTR lpData;

  /// Size of the buffer.
  @Uint32()
  external int dwBufferLength;

  /// Actual amount of data in the buffer.
  @Uint32()
  external int dwBytesRecorded;

  /// Custom user data.
  @IntPtr()
  external int dwUser;

  /// Flags giving information about the buffer.
  @Uint32()
  external int dwFlags;

  /// Reserved; do not use.
  external Pointer<MIDIHDR> lpNext;

  @IntPtr()
  external int reserved;

  /// Offset into the buffer when a callback is performed.
  @Uint32()
  external int dwOffset;

  @Array(8)
  external Array<IntPtr> _dwReserved;
}

/// Describes the capabilities of a MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midiincapsw>.
///
/// {@category struct}
@Packed(1)
base class MIDIINCAPS extends Struct {
  /// Manufacturer identifier of the device driver for the MIDI input device.
  @Uint16()
  external int wMid;

  /// Product identifier of the MIDI input device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the MIDI input device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Reserved; must be zero.
  @Uint32()
  external int dwSupport;

  /// Product name in a string.
  @pragma('vm:prefer-inline')
  String get szPname => _szPname.toDartString();

  @pragma('vm:prefer-inline')
  set szPname(String value) => _szPname.setString(value);
}

/// Describes the capabilities of a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midioutcapsw>.
///
/// {@category struct}
@Packed(1)
base class MIDIOUTCAPS extends Struct {
  /// Manufacturer identifier of the device driver for the MIDI output device.
  @Uint16()
  external int wMid;

  /// Product identifier of the MIDI output device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the MIDI output device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Type of the MIDI output device.
  @Uint16()
  external int wTechnology;

  /// Number of voices supported by an internal synthesizer device.
  @Uint16()
  external int wVoices;

  /// Maximum number of simultaneous notes that can be played by an internal
  /// synthesizer device.
  @Uint16()
  external int wNotes;

  /// Channels that an internal synthesizer device responds to, where the least
  /// significant bit refers to channel 0 and the most significant bit to
  /// channel 15.
  @Uint16()
  external int wChannelMask;

  /// Optional functionality supported by the device.
  @Uint32()
  external int dwSupport;

  /// Product name in a string.
  @pragma('vm:prefer-inline')
  String get szPname => _szPname.toDartString();

  @pragma('vm:prefer-inline')
  set szPname(String value) => _szPname.setString(value);
}

/// Contains the tempo property for a stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midiproptempo>.
///
/// {@category struct}
@Packed(1)
base class MIDIPROPTEMPO extends Struct {
  /// Length, in bytes, of this structure.
  @Uint32()
  external int cbStruct;

  /// Tempo of the stream, in microseconds per quarter note.
  @Uint32()
  external int dwTempo;
}

/// Contains the time division property for a stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midiproptimediv>.
///
/// {@category struct}
@Packed(1)
base class MIDIPROPTIMEDIV extends Struct {
  /// Length, in bytes, of this structure.
  @Uint32()
  external int cbStruct;

  /// Time division for this stream, in the format specified in the <i>Standard
  /// MIDI Files 1.0</i> specification.
  @Uint32()
  external int dwTimeDiv;
}

/// Contains version information for a long MIDI event of the MEVT_VERSION type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-midistrmbuffver>.
///
/// {@category struct}
@Packed(1)
base class MIDISTRMBUFFVER extends Struct {
  /// Version of the stream.
  @Uint32()
  external int dwVersion;

  /// Manufacturer identifier.
  @Uint32()
  external int dwMid;

  /// OEM version of the stream.
  @Uint32()
  external int dwOEMVersion;
}

/// Contains information about a window's maximized size and position and its
/// minimum and maximum tracking size.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-minmaxinfo>.
///
/// {@category struct}
base class MINMAXINFO extends Struct {
  external POINT _ptReserved;

  /// The maximized width (<b>x</b> member) and the maximized height (<b>y</b>
  /// member) of the window.
  external POINT ptMaxSize;

  /// The position of the left side of the maximized window (<b>x</b> member)
  /// and the position of the top of the maximized window (<b>y</b> member).
  external POINT ptMaxPosition;

  /// The minimum tracking width (<b>x</b> member) and the minimum tracking
  /// height (<b>y</b> member) of the window.
  external POINT ptMinTrackSize;

  /// The maximum tracking width (<b>x</b> member) and the maximum tracking
  /// height (<b>y</b> member) of the window.
  external POINT ptMaxTrackSize;
}

final MMDeviceEnumerator = Guid.fromComponents(
  0xbcde0395,
  0xe52f,
  0x467c,
  Uint8List.fromList(const [0x8e, 0x3d, 0xc4, 0x57, 0x92, 0x91, 0x69, 0x2e]),
);

/// {@category struct}
@Packed(1)
base class MMTIME extends Struct {
  @Uint32()
  external int wType;

  external MMTIME_0 u;
}

/// {@category union}
@Packed(1)
sealed class MMTIME_0 extends Union {
  @Uint32()
  external int ms;

  @Uint32()
  external int sample;

  @Uint32()
  external int cb;

  @Uint32()
  external int ticks;

  external MMTIME_0_0 smpte;
  external MMTIME_0_1 midi;
}

extension MMTIME_0_Extension on MMTIME {
  @pragma('vm:prefer-inline')
  int get ms => this.u.ms;

  @pragma('vm:prefer-inline')
  set ms(int value) => this.u.ms = value;

  @pragma('vm:prefer-inline')
  int get sample => this.u.sample;

  @pragma('vm:prefer-inline')
  set sample(int value) => this.u.sample = value;

  @pragma('vm:prefer-inline')
  int get cb => this.u.cb;

  @pragma('vm:prefer-inline')
  set cb(int value) => this.u.cb = value;

  @pragma('vm:prefer-inline')
  int get ticks => this.u.ticks;

  @pragma('vm:prefer-inline')
  set ticks(int value) => this.u.ticks = value;

  @pragma('vm:prefer-inline')
  MMTIME_0_0 get smpte => this.u.smpte;

  @pragma('vm:prefer-inline')
  set smpte(MMTIME_0_0 value) => this.u.smpte = value;

  @pragma('vm:prefer-inline')
  MMTIME_0_1 get midi => this.u.midi;

  @pragma('vm:prefer-inline')
  set midi(MMTIME_0_1 value) => this.u.midi = value;
}

/// {@category struct}
sealed class MMTIME_0_0 extends Struct {
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

extension MMTIME_0_0_Extension on MMTIME {
  @pragma('vm:prefer-inline')
  int get hour => this.u.smpte.hour;

  @pragma('vm:prefer-inline')
  set hour(int value) => this.u.smpte.hour = value;

  @pragma('vm:prefer-inline')
  int get min => this.u.smpte.min;

  @pragma('vm:prefer-inline')
  set min(int value) => this.u.smpte.min = value;

  @pragma('vm:prefer-inline')
  int get sec => this.u.smpte.sec;

  @pragma('vm:prefer-inline')
  set sec(int value) => this.u.smpte.sec = value;

  @pragma('vm:prefer-inline')
  int get frame => this.u.smpte.frame;

  @pragma('vm:prefer-inline')
  set frame(int value) => this.u.smpte.frame = value;

  @pragma('vm:prefer-inline')
  int get fps => this.u.smpte.fps;

  @pragma('vm:prefer-inline')
  set fps(int value) => this.u.smpte.fps = value;

  @pragma('vm:prefer-inline')
  int get dummy => this.u.smpte.dummy;

  @pragma('vm:prefer-inline')
  set dummy(int value) => this.u.smpte.dummy = value;

  @pragma('vm:prefer-inline')
  Array<Uint8> get pad => this.u.smpte.pad;

  @pragma('vm:prefer-inline')
  set pad(Array<Uint8> value) => this.u.smpte.pad = value;
}

/// {@category struct}
@Packed(1)
sealed class MMTIME_0_1 extends Struct {
  @Uint32()
  external int songptrpos;
}

extension MMTIME_0_1_Extension on MMTIME {
  @pragma('vm:prefer-inline')
  int get songptrpos => this.u.midi.songptrpos;

  @pragma('vm:prefer-inline')
  set songptrpos(int value) => this.u.midi.songptrpos = value;
}

/// Contains information about the capabilities of a modem.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mcx/ns-mcx-modemdevcaps>.
///
/// {@category struct}
base class MODEMDEVCAPS extends Struct {
  /// The size of the data actually returned to the application, in bytes.
  @Uint32()
  external int dwActualSize;

  /// The number of bytes required for the entire <b>MODEMDEVCAPS</b> structure,
  /// including the variable-length portion.
  @Uint32()
  external int dwRequiredSize;

  /// The offset of the provider-defined portion of the structure, in bytes
  /// relative to the beginning of the structure.
  @Uint32()
  external int dwDevSpecificOffset;

  /// The size of the provider-defined portion of the structure, in bytes.
  @Uint32()
  external int dwDevSpecificSize;

  /// The version of the service provider.
  @Uint32()
  external int dwModemProviderVersion;

  /// The offset of a text string that contains the name of the modem
  /// manufacturer, in bytes relative to the beginning of the structure.
  @Uint32()
  external int dwModemManufacturerOffset;

  /// The length of the modem manufacturer name, in bytes.
  @Uint32()
  external int dwModemManufacturerSize;

  /// The offset of a text string that contains the model of the modem, in bytes
  /// relative to the beginning of the structure.
  @Uint32()
  external int dwModemModelOffset;

  /// The length of the model name, in bytes.
  @Uint32()
  external int dwModemModelSize;

  /// The offset of a text string that gives the version and revision of the
  /// attached modem, if the provider could determine the information.
  @Uint32()
  external int dwModemVersionOffset;

  /// The length of the modem version string, in bytes.
  @Uint32()
  external int dwModemVersionSize;

  @Uint32()
  external int _dwDialOptions;

  /// The maximum call setup timeout supported by the modem, in seconds.
  @Uint32()
  external int dwCallSetupFailTimer;

  /// The maximum inactivity timeout supported by the modem, in tenths of
  /// seconds.
  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int _dwSpeakerVolume;

  @Uint32()
  external int _dwSpeakerMode;

  @Uint32()
  external int dwModemOptions;

  /// The maximum DTE rate in bits per second.
  @Uint32()
  external int dwMaxDTERate;

  /// The maximum DCE rate in bits per second.
  @Uint32()
  external int dwMaxDCERate;

  /// Variable-length information, including strings and any provider-defined
  /// information.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> abVariablePortion;

  @pragma('vm:prefer-inline')
  MODEMDEVCAPS_DIAL_OPTIONS get dwDialOptions =>
      MODEMDEVCAPS_DIAL_OPTIONS(_dwDialOptions);

  @pragma('vm:prefer-inline')
  set dwDialOptions(MODEMDEVCAPS_DIAL_OPTIONS value) => _dwDialOptions = value;

  @pragma('vm:prefer-inline')
  MODEMDEVCAPS_SPEAKER_VOLUME get dwSpeakerVolume =>
      MODEMDEVCAPS_SPEAKER_VOLUME(_dwSpeakerVolume);

  @pragma('vm:prefer-inline')
  set dwSpeakerVolume(MODEMDEVCAPS_SPEAKER_VOLUME value) =>
      _dwSpeakerVolume = value;

  @pragma('vm:prefer-inline')
  MODEMDEVCAPS_SPEAKER_MODE get dwSpeakerMode =>
      MODEMDEVCAPS_SPEAKER_MODE(_dwSpeakerMode);

  @pragma('vm:prefer-inline')
  set dwSpeakerMode(MODEMDEVCAPS_SPEAKER_MODE value) => _dwSpeakerMode = value;
}

/// Contains information about a modem's configuration.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mcx/ns-mcx-modemsettings>.
///
/// {@category struct}
base class MODEMSETTINGS extends Struct {
  /// The size of the data actually returned to the application, in bytes.
  @Uint32()
  external int dwActualSize;

  /// The number of bytes required for the entire <a
  /// href="https://docs.microsoft.com/windows/desktop/api/mcx/ns-mcx-modemdevcaps">MODEMDEVCAPS</a>
  /// structure, including the variable-length portion.
  @Uint32()
  external int dwRequiredSize;

  /// The offset of the provider-defined portion of the structure, in bytes
  /// relative to the beginning of the structure.
  @Uint32()
  external int dwDevSpecificOffset;

  /// The size of the provider-defined portion of the structure, in bytes.
  @Uint32()
  external int dwDevSpecificSize;

  /// The maximum number of seconds the modem should wait, after dialing is
  /// completed, for an indication that a modem-to-modem connection has been
  /// established.
  @Uint32()
  external int dwCallSetupFailTimer;

  /// The maximum number of seconds of inactivity allowed after a connection is
  /// established.
  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int _dwSpeakerVolume;

  @Uint32()
  external int _dwSpeakerMode;

  /// The modem options requested by the application.
  @Uint32()
  external int dwPreferredModemOptions;

  /// The modem options that are actually in effect.
  @Uint32()
  external int dwNegotiatedModemOptions;

  /// The DCE rate in effect.
  @Uint32()
  external int dwNegotiatedDCERate;

  /// Optional provider-defined information.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> abVariablePortion;

  @pragma('vm:prefer-inline')
  MODEM_SPEAKER_VOLUME get dwSpeakerVolume =>
      MODEM_SPEAKER_VOLUME(_dwSpeakerVolume);

  @pragma('vm:prefer-inline')
  set dwSpeakerVolume(MODEM_SPEAKER_VOLUME value) => _dwSpeakerVolume = value;

  @pragma('vm:prefer-inline')
  MODEMSETTINGS_SPEAKER_MODE get dwSpeakerMode =>
      MODEMSETTINGS_SPEAKER_MODE(_dwSpeakerMode);

  @pragma('vm:prefer-inline')
  set dwSpeakerMode(MODEMSETTINGS_SPEAKER_MODE value) => _dwSpeakerMode = value;
}

/// Contains module data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/ns-dbghelp-modload_data>.
///
/// {@category struct}
base class MODLOAD_DATA extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int ssize;

  @Uint32()
  external int _ssig;

  /// The data.
  external Pointer data;

  /// The size of the <b>data</b> buffer, in bytes.
  @Uint32()
  external int size;

  /// This member is unused.
  @Uint32()
  external int flags;

  @pragma('vm:prefer-inline')
  MODLOAD_DATA_TYPE get ssig => MODLOAD_DATA_TYPE(_ssig);

  @pragma('vm:prefer-inline')
  set ssig(MODLOAD_DATA_TYPE value) => _ssig = value;
}

/// Contains the module load address, size, and entry point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/ns-psapi-moduleinfo>.
///
/// {@category struct}
base class MODULEINFO extends Struct {
  /// The load address of the module.
  external Pointer lpBaseOfDll;

  /// The size of the linear space that the module occupies, in bytes.
  @Uint32()
  external int SizeOfImage;

  /// The entry point of the module.
  external Pointer EntryPoint;
}

/// Contains information about a display monitor.
///
/// The GetMonitorInfo function stores information in a MONITORINFO structure or
/// a MONITORINFOEX structure. The MONITORINFO structure is a subset of the
/// MONITORINFOEX structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-monitorinfo>.
///
/// {@category struct}
base class MONITORINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A `RECT` structure that specifies the display monitor rectangle, expressed
  /// in virtual-screen coordinates.
  external RECT rcMonitor;

  /// A `RECT` structure that specifies the work area rectangle of the display
  /// monitor, expressed in virtual-screen coordinates.
  external RECT rcWork;

  /// A set of flags that represent attributes of the display monitor.
  @Uint32()
  external int dwFlags;
}

/// Contains information about a display monitor.
///
/// The GetMonitorInfo function stores information into a MONITORINFOEX
/// structure or a MONITORINFO structure. The MONITORINFOEX structure is a
/// superset of the MONITORINFO structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-monitorinfoexw>.
///
/// {@category struct}
base class MONITORINFOEX extends Struct {
  external MONITORINFO monitorInfo;

  @Array(32)
  external Array<Uint16> _szDevice;

  /// A string that specifies the device name of the monitor being used.
  @pragma('vm:prefer-inline')
  String get szDevice => _szDevice.toDartString();

  @pragma('vm:prefer-inline')
  set szDevice(String value) => _szDevice.setString(value);
}

/// Contains information about a mouse event passed to a WH_MOUSE hook
/// procedure, MouseProc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mousehookstruct>.
///
/// {@category struct}
base class MOUSEHOOKSTRUCT extends Struct {
  /// The x- and y-coordinates of the cursor, in screen coordinates.
  external POINT pt;

  /// A handle to the window that will receive the mouse message corresponding
  /// to the mouse event.
  @IntPtr()
  external int hwnd;

  /// The hit-test value.
  @Uint32()
  external int wHitTestCode;

  /// Additional information associated with the message.
  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information about a mouse event passed to a WH_MOUSE hook
/// procedure, MouseProc.
///
/// This is an extension of the MOUSEHOOKSTRUCT structure that includes
/// information about wheel movement or the use of the X button.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mousehookstructex>.
///
/// {@category struct}
base class MOUSEHOOKSTRUCTEX extends Struct {
  external MOUSEHOOKSTRUCT Base;

  /// If the message is <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/wm-mousewheel">WM_MOUSEWHEEL</a>,
  /// the HIWORD of this member is the wheel delta.
  @Uint32()
  external int mouseData;
}

/// Contains information about a simulated mouse event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mouseinput>.
///
/// {@category struct}
base class MOUSEINPUT extends Struct {
  /// The absolute position of the mouse, or the amount of motion since the last
  /// mouse event was generated, depending on the value of the **dwFlags**
  /// member.
  @Int32()
  external int dx;

  /// The absolute position of the mouse, or the amount of motion since the last
  /// mouse event was generated, depending on the value of the **dwFlags**
  /// member.
  @Int32()
  external int dy;

  /// , then **mouseData** specifies the amount of wheel movement.
  @Uint32()
  external int mouseData;

  @Uint32()
  external int _dwFlags;

  /// The time stamp for the event, in milliseconds.
  @Uint32()
  external int time;

  /// An additional value associated with the mouse event.
  @IntPtr()
  external int dwExtraInfo;

  @pragma('vm:prefer-inline')
  MOUSE_EVENT_FLAGS get dwFlags => MOUSE_EVENT_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(MOUSE_EVENT_FLAGS value) => _dwFlags = value;
}

/// Contains information about the mouse's location in screen coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-mousemovepoint>.
///
/// {@category struct}
base class MOUSEMOVEPOINT extends Struct {
  /// The x-coordinate of the mouse.
  @Int32()
  external int x;

  /// The y-coordinate of the mouse.
  @Int32()
  external int y;

  /// The time stamp of the mouse coordinate.
  @Uint32()
  external int time;

  /// Additional information associated with this coordinate.
  @IntPtr()
  external int dwExtraInfo;
}

/// Describes a mouse input event in a console INPUT_RECORD structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/mouse-event-record-str>.
///
/// {@category struct}
base class MOUSE_EVENT_RECORD extends Struct {
  /// A `COORD` structure that contains the location of the cursor, in terms of
  /// the console screen buffer's character-cell coordinates.
  external COORD dwMousePosition;

  /// The status of the mouse buttons.
  @Uint32()
  external int dwButtonState;

  /// The state of the control keys.
  @Uint32()
  external int dwControlKeyState;

  /// The type of mouse event.
  @Uint32()
  external int dwEventFlags;
}

/// Contains message information from a thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-msg>.
///
/// {@category struct}
base class MSG extends Struct {
  /// A handle to the window whose window procedure receives the message.
  @IntPtr()
  external int hwnd;

  /// The message identifier.
  @Uint32()
  external int message;

  /// Additional information about the message.
  @IntPtr()
  external int wParam;

  /// Additional information about the message.
  @IntPtr()
  external int lParam;

  /// The time at which the message was posted.
  @Uint32()
  external int time;

  /// The cursor position, in screen coordinates, when the message was posted.
  external POINT pt;
}

/// Contains information about a low-level mouse input event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-msllhookstruct>.
///
/// {@category struct}
base class MSLLHOOKSTRUCT extends Struct {
  /// The x- and y-coordinates of the cursor, in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellscalingapi/ne-shellscalingapi-process_dpi_awareness">per-monitor-aware</a>
  /// screen coordinates.
  external POINT pt;

  /// If the message is <a
  /// href="https://docs.microsoft.com/windows/desktop/inputdev/wm-mousewheel">WM_MOUSEWHEEL</a>,
  /// the high-order word of this member is the wheel delta.
  @Uint32()
  external int mouseData;

  /// The event-injected flags.
  @Uint32()
  external int flags;

  /// The time stamp for this message.
  @Uint32()
  external int time;

  /// Additional information associated with the message.
  @IntPtr()
  external int dwExtraInfo;
}

/// Contains information that an application can use while processing the
/// WM_NCCALCSIZE message to calculate the size, position, and valid contents of
/// the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-nccalcsize_params>.
///
/// {@category struct}
base class NCCALCSIZE_PARAMS extends Struct {
  /// An array of rectangles.
  @Array(3)
  external Array<RECT> rgrc;

  /// A pointer to a `WINDOWPOS` structure that contains the size and position
  /// values specified in the operation that moved or resized the window.
  external Pointer<WINDOWPOS> lppos;
}

/// Packages the object type, version, and size information that is required in
/// many NDIS 6.0 structures.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/ndis-object-header>.
///
/// {@category struct}
base class NDIS_OBJECT_HEADER extends Struct {
  /// Specifies the type of NDIS object that a structure describes.
  @Uint8()
  external int Type;

  /// Specifies the revision number of this structure.
  @Uint8()
  external int Revision;

  /// Specifies the total size, in bytes, of the NDIS structure that contains
  /// the **NDIS_OBJECT_HEADER**.
  @Uint16()
  external int Size;
}

/// The locally unique identifier (LUID) for a network interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ns-ifdef-net_luid_lh>.
///
/// {@category union}
sealed class NET_LUID_LH extends Union {
  /// A 64-bit value that represents the LUID.
  @Uint64()
  external int Value;

  /// A named union containing the component fields in the 64-bit LUID
  /// <b>Value</b> member.
  external NET_LUID_LH_0 Info;
}

/// {@category struct}
sealed class NET_LUID_LH_0 extends Struct {
  @Uint64()
  external int bitfield;

  @pragma('vm:prefer-inline')
  int get NetLuidIndex => bitfield.getBits(24, 24);

  @pragma('vm:prefer-inline')
  set NetLuidIndex(int value) => bitfield = bitfield.setBits(24, 24, value);

  @pragma('vm:prefer-inline')
  int get IfType => bitfield.getBits(48, 16);

  @pragma('vm:prefer-inline')
  set IfType(int value) => bitfield = bitfield.setBits(48, 16, value);
}

extension NET_LUID_LH_0_Extension on NET_LUID_LH {
  @pragma('vm:prefer-inline')
  int get bitfield => this.Info.bitfield;

  @pragma('vm:prefer-inline')
  set bitfield(int value) => this.Info.bitfield = value;

  @pragma('vm:prefer-inline')
  int get NetLuidIndex => this.Info.NetLuidIndex;

  @pragma('vm:prefer-inline')
  set NetLuidIndex(int value) => this.Info.NetLuidIndex = value;

  @pragma('vm:prefer-inline')
  int get IfType => this.Info.IfType;

  @pragma('vm:prefer-inline')
  set IfType(int value) => this.Info.IfType = value;
}

/// Contains data that describes a physical font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-newtextmetricw>.
///
/// {@category struct}
base class NEWTEXTMETRIC extends Struct {
  /// The height (ascent + descent) of characters.
  @Int32()
  external int tmHeight;

  /// The ascent (units above the base line) of characters.
  @Int32()
  external int tmAscent;

  /// The descent (units below the base line) of characters.
  @Int32()
  external int tmDescent;

  /// The amount of leading (space) inside the bounds set by the <b>tmHeight</b>
  /// member.
  @Int32()
  external int tmInternalLeading;

  /// The amount of extra leading (space) that the application adds between
  /// rows.
  @Int32()
  external int tmExternalLeading;

  /// The average width of characters in the font (generally defined as the
  /// width of the letter x).
  @Int32()
  external int tmAveCharWidth;

  /// The width of the widest character in the font.
  @Int32()
  external int tmMaxCharWidth;

  /// The weight of the font.
  @Int32()
  external int tmWeight;

  /// The extra width per string that may be added to some synthesized fonts.
  @Int32()
  external int tmOverhang;

  /// The horizontal aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectX;

  /// The vertical aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectY;

  /// The value of the first character defined in the font.
  @Uint16()
  external int tmFirstChar;

  /// The value of the last character defined in the font.
  @Uint16()
  external int tmLastChar;

  /// The value of the character to be substituted for characters that are not
  /// in the font.
  @Uint16()
  external int tmDefaultChar;

  /// The value of the character to be used to define word breaks for text
  /// justification.
  @Uint16()
  external int tmBreakChar;

  /// An italic font if it is nonzero.
  @Uint8()
  external int tmItalic;

  /// An underlined font if it is nonzero.
  @Uint8()
  external int tmUnderlined;

  /// A strikeout font if it is nonzero.
  @Uint8()
  external int tmStruckOut;

  @Uint8()
  external int _tmPitchAndFamily;

  /// The character set of the font.
  @Uint8()
  external int tmCharSet;

  @Uint32()
  external int ntmFlags;

  /// The size of the em square for the font.
  @Uint32()
  external int ntmSizeEM;

  /// The height, in notional units, of the font.
  @Uint32()
  external int ntmCellHeight;

  /// The average width of characters in the font, in notional units.
  @Uint32()
  external int ntmAvgWidth;

  /// The pitch and family of the selected font.
  @pragma('vm:prefer-inline')
  TMPF_FLAGS get tmPitchAndFamily => TMPF_FLAGS(_tmPitchAndFamily);

  @pragma('vm:prefer-inline')
  set tmPitchAndFamily(TMPF_FLAGS value) => _tmPitchAndFamily = value;
}

/// Used to specify values that are used by SetSimulatedProfileInfo to override
/// current internet connection profile values in an RDP Child Session to
/// support the simulation of specific metered internet connection conditions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ns-netlistmgr-nlm_simulated_profile_info>.
///
/// {@category struct}
base class NLM_SIMULATED_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _ProfileName;

  @Int32()
  external int _cost;

  /// The data usage.
  @Uint32()
  external int UsageInMegabytes;

  /// The data limit of the plan.
  @Uint32()
  external int DataLimitInMegabytes;

  /// Name for the simulated profile.
  @pragma('vm:prefer-inline')
  String get ProfileName => _ProfileName.toDartString();

  @pragma('vm:prefer-inline')
  set ProfileName(String value) => _ProfileName.setString(value);

  /// The network cost.
  @pragma('vm:prefer-inline')
  NLM_CONNECTION_COST get cost => NLM_CONNECTION_COST(_cost);

  @pragma('vm:prefer-inline')
  set cost(NLM_CONNECTION_COST value) => _cost = value;
}

/// Contains the scalable metrics associated with the nonclient area of a
/// nonminimized window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-nonclientmetricsw>.
///
/// {@category struct}
base class NONCLIENTMETRICS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The thickness of the sizing border, in pixels.
  @Int32()
  external int iBorderWidth;

  /// The width of a standard vertical scroll bar, in pixels.
  @Int32()
  external int iScrollWidth;

  /// The height of a standard horizontal scroll bar, in pixels.
  @Int32()
  external int iScrollHeight;

  /// The width of caption buttons, in pixels.
  @Int32()
  external int iCaptionWidth;

  /// The height of caption buttons, in pixels.
  @Int32()
  external int iCaptionHeight;

  /// A `LOGFONT` structure that contains information about the caption font.
  external LOGFONT lfCaptionFont;

  /// The width of small caption buttons, in pixels.
  @Int32()
  external int iSmCaptionWidth;

  /// The height of small captions, in pixels.
  @Int32()
  external int iSmCaptionHeight;

  /// A `LOGFONT` structure that contains information about the small caption
  /// font.
  external LOGFONT lfSmCaptionFont;

  /// The width of menu-bar buttons, in pixels.
  @Int32()
  external int iMenuWidth;

  /// The height of a menu bar, in pixels.
  @Int32()
  external int iMenuHeight;

  /// A `LOGFONT` structure that contains information about the font used in
  /// menu bars.
  external LOGFONT lfMenuFont;

  /// A `LOGFONT` structure that contains information about the font used in
  /// status bars and tooltips.
  external LOGFONT lfStatusFont;

  /// A `LOGFONT` structure that contains information about the font used in
  /// message boxes.
  external LOGFONT lfMessageFont;

  /// The thickness of the padded border, in pixels.
  @Int32()
  external int iPaddedBorderWidth;
}

/// Contains information that the system needs to display notifications in the
/// notification area.
///
/// Used by Shell_NotifyIcon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-notifyicondataw>.
///
/// {@category struct}
base class NOTIFYICONDATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A handle to the window that receives notifications associated with an icon
  /// in the notification area.
  @IntPtr()
  external int hWnd;

  /// The application-defined identifier of the taskbar icon.
  @Uint32()
  external int uID;

  @Uint32()
  external int _uFlags;

  /// An application-defined message identifier.
  @Uint32()
  external int uCallbackMessage;

  /// A handle to the icon to be added, modified, or deleted.
  @IntPtr()
  external int hIcon;

  @Array(128)
  external Array<Uint16> _szTip;

  @Uint32()
  external int _dwState;

  @Uint32()
  external int _dwStateMask;

  @Array(256)
  external Array<Uint16> _szInfo;

  external NOTIFYICONDATA_0 Anonymous;

  @Array(64)
  external Array<Uint16> _szInfoTitle;

  @Uint32()
  external int _dwInfoFlags;

  external GUID guidItem;

  @IntPtr()
  external int hBalloonIcon;

  @pragma('vm:prefer-inline')
  NOTIFY_ICON_DATA_FLAGS get uFlags => NOTIFY_ICON_DATA_FLAGS(_uFlags);

  @pragma('vm:prefer-inline')
  set uFlags(NOTIFY_ICON_DATA_FLAGS value) => _uFlags = value;

  /// A string that specifies the text for a standard tooltip.
  @pragma('vm:prefer-inline')
  String get szTip => _szTip.toDartString();

  @pragma('vm:prefer-inline')
  set szTip(String value) => _szTip.setString(value);

  @pragma('vm:prefer-inline')
  NOTIFY_ICON_STATE get dwState => NOTIFY_ICON_STATE(_dwState);

  @pragma('vm:prefer-inline')
  set dwState(NOTIFY_ICON_STATE value) => _dwState = value;

  @pragma('vm:prefer-inline')
  NOTIFY_ICON_STATE get dwStateMask => NOTIFY_ICON_STATE(_dwStateMask);

  @pragma('vm:prefer-inline')
  set dwStateMask(NOTIFY_ICON_STATE value) => _dwStateMask = value;

  @pragma('vm:prefer-inline')
  String get szInfo => _szInfo.toDartString();

  @pragma('vm:prefer-inline')
  set szInfo(String value) => _szInfo.setString(value);

  @pragma('vm:prefer-inline')
  String get szInfoTitle => _szInfoTitle.toDartString();

  @pragma('vm:prefer-inline')
  set szInfoTitle(String value) => _szInfoTitle.setString(value);

  @pragma('vm:prefer-inline')
  NOTIFY_ICON_INFOTIP_FLAGS get dwInfoFlags =>
      NOTIFY_ICON_INFOTIP_FLAGS(_dwInfoFlags);

  @pragma('vm:prefer-inline')
  set dwInfoFlags(NOTIFY_ICON_INFOTIP_FLAGS value) => _dwInfoFlags = value;
}

/// {@category union}
sealed class NOTIFYICONDATA_0 extends Union {
  @Uint32()
  external int uTimeout;

  @Uint32()
  external int uVersion;
}

extension NOTIFYICONDATA_0_Extension on NOTIFYICONDATA {
  @pragma('vm:prefer-inline')
  int get uTimeout => this.Anonymous.uTimeout;

  @pragma('vm:prefer-inline')
  set uTimeout(int value) => this.Anonymous.uTimeout = value;

  @pragma('vm:prefer-inline')
  int get uVersion => this.Anonymous.uVersion;

  @pragma('vm:prefer-inline')
  set uVersion(int value) => this.Anonymous.uVersion = value;
}

final NetworkListManager = Guid.fromComponents(
  0xdcb00c01,
  0x570f,
  0x4a9b,
  Uint8List.fromList(const [0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b]),
);

/// Contains the information that the GetOpenCardName function uses to
/// initialize a smart card Select Card dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-opencardnamew>.
///
/// {@category struct}
base class OPENCARDNAME extends Struct {
  /// Specifies the length, in bytes, of the structure.
  @Uint32()
  external int dwStructSize;

  /// The window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// The context used for communication with the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a> <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/r-gly">resource
  /// manager</a>.
  @IntPtr()
  external int hSCardContext;

  /// A pointer to a buffer that contains null-terminated group name strings.
  external PWSTR lpstrGroupNames;

  /// The maximum number of bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version) in the <b>lpstrGroupNames</b> string.
  @Uint32()
  external int nMaxGroupNames;

  /// A pointer to a buffer that contains null-terminated card name strings.
  external PWSTR lpstrCardNames;

  /// The maximum number of bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version) in the <b>lpstrCardNames</b> string.
  @Uint32()
  external int nMaxCardNames;

  /// Reserved for future use.
  external Pointer<GUID> rgguidInterfaces;

  /// Reserved for futures use.
  @Uint32()
  external int cguidInterfaces;

  /// If the card is located, the <b>lpstrRdr</b> buffer contains the name of
  /// the reader that contains the located card.
  external PWSTR lpstrRdr;

  /// The size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrRdr</b>.
  @Uint32()
  external int nMaxRdr;

  /// If the card is located, the <b>lpstrCard</b> buffer contains the name of
  /// the located card.
  external PWSTR lpstrCard;

  /// The size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrCard</b>.
  @Uint32()
  external int nMaxCard;

  /// A pointer to a string to be placed in the title bar of the dialog box.
  external PWSTR lpstrTitle;

  /// A set of bit flags you can use to initialize the dialog box.
  @Uint32()
  external int dwFlags;

  /// A void pointer to user data.
  external Pointer pvUserData;

  /// If <b>lpfnConnect</b> is not <b>NULL</b>, the <b>dwShareMode</b> and
  /// <b>dwPreferredProtocols</b> members are ignored.
  @Uint32()
  external int dwShareMode;

  /// Used for internal connection as described in <b>dwShareMode</b>.
  @Uint32()
  external int dwPreferredProtocols;

  /// Returns the actual protocol in use when the dialog box makes a connection
  /// to a card.
  @Uint32()
  external int dwActiveProtocol;

  /// A pointer to the card connect routine of the caller.
  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  /// A pointer to the card verify routine of the caller.
  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  /// A pointer to the card disconnect routine of the caller.
  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  /// A handle of the connected card (either through an internal dialog box
  /// connect or an <b>lpfnConnect</b> callback).
  @IntPtr()
  external int hCardHandle;
}

/// Contains the information that the SCardUIDlgSelectCard function uses to
/// initialize a smart card Select Card dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-opencardname_exw>.
///
/// {@category struct}
base class OPENCARDNAME_EX extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int dwStructSize;

  /// The context used for communication with the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a> <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/r-gly">resource
  /// manager</a>.
  @IntPtr()
  external int hSCardContext;

  /// The window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// A set of bit flags that you can use to initialize the dialog box.
  @Uint32()
  external int dwFlags;

  /// A pointer to a string to be placed in the title bar of the dialog box.
  external PWSTR lpstrTitle;

  /// A pointer to a string to be displayed to the user as a prompt to insert
  /// the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a>.
  external PWSTR lpstrSearchDesc;

  /// A handle to an icon (32 x 32 pixels).
  @IntPtr()
  external int hIcon;

  /// A pointer to the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winscard/ns-winscard-opencard_search_criteriaa">OPENCARD_SEARCH_CRITERIA</a>
  /// structure to be used, or <b>NULL</b>, if one is not used.
  external Pointer<OPENCARD_SEARCH_CRITERIA> pOpenCardSearchCriteria;

  /// A pointer to the caller's card connect routine.
  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  /// A void pointer to user data.
  external Pointer pvUserData;

  /// If <b>lpfnConnect</b> is not <b>NULL</b>, the <b>dwShareMode</b> and
  /// <b>dwPreferredProtocols</b> members are ignored.
  @Uint32()
  external int dwShareMode;

  /// Used for internal connection as described in <b>dwShareMode</b>.
  @Uint32()
  external int dwPreferredProtocols;

  /// If the card is located, the <b>lpstrRdr</b> buffer contains the name of
  /// the reader that contains the located card.
  external PWSTR lpstrRdr;

  /// Size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrRdr</b>.
  @Uint32()
  external int nMaxRdr;

  /// If the card is located, the <i>lpstrCard</i> buffer contains the name of
  /// the located card.
  external PWSTR lpstrCard;

  /// Size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <i>lpstrCard</i>.
  @Uint32()
  external int nMaxCard;

  /// The actual protocol in use when the dialog box makes a connection to a
  /// card.
  @Uint32()
  external int dwActiveProtocol;

  /// A handle of the connected card (either through an internal dialog box
  /// connect or an <b>lpfnConnect</b> callback).
  @IntPtr()
  external int hCardHandle;
}

/// Used by the SCardUIDlgSelectCard function in order to recognize cards that
/// meet the requirements set forth by the caller.
///
/// You can, however, call SCardUIDlgSelectCard without using this structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-opencard_search_criteriaw>.
///
/// {@category struct}
base class OPENCARD_SEARCH_CRITERIA extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int dwStructSize;

  /// A pointer to a buffer containing null-terminated group name strings.
  external PWSTR lpstrGroupNames;

  /// The maximum number of bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version) in the <b>lpstrGroupNames</b> string.
  @Uint32()
  external int nMaxGroupNames;

  /// Reserved for future use.
  external Pointer<GUID> rgguidInterfaces;

  /// Reserved for future use.
  @Uint32()
  external int cguidInterfaces;

  /// A pointer to a buffer that contains null-terminated card name strings.
  external PWSTR lpstrCardNames;

  /// The maximum number of bytes (ANSI version) or characters (Unicode version)
  /// in the <b>lpstrGroupNames</b> string.
  @Uint32()
  external int nMaxCardNames;

  /// A pointer to the caller's card verify routine.
  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  /// A pointer to the caller's card connect routine.
  external Pointer<NativeFunction<LPOCNCONNPROC>> lpfnConnect;

  /// A pointer to the caller's card disconnect routine.
  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  /// Void pointer to user data.
  external Pointer pvUserData;

  /// If <b>lpfnConnect</b> is not <b>NULL</b>, the <b>dwShareMode</b> and
  /// <b>dwPreferredProtocols</b> members are ignored.
  @Uint32()
  external int dwShareMode;

  /// Used for internal connection as described in <b>dwShareMode</b>.
  @Uint32()
  external int dwPreferredProtocols;
}

/// Contains information that the GetOpenFileName and GetSaveFileName functions
/// use to initialize an Open or Save As dialog box.
///
/// After the user closes the dialog box, the system returns information about
/// the user's selection in this structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/ns-commdlg-openfilenamew>.
///
/// {@category struct}
base class OPENFILENAME extends Struct {
  /// The length, in bytes, of the structure.
  @Uint32()
  external int lStructSize;

  /// A handle to the window that owns the dialog box.
  @IntPtr()
  external int hwndOwner;

  /// If the <b>OFN_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  @IntPtr()
  external int hInstance;

  /// A buffer containing pairs of null-terminated filter strings.
  external PWSTR lpstrFilter;

  /// A static buffer that contains a pair of null-terminated filter strings for
  /// preserving the filter pattern chosen by the user.
  external PWSTR lpstrCustomFilter;

  /// The size, in characters, of the buffer identified by
  /// <b>lpstrCustomFilter</b>.
  @Uint32()
  external int nMaxCustFilter;

  /// The index of the currently selected filter in the <b>File Types</b>
  /// control.
  @Uint32()
  external int nFilterIndex;

  /// The file name used to initialize the <b>File Name</b> edit control.
  external PWSTR lpstrFile;

  /// The size, in characters, of the buffer pointed to by <b>lpstrFile</b>.
  @Uint32()
  external int nMaxFile;

  /// The file name and extension (without path information) of the selected
  /// file.
  external PWSTR lpstrFileTitle;

  /// The size, in characters, of the buffer pointed to by
  /// <b>lpstrFileTitle</b>.
  @Uint32()
  external int nMaxFileTitle;

  /// The initial directory.
  external PWSTR lpstrInitialDir;

  /// A string to be placed in the title bar of the dialog box.
  external PWSTR lpstrTitle;

  @Uint32()
  external int _Flags;

  /// The zero-based offset, in characters, from the beginning of the path to
  /// the file name in the string pointed to by <b>lpstrFile</b>.
  @Uint16()
  external int nFileOffset;

  /// The zero-based offset, in characters, from the beginning of the path to
  /// the file name extension in the string pointed to by <b>lpstrFile</b>.
  @Uint16()
  external int nFileExtension;

  /// The default extension.
  external PWSTR lpstrDefExt;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  @IntPtr()
  external int lCustData;

  /// A pointer to a hook procedure.
  external Pointer<NativeFunction<LPOFNHOOKPROC>> lpfnHook;

  /// The name of the dialog template resource in the module identified by the
  /// <b>hInstance</b> member.
  external PWSTR lpTemplateName;

  external Pointer _pvReserved;

  @Uint32()
  external int _dwReserved;

  @Uint32()
  external int _FlagsEx;

  /// A set of bit flags you can use to initialize the dialog box.
  @pragma('vm:prefer-inline')
  OPEN_FILENAME_FLAGS get Flags => OPEN_FILENAME_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(OPEN_FILENAME_FLAGS value) => _Flags = value;

  /// A set of bit flags you can use to initialize the dialog box.
  @pragma('vm:prefer-inline')
  OPEN_FILENAME_FLAGS_EX get FlagsEx => OPEN_FILENAME_FLAGS_EX(_FlagsEx);

  @pragma('vm:prefer-inline')
  set FlagsEx(OPEN_FILENAME_FLAGS_EX value) => _FlagsEx = value;
}

/// {@category struct}
base class OSINFO extends Struct {
  @Uint32()
  external int dwOSPlatformId;

  @Uint32()
  external int dwOSMajorVersion;

  @Uint32()
  external int dwOSMinorVersion;
}

/// Contains operating system version information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-osversioninfow>.
///
/// {@category struct}
base class OSVERSIONINFO extends Struct {
  /// The size of this data structure, in bytes.
  @Uint32()
  external int dwOSVersionInfoSize;

  /// The major version number of the operating system.
  @Uint32()
  external int dwMajorVersion;

  /// The minor version number of the operating system.
  @Uint32()
  external int dwMinorVersion;

  /// The build number of the operating system.
  @Uint32()
  external int dwBuildNumber;

  /// The operating system platform.
  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  /// A string, such as "Service Pack 3", that indicates the latest Service Pack
  /// installed on the system.
  @pragma('vm:prefer-inline')
  String get szCSDVersion => _szCSDVersion.toDartString();

  @pragma('vm:prefer-inline')
  set szCSDVersion(String value) => _szCSDVersion.setString(value);
}

/// Contains operating system version information.
///
/// The information includes major and minor version numbers, a build number, a
/// platform identifier, and information about product suites and the latest
/// Service Pack installed on the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-osversioninfoexw>.
///
/// {@category struct}
base class OSVERSIONINFOEX extends Struct {
  /// The size of this data structure, in bytes.
  @Uint32()
  external int dwOSVersionInfoSize;

  /// The major version number of the operating system.
  @Uint32()
  external int dwMajorVersion;

  /// The minor version number of the operating system.
  @Uint32()
  external int dwMinorVersion;

  /// The build number of the operating system.
  @Uint32()
  external int dwBuildNumber;

  /// The operating system platform.
  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  /// The major version number of the latest Service Pack installed on the
  /// system.
  @Uint16()
  external int wServicePackMajor;

  /// The minor version number of the latest Service Pack installed on the
  /// system.
  @Uint16()
  external int wServicePackMinor;

  /// A bit mask that identifies the product suites available on the system.
  @Uint16()
  external int wSuiteMask;

  @Uint8()
  external int wProductType;

  @Uint8()
  external int _wReserved;

  /// A string, such as "Service Pack 3", that indicates the latest Service Pack
  /// installed on the system.
  @pragma('vm:prefer-inline')
  String get szCSDVersion => _szCSDVersion.toDartString();

  @pragma('vm:prefer-inline')
  set szCSDVersion(String value) => _szCSDVersion.setString(value);
}

/// Contains information used in asynchronous (or overlapped) input and output
/// (I/O).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-overlapped>.
///
/// {@category struct}
base class OVERLAPPED extends Struct {
  /// The status code for the I/O request.
  @IntPtr()
  external int Internal;

  /// The number of bytes transferred for the I/O request.
  @IntPtr()
  external int InternalHigh;

  external OVERLAPPED_0 Anonymous;

  /// A handle to the event that will be set to a signaled state by the system
  /// when the operation has completed.
  @IntPtr()
  external int hEvent;
}

/// {@category union}
sealed class OVERLAPPED_0 extends Union {
  external OVERLAPPED_0_0 Anonymous;
  external Pointer Pointer$;
}

extension OVERLAPPED_0_Extension on OVERLAPPED {
  @pragma('vm:prefer-inline')
  OVERLAPPED_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(OVERLAPPED_0_0 value) => this.Anonymous.Anonymous = value;

  @pragma('vm:prefer-inline')
  Pointer get Pointer$ => this.Anonymous.Pointer$;

  @pragma('vm:prefer-inline')
  set Pointer$(Pointer value) => this.Anonymous.Pointer$ = value;
}

/// {@category struct}
sealed class OVERLAPPED_0_0 extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int OffsetHigh;
}

extension OVERLAPPED_0_0_Extension on OVERLAPPED {
  @pragma('vm:prefer-inline')
  int get Offset => this.Anonymous.Anonymous.Offset;

  @pragma('vm:prefer-inline')
  set Offset(int value) => this.Anonymous.Anonymous.Offset = value;

  @pragma('vm:prefer-inline')
  int get OffsetHigh => this.Anonymous.Anonymous.OffsetHigh;

  @pragma('vm:prefer-inline')
  set OffsetHigh(int value) => this.Anonymous.Anonymous.OffsetHigh = value;
}

/// Contains the information returned by a call to the
/// GetQueuedCompletionStatusEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-overlapped_entry>.
///
/// {@category struct}
base class OVERLAPPED_ENTRY extends Struct {
  /// Receives the completion key value associated with the file handle whose
  /// I/O operation has completed.
  @IntPtr()
  external int lpCompletionKey;

  /// Receives the address of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/minwinbase/ns-minwinbase-overlapped">OVERLAPPED</a>
  /// structure that was specified when the completed I/O operation was started.
  external Pointer<OVERLAPPED> lpOverlapped;

  /// Reserved.
  @IntPtr()
  external int Internal;

  /// Receives the number of bytes transferred during the I/O operation that has
  /// completed.
  @Uint32()
  external int dwNumberOfBytesTransferred;
}

/// Contains information for an application.
///
/// This information can be used to paint the client area of a window owned by
/// that application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-paintstruct>.
///
/// {@category struct}
base class PAINTSTRUCT extends Struct {
  /// A handle to the display DC to be used for painting.
  @IntPtr()
  external int hdc;

  @Int32()
  external int _fErase;

  /// A `RECT` structure that specifies the upper left and lower right corners
  /// of the rectangle in which the painting is requested, in device units
  /// relative to the upper-left corner of the client area.
  external RECT rcPaint;

  @Int32()
  external int _fRestore;

  @Int32()
  external int _fIncUpdate;

  @Array(32)
  external Array<Uint8> _rgbReserved;

  /// Indicates whether the background must be erased.
  @pragma('vm:prefer-inline')
  bool get fErase => _fErase != FALSE;

  @pragma('vm:prefer-inline')
  set fErase(bool value) => _fErase = value ? TRUE : FALSE;

  /// Reserved; used internally by the system.
  @pragma('vm:prefer-inline')
  bool get fRestore => _fRestore != FALSE;

  @pragma('vm:prefer-inline')
  set fRestore(bool value) => _fRestore = value ? TRUE : FALSE;

  /// Reserved; used internally by the system.
  @pragma('vm:prefer-inline')
  bool get fIncUpdate => _fIncUpdate != FALSE;

  @pragma('vm:prefer-inline')
  set fIncUpdate(bool value) => _fIncUpdate = value ? TRUE : FALSE;
}

/// Specifies the color and usage of an entry in a logical palette.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-paletteentry>.
///
/// {@category struct}
base class PALETTEENTRY extends Struct {
  /// The red intensity value for the palette entry.
  @Uint8()
  external int peRed;

  /// The green intensity value for the palette entry.
  @Uint8()
  external int peGreen;

  /// The blue intensity value for the palette entry.
  @Uint8()
  external int peBlue;

  /// The alpha intensity value for the palette entry.
  @Uint8()
  external int peFlags;
}

/// Contains information needed for transferring a structure element, parameter,
/// or function return value between processes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-paramdesc>.
///
/// {@category struct}
base class PARAMDESC extends Struct {
  /// The default value for the parameter, if PARAMFLAG_FHASDEFAULT is specified
  /// in <b>wParamFlags</b>.
  external Pointer<PARAMDESCEX> pparamdescex;

  @Uint16()
  external int _wParamFlags;

  /// The parameter flags.
  @pragma('vm:prefer-inline')
  PARAMFLAGS get wParamFlags => PARAMFLAGS(_wParamFlags);

  @pragma('vm:prefer-inline')
  set wParamFlags(PARAMFLAGS value) => _wParamFlags = value;
}

/// Contains information about the default value of a parameter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-paramdescex>.
///
/// {@category struct}
base class PARAMDESCEX extends Struct {
  /// The size of the structure.
  @Uint32()
  external int cBytes;

  /// The default value of the parameter.
  external VARIANT varDefaultValue;
}

/// Contains performance information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/ns-psapi-performance_information>.
///
/// {@category struct}
base class PERFORMANCE_INFORMATION extends Struct {
  /// The size of this structure, in bytes.
  @Uint32()
  external int cb;

  /// The number of pages currently committed by the system.
  @IntPtr()
  external int CommitTotal;

  /// The current maximum number of pages that can be committed by the system
  /// without extending the paging file(s).
  @IntPtr()
  external int CommitLimit;

  /// The maximum number of pages that were simultaneously in the committed
  /// state since the last system reboot.
  @IntPtr()
  external int CommitPeak;

  /// The amount of actual physical memory, in pages.
  @IntPtr()
  external int PhysicalTotal;

  /// The amount of physical memory currently available, in pages.
  @IntPtr()
  external int PhysicalAvailable;

  /// The amount of system cache memory, in pages.
  @IntPtr()
  external int SystemCache;

  /// The sum of the memory currently in the paged and nonpaged kernel pools, in
  /// pages.
  @IntPtr()
  external int KernelTotal;

  /// The memory currently in the paged kernel pool, in pages.
  @IntPtr()
  external int KernelPaged;

  /// The memory currently in the nonpaged kernel pool, in pages.
  @IntPtr()
  external int KernelNonpaged;

  /// The size of a page, in bytes.
  @IntPtr()
  external int PageSize;

  /// The current number of open handles.
  @Uint32()
  external int HandleCount;

  /// The current number of processes.
  @Uint32()
  external int ProcessCount;

  /// The current number of threads.
  @Uint32()
  external int ThreadCount;
}

/// Contains a handle and text description corresponding to a physical monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/ns-physicalmonitorenumerationapi-physical_monitor>.
///
/// {@category struct}
@Packed(1)
base class PHYSICAL_MONITOR extends Struct {
  /// Handle to the physical monitor.
  @IntPtr()
  external int hPhysicalMonitor;

  @Array(128)
  external Array<Uint16> _szPhysicalMonitorDescription;

  /// Text description of the physical monitor.
  @pragma('vm:prefer-inline')
  String get szPhysicalMonitorDescription =>
      _szPhysicalMonitorDescription.toDartString();

  @pragma('vm:prefer-inline')
  set szPhysicalMonitorDescription(String value) =>
      _szPhysicalMonitorDescription.setString(value);
}

/// Defines the x- and y-coordinates of a point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-point>.
///
/// {@category struct}
base class POINT extends Struct {
  /// Specifies the <i>x</i>-coordinate of the point.
  @Int32()
  external int x;

  /// Specifies the <i>y</i>-coordinate of the point.
  @Int32()
  external int y;
}

/// Contains basic pointer information common to all pointer types.
///
/// Applications can retrieve this information using the GetPointerInfo,
/// GetPointerFrameInfo, GetPointerInfoHistory and GetPointerFrameInfoHistory
/// functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_info>.
///
/// {@category struct}
base class POINTER_INFO extends Struct {
  @Int32()
  external int _pointerType;

  /// An identifier that uniquely identifies a pointer during its lifetime.
  @Uint32()
  external int pointerId;

  /// An identifier common to multiple pointers for which the source device
  /// reported an update in a single input frame.
  @Uint32()
  external int frameId;

  @Uint32()
  external int _pointerFlags;

  /// Handle to the source device that can be used in calls to the raw input
  /// device API and the digitizer device API.
  @IntPtr()
  external int sourceDevice;

  /// Window to which this message was targeted.
  @IntPtr()
  external int hwndTarget;

  /// The predicted screen coordinates of the pointer, in pixels.
  external POINT ptPixelLocation;

  /// The predicted screen coordinates of the pointer, in HIMETRIC units.
  external POINT ptHimetricLocation;

  /// The screen coordinates of the pointer, in pixels.
  external POINT ptPixelLocationRaw;

  /// The screen coordinates of the pointer, in HIMETRIC units.
  external POINT ptHimetricLocationRaw;

  /// 0 or the time stamp of the message, based on the system tick count when
  /// the message was received.
  @Uint32()
  external int dwTime;

  /// Count of inputs that were coalesced into this message.
  @Uint32()
  external int historyCount;

  @Int32()
  external int InputData;

  @Uint32()
  external int dwKeyStates;

  /// The value of the high-resolution performance counter when the pointer
  /// message was received (high-precision, 64 bit alternative to
  /// <b>dwTime</b>).
  @Uint64()
  external int PerformanceCount;

  @Int32()
  external int _ButtonChangeType;

  /// A value from the <a
  /// href="https://docs.microsoft.com/windows/win32/api/winuser/ne-winuser-tagpointer_input_type">POINTER_INPUT_TYPE</a>
  /// enumeration that specifies the pointer type.
  @pragma('vm:prefer-inline')
  POINTER_INPUT_TYPE get pointerType => POINTER_INPUT_TYPE(_pointerType);

  @pragma('vm:prefer-inline')
  set pointerType(POINTER_INPUT_TYPE value) => _pointerType = value;

  /// May be any reasonable combination of flags from the <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">Pointer
  /// Flags</a> constants.
  @pragma('vm:prefer-inline')
  POINTER_FLAGS get pointerFlags => POINTER_FLAGS(_pointerFlags);

  @pragma('vm:prefer-inline')
  set pointerFlags(POINTER_FLAGS value) => _pointerFlags = value;

  /// A value from the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/ne-winuser-pointer_button_change_type">POINTER_BUTTON_CHANGE_TYPE</a>
  /// enumeration that specifies the change in button state between this input
  /// and the previous input.
  @pragma('vm:prefer-inline')
  POINTER_BUTTON_CHANGE_TYPE get ButtonChangeType =>
      POINTER_BUTTON_CHANGE_TYPE(_ButtonChangeType);

  @pragma('vm:prefer-inline')
  set ButtonChangeType(POINTER_BUTTON_CHANGE_TYPE value) =>
      _ButtonChangeType = value;
}

/// Defines basic pen information common to all pointer types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_pen_info>.
///
/// {@category struct}
base class POINTER_PEN_INFO extends Struct {
  /// An embedded <a
  /// href="https://docs.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_info">POINTER_INFO</a>
  /// structure.
  external POINTER_INFO pointerInfo;

  /// The pen flag.
  @Uint32()
  external int penFlags;

  /// The pen mask.
  @Uint32()
  external int penMask;

  /// A pen pressure normalized to a range between 0 and 1024.
  @Uint32()
  external int pressure;

  /// The clockwise rotation, or twist, of the pointer normalized in a range of
  /// 0 to 359.
  @Uint32()
  external int rotation;

  /// The angle of tilt of the pointer along the x-axis in a range of -90 to
  /// +90, with a positive value indicating a tilt to the right.
  @Int32()
  external int tiltX;

  /// The angle of tilt of the pointer along the y-axis in a range of -90 to
  /// +90, with a positive value indicating a tilt toward the user.
  @Int32()
  external int tiltY;
}

/// Defines basic touch information common to all pointer types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-pointer_touch_info>.
///
/// {@category struct}
base class POINTER_TOUCH_INFO extends Struct {
  /// An embedded `POINTER_INFO` header structure.
  external POINTER_INFO pointerInfo;

  /// Currently none.
  @Uint32()
  external int touchFlags;

  /// Indicates which of the optional fields contain valid values.
  @Uint32()
  external int touchMask;

  /// The predicted screen coordinates of the contact area, in pixels.
  external RECT rcContact;

  /// The raw screen coordinates of the contact area, in pixels.
  external RECT rcContactRaw;

  /// A pointer orientation, with a value between 0 and 359, where 0 indicates a
  /// touch pointer aligned with the x-axis and pointing from left to right;
  /// increasing values indicate degrees of rotation in the clockwise direction.
  @Uint32()
  external int orientation;

  /// A pen pressure normalized to a range between 0 and 1024.
  @Uint32()
  external int pressure;
}

/// Defines the x- and y-coordinates of a point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-pointl>.
///
/// {@category struct}
base class POINTL extends Struct {
  /// Specifies the <i>x</i>-coordinate of the point.
  @Int32()
  external int x;

  /// Specifies the <i>y</i>-coordinate of the point.
  @Int32()
  external int y;
}

/// Defines the x- and y-coordinates of a point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-points>.
///
/// {@category struct}
base class POINTS extends Struct {
  /// Specifies the <i>x</i>-coordinate of the point.
  @Int16()
  external int x;

  /// Specifies the <i>y</i>-coordinate of the point.
  @Int16()
  external int y;
}

/// Describes how the PolyTextOut function should draw a string of text.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-polytextw>.
///
/// {@category struct}
base class POLYTEXT extends Struct {
  /// The horizontal reference point for the string.
  @Int32()
  external int x;

  /// The vertical reference point for the string.
  @Int32()
  external int y;

  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/gdi/specifying-length-of-text-output-string">length
  /// of the string</a> pointed to by <b>lpstr</b>.
  @Uint32()
  external int n;

  /// Pointer to a string of text to be drawn by the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/nf-wingdi-polytextouta">PolyTextOut</a>
  /// function.
  external PWSTR lpstr;

  @Uint32()
  external int uiFlags;

  /// A rectangle structure that contains the dimensions of the opaquing or
  /// clipping rectangle.
  external RECT rcl;

  /// Pointer to an array containing the width value for each character in the
  /// string.
  external Pointer<Int32> pdx;
}

/// Identifies a supported printer port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/port-info-1>.
///
/// {@category struct}
base class PORT_INFO_1 extends Struct {
  /// Pointer to a null-terminated string that identifies a supported printer
  /// port (for example, "LPT1:").
  external PWSTR pName;
}

/// Identifies a supported printer port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/port-info-2>.
///
/// {@category struct}
base class PORT_INFO_2 extends Struct {
  /// Pointer to a null-terminated string that identifies a supported printer
  /// port (for example, "LPT1:").
  external PWSTR pPortName;

  /// Pointer to a null-terminated string that identifies an installed monitor
  /// (for example, "PJL monitor").
  external PWSTR pMonitorName;

  /// Pointer to a null-terminated string that describes the port in more detail
  /// (for example, if **pPortName** is "LPT1:", **pDescription** is "printer
  /// port").
  external PWSTR pDescription;

  /// Bitmask describing the type of port.
  @Uint32()
  external int fPortType;

  @Uint32()
  external int _Reserved;
}

/// Sent with a power setting event and contains data about the specific change.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-powerbroadcast_setting>.
///
/// {@category struct}
base class POWERBROADCAST_SETTING extends Struct {
  /// Indicates the power setting for which this notification is being
  /// delivered.
  external GUID PowerSetting;

  /// The size in bytes of the data in the <i>Data</i> member.
  @Uint32()
  external int DataLength;

  /// The new value of the power setting.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> Data;
}

/// Specifies the default data type, environment, initialization data, and
/// access rights for a printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-defaults>.
///
/// {@category struct}
base class PRINTER_DEFAULTS extends Struct {
  /// Pointer to a null-terminated string that specifies the default data type
  /// for a printer.
  external PWSTR pDatatype;

  /// Pointer to a `DEVMODE` structure that identifies the default environment
  /// and initialization data for a printer.
  external Pointer<DEVMODE> pDevMode;

  @Uint32()
  external int _DesiredAccess;

  /// Specifies desired access rights for a printer.
  @pragma('vm:prefer-inline')
  PRINTER_ACCESS_RIGHTS get DesiredAccess =>
      PRINTER_ACCESS_RIGHTS(_DesiredAccess);

  @pragma('vm:prefer-inline')
  set DesiredAccess(PRINTER_ACCESS_RIGHTS value) => _DesiredAccess = value;
}

/// The handle must be released using the `ClosePrinter` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef PRINTER_HANDLE = IntPtr;

/// Specifies general printer information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-1>.
///
/// {@category struct}
base class PRINTER_INFO_1 extends Struct {
  /// Specifies information about the returned data.
  @Uint32()
  external int Flags;

  /// Pointer to a null-terminated string that describes the contents of the
  /// structure.
  external PWSTR pDescription;

  /// Pointer to a null-terminated string that names the contents of the
  /// structure.
  external PWSTR pName;

  /// Pointer to a null-terminated string that contains additional data
  /// describing the structure.
  external PWSTR pComment;
}

/// Specifies detailed printer information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-2>.
///
/// {@category struct}
base class PRINTER_INFO_2 extends Struct {
  /// A pointer to a null-terminated string identifying the server that controls
  /// the printer.
  external PWSTR pServerName;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer.
  external PWSTR pPrinterName;

  /// A pointer to a null-terminated string that identifies the share point for
  /// the printer.
  external PWSTR pShareName;

  /// A pointer to a null-terminated string that identifies the port(s) used to
  /// transmit data to the printer.
  external PWSTR pPortName;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer driver.
  external PWSTR pDriverName;

  /// A pointer to a null-terminated string that provides a brief description of
  /// the printer.
  external PWSTR pComment;

  /// A pointer to a null-terminated string that specifies the physical location
  /// of the printer (for example, "Bldg.
  external PWSTR pLocation;

  /// A pointer to a `DEVMODE` structure that defines default printer data such
  /// as the paper orientation and the resolution.
  external Pointer<DEVMODE> pDevMode;

  /// A pointer to a null-terminated string that specifies the name of the file
  /// used to create the separator page.
  external PWSTR pSepFile;

  /// A pointer to a null-terminated string that specifies the name of the print
  /// processor used by the printer.
  external PWSTR pPrintProcessor;

  /// A pointer to a null-terminated string that specifies the data type used to
  /// record the print job.
  external PWSTR pDatatype;

  /// A pointer to a null-terminated string that specifies the default
  /// print-processor parameters.
  external PWSTR pParameters;

  /// A pointer to a `SECURITY_DESCRIPTOR` structure for the printer.
  @IntPtr()
  external int pSecurityDescriptor;

  /// The printer attributes.
  @Uint32()
  external int Attributes;

  /// A priority value that the spooler uses to route print jobs.
  @Uint32()
  external int Priority;

  /// The default priority value assigned to each print job.
  @Uint32()
  external int DefaultPriority;

  /// The earliest time at which the printer will print a job.
  @Uint32()
  external int StartTime;

  /// The latest time at which the printer will print a job.
  @Uint32()
  external int UntilTime;

  /// The printer status.
  @Uint32()
  external int Status;

  /// The number of print jobs that have been queued for the printer.
  @Uint32()
  external int cJobs;

  /// The average number of pages per minute that have been printed on the
  /// printer.
  @Uint32()
  external int AveragePPM;
}

/// Specifies printer security information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-3>.
///
/// {@category struct}
base class PRINTER_INFO_3 extends Struct {
  /// Pointer to a `SECURITY_DESCRIPTOR` structure that specifies a printer's
  /// security information.
  @IntPtr()
  external int pSecurityDescriptor;
}

/// Specifies general printer information.
///
/// The structure can be used to retrieve minimal printer information on a call
/// to EnumPrinters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-4>.
///
/// {@category struct}
base class PRINTER_INFO_4 extends Struct {
  /// Pointer to a null-terminated string that specifies the name of the printer
  /// (local or remote).
  external PWSTR pPrinterName;

  /// Pointer to a null-terminated string that is the name of the server.
  external PWSTR pServerName;

  /// Specifies information about the returned data.
  @Uint32()
  external int Attributes;
}

/// Specifies detailed printer information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-5>.
///
/// {@category struct}
base class PRINTER_INFO_5 extends Struct {
  /// A pointer to a null-terminated string that specifies the name of the
  /// printer.
  external PWSTR pPrinterName;

  /// A pointer to a null-terminated string that identifies the port(s) used to
  /// transmit data to the printer.
  external PWSTR pPortName;

  /// The printer attributes.
  @Uint32()
  external int Attributes;

  /// This value is not used.
  @Uint32()
  external int DeviceNotSelectedTimeout;

  /// This value is not used.
  @Uint32()
  external int TransmissionRetryTimeout;
}

/// Specifies the status value of a printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-6>.
///
/// {@category struct}
base class PRINTER_INFO_6 extends Struct {
  /// The printer status.
  @Uint32()
  external int dwStatus;
}

/// Contains printer information returned by the
/// FindNextPrinterChangeNotification function.
///
/// The function returns this information after a wait operation on a printer
/// change notification object has been satisfied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-notify-info>.
///
/// {@category struct}
base class PRINTER_NOTIFY_INFO extends Struct {
  /// The version of this structure.
  @Uint32()
  external int Version;

  /// A bit flag that indicates the state of the notification structure.
  @Uint32()
  external int Flags;

  /// The number of `PRINTER_NOTIFY_INFO_DATA` elements in the **aData** array.
  @Uint32()
  external int Count;

  /// An array of `PRINTER_NOTIFY_INFO_DATA` structures.
  @Array.variableWithVariableDimension(1)
  external Array<PRINTER_NOTIFY_INFO_DATA> aData;
}

/// Identifies a job or printer information field and provides the current data
/// for that field.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-notify-info-data>.
///
/// {@category struct}
base class PRINTER_NOTIFY_INFO_DATA extends Struct {
  /// Indicates the type of information provided.
  @Uint16()
  external int Type;

  /// Indicates the field that changed.
  @Uint16()
  external int Field;

  @Uint32()
  external int _Reserved;

  /// Indicates the job identifier if the **Type** member specifies
  /// JOB_NOTIFY_TYPE.
  @Uint32()
  external int Id;

  /// A union of data information based on the **Type** and **Field** members.
  external PRINTER_NOTIFY_INFO_DATA_0 NotifyData;
}

/// {@category union}
sealed class PRINTER_NOTIFY_INFO_DATA_0 extends Union {
  @Array(2)
  external Array<Uint32> adwData;

  external PRINTER_NOTIFY_INFO_DATA_0_0 Data;
}

extension PRINTER_NOTIFY_INFO_DATA_0_Extension on PRINTER_NOTIFY_INFO_DATA {
  @pragma('vm:prefer-inline')
  Array<Uint32> get adwData => this.NotifyData.adwData;

  @pragma('vm:prefer-inline')
  set adwData(Array<Uint32> value) => this.NotifyData.adwData = value;

  @pragma('vm:prefer-inline')
  PRINTER_NOTIFY_INFO_DATA_0_0 get Data => this.NotifyData.Data;

  @pragma('vm:prefer-inline')
  set Data(PRINTER_NOTIFY_INFO_DATA_0_0 value) => this.NotifyData.Data = value;
}

/// {@category struct}
sealed class PRINTER_NOTIFY_INFO_DATA_0_0 extends Struct {
  @Uint32()
  external int cbBuf;

  external Pointer pBuf;
}

extension PRINTER_NOTIFY_INFO_DATA_0_0_Extension on PRINTER_NOTIFY_INFO_DATA {
  @pragma('vm:prefer-inline')
  int get cbBuf => this.NotifyData.Data.cbBuf;

  @pragma('vm:prefer-inline')
  set cbBuf(int value) => this.NotifyData.Data.cbBuf = value;

  @pragma('vm:prefer-inline')
  Pointer get pBuf => this.NotifyData.Data.pBuf;

  @pragma('vm:prefer-inline')
  set pBuf(Pointer value) => this.NotifyData.Data.pBuf = value;
}

/// Represents printer options.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-options>.
///
/// {@category struct}
base class PRINTER_OPTIONS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _dwFlags;

  /// A set of `PRINTER_OPTION_FLAGS` that specifies how the handle to a printer
  /// returned by `OpenPrinter2` will be used by other functions.
  @pragma('vm:prefer-inline')
  PRINTER_OPTION_FLAGS get dwFlags => PRINTER_OPTION_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(PRINTER_OPTION_FLAGS value) => _dwFlags = value;
}

/// Contains the execution context of the printer driver that calls
/// GetPrintExecutionData.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/print-execution-data>.
///
/// {@category struct}
base class PRINT_EXECUTION_DATA extends Struct {
  @Int32()
  external int _context;

  /// If the value of **context** is **PRINT_EXECUTION_CONTEXT_WOW64**,
  /// **clientAppPID** identifies the client application on whose behalf the
  /// splwow64.exe process loaded the printer driver.
  @Uint32()
  external int clientAppPID;

  /// The `PRINT_EXECUTION_CONTEXT` value that represents the current execution
  /// context of the printer driver.
  @pragma('vm:prefer-inline')
  PRINT_EXECUTION_CONTEXT get context => PRINT_EXECUTION_CONTEXT(_context);

  @pragma('vm:prefer-inline')
  set context(PRINT_EXECUTION_CONTEXT value) => _context = value;
}

/// Contains information about a heap element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-process_heap_entry>.
///
/// {@category struct}
base class PROCESS_HEAP_ENTRY extends Struct {
  /// A pointer to the data portion of the heap element.
  external Pointer lpData;

  /// The size of the data portion of the heap element, in bytes.
  @Uint32()
  external int cbData;

  /// The size of the data used by the system to maintain information about the
  /// heap element, in bytes.
  @Uint8()
  external int cbOverhead;

  /// A handle to the heap region that contains the heap element.
  @Uint8()
  external int iRegionIndex;

  /// The properties of the heap element.
  @Uint16()
  external int wFlags;

  external PROCESS_HEAP_ENTRY_0 Anonymous;
}

/// {@category union}
sealed class PROCESS_HEAP_ENTRY_0 extends Union {
  external PROCESS_HEAP_ENTRY_0_0 Block;
  external PROCESS_HEAP_ENTRY_0_1 Region;
}

extension PROCESS_HEAP_ENTRY_0_Extension on PROCESS_HEAP_ENTRY {
  @pragma('vm:prefer-inline')
  PROCESS_HEAP_ENTRY_0_0 get Block => this.Anonymous.Block;

  @pragma('vm:prefer-inline')
  set Block(PROCESS_HEAP_ENTRY_0_0 value) => this.Anonymous.Block = value;

  @pragma('vm:prefer-inline')
  PROCESS_HEAP_ENTRY_0_1 get Region => this.Anonymous.Region;

  @pragma('vm:prefer-inline')
  set Region(PROCESS_HEAP_ENTRY_0_1 value) => this.Anonymous.Region = value;
}

/// {@category struct}
sealed class PROCESS_HEAP_ENTRY_0_0 extends Struct {
  @IntPtr()
  external int hMem;

  @Array(3)
  external Array<Uint32> _dwReserved;
}

extension PROCESS_HEAP_ENTRY_0_0_Extension on PROCESS_HEAP_ENTRY {
  @pragma('vm:prefer-inline')
  int get hMem => this.Anonymous.Block.hMem;

  @pragma('vm:prefer-inline')
  set hMem(int value) => this.Anonymous.Block.hMem = value;
}

/// {@category struct}
sealed class PROCESS_HEAP_ENTRY_0_1 extends Struct {
  @Uint32()
  external int dwCommittedSize;

  @Uint32()
  external int dwUnCommittedSize;

  external Pointer lpFirstBlock;
  external Pointer lpLastBlock;
}

extension PROCESS_HEAP_ENTRY_0_1_Extension on PROCESS_HEAP_ENTRY {
  @pragma('vm:prefer-inline')
  int get dwCommittedSize => this.Anonymous.Region.dwCommittedSize;

  @pragma('vm:prefer-inline')
  set dwCommittedSize(int value) =>
      this.Anonymous.Region.dwCommittedSize = value;

  @pragma('vm:prefer-inline')
  int get dwUnCommittedSize => this.Anonymous.Region.dwUnCommittedSize;

  @pragma('vm:prefer-inline')
  set dwUnCommittedSize(int value) =>
      this.Anonymous.Region.dwUnCommittedSize = value;

  @pragma('vm:prefer-inline')
  Pointer get lpFirstBlock => this.Anonymous.Region.lpFirstBlock;

  @pragma('vm:prefer-inline')
  set lpFirstBlock(Pointer value) => this.Anonymous.Region.lpFirstBlock = value;

  @pragma('vm:prefer-inline')
  Pointer get lpLastBlock => this.Anonymous.Region.lpLastBlock;

  @pragma('vm:prefer-inline')
  set lpLastBlock(Pointer value) => this.Anonymous.Region.lpLastBlock = value;
}

/// Contains information about a newly created process and its primary thread.
///
/// It is used with the CreateProcess, CreateProcessAsUser,
/// CreateProcessWithLogonW, or CreateProcessWithTokenW function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/ns-processthreadsapi-process_information>.
///
/// {@category struct}
base class PROCESS_INFORMATION extends Struct {
  /// A handle to the newly created process.
  @IntPtr()
  external int hProcess;

  /// A handle to the primary thread of the newly created process.
  @IntPtr()
  external int hThread;

  /// A value that can be used to identify a process.
  @Uint32()
  external int dwProcessId;

  /// A value that can be used to identify a thread.
  @Uint32()
  external int dwThreadId;
}

/// Specifies the FMTID/PID identifier that programmatically identifies a
/// property.
///
/// Replaces SHCOLUMNID.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ns-wtypes-propertykey>.
///
/// {@category struct}
base class PROPERTYKEY extends Struct {
  /// A unique GUID for the property.
  external GUID fmtid;

  /// A property identifier (PID).
  @Uint32()
  external int pid;
}

/// Used by many of the methods of IPropertyStorage to specify a property either
/// by its property identifier (ID) or the associated string name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-propspec>.
///
/// {@category struct}
base class PROPSPEC extends Struct {
  @Uint32()
  external int _ulKind;

  external PROPSPEC_0 Anonymous;

  @pragma('vm:prefer-inline')
  PROPSPEC_KIND get ulKind => PROPSPEC_KIND(_ulKind);

  @pragma('vm:prefer-inline')
  set ulKind(PROPSPEC_KIND value) => _ulKind = value;
}

/// {@category union}
sealed class PROPSPEC_0 extends Union {
  @Uint32()
  external int propid;

  external PWSTR lpwstr;
}

extension PROPSPEC_0_Extension on PROPSPEC {
  @pragma('vm:prefer-inline')
  int get propid => this.Anonymous.propid;

  @pragma('vm:prefer-inline')
  set propid(int value) => this.Anonymous.propid = value;

  @pragma('vm:prefer-inline')
  PWSTR get lpwstr => this.Anonymous.lpwstr;

  @pragma('vm:prefer-inline')
  set lpwstr(PWSTR value) => this.Anonymous.lpwstr = value;
}

/// Used in the ReadMultiple and WriteMultiple methods of IPropertyStorage to
/// define the type tag and the value of a property in a property set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-propvariant>.
///
/// {@category struct}
base class PROPVARIANT extends Struct {
  external PROPVARIANT_0 Anonymous;
}

/// {@category union}
sealed class PROPVARIANT_0 extends Union {
  external PROPVARIANT_0_0 Anonymous;
  external DECIMAL decVal;
}

extension PROPVARIANT_0_Extension on PROPVARIANT {
  @pragma('vm:prefer-inline')
  PROPVARIANT_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(PROPVARIANT_0_0 value) => this.Anonymous.Anonymous = value;

  @pragma('vm:prefer-inline')
  DECIMAL get decVal => this.Anonymous.decVal;

  @pragma('vm:prefer-inline')
  set decVal(DECIMAL value) => this.Anonymous.decVal = value;
}

/// {@category struct}
sealed class PROPVARIANT_0_0 extends Struct {
  @Uint16()
  external int _vt;

  @Uint16()
  external int _wReserved1;

  @Uint16()
  external int _wReserved2;

  @Uint16()
  external int _wReserved3;

  external PROPVARIANT_0_0_0 Anonymous;

  @pragma('vm:prefer-inline')
  VARENUM get vt => VARENUM(_vt);

  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => _vt = value;
}

extension PROPVARIANT_0_0_Extension on PROPVARIANT {
  @pragma('vm:prefer-inline')
  VARENUM get vt => this.Anonymous.Anonymous.vt;

  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => this.Anonymous.Anonymous.vt = value;

  @pragma('vm:prefer-inline')
  PROPVARIANT_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(PROPVARIANT_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

/// {@category union}
sealed class PROPVARIANT_0_0_0 extends Union {
  @Int8()
  external int cVal;

  @Uint8()
  external int bVal;

  @Int16()
  external int iVal;

  @Uint16()
  external int uiVal;

  @Int32()
  external int lVal;

  @Uint32()
  external int ulVal;

  @Int32()
  external int intVal;

  @Uint32()
  external int uintVal;

  @Int64()
  external int hVal;

  @Uint64()
  external int uhVal;

  @Float()
  external double fltVal;

  @Double()
  external double dblVal;

  @Int16()
  external int _boolVal;

  @Int16()
  external int __OBSOLETE__VARIANT_BOOL;

  @Int32()
  external int scode;

  external CY cyVal;

  @Double()
  external double date;

  external FILETIME filetime;
  external Pointer<GUID> puuid;
  external Pointer<CLIPDATA> pclipdata;
  external BSTR bstrVal;
  external BSTRBLOB bstrblobVal;
  external BLOB blob;
  external PSTR pszVal;
  external PWSTR pwszVal;
  external VTablePointer _punkVal;
  external VTablePointer _pdispVal;
  external VTablePointer _pStream;
  external VTablePointer _pStorage;
  external Pointer<VERSIONEDSTREAM> pVersionedStream;
  external Pointer<SAFEARRAY> parray;
  external CAC cac;
  external CAUB caub;
  external CAI cai;
  external CAUI caui;
  external CAL cal;
  external CAUL caul;
  external CAH cah;
  external CAUH cauh;
  external CAFLT caflt;
  external CADBL cadbl;
  external CABOOL cabool;
  external CASCODE cascode;
  external CACY cacy;
  external CADATE cadate;
  external CAFILETIME cafiletime;
  external CACLSID cauuid;
  external CACLIPDATA caclipdata;
  external CABSTR cabstr;
  external CABSTRBLOB cabstrblob;
  external CALPSTR calpstr;
  external CALPWSTR calpwstr;
  external CAPROPVARIANT capropvar;
  external PSTR pcVal;
  external Pointer<Uint8> pbVal;
  external Pointer<Int16> piVal;
  external Pointer<Uint16> puiVal;
  external Pointer<Int32> plVal;
  external Pointer<Uint32> pulVal;
  external Pointer<Int32> pintVal;
  external Pointer<Uint32> puintVal;
  external Pointer<Float> pfltVal;
  external Pointer<Double> pdblVal;
  external Pointer<VARIANT_BOOL> pboolVal;
  external Pointer<DECIMAL> pdecVal;
  external Pointer<Int32> pscode;
  external Pointer<CY> pcyVal;
  external Pointer<Double> pdate;
  external Pointer<BSTR> pbstrVal;
  external Pointer<VTablePointer> ppunkVal;
  external Pointer<VTablePointer> ppdispVal;
  external Pointer<Pointer<SAFEARRAY>> pparray;
  external Pointer<PROPVARIANT> pvarVal;

  @pragma('vm:prefer-inline')
  bool get boolVal => _boolVal != FALSE;

  @pragma('vm:prefer-inline')
  set boolVal(bool value) => _boolVal = value ? VARIANT_TRUE : FALSE;

  @pragma('vm:prefer-inline')
  IUnknown? get punkVal =>
      _punkVal.isNull ? null : (IUnknown(_punkVal)..addRef());

  @pragma('vm:prefer-inline')
  set punkVal(IUnknown? value) => _punkVal = value?.ptr ?? nullptr;

  @pragma('vm:prefer-inline')
  IDispatch? get pdispVal =>
      _pdispVal.isNull ? null : (IDispatch(_pdispVal)..addRef());

  @pragma('vm:prefer-inline')
  set pdispVal(IDispatch? value) => _pdispVal = value?.ptr ?? nullptr;

  @pragma('vm:prefer-inline')
  IStream? get pStream =>
      _pStream.isNull ? null : (IStream(_pStream)..addRef());

  @pragma('vm:prefer-inline')
  set pStream(IStream? value) => _pStream = value?.ptr ?? nullptr;

  @pragma('vm:prefer-inline')
  IStorage? get pStorage =>
      _pStorage.isNull ? null : (IStorage(_pStorage)..addRef());

  @pragma('vm:prefer-inline')
  set pStorage(IStorage? value) => _pStorage = value?.ptr ?? nullptr;
}

extension PROPVARIANT_0_0_0_Extension on PROPVARIANT {
  @pragma('vm:prefer-inline')
  int get cVal => this.Anonymous.Anonymous.Anonymous.cVal;

  @pragma('vm:prefer-inline')
  set cVal(int value) => this.Anonymous.Anonymous.Anonymous.cVal = value;

  @pragma('vm:prefer-inline')
  int get bVal => this.Anonymous.Anonymous.Anonymous.bVal;

  @pragma('vm:prefer-inline')
  set bVal(int value) => this.Anonymous.Anonymous.Anonymous.bVal = value;

  @pragma('vm:prefer-inline')
  int get iVal => this.Anonymous.Anonymous.Anonymous.iVal;

  @pragma('vm:prefer-inline')
  set iVal(int value) => this.Anonymous.Anonymous.Anonymous.iVal = value;

  @pragma('vm:prefer-inline')
  int get uiVal => this.Anonymous.Anonymous.Anonymous.uiVal;

  @pragma('vm:prefer-inline')
  set uiVal(int value) => this.Anonymous.Anonymous.Anonymous.uiVal = value;

  @pragma('vm:prefer-inline')
  int get lVal => this.Anonymous.Anonymous.Anonymous.lVal;

  @pragma('vm:prefer-inline')
  set lVal(int value) => this.Anonymous.Anonymous.Anonymous.lVal = value;

  @pragma('vm:prefer-inline')
  int get ulVal => this.Anonymous.Anonymous.Anonymous.ulVal;

  @pragma('vm:prefer-inline')
  set ulVal(int value) => this.Anonymous.Anonymous.Anonymous.ulVal = value;

  @pragma('vm:prefer-inline')
  int get intVal => this.Anonymous.Anonymous.Anonymous.intVal;

  @pragma('vm:prefer-inline')
  set intVal(int value) => this.Anonymous.Anonymous.Anonymous.intVal = value;

  @pragma('vm:prefer-inline')
  int get uintVal => this.Anonymous.Anonymous.Anonymous.uintVal;

  @pragma('vm:prefer-inline')
  set uintVal(int value) => this.Anonymous.Anonymous.Anonymous.uintVal = value;

  @pragma('vm:prefer-inline')
  int get hVal => this.Anonymous.Anonymous.Anonymous.hVal;

  @pragma('vm:prefer-inline')
  set hVal(int value) => this.Anonymous.Anonymous.Anonymous.hVal = value;

  @pragma('vm:prefer-inline')
  int get uhVal => this.Anonymous.Anonymous.Anonymous.uhVal;

  @pragma('vm:prefer-inline')
  set uhVal(int value) => this.Anonymous.Anonymous.Anonymous.uhVal = value;

  @pragma('vm:prefer-inline')
  double get fltVal => this.Anonymous.Anonymous.Anonymous.fltVal;

  @pragma('vm:prefer-inline')
  set fltVal(double value) => this.Anonymous.Anonymous.Anonymous.fltVal = value;

  @pragma('vm:prefer-inline')
  double get dblVal => this.Anonymous.Anonymous.Anonymous.dblVal;

  @pragma('vm:prefer-inline')
  set dblVal(double value) => this.Anonymous.Anonymous.Anonymous.dblVal = value;

  @pragma('vm:prefer-inline')
  bool get boolVal => this.Anonymous.Anonymous.Anonymous.boolVal;

  @pragma('vm:prefer-inline')
  set boolVal(bool value) => this.Anonymous.Anonymous.Anonymous.boolVal = value;

  @pragma('vm:prefer-inline')
  int get scode => this.Anonymous.Anonymous.Anonymous.scode;

  @pragma('vm:prefer-inline')
  set scode(int value) => this.Anonymous.Anonymous.Anonymous.scode = value;

  @pragma('vm:prefer-inline')
  CY get cyVal => this.Anonymous.Anonymous.Anonymous.cyVal;

  @pragma('vm:prefer-inline')
  set cyVal(CY value) => this.Anonymous.Anonymous.Anonymous.cyVal = value;

  @pragma('vm:prefer-inline')
  double get date => this.Anonymous.Anonymous.Anonymous.date;

  @pragma('vm:prefer-inline')
  set date(double value) => this.Anonymous.Anonymous.Anonymous.date = value;

  @pragma('vm:prefer-inline')
  FILETIME get filetime => this.Anonymous.Anonymous.Anonymous.filetime;

  @pragma('vm:prefer-inline')
  set filetime(FILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.filetime = value;

  @pragma('vm:prefer-inline')
  Pointer<GUID> get puuid => this.Anonymous.Anonymous.Anonymous.puuid;

  @pragma('vm:prefer-inline')
  set puuid(Pointer<GUID> value) =>
      this.Anonymous.Anonymous.Anonymous.puuid = value;

  @pragma('vm:prefer-inline')
  Pointer<CLIPDATA> get pclipdata =>
      this.Anonymous.Anonymous.Anonymous.pclipdata;

  @pragma('vm:prefer-inline')
  set pclipdata(Pointer<CLIPDATA> value) =>
      this.Anonymous.Anonymous.Anonymous.pclipdata = value;

  @pragma('vm:prefer-inline')
  BSTR get bstrVal => this.Anonymous.Anonymous.Anonymous.bstrVal;

  @pragma('vm:prefer-inline')
  set bstrVal(BSTR value) => this.Anonymous.Anonymous.Anonymous.bstrVal = value;

  @pragma('vm:prefer-inline')
  BSTRBLOB get bstrblobVal => this.Anonymous.Anonymous.Anonymous.bstrblobVal;

  @pragma('vm:prefer-inline')
  set bstrblobVal(BSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.bstrblobVal = value;

  @pragma('vm:prefer-inline')
  BLOB get blob => this.Anonymous.Anonymous.Anonymous.blob;

  @pragma('vm:prefer-inline')
  set blob(BLOB value) => this.Anonymous.Anonymous.Anonymous.blob = value;

  @pragma('vm:prefer-inline')
  PSTR get pszVal => this.Anonymous.Anonymous.Anonymous.pszVal;

  @pragma('vm:prefer-inline')
  set pszVal(PSTR value) => this.Anonymous.Anonymous.Anonymous.pszVal = value;

  @pragma('vm:prefer-inline')
  PWSTR get pwszVal => this.Anonymous.Anonymous.Anonymous.pwszVal;

  @pragma('vm:prefer-inline')
  set pwszVal(PWSTR value) =>
      this.Anonymous.Anonymous.Anonymous.pwszVal = value;

  @pragma('vm:prefer-inline')
  IUnknown? get punkVal => this.Anonymous.Anonymous.Anonymous.punkVal;

  @pragma('vm:prefer-inline')
  set punkVal(IUnknown? value) =>
      this.Anonymous.Anonymous.Anonymous.punkVal = value;

  @pragma('vm:prefer-inline')
  IDispatch? get pdispVal => this.Anonymous.Anonymous.Anonymous.pdispVal;

  @pragma('vm:prefer-inline')
  set pdispVal(IDispatch? value) =>
      this.Anonymous.Anonymous.Anonymous.pdispVal = value;

  @pragma('vm:prefer-inline')
  IStream? get pStream => this.Anonymous.Anonymous.Anonymous.pStream;

  @pragma('vm:prefer-inline')
  set pStream(IStream? value) =>
      this.Anonymous.Anonymous.Anonymous.pStream = value;

  @pragma('vm:prefer-inline')
  IStorage? get pStorage => this.Anonymous.Anonymous.Anonymous.pStorage;

  @pragma('vm:prefer-inline')
  set pStorage(IStorage? value) =>
      this.Anonymous.Anonymous.Anonymous.pStorage = value;

  @pragma('vm:prefer-inline')
  Pointer<VERSIONEDSTREAM> get pVersionedStream =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream;

  @pragma('vm:prefer-inline')
  set pVersionedStream(Pointer<VERSIONEDSTREAM> value) =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream = value;

  @pragma('vm:prefer-inline')
  Pointer<SAFEARRAY> get parray => this.Anonymous.Anonymous.Anonymous.parray;

  @pragma('vm:prefer-inline')
  set parray(Pointer<SAFEARRAY> value) =>
      this.Anonymous.Anonymous.Anonymous.parray = value;

  @pragma('vm:prefer-inline')
  CAC get cac => this.Anonymous.Anonymous.Anonymous.cac;

  @pragma('vm:prefer-inline')
  set cac(CAC value) => this.Anonymous.Anonymous.Anonymous.cac = value;

  @pragma('vm:prefer-inline')
  CAUB get caub => this.Anonymous.Anonymous.Anonymous.caub;

  @pragma('vm:prefer-inline')
  set caub(CAUB value) => this.Anonymous.Anonymous.Anonymous.caub = value;

  @pragma('vm:prefer-inline')
  CAI get cai => this.Anonymous.Anonymous.Anonymous.cai;

  @pragma('vm:prefer-inline')
  set cai(CAI value) => this.Anonymous.Anonymous.Anonymous.cai = value;

  @pragma('vm:prefer-inline')
  CAUI get caui => this.Anonymous.Anonymous.Anonymous.caui;

  @pragma('vm:prefer-inline')
  set caui(CAUI value) => this.Anonymous.Anonymous.Anonymous.caui = value;

  @pragma('vm:prefer-inline')
  CAL get cal => this.Anonymous.Anonymous.Anonymous.cal;

  @pragma('vm:prefer-inline')
  set cal(CAL value) => this.Anonymous.Anonymous.Anonymous.cal = value;

  @pragma('vm:prefer-inline')
  CAUL get caul => this.Anonymous.Anonymous.Anonymous.caul;

  @pragma('vm:prefer-inline')
  set caul(CAUL value) => this.Anonymous.Anonymous.Anonymous.caul = value;

  @pragma('vm:prefer-inline')
  CAH get cah => this.Anonymous.Anonymous.Anonymous.cah;

  @pragma('vm:prefer-inline')
  set cah(CAH value) => this.Anonymous.Anonymous.Anonymous.cah = value;

  @pragma('vm:prefer-inline')
  CAUH get cauh => this.Anonymous.Anonymous.Anonymous.cauh;

  @pragma('vm:prefer-inline')
  set cauh(CAUH value) => this.Anonymous.Anonymous.Anonymous.cauh = value;

  @pragma('vm:prefer-inline')
  CAFLT get caflt => this.Anonymous.Anonymous.Anonymous.caflt;

  @pragma('vm:prefer-inline')
  set caflt(CAFLT value) => this.Anonymous.Anonymous.Anonymous.caflt = value;

  @pragma('vm:prefer-inline')
  CADBL get cadbl => this.Anonymous.Anonymous.Anonymous.cadbl;

  @pragma('vm:prefer-inline')
  set cadbl(CADBL value) => this.Anonymous.Anonymous.Anonymous.cadbl = value;

  @pragma('vm:prefer-inline')
  CABOOL get cabool => this.Anonymous.Anonymous.Anonymous.cabool;

  @pragma('vm:prefer-inline')
  set cabool(CABOOL value) => this.Anonymous.Anonymous.Anonymous.cabool = value;

  @pragma('vm:prefer-inline')
  CASCODE get cascode => this.Anonymous.Anonymous.Anonymous.cascode;

  @pragma('vm:prefer-inline')
  set cascode(CASCODE value) =>
      this.Anonymous.Anonymous.Anonymous.cascode = value;

  @pragma('vm:prefer-inline')
  CACY get cacy => this.Anonymous.Anonymous.Anonymous.cacy;

  @pragma('vm:prefer-inline')
  set cacy(CACY value) => this.Anonymous.Anonymous.Anonymous.cacy = value;

  @pragma('vm:prefer-inline')
  CADATE get cadate => this.Anonymous.Anonymous.Anonymous.cadate;

  @pragma('vm:prefer-inline')
  set cadate(CADATE value) => this.Anonymous.Anonymous.Anonymous.cadate = value;

  @pragma('vm:prefer-inline')
  CAFILETIME get cafiletime => this.Anonymous.Anonymous.Anonymous.cafiletime;

  @pragma('vm:prefer-inline')
  set cafiletime(CAFILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.cafiletime = value;

  @pragma('vm:prefer-inline')
  CACLSID get cauuid => this.Anonymous.Anonymous.Anonymous.cauuid;

  @pragma('vm:prefer-inline')
  set cauuid(CACLSID value) =>
      this.Anonymous.Anonymous.Anonymous.cauuid = value;

  @pragma('vm:prefer-inline')
  CACLIPDATA get caclipdata => this.Anonymous.Anonymous.Anonymous.caclipdata;

  @pragma('vm:prefer-inline')
  set caclipdata(CACLIPDATA value) =>
      this.Anonymous.Anonymous.Anonymous.caclipdata = value;

  @pragma('vm:prefer-inline')
  CABSTR get cabstr => this.Anonymous.Anonymous.Anonymous.cabstr;

  @pragma('vm:prefer-inline')
  set cabstr(CABSTR value) => this.Anonymous.Anonymous.Anonymous.cabstr = value;

  @pragma('vm:prefer-inline')
  CABSTRBLOB get cabstrblob => this.Anonymous.Anonymous.Anonymous.cabstrblob;

  @pragma('vm:prefer-inline')
  set cabstrblob(CABSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.cabstrblob = value;

  @pragma('vm:prefer-inline')
  CALPSTR get calpstr => this.Anonymous.Anonymous.Anonymous.calpstr;

  @pragma('vm:prefer-inline')
  set calpstr(CALPSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpstr = value;

  @pragma('vm:prefer-inline')
  CALPWSTR get calpwstr => this.Anonymous.Anonymous.Anonymous.calpwstr;

  @pragma('vm:prefer-inline')
  set calpwstr(CALPWSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpwstr = value;

  @pragma('vm:prefer-inline')
  CAPROPVARIANT get capropvar => this.Anonymous.Anonymous.Anonymous.capropvar;

  @pragma('vm:prefer-inline')
  set capropvar(CAPROPVARIANT value) =>
      this.Anonymous.Anonymous.Anonymous.capropvar = value;

  @pragma('vm:prefer-inline')
  PSTR get pcVal => this.Anonymous.Anonymous.Anonymous.pcVal;

  @pragma('vm:prefer-inline')
  set pcVal(PSTR value) => this.Anonymous.Anonymous.Anonymous.pcVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint8> get pbVal => this.Anonymous.Anonymous.Anonymous.pbVal;

  @pragma('vm:prefer-inline')
  set pbVal(Pointer<Uint8> value) =>
      this.Anonymous.Anonymous.Anonymous.pbVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int16> get piVal => this.Anonymous.Anonymous.Anonymous.piVal;

  @pragma('vm:prefer-inline')
  set piVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.piVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint16> get puiVal => this.Anonymous.Anonymous.Anonymous.puiVal;

  @pragma('vm:prefer-inline')
  set puiVal(Pointer<Uint16> value) =>
      this.Anonymous.Anonymous.Anonymous.puiVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get plVal => this.Anonymous.Anonymous.Anonymous.plVal;

  @pragma('vm:prefer-inline')
  set plVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.plVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get pulVal => this.Anonymous.Anonymous.Anonymous.pulVal;

  @pragma('vm:prefer-inline')
  set pulVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.pulVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get pintVal => this.Anonymous.Anonymous.Anonymous.pintVal;

  @pragma('vm:prefer-inline')
  set pintVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pintVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get puintVal => this.Anonymous.Anonymous.Anonymous.puintVal;

  @pragma('vm:prefer-inline')
  set puintVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.puintVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Float> get pfltVal => this.Anonymous.Anonymous.Anonymous.pfltVal;

  @pragma('vm:prefer-inline')
  set pfltVal(Pointer<Float> value) =>
      this.Anonymous.Anonymous.Anonymous.pfltVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Double> get pdblVal => this.Anonymous.Anonymous.Anonymous.pdblVal;

  @pragma('vm:prefer-inline')
  set pdblVal(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdblVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VARIANT_BOOL> get pboolVal =>
      this.Anonymous.Anonymous.Anonymous.pboolVal;

  @pragma('vm:prefer-inline')
  set pboolVal(Pointer<VARIANT_BOOL> value) =>
      this.Anonymous.Anonymous.Anonymous.pboolVal = value;

  @pragma('vm:prefer-inline')
  Pointer<DECIMAL> get pdecVal => this.Anonymous.Anonymous.Anonymous.pdecVal;

  @pragma('vm:prefer-inline')
  set pdecVal(Pointer<DECIMAL> value) =>
      this.Anonymous.Anonymous.Anonymous.pdecVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get pscode => this.Anonymous.Anonymous.Anonymous.pscode;

  @pragma('vm:prefer-inline')
  set pscode(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pscode = value;

  @pragma('vm:prefer-inline')
  Pointer<CY> get pcyVal => this.Anonymous.Anonymous.Anonymous.pcyVal;

  @pragma('vm:prefer-inline')
  set pcyVal(Pointer<CY> value) =>
      this.Anonymous.Anonymous.Anonymous.pcyVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Double> get pdate => this.Anonymous.Anonymous.Anonymous.pdate;

  @pragma('vm:prefer-inline')
  set pdate(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdate = value;

  @pragma('vm:prefer-inline')
  Pointer<BSTR> get pbstrVal => this.Anonymous.Anonymous.Anonymous.pbstrVal;

  @pragma('vm:prefer-inline')
  set pbstrVal(Pointer<BSTR> value) =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get ppunkVal =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal;

  @pragma('vm:prefer-inline')
  set ppunkVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get ppdispVal =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal;

  @pragma('vm:prefer-inline')
  set ppdispVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Pointer<SAFEARRAY>> get pparray =>
      this.Anonymous.Anonymous.Anonymous.pparray;

  @pragma('vm:prefer-inline')
  set pparray(Pointer<Pointer<SAFEARRAY>> value) =>
      this.Anonymous.Anonymous.Anonymous.pparray = value;

  @pragma('vm:prefer-inline')
  Pointer<PROPVARIANT> get pvarVal =>
      this.Anonymous.Anonymous.Anonymous.pvarVal;

  @pragma('vm:prefer-inline')
  set pvarVal(Pointer<PROPVARIANT> value) =>
      this.Anonymous.Anonymous.Anonymous.pvarVal = value;
}

/// Contains the name and protocol numbers that correspond to a given protocol
/// name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-protoent>.
///
/// {@category struct}
base class PROTOENT extends Struct {
  /// Official name of the protocol.
  external PSTR p_name;

  /// Null-terminated array of alternate names.
  external Pointer<Pointer<Int8>> p_aliases;

  /// Protocol number, in host byte order.
  @Int16()
  external int p_proto;
}

/// Invalid handle values are: `-1`, `0`.
typedef PSECURITY_DESCRIPTOR = IntPtr;

typedef PSID = IntPtr;

/// A pointer to a null-terminated string of 8-bit Windows (ANSI) characters.
typedef PSTR = Pointer<Utf8>;

/// A pointer to a null-terminated string of 16-bit Unicode characters.
typedef PWSTR = Pointer<Utf16>;

final PortableDeviceKeyCollection = Guid.fromComponents(
  0xde2d022d,
  0x2480,
  0x43be,
  Uint8List.fromList(const [0x97, 0xf0, 0xd1, 0xfa, 0x2c, 0xf9, 0x8f, 0x4f]),
);

final PortableDevicePropVariantCollection = Guid.fromComponents(
  0x8a99e2f,
  0x6d6d,
  0x4b80,
  Uint8List.fromList(const [0xaf, 0x5a, 0xba, 0xf2, 0xbc, 0xbe, 0x4c, 0xb9]),
);

final PortableDeviceValues = Guid.fromComponents(
  0xc15d503,
  0xd017,
  0x47ce,
  Uint8List.fromList(const [0x90, 0x16, 0x7b, 0x3f, 0x97, 0x87, 0x21, 0xcc]),
);

final PortableDeviceValuesCollection = Guid.fromComponents(
  0x3882134d,
  0x14cf,
  0x4220,
  Uint8List.fromList(const [0x9c, 0xb4, 0x43, 0x5f, 0x86, 0xd8, 0x3f, 0x60]),
);

/// Contains configuration information for an installed service.
///
/// It is used by the QueryServiceConfig function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-query_service_configw>.
///
/// {@category struct}
base class QUERY_SERVICE_CONFIG extends Struct {
  @Uint32()
  external int _dwServiceType;

  @Uint32()
  external int _dwStartType;

  @Uint32()
  external int _dwErrorControl;

  /// The fully qualified path to the service binary file.
  external PWSTR lpBinaryPathName;

  /// The name of the load ordering group to which this service belongs.
  external PWSTR lpLoadOrderGroup;

  /// A unique tag value for this service in the group specified by the
  /// <i>lpLoadOrderGroup</i> parameter.
  @Uint32()
  external int dwTagId;

  /// A pointer to an array of null-separated names of services or load ordering
  /// groups that must start before this service.
  external PWSTR lpDependencies;

  /// If the service type is <b>SERVICE_WIN32_OWN_PROCESS</b> or
  /// <b>SERVICE_WIN32_SHARE_PROCESS</b>, this member is the name of the account
  /// that the service process will be logged on as when it runs.
  external PWSTR lpServiceStartName;

  /// The display name to be used by service control programs to identify the
  /// service.
  external PWSTR lpDisplayName;

  @pragma('vm:prefer-inline')
  ENUM_SERVICE_TYPE get dwServiceType => ENUM_SERVICE_TYPE(_dwServiceType);

  @pragma('vm:prefer-inline')
  set dwServiceType(ENUM_SERVICE_TYPE value) => _dwServiceType = value;

  @pragma('vm:prefer-inline')
  SERVICE_START_TYPE get dwStartType => SERVICE_START_TYPE(_dwStartType);

  @pragma('vm:prefer-inline')
  set dwStartType(SERVICE_START_TYPE value) => _dwStartType = value;

  @pragma('vm:prefer-inline')
  SERVICE_ERROR get dwErrorControl => SERVICE_ERROR(_dwErrorControl);

  @pragma('vm:prefer-inline')
  set dwErrorControl(SERVICE_ERROR value) => _dwErrorControl = value;
}

/// Contains information about the lock status of a service control manager
/// database.
///
/// It is used by the QueryServiceLockStatus function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-query_service_lock_statusw>.
///
/// {@category struct}
base class QUERY_SERVICE_LOCK_STATUS extends Struct {
  /// The lock status of the database.
  @Uint32()
  external int fIsLocked;

  /// The name of the user who acquired the lock.
  external PWSTR lpLockOwner;

  /// The time since the lock was first acquired, in seconds.
  @Uint32()
  external int dwLockDuration;
}

/// Describes the format of the raw input from a Human Interface Device (HID).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawhid>.
///
/// {@category struct}
base class RAWHID extends Struct {
  /// The size, in bytes, of each HID input in <b>bRawData</b>.
  @Uint32()
  external int dwSizeHid;

  /// The number of HID inputs in <b>bRawData</b>.
  @Uint32()
  external int dwCount;

  /// The raw input data, as an array of bytes.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> bRawData;
}

/// Contains the raw input from a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinput>.
///
/// {@category struct}
base class RAWINPUT extends Struct {
  /// The raw input data.
  external RAWINPUTHEADER header;

  external RAWINPUT_0 data;
}

/// {@category union}
sealed class RAWINPUT_0 extends Union {
  external RAWMOUSE mouse;
  external RAWKEYBOARD keyboard;
  external RAWHID hid;
}

extension RAWINPUT_0_Extension on RAWINPUT {
  @pragma('vm:prefer-inline')
  RAWMOUSE get mouse => this.data.mouse;

  @pragma('vm:prefer-inline')
  set mouse(RAWMOUSE value) => this.data.mouse = value;

  @pragma('vm:prefer-inline')
  RAWKEYBOARD get keyboard => this.data.keyboard;

  @pragma('vm:prefer-inline')
  set keyboard(RAWKEYBOARD value) => this.data.keyboard = value;

  @pragma('vm:prefer-inline')
  RAWHID get hid => this.data.hid;

  @pragma('vm:prefer-inline')
  set hid(RAWHID value) => this.data.hid = value;
}

/// Defines information for the raw input devices.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinputdevice>.
///
/// {@category struct}
base class RAWINPUTDEVICE extends Struct {
  /// `Top level collection` `Usage page` for the raw input device.
  @Uint16()
  external int usUsagePage;

  /// `Top level collection` `Usage ID` for the raw input device.
  @Uint16()
  external int usUsage;

  @Uint32()
  external int _dwFlags;

  /// A handle to the target window.
  @IntPtr()
  external int hwndTarget;

  @pragma('vm:prefer-inline')
  RAWINPUTDEVICE_FLAGS get dwFlags => RAWINPUTDEVICE_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(RAWINPUTDEVICE_FLAGS value) => _dwFlags = value;
}

/// Contains information about a raw input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinputdevicelist>.
///
/// {@category struct}
base class RAWINPUTDEVICELIST extends Struct {
  /// A handle to the raw input device.
  @IntPtr()
  external int hDevice;

  @Uint32()
  external int _dwType;

  @pragma('vm:prefer-inline')
  RID_DEVICE_INFO_TYPE get dwType => RID_DEVICE_INFO_TYPE(_dwType);

  @pragma('vm:prefer-inline')
  set dwType(RID_DEVICE_INFO_TYPE value) => _dwType = value;
}

/// Contains the header information that is part of the raw input data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinputheader>.
///
/// {@category struct}
base class RAWINPUTHEADER extends Struct {
  @Uint32()
  external int dwType;

  /// The size, in bytes, of the entire input packet of data.
  @Uint32()
  external int dwSize;

  /// A handle to the device generating the raw input data.
  @IntPtr()
  external int hDevice;

  /// The value passed in the <i>wParam</i> parameter of the `WM_INPUT` message.
  @IntPtr()
  external int wParam;
}

/// Contains information about the state of the keyboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawkeyboard>.
///
/// {@category struct}
base class RAWKEYBOARD extends Struct {
  /// Specifies the scan code associated with a key press.
  @Uint16()
  external int MakeCode;

  /// Flags for scan code information.
  @Uint16()
  external int Flags;

  @Uint16()
  external int _Reserved;

  /// The corresponding `legacy virtual-key code`.
  @Uint16()
  external int VKey;

  /// The corresponding `legacy keyboard window message`, for example
  /// `WM_KEYDOWN`, `WM_SYSKEYDOWN`, and so forth.
  @Uint32()
  external int Message;

  /// The device-specific additional information for the event.
  @Uint32()
  external int ExtraInformation;
}

/// Contains information about the state of the mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawmouse>.
///
/// {@category struct}
base class RAWMOUSE extends Struct {
  @Uint16()
  external int _usFlags;

  external RAWMOUSE_0 Anonymous;

  /// The raw state of the mouse buttons.
  @Uint32()
  external int ulRawButtons;

  /// The motion in the X direction.
  @Int32()
  external int lLastX;

  /// The motion in the Y direction.
  @Int32()
  external int lLastY;

  /// The device-specific additional information for the event.
  @Uint32()
  external int ulExtraInformation;

  /// The mouse state.
  @pragma('vm:prefer-inline')
  MOUSE_STATE get usFlags => MOUSE_STATE(_usFlags);

  @pragma('vm:prefer-inline')
  set usFlags(MOUSE_STATE value) => _usFlags = value;
}

/// {@category union}
sealed class RAWMOUSE_0 extends Union {
  @Uint32()
  external int ulButtons;

  external RAWMOUSE_0_0 Anonymous;
}

extension RAWMOUSE_0_Extension on RAWMOUSE {
  @pragma('vm:prefer-inline')
  int get ulButtons => this.Anonymous.ulButtons;

  @pragma('vm:prefer-inline')
  set ulButtons(int value) => this.Anonymous.ulButtons = value;

  @pragma('vm:prefer-inline')
  RAWMOUSE_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(RAWMOUSE_0_0 value) => this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class RAWMOUSE_0_0 extends Struct {
  @Uint16()
  external int usButtonFlags;

  @Uint16()
  external int usButtonData;
}

extension RAWMOUSE_0_0_Extension on RAWMOUSE {
  @pragma('vm:prefer-inline')
  int get usButtonFlags => this.Anonymous.Anonymous.usButtonFlags;

  @pragma('vm:prefer-inline')
  set usButtonFlags(int value) =>
      this.Anonymous.Anonymous.usButtonFlags = value;

  @pragma('vm:prefer-inline')
  int get usButtonData => this.Anonymous.Anonymous.usButtonData;

  @pragma('vm:prefer-inline')
  set usButtonData(int value) => this.Anonymous.Anonymous.usButtonData = value;
}

/// Defines a rectangle by the coordinates of its upper-left and lower-right
/// corners.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-rect>.
///
/// {@category struct}
base class RECT extends Struct {
  /// Specifies the <i>x</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int left;

  /// Specifies the <i>y</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int top;

  /// Specifies the <i>x</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int right;

  /// Specifies the <i>y</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int bottom;
}

/// Defines a rectangle by the coordinates of its upper-left and lower-right
/// corners.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-rectl>.
///
/// {@category struct}
base class RECTL extends Struct {
  /// Specifies the <i>x</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int left;

  /// Specifies the <i>y</i>-coordinate of the upper-left corner of the
  /// rectangle.
  @Int32()
  external int top;

  /// Specifies the <i>x</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int right;

  /// Specifies the <i>y</i>-coordinate of the lower-right corner of the
  /// rectangle.
  @Int32()
  external int bottom;
}

/// Describes a color consisting of relative intensities of red, green, and
/// blue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-rgbquad>.
///
/// {@category struct}
base class RGBQUAD extends Struct {
  /// The intensity of blue in the color.
  @Uint8()
  external int rgbBlue;

  /// The intensity of green in the color.
  @Uint8()
  external int rgbGreen;

  /// The intensity of red in the color.
  @Uint8()
  external int rgbRed;

  @Uint8()
  external int _rgbReserved;
}

/// Represents a safe array.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-safearray>.
///
/// {@category struct}
base class SAFEARRAY extends Struct {
  /// The number of dimensions.
  @Uint16()
  external int cDims;

  @Uint16()
  external int _fFeatures;

  /// The size of an array element.
  @Uint32()
  external int cbElements;

  /// The number of times the array has been locked without a corresponding
  /// unlock.
  @Uint32()
  external int cLocks;

  /// The data.
  external Pointer pvData;

  /// One bound for each dimension.
  @Array.variableWithVariableDimension(1)
  external Array<SAFEARRAYBOUND> rgsabound;

  /// Flags.
  @pragma('vm:prefer-inline')
  ADVANCED_FEATURE_FLAGS get fFeatures => ADVANCED_FEATURE_FLAGS(_fFeatures);

  @pragma('vm:prefer-inline')
  set fFeatures(ADVANCED_FEATURE_FLAGS value) => _fFeatures = value;
}

/// Represents the bounds of one dimension of the array.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-safearraybound>.
///
/// {@category struct}
base class SAFEARRAYBOUND extends Struct {
  /// The number of elements in the dimension.
  @Uint32()
  external int cElements;

  /// The lower bound of the dimension.
  @Int32()
  external int lLbound;
}

/// Used by the SCardLocateCardsByATR function to locate cards.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-scard_atrmask>.
///
/// {@category struct}
base class SCARD_ATRMASK extends Struct {
  /// The number of bytes in the ATR and the mask.
  @Uint32()
  external int cbAtr;

  /// An array of <b>BYTE</b> values for the ATR of the card with extra
  /// alignment bytes.
  @Array(36)
  external Array<Uint8> rgbAtr;

  /// An array of <b>BYTE</b> values for the mask for the ATR with extra
  /// alignment bytes.
  @Array(36)
  external Array<Uint8> rgbMask;
}

/// Begins a protocol control information structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/SecAuthN/scard-io-request>.
///
/// {@category struct}
base class SCARD_IO_REQUEST extends Struct {
  /// Protocol in use.
  @Uint32()
  external int dwProtocol;

  /// Length, in bytes, of the **SCARD_IO_REQUEST** structure plus any following
  /// PCI-specific information.
  @Uint32()
  external int cbPciLength;
}

/// Used by functions for tracking smart cards within readers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-scard_readerstatew>.
///
/// {@category struct}
base class SCARD_READERSTATE extends Struct {
  /// A pointer to the name of the reader being monitored.
  external PWSTR szReader;

  external Pointer pvUserData;

  @Uint32()
  external int _dwCurrentState;

  @Uint32()
  external int _dwEventState;

  /// Number of bytes in the returned ATR.
  @Uint32()
  external int cbAtr;

  /// ATR of the inserted card, with extra alignment bytes.
  @Array(36)
  external Array<Uint8> rgbAtr;

  @pragma('vm:prefer-inline')
  SCARD_STATE get dwCurrentState => SCARD_STATE(_dwCurrentState);

  @pragma('vm:prefer-inline')
  set dwCurrentState(SCARD_STATE value) => _dwCurrentState = value;

  @pragma('vm:prefer-inline')
  SCARD_STATE get dwEventState => SCARD_STATE(_dwEventState);

  @pragma('vm:prefer-inline')
  set dwEventState(SCARD_STATE value) => _dwEventState = value;
}

/// Contains scroll bar information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-scrollbarinfo>.
///
/// {@category struct}
base class SCROLLBARINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Coordinates of the scroll bar as specified in a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/windef/ns-windef-rect">RECT</a>
  /// structure.
  external RECT rcScrollBar;

  /// Height or width of the thumb.
  @Int32()
  external int dxyLineButton;

  /// Position of the top or left of the thumb.
  @Int32()
  external int xyThumbTop;

  /// Position of the bottom or right of the thumb.
  @Int32()
  external int xyThumbBottom;

  @Int32()
  external int reserved;

  /// An array of <b>DWORD</b> elements.
  @Array(6)
  external Array<Uint32> rgstate;
}

/// Contains scroll bar parameters to be set by the SetScrollInfo function (or
/// SBM_SETSCROLLINFO message), or retrieved by the GetScrollInfo function (or
/// SBM_GETSCROLLINFO message).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-scrollinfo>.
///
/// {@category struct}
base class SCROLLINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _fMask;

  /// Specifies the minimum scrolling position.
  @Int32()
  external int nMin;

  /// Specifies the maximum scrolling position.
  @Int32()
  external int nMax;

  /// Specifies the page size, in device units.
  @Uint32()
  external int nPage;

  /// Specifies the position of the scroll box.
  @Int32()
  external int nPos;

  /// Specifies the immediate position of a scroll box that the user is
  /// dragging.
  @Int32()
  external int nTrackPos;

  @pragma('vm:prefer-inline')
  SCROLLINFO_MASK get fMask => SCROLLINFO_MASK(_fMask);

  @pragma('vm:prefer-inline')
  set fMask(SCROLLINFO_MASK value) => _fMask = value;
}

/// Represents an action that the service control manager can perform.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-sc_action>.
///
/// {@category struct}
base class SC_ACTION extends Struct {
  @Int32()
  external int _Type;

  /// The time to wait before performing the specified action, in milliseconds.
  @Uint32()
  external int Delay;

  @pragma('vm:prefer-inline')
  SC_ACTION_TYPE get Type => SC_ACTION_TYPE(_Type);

  @pragma('vm:prefer-inline')
  set Type(SC_ACTION_TYPE value) => _Type = value;
}

/// The handle must be released using the `CloseServiceHandle` function.
///
/// Invalid handle values are: `-1`, `0`.
typedef SC_HANDLE = IntPtr;

/// Stores SDP element data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-sdp_element_data>.
///
/// {@category struct}
base class SDP_ELEMENT_DATA extends Struct {
  @Int32()
  external int _type;

  @Int32()
  external int _specificType;

  external SDP_ELEMENT_DATA_0 data;

  /// Enumeration of SDP element types.
  @pragma('vm:prefer-inline')
  SDP_TYPE get type => SDP_TYPE(_type);

  @pragma('vm:prefer-inline')
  set type(SDP_TYPE value) => _type = value;

  /// Specific type of SDP element, used to further specify generic element
  /// types.
  @pragma('vm:prefer-inline')
  SDP_SPECIFICTYPE get specificType => SDP_SPECIFICTYPE(_specificType);

  @pragma('vm:prefer-inline')
  set specificType(SDP_SPECIFICTYPE value) => _specificType = value;
}

/// {@category union}
sealed class SDP_ELEMENT_DATA_0 extends Union {
  external SDP_LARGE_INTEGER_16 int128;

  @Int64()
  external int int64;

  @Int32()
  external int int32;

  @Int16()
  external int int16;

  @Int8()
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

  external SDP_ELEMENT_DATA_0_0 string;
  external SDP_ELEMENT_DATA_0_1 url;
  external SDP_ELEMENT_DATA_0_2 sequence;
  external SDP_ELEMENT_DATA_0_3 alternative;
}

extension SDP_ELEMENT_DATA_0_Extension on SDP_ELEMENT_DATA {
  @pragma('vm:prefer-inline')
  SDP_LARGE_INTEGER_16 get int128 => this.data.int128;

  @pragma('vm:prefer-inline')
  set int128(SDP_LARGE_INTEGER_16 value) => this.data.int128 = value;

  @pragma('vm:prefer-inline')
  int get int64 => this.data.int64;

  @pragma('vm:prefer-inline')
  set int64(int value) => this.data.int64 = value;

  @pragma('vm:prefer-inline')
  int get int32 => this.data.int32;

  @pragma('vm:prefer-inline')
  set int32(int value) => this.data.int32 = value;

  @pragma('vm:prefer-inline')
  int get int16 => this.data.int16;

  @pragma('vm:prefer-inline')
  set int16(int value) => this.data.int16 = value;

  @pragma('vm:prefer-inline')
  int get int8 => this.data.int8;

  @pragma('vm:prefer-inline')
  set int8(int value) => this.data.int8 = value;

  @pragma('vm:prefer-inline')
  SDP_ULARGE_INTEGER_16 get uint128 => this.data.uint128;

  @pragma('vm:prefer-inline')
  set uint128(SDP_ULARGE_INTEGER_16 value) => this.data.uint128 = value;

  @pragma('vm:prefer-inline')
  int get uint64 => this.data.uint64;

  @pragma('vm:prefer-inline')
  set uint64(int value) => this.data.uint64 = value;

  @pragma('vm:prefer-inline')
  int get uint32 => this.data.uint32;

  @pragma('vm:prefer-inline')
  set uint32(int value) => this.data.uint32 = value;

  @pragma('vm:prefer-inline')
  int get uint16 => this.data.uint16;

  @pragma('vm:prefer-inline')
  set uint16(int value) => this.data.uint16 = value;

  @pragma('vm:prefer-inline')
  int get uint8 => this.data.uint8;

  @pragma('vm:prefer-inline')
  set uint8(int value) => this.data.uint8 = value;

  @pragma('vm:prefer-inline')
  int get booleanVal => this.data.booleanVal;

  @pragma('vm:prefer-inline')
  set booleanVal(int value) => this.data.booleanVal = value;

  @pragma('vm:prefer-inline')
  GUID get uuid128 => this.data.uuid128;

  @pragma('vm:prefer-inline')
  set uuid128(GUID value) => this.data.uuid128 = value;

  @pragma('vm:prefer-inline')
  int get uuid32 => this.data.uuid32;

  @pragma('vm:prefer-inline')
  set uuid32(int value) => this.data.uuid32 = value;

  @pragma('vm:prefer-inline')
  int get uuid16 => this.data.uuid16;

  @pragma('vm:prefer-inline')
  set uuid16(int value) => this.data.uuid16 = value;

  @pragma('vm:prefer-inline')
  SDP_ELEMENT_DATA_0_0 get string => this.data.string;

  @pragma('vm:prefer-inline')
  set string(SDP_ELEMENT_DATA_0_0 value) => this.data.string = value;

  @pragma('vm:prefer-inline')
  SDP_ELEMENT_DATA_0_1 get url => this.data.url;

  @pragma('vm:prefer-inline')
  set url(SDP_ELEMENT_DATA_0_1 value) => this.data.url = value;

  @pragma('vm:prefer-inline')
  SDP_ELEMENT_DATA_0_2 get sequence => this.data.sequence;

  @pragma('vm:prefer-inline')
  set sequence(SDP_ELEMENT_DATA_0_2 value) => this.data.sequence = value;

  @pragma('vm:prefer-inline')
  SDP_ELEMENT_DATA_0_3 get alternative => this.data.alternative;

  @pragma('vm:prefer-inline')
  set alternative(SDP_ELEMENT_DATA_0_3 value) => this.data.alternative = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_0 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_0_Extension on SDP_ELEMENT_DATA {
  @pragma('vm:prefer-inline')
  Pointer<Uint8> get value => this.data.string.value;

  @pragma('vm:prefer-inline')
  set value(Pointer<Uint8> value) => this.data.string.value = value;

  @pragma('vm:prefer-inline')
  int get length => this.data.string.length;

  @pragma('vm:prefer-inline')
  set length(int value) => this.data.string.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_1 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_1_Extension on SDP_ELEMENT_DATA {
  @pragma('vm:prefer-inline')
  Pointer<Uint8> get value => this.data.url.value;

  @pragma('vm:prefer-inline')
  set value(Pointer<Uint8> value) => this.data.url.value = value;

  @pragma('vm:prefer-inline')
  int get length => this.data.url.length;

  @pragma('vm:prefer-inline')
  set length(int value) => this.data.url.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_2 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_2_Extension on SDP_ELEMENT_DATA {
  @pragma('vm:prefer-inline')
  Pointer<Uint8> get value => this.data.sequence.value;

  @pragma('vm:prefer-inline')
  set value(Pointer<Uint8> value) => this.data.sequence.value = value;

  @pragma('vm:prefer-inline')
  int get length => this.data.sequence.length;

  @pragma('vm:prefer-inline')
  set length(int value) => this.data.sequence.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_3 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA_0_3_Extension on SDP_ELEMENT_DATA {
  @pragma('vm:prefer-inline')
  Pointer<Uint8> get value => this.data.alternative.value;

  @pragma('vm:prefer-inline')
  set value(Pointer<Uint8> value) => this.data.alternative.value = value;

  @pragma('vm:prefer-inline')
  int get length => this.data.alternative.length;

  @pragma('vm:prefer-inline')
  set length(int value) => this.data.alternative.length = value;
}

/// {@category struct}
base class SDP_LARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

/// Stores information about SDP string types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ns-bluetoothapis-sdp_string_type_data>.
///
/// {@category struct}
base class SDP_STRING_TYPE_DATA extends Struct {
  /// Specifies how the string is encoded according to ISO 639:1988 (E/F): Code
  /// for the representation of the names of languages.
  @Uint16()
  external int encoding;

  /// MIBE number from the IANA database.
  @Uint16()
  external int mibeNum;

  /// Identifier of the base attribute in which the string is to be found in the
  /// record.
  @Uint16()
  external int attributeId;
}

/// {@category struct}
base class SDP_ULARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Uint64()
  external int HighPart;
}

/// Contains the security descriptor for an object and specifies whether the
/// handle retrieved by specifying this structure is inheritable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypesbase/ns-wtypesbase-security_attributes>.
///
/// {@category struct}
base class SECURITY_ATTRIBUTES extends Struct {
  /// The size, in bytes, of this structure.
  @Uint32()
  external int nLength;

  /// A pointer to a `SECURITY_DESCRIPTOR` structure that controls access to the
  /// object.
  external Pointer lpSecurityDescriptor;

  @Int32()
  external int _bInheritHandle;

  /// A Boolean value that specifies whether the returned handle is inherited
  /// when a new process is created.
  @pragma('vm:prefer-inline')
  bool get bInheritHandle => _bInheritHandle != FALSE;

  @pragma('vm:prefer-inline')
  set bInheritHandle(bool value) => _bInheritHandle = value ? TRUE : FALSE;
}

/// Contains the security information associated with an object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-security_descriptor>.
///
/// {@category struct}
base class SECURITY_DESCRIPTOR extends Struct {
  @Uint8()
  external int Revision;

  @Uint8()
  external int Sbz1;

  @Uint16()
  external int _Control;

  @IntPtr()
  external int Owner;

  @IntPtr()
  external int Group;

  external Pointer<ACL> Sacl;
  external Pointer<ACL> Dacl;

  @pragma('vm:prefer-inline')
  SECURITY_DESCRIPTOR_CONTROL get Control =>
      SECURITY_DESCRIPTOR_CONTROL(_Control);

  @pragma('vm:prefer-inline')
  set Control(SECURITY_DESCRIPTOR_CONTROL value) => _Control = value;
}

/// Used to store or return the name and service number for a given service
/// name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-servent>.
///
/// {@category struct}
base class SERVENT extends Struct {
  /// The official name of the service.
  external PSTR s_name;

  /// A <b>NULL</b>-terminated array of alternate names.
  external Pointer<Pointer<Int8>> s_aliases;

  /// The name of the protocol to use when contacting the service.
  external PSTR s_proto;

  /// The port number at which the service can be contacted.
  @Int16()
  external int s_port;
}

/// Contains service control parameters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_control_status_reason_paramsw>.
///
/// {@category struct}
base class SERVICE_CONTROL_STATUS_REASON_PARAMS extends Struct {
  /// The reason for changing the service status to SERVICE_CONTROL_STOP.
  @Uint32()
  external int dwReason;

  /// An optional string that provides additional information about the service
  /// stop.
  external PWSTR pszComment;

  /// A pointer to a `SERVICE_STATUS_PROCESS` structure that receives the latest
  /// service status information.
  external SERVICE_STATUS_PROCESS ServiceStatus;
}

/// Contains the delayed auto-start setting of an auto-start service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_delayed_auto_start_info>.
///
/// {@category struct}
base class SERVICE_DELAYED_AUTO_START_INFO extends Struct {
  @Int32()
  external int _fDelayedAutostart;

  /// If this member is [TRUE], the service is started after other auto-start
  /// services are started plus a short delay.
  @pragma('vm:prefer-inline')
  bool get fDelayedAutostart => _fDelayedAutostart != FALSE;

  @pragma('vm:prefer-inline')
  set fDelayedAutostart(bool value) =>
      _fDelayedAutostart = value ? TRUE : FALSE;
}

/// Contains a service description.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_descriptionw>.
///
/// {@category struct}
base class SERVICE_DESCRIPTION extends Struct {
  /// The description of the service.
  external PWSTR lpDescription;
}

/// Represents the action the service controller should take on each failure of
/// a service.
///
/// A service is considered failed when it terminates without reporting a status
/// of SERVICE_STOPPED to the service controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_failure_actionsw>.
///
/// {@category struct}
base class SERVICE_FAILURE_ACTIONS extends Struct {
  /// The time after which to reset the failure count to zero if there are no
  /// failures, in seconds.
  @Uint32()
  external int dwResetPeriod;

  /// The message to be broadcast to server users before rebooting in response
  /// to the <b>SC_ACTION_REBOOT</b> service controller action.
  external PWSTR lpRebootMsg;

  /// The command line of the process for the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/processthreadsapi/nf-processthreadsapi-createprocessa">CreateProcess</a>
  /// function to execute in response to the <b>SC_ACTION_RUN_COMMAND</b>
  /// service controller action.
  external PWSTR lpCommand;

  /// The number of elements in the <b>lpsaActions</b> array.
  @Uint32()
  external int cActions;

  /// A pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-sc_action">SC_ACTION</a>
  /// structures.
  external Pointer<SC_ACTION> lpsaActions;
}

/// Contains the failure actions flag setting of a service.
///
/// This setting determines when failure actions are to be executed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_failure_actions_flag>.
///
/// {@category struct}
base class SERVICE_FAILURE_ACTIONS_FLAG extends Struct {
  @Int32()
  external int _fFailureActionsOnNonCrashFailures;

  /// If this member is [TRUE] and the service has configured failure actions,
  /// the failure actions are queued if the service process terminates without
  /// reporting a status of SERVICE_STOPPED or if it enters the SERVICE_STOPPED
  /// state but the <b>dwWin32ExitCode</b> member of the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_status">SERVICE_STATUS</a>
  /// structure is not ERROR_SUCCESS (0).
  @pragma('vm:prefer-inline')
  bool get fFailureActionsOnNonCrashFailures =>
      _fFailureActionsOnNonCrashFailures != FALSE;

  @pragma('vm:prefer-inline')
  set fFailureActionsOnNonCrashFailures(bool value) =>
      _fFailureActionsOnNonCrashFailures = value ? TRUE : FALSE;
}

/// Indicates a service protection type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_launch_protected_info>.
///
/// {@category struct}
base class SERVICE_LAUNCH_PROTECTED_INFO extends Struct {
  @Uint32()
  external int dwLaunchProtected;
}

/// Represents service status notification information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_notify_2w>.
///
/// {@category struct}
base class SERVICE_NOTIFY_2 extends Struct {
  /// The structure version.
  @Uint32()
  external int dwVersion;

  /// A pointer to the callback function.
  external Pointer<NativeFunction<PFN_SC_NOTIFY_CALLBACK>> pfnNotifyCallback;

  /// Any user-defined data to be passed to the callback function.
  external Pointer pContext;

  /// A value that indicates the notification status.
  @Uint32()
  external int dwNotificationStatus;

  /// A `SERVICE_STATUS_PROCESS` structure that contains the service status
  /// information.
  external SERVICE_STATUS_PROCESS ServiceStatus;

  /// If <b>dwNotificationStatus</b> is <b>ERROR_SUCCESS</b>, this member
  /// contains a bitmask of the notifications that triggered this call to the
  /// callback function.
  @Uint32()
  external int dwNotificationTriggered;

  /// If <b>dwNotificationStatus</b> is <b>ERROR_SUCCESS</b> and the
  /// notification is <b>SERVICE_NOTIFY_CREATED</b> or
  /// <b>SERVICE_NOTIFY_DELETED</b>, this member is valid and it is a
  /// <b>MULTI_SZ</b> string that contains one or more service names.
  external PWSTR pszServiceNames;
}

/// Represents the preferred node on which to run a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_preferred_node_info>.
///
/// {@category struct}
base class SERVICE_PREFERRED_NODE_INFO extends Struct {
  /// The node number of the preferred node.
  @Uint16()
  external int usPreferredNode;

  @Uint8()
  external int _fDelete;

  /// If this member is TRUE, the preferred node setting is deleted.
  @pragma('vm:prefer-inline')
  bool get fDelete => _fDelete != FALSE;

  @pragma('vm:prefer-inline')
  set fDelete(bool value) => _fDelete = value ? TRUE : FALSE;
}

/// Contains preshutdown settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_preshutdown_info>.
///
/// {@category struct}
base class SERVICE_PRESHUTDOWN_INFO extends Struct {
  /// The time-out value, in milliseconds.
  @Uint32()
  external int dwPreshutdownTimeout;
}

/// Represents the required privileges for a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_required_privileges_infow>.
///
/// {@category struct}
base class SERVICE_REQUIRED_PRIVILEGES_INFO extends Struct {
  /// A multi-string that specifies the privileges.
  external PWSTR pmszRequiredPrivileges;
}

/// Represents a service security identifier (SID).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_sid_info>.
///
/// {@category struct}
base class SERVICE_SID_INFO extends Struct {
  /// The service SID type.
  @Uint32()
  external int dwServiceSidType;
}

/// Contains status information for a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_status>.
///
/// {@category struct}
base class SERVICE_STATUS extends Struct {
  @Uint32()
  external int _dwServiceType;

  @Uint32()
  external int _dwCurrentState;

  /// The control codes the service accepts and processes in its handler
  /// function (see <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function">Handler</a>
  /// and <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function_ex">HandlerEx</a>).
  @Uint32()
  external int dwControlsAccepted;

  /// The error code the service uses to report an error that occurs when it is
  /// starting or stopping.
  @Uint32()
  external int dwWin32ExitCode;

  /// A service-specific error code that the service returns when an error
  /// occurs while the service is starting or stopping.
  @Uint32()
  external int dwServiceSpecificExitCode;

  /// The check-point value the service increments periodically to report its
  /// progress during a lengthy start, stop, pause, or continue operation.
  @Uint32()
  external int dwCheckPoint;

  /// The estimated time required for a pending start, stop, pause, or continue
  /// operation, in milliseconds.
  @Uint32()
  external int dwWaitHint;

  @pragma('vm:prefer-inline')
  ENUM_SERVICE_TYPE get dwServiceType => ENUM_SERVICE_TYPE(_dwServiceType);

  @pragma('vm:prefer-inline')
  set dwServiceType(ENUM_SERVICE_TYPE value) => _dwServiceType = value;

  @pragma('vm:prefer-inline')
  SERVICE_STATUS_CURRENT_STATE get dwCurrentState =>
      SERVICE_STATUS_CURRENT_STATE(_dwCurrentState);

  @pragma('vm:prefer-inline')
  set dwCurrentState(SERVICE_STATUS_CURRENT_STATE value) =>
      _dwCurrentState = value;
}

/// Invalid handle values are: `-1`, `0`.
typedef SERVICE_STATUS_HANDLE = IntPtr;

/// Contains process status information for a service.
///
/// The ControlServiceEx, EnumServicesStatusEx, NotifyServiceStatusChange, and
/// QueryServiceStatusEx functions use this structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_status_process>.
///
/// {@category struct}
base class SERVICE_STATUS_PROCESS extends Struct {
  @Uint32()
  external int _dwServiceType;

  @Uint32()
  external int _dwCurrentState;

  /// The control codes the service accepts and processes in its handler
  /// function (see <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function">Handler</a>
  /// and <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lphandler_function_ex">HandlerEx</a>).
  @Uint32()
  external int dwControlsAccepted;

  /// The error code that the service uses to report an error that occurs when
  /// it is starting or stopping.
  @Uint32()
  external int dwWin32ExitCode;

  /// The service-specific error code that the service returns when an error
  /// occurs while the service is starting or stopping.
  @Uint32()
  external int dwServiceSpecificExitCode;

  /// The check-point value that the service increments periodically to report
  /// its progress during a lengthy start, stop, pause, or continue operation.
  @Uint32()
  external int dwCheckPoint;

  /// The estimated time required for a pending start, stop, pause, or continue
  /// operation, in milliseconds.
  @Uint32()
  external int dwWaitHint;

  /// The process identifier of the service.
  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int _dwServiceFlags;

  @pragma('vm:prefer-inline')
  ENUM_SERVICE_TYPE get dwServiceType => ENUM_SERVICE_TYPE(_dwServiceType);

  @pragma('vm:prefer-inline')
  set dwServiceType(ENUM_SERVICE_TYPE value) => _dwServiceType = value;

  @pragma('vm:prefer-inline')
  SERVICE_STATUS_CURRENT_STATE get dwCurrentState =>
      SERVICE_STATUS_CURRENT_STATE(_dwCurrentState);

  @pragma('vm:prefer-inline')
  set dwCurrentState(SERVICE_STATUS_CURRENT_STATE value) =>
      _dwCurrentState = value;

  @pragma('vm:prefer-inline')
  SERVICE_RUNS_IN_PROCESS get dwServiceFlags =>
      SERVICE_RUNS_IN_PROCESS(_dwServiceFlags);

  @pragma('vm:prefer-inline')
  set dwServiceFlags(SERVICE_RUNS_IN_PROCESS value) => _dwServiceFlags = value;
}

/// Specifies the ServiceMain function for a service that can run in the calling
/// process.
///
/// It is used by the StartServiceCtrlDispatcher function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_table_entryw>.
///
/// {@category struct}
base class SERVICE_TABLE_ENTRY extends Struct {
  /// The name of a service to be run in this service process.
  external PWSTR lpServiceName;

  /// A pointer to a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lpservice_main_functiona">ServiceMain</a>
  /// function.
  external Pointer<NativeFunction<LPSERVICE_MAIN_FUNCTION>> lpServiceProc;
}

/// Contains system time change settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_timechange_info>.
///
/// {@category struct}
base class SERVICE_TIMECHANGE_INFO extends Struct {
  /// The new system time.
  @Int64()
  external int liNewTime;

  /// The previous system time.
  @Int64()
  external int liOldTime;
}

/// Represents a service trigger event.
///
/// This structure is used by the SERVICE_TRIGGER_INFO structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_trigger>.
///
/// {@category struct}
base class SERVICE_TRIGGER extends Struct {
  @Uint32()
  external int _dwTriggerType;

  @Uint32()
  external int _dwAction;

  /// Points to a GUID that identifies the trigger event subtype.
  external Pointer<GUID> pTriggerSubtype;

  /// The number of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger_specific_data_item">SERVICE_TRIGGER_SPECIFIC_DATA_ITEM</a>
  /// structures in the array pointed to by <i>pDataItems</i>.
  @Uint32()
  external int cDataItems;

  /// A pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger_specific_data_item">SERVICE_TRIGGER_SPECIFIC_DATA_ITEM</a>
  /// structures that contain trigger-specific data.
  external Pointer<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM> pDataItems;

  @pragma('vm:prefer-inline')
  SERVICE_TRIGGER_TYPE get dwTriggerType =>
      SERVICE_TRIGGER_TYPE(_dwTriggerType);

  @pragma('vm:prefer-inline')
  set dwTriggerType(SERVICE_TRIGGER_TYPE value) => _dwTriggerType = value;

  @pragma('vm:prefer-inline')
  SERVICE_TRIGGER_ACTION get dwAction => SERVICE_TRIGGER_ACTION(_dwAction);

  @pragma('vm:prefer-inline')
  set dwAction(SERVICE_TRIGGER_ACTION value) => _dwAction = value;
}

/// Contains trigger event information for a service.
///
/// This structure is used by the ChangeServiceConfig2 and QueryServiceConfig2
/// functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_trigger_info>.
///
/// {@category struct}
base class SERVICE_TRIGGER_INFO extends Struct {
  /// The number of triggers in the array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger">SERVICE_TRIGGER</a>
  /// structures pointed to by the <b>pTriggers</b> member.
  @Uint32()
  external int cTriggers;

  /// A pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-service_trigger">SERVICE_TRIGGER</a>
  /// structures that specify the trigger events for the service.
  external Pointer<SERVICE_TRIGGER> pTriggers;

  external Pointer<Uint8> _pReserved;
}

/// Contains trigger-specific data for a service trigger event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_trigger_specific_data_item>.
///
/// {@category struct}
base class SERVICE_TRIGGER_SPECIFIC_DATA_ITEM extends Struct {
  @Uint32()
  external int _dwDataType;

  /// The size of the trigger-specific data pointed to <b>pData</b>, in bytes.
  @Uint32()
  external int cbData;

  /// A pointer to the trigger-specific data for the service trigger event.
  external Pointer<Uint8> pData;

  @pragma('vm:prefer-inline')
  SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE get dwDataType =>
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(_dwDataType);

  @pragma('vm:prefer-inline')
  set dwDataType(SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE value) =>
      _dwDataType = value;
}

/// Contains information used by ShellExecuteEx.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shellexecuteinfow>.
///
/// {@category struct}
base class SHELLEXECUTEINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  /// Optional.
  @IntPtr()
  external int hwnd;

  /// A string, referred to as a <i>verb</i>, that specifies the action to be
  /// performed.
  external PWSTR lpVerb;

  /// The address of a null-terminated string that specifies the name of the
  /// file or object on which <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellapi/nf-shellapi-shellexecuteexa">ShellExecuteEx</a>
  /// will perform the action specified by the <b>lpVerb</b> parameter.
  external PWSTR lpFile;

  /// Optional.
  external PWSTR lpParameters;

  /// Optional.
  external PWSTR lpDirectory;

  /// Required.
  @Int32()
  external int nShow;

  /// If SEE_MASK_NOCLOSEPROCESS is set and the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellapi/nf-shellapi-shellexecuteexa">ShellExecuteEx</a>
  /// call succeeds, it sets this member to a value greater than 32.
  @IntPtr()
  external int hInstApp;

  /// The address of an absolute <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shtypes/ns-shtypes-itemidlist">ITEMIDLIST</a>
  /// structure (PCIDLIST_ABSOLUTE) to contain an item identifier list that
  /// uniquely identifies the file to execute.
  external Pointer lpIDList;

  /// The address of a null-terminated string that specifies one of the
  /// following: - A ProgId.
  external PWSTR lpClass;

  /// A handle to the registry key for the file type.
  @IntPtr()
  external int hkeyClass;

  /// A keyboard shortcut to associate with the application.
  @Uint32()
  external int dwHotKey;

  external SHELLEXECUTEINFO_0 Anonymous;

  /// A handle to the newly started application.
  @IntPtr()
  external int hProcess;
}

/// {@category union}
sealed class SHELLEXECUTEINFO_0 extends Union {
  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int hMonitor;
}

extension SHELLEXECUTEINFO_0_Extension on SHELLEXECUTEINFO {
  @pragma('vm:prefer-inline')
  int get hIcon => this.Anonymous.hIcon;

  @pragma('vm:prefer-inline')
  set hIcon(int value) => this.Anonymous.hIcon = value;

  @pragma('vm:prefer-inline')
  int get hMonitor => this.Anonymous.hMonitor;

  @pragma('vm:prefer-inline')
  set hMonitor(int value) => this.Anonymous.hMonitor = value;
}

/// Defines Shell item resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ns-shobjidl_core-shell_item_resource>.
///
/// {@category struct}
base class SHELL_ITEM_RESOURCE extends Struct {
  /// The [GUID] that identifies the item.
  external GUID guidType;

  @Array(260)
  external Array<Uint16> _szName;

  /// The item name.
  @pragma('vm:prefer-inline')
  String get szName => _szName.toDartString();

  @pragma('vm:prefer-inline')
  set szName(String value) => _szName.setString(value);
}

/// Contains information about a file object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shfileinfow>.
///
/// {@category struct}
base class SHFILEINFO extends Struct {
  /// A handle to the icon that represents the file.
  @IntPtr()
  external int hIcon;

  /// The index of the icon image within the system image list.
  @Int32()
  external int iIcon;

  /// An array of values that indicates the attributes of the file object.
  @Uint32()
  external int dwAttributes;

  @Array(260)
  external Array<Uint16> _szDisplayName;

  @Array(80)
  external Array<Uint16> _szTypeName;

  /// A string that contains the name of the file as it appears in the Windows
  /// Shell, or the path and file name of the file that contains the icon
  /// representing the file.
  @pragma('vm:prefer-inline')
  String get szDisplayName => _szDisplayName.toDartString();

  @pragma('vm:prefer-inline')
  set szDisplayName(String value) => _szDisplayName.setString(value);

  /// A string that describes the type of file.
  @pragma('vm:prefer-inline')
  String get szTypeName => _szTypeName.toDartString();

  @pragma('vm:prefer-inline')
  set szTypeName(String value) => _szTypeName.setString(value);
}

/// Contains information that the SHFileOperation function uses to perform file
/// operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shfileopstructw>.
///
/// {@category struct}
base class SHFILEOPSTRUCT extends Struct {
  /// A window handle to the dialog box to display information about the status
  /// of the file operation.
  @IntPtr()
  external int hwnd;

  @Uint32()
  external int wFunc;

  /// <b>Note</b> This string must be double-null terminated.</div> <div> </div>
  /// A pointer to one or more source file names.
  external PWSTR pFrom;

  /// <b>Note</b> This string must be double-null terminated.</div> <div> </div>
  /// A pointer to the destination file or directory name.
  external PWSTR pTo;

  /// Flags that control the file operation.
  @Uint16()
  external int fFlags;

  @Int32()
  external int _fAnyOperationsAborted;

  /// When the function returns, this member contains a handle to a name mapping
  /// object that contains the old and new names of the renamed files.
  external Pointer hNameMappings;

  /// A pointer to the title of a progress dialog box.
  external PWSTR lpszProgressTitle;

  /// When the function returns, this member contains [TRUE] if any file
  /// operations were aborted before they were completed; otherwise, [FALSE].
  @pragma('vm:prefer-inline')
  bool get fAnyOperationsAborted => _fAnyOperationsAborted != FALSE;

  @pragma('vm:prefer-inline')
  set fAnyOperationsAborted(bool value) =>
      _fAnyOperationsAborted = value ? TRUE : FALSE;
}

/// Defines an item identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-shitemid>.
///
/// {@category struct}
@Packed(1)
base class SHITEMID extends Struct {
  /// The size of identifier, in bytes, including <b>cb</b> itself.
  @Uint16()
  external int cb;

  /// A variable-length item identifier.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> abID;
}

/// Contains the size and item count information retrieved by the
/// SHQueryRecycleBin function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shqueryrbinfo>.
///
/// {@category struct}
base class SHQUERYRBINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The total size of all the objects in the specified Recycle Bin, in bytes.
  @Int64()
  external int i64Size;

  /// The total number of items in the specified Recycle Bin.
  @Int64()
  external int i64NumItems;
}

/// SID_IDENTIFIER_AUTHORITY IDL Definition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NetMgmt/odj-sid_identifier_authority>.
///
/// {@category struct}
base class SID_IDENTIFIER_AUTHORITY extends Struct {
  @Array(6)
  external Array<Uint8> Value;
}

/// Defines the width and height of a rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ns-windef-size>.
///
/// {@category struct}
base class SIZE extends Struct {
  /// Specifies the rectangle's width.
  @Int32()
  external int cx;

  /// Specifies the rectangle's height.
  @Int32()
  external int cy;
}

/// Defines the coordinates of the upper left and lower right corners of a
/// rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/small-rect-str>.
///
/// {@category struct}
base class SMALL_RECT extends Struct {
  /// The x-coordinate of the upper left corner of the rectangle.
  @Int16()
  external int Left;

  /// The y-coordinate of the upper left corner of the rectangle.
  @Int16()
  external int Top;

  /// The x-coordinate of the lower right corner of the rectangle.
  @Int16()
  external int Right;

  /// The y-coordinate of the lower right corner of the rectangle.
  @Int16()
  external int Bottom;
}

/// Varies depending on the protocol selected.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-sockaddr>.
///
/// {@category struct}
base class SOCKADDR extends Struct {
  @Uint16()
  external int _sa_family;

  @Array(14)
  external Array<CHAR> sa_data;

  @pragma('vm:prefer-inline')
  ADDRESS_FAMILY get sa_family => ADDRESS_FAMILY(_sa_family);

  @pragma('vm:prefer-inline')
  set sa_family(ADDRESS_FAMILY value) => _sa_family = value;
}

/// Used in conjunction with Bluetooth socket operations, defined by address
/// family AF_BTH.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2bth/ns-ws2bth-sockaddr_bth>.
///
/// {@category struct}
@Packed(1)
base class SOCKADDR_BTH extends Struct {
  /// Address family of the socket.
  @Uint16()
  external int addressFamily;

  /// Address of the target Bluetooth device.
  @Uint64()
  external int btAddr;

  /// Service Class Identifier of the socket.
  external GUID serviceClassId;

  /// RFCOMM channel associated with the socket.
  @Uint32()
  external int port;
}

/// The handle must be released using the `closesocket` function.
///
/// Invalid handle values are: `-1`.
typedef SOCKET = IntPtr;

/// Stores protocol-specific address information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2def/ns-ws2def-socket_address>.
///
/// {@category struct}
base class SOCKET_ADDRESS extends Struct {
  /// A pointer to a socket address represented as a <a
  /// href="https://docs.microsoft.com/windows/desktop/WinSock/sockaddr-2">SOCKADDR</a>
  /// structure.
  external Pointer<SOCKADDR> lpSockaddr;

  /// The length, in bytes, of the socket address.
  @Int32()
  external int iSockaddrLength;
}

/// Identifies an authentication service that a server is willing to use to
/// communicate to a client.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/ns-objidlbase-sole_authentication_service>.
///
/// {@category struct}
base class SOLE_AUTHENTICATION_SERVICE extends Struct {
  /// The authentication service.
  @Uint32()
  external int dwAuthnSvc;

  /// The authorization service.
  @Uint32()
  external int dwAuthzSvc;

  /// The principal name to be used with the authentication service.
  external PWSTR pPrincipalName;

  /// When used in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-coinitializesecurity">CoInitializeSecurity</a>,
  /// set on return to indicate the status of the call to register the
  /// authentication services.
  @Int32()
  external int hr;
}

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

  @pragma('vm:prefer-inline')
  int get eEventId => bitfield.getBits(0, 16);

  @pragma('vm:prefer-inline')
  set eEventId(int value) => bitfield = bitfield.setBits(0, 16, value);

  @pragma('vm:prefer-inline')
  int get elParamType => bitfield.getBits(16, 16);

  @pragma('vm:prefer-inline')
  set elParamType(int value) => bitfield = bitfield.setBits(16, 16, value);
}

/// {@category struct}
base class SPEVENTSOURCEINFO extends Struct {
  @Uint64()
  external int ullEventInterest;

  @Uint64()
  external int ullQueuedInterest;

  @Uint32()
  external int ulCount;
}

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
  external int _VisemeId;

  @Uint32()
  external int _dwReserved1;

  @Uint32()
  external int _dwReserved2;

  @pragma('vm:prefer-inline')
  SPVISEMES get VisemeId => SPVISEMES(_VisemeId);

  @pragma('vm:prefer-inline')
  set VisemeId(SPVISEMES value) => _VisemeId = value;
}

/// Defines a device interface in a device information set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/ns-setupapi-sp_device_interface_data>.
///
/// {@category struct}
base class SP_DEVICE_INTERFACE_DATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The GUID for the class to which the device interface belongs.
  external GUID InterfaceClassGuid;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int _Reserved;
}

/// Contains the path for a device interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/ns-setupapi-sp_device_interface_detail_data_w>.
///
/// {@category struct}
base class SP_DEVICE_INTERFACE_DETAIL_DATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _DevicePath;

  /// A NULL-terminated string that contains the device interface path.
  @pragma('vm:prefer-inline')
  String get DevicePath => _DevicePath.toDartString();

  @pragma('vm:prefer-inline')
  set DevicePath(String value) => _DevicePath.setString(value);
}

/// Defines a device instance that is a member of a device information set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/ns-setupapi-sp_devinfo_data>.
///
/// {@category struct}
base class SP_DEVINFO_DATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The GUID of the device's setup class.
  external GUID ClassGuid;

  /// An opaque handle to the device instance (also known as a handle to the <a
  /// href="https://docs.microsoft.com/windows-hardware/drivers/">devnode</a>).
  @Uint32()
  external int DevInst;

  @IntPtr()
  external int _Reserved;
}

/// {@category struct}
base class SRWLOCK extends Struct {
  external Pointer Ptr;
}

/// Specifies the window station, desktop, standard handles, and appearance of
/// the main window for a process at creation time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/ns-processthreadsapi-startupinfow>.
///
/// {@category struct}
base class STARTUPINFO extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int cb;

  external PWSTR _lpReserved;

  /// The name of the desktop, or the name of both the desktop and window
  /// station for this process.
  external PWSTR lpDesktop;

  /// For console processes, this is the title displayed in the title bar if a
  /// new console window is created.
  external PWSTR lpTitle;

  /// If <b>dwFlags</b> specifies STARTF_USEPOSITION, this member is the x
  /// offset of the upper left corner of a window if a new window is created, in
  /// pixels.
  @Uint32()
  external int dwX;

  /// If <b>dwFlags</b> specifies STARTF_USEPOSITION, this member is the y
  /// offset of the upper left corner of a window if a new window is created, in
  /// pixels.
  @Uint32()
  external int dwY;

  /// If <b>dwFlags</b> specifies STARTF_USESIZE, this member is the width of
  /// the window if a new window is created, in pixels.
  @Uint32()
  external int dwXSize;

  /// If <b>dwFlags</b> specifies STARTF_USESIZE, this member is the height of
  /// the window if a new window is created, in pixels.
  @Uint32()
  external int dwYSize;

  /// If <b>dwFlags</b> specifies STARTF_USECOUNTCHARS, if a new console window
  /// is created in a console process, this member specifies the screen buffer
  /// width, in character columns.
  @Uint32()
  external int dwXCountChars;

  /// If <b>dwFlags</b> specifies STARTF_USECOUNTCHARS, if a new console window
  /// is created in a console process, this member specifies the screen buffer
  /// height, in character rows.
  @Uint32()
  external int dwYCountChars;

  /// If <b>dwFlags</b> specifies STARTF_USEFILLATTRIBUTE, this member is the
  /// initial text and background colors if a new console window is created in a
  /// console application.
  @Uint32()
  external int dwFillAttribute;

  @Uint32()
  external int _dwFlags;

  /// If <b>dwFlags</b> specifies STARTF_USESHOWWINDOW, this member can be any
  /// of the values that can be specified in the <i>nCmdShow</i> parameter for
  /// the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-showwindow">ShowWindow</a>
  /// function, except for SW_SHOWDEFAULT.
  @Uint16()
  external int wShowWindow;

  @Uint16()
  external int _cbReserved2;

  external Pointer<Uint8> _lpReserved2;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard input handle for the process.
  @IntPtr()
  external int hStdInput;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard output handle for the process.
  @IntPtr()
  external int hStdOutput;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard error handle for the process.
  @IntPtr()
  external int hStdError;

  /// A bitfield that determines whether certain.
  @pragma('vm:prefer-inline')
  STARTUPINFOW_FLAGS get dwFlags => STARTUPINFOW_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(STARTUPINFOW_FLAGS value) => _dwFlags = value;
}

/// Specifies the window station, desktop, standard handles, and attributes for
/// a new process.
///
/// It is used with the CreateProcess and CreateProcessAsUser functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-startupinfoexw>.
///
/// {@category struct}
base class STARTUPINFOEX extends Struct {
  /// A `STARTUPINFO` structure.
  external STARTUPINFO StartupInfo;

  /// An attribute list.
  @IntPtr()
  external int lpAttributeList;
}

/// Contains information about a property set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-statpropsetstg>.
///
/// {@category struct}
base class STATPROPSETSTG extends Struct {
  /// FMTID of the current property set, specified when the property set was
  /// initially created.
  external GUID fmtid;

  /// <b>CLSID</b> associated with this property set, specified when the
  /// property set was initially created and possibly modified thereafter with
  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/propidl/nf-propidl-ipropertystorage-setclass">IPropertyStorage::SetClass</a>.
  external GUID clsid;

  /// Flag values of the property set, as specified in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/propidl/nf-propidl-ipropertysetstorage-create">IPropertySetStorage::Create</a>.
  @Uint32()
  external int grfFlags;

  /// Time in Universal Coordinated Time (UTC) when the property set was last
  /// modified.
  external FILETIME mtime;

  /// Time in UTC when this property set was created.
  external FILETIME ctime;

  /// Time in UTC when this property set was last accessed.
  external FILETIME atime;

  @Uint32()
  external int dwOSVersion;
}

/// Contains data about a single property in a property set.
///
/// This data is the property ID and type tag, and the optional string name that
/// may be associated with the property.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-statpropstg>.
///
/// {@category struct}
base class STATPROPSTG extends Struct {
  /// A wide-character null-terminated Unicode string that contains the optional
  /// string name associated with the property.
  external PWSTR lpwstrName;

  /// A 32-bit identifier that uniquely identifies the property within the
  /// property set.
  @Uint32()
  external int propid;

  @Uint16()
  external int _vt;

  /// The property type.
  @pragma('vm:prefer-inline')
  VARENUM get vt => VARENUM(_vt);

  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => _vt = value;
}

/// Contains statistical data about an open storage, stream, or byte-array
/// object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ns-objidl-statstg>.
///
/// {@category struct}
base class STATSTG extends Struct {
  /// A pointer to a <b>NULL</b>-terminated Unicode string that contains the
  /// name.
  external PWSTR pwcsName;

  /// Indicates the type of storage object.
  @Uint32()
  external int type;

  /// The size of the struct in bytes.
  @Uint64()
  external int cbSize;

  /// Indicates the last modification time for this storage, stream, or byte
  /// array.
  external FILETIME mtime;

  /// Indicates the creation time for this storage, stream, or byte array.
  external FILETIME ctime;

  /// Indicates the last access time for this storage, stream, or byte array.
  external FILETIME atime;

  @Uint32()
  external int _grfMode;

  @Uint32()
  external int _grfLocksSupported;

  /// Indicates the class identifier for the storage object; set to CLSID_NULL
  /// for new storage objects.
  external GUID clsid;

  /// Indicates the current state bits of the storage object; that is, the value
  /// most recently set by the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/objidl/nf-objidl-istorage-setstatebits">IStorage::SetStateBits</a>
  /// method.
  @Uint32()
  external int grfStateBits;

  @Uint32()
  external int reserved;

  /// Indicates the access mode specified when the object was opened.
  @pragma('vm:prefer-inline')
  STGM get grfMode => STGM(_grfMode);

  @pragma('vm:prefer-inline')
  set grfMode(STGM value) => _grfMode = value;

  /// Indicates the types of region locking supported by the stream or byte
  /// array.
  @pragma('vm:prefer-inline')
  LOCKTYPE get grfLocksSupported => LOCKTYPE(_grfLocksSupported);

  @pragma('vm:prefer-inline')
  set grfLocksSupported(LOCKTYPE value) => _grfLocksSupported = value;
}

/// Contains information about a device.
///
/// This structure is used by the IOCTL_STORAGE_GET_DEVICE_NUMBER control code.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-storage_device_number>.
///
/// {@category struct}
base class STORAGE_DEVICE_NUMBER extends Struct {
  /// The type of device.
  @Uint32()
  external int DeviceType;

  /// The number of this device.
  @Uint32()
  external int DeviceNumber;

  /// The partition number of the device, if the device can be partitioned.
  @Uint32()
  external int PartitionNumber;
}

/// Contains strings returned from the IShellFolder interface methods.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-strret>.
///
/// {@category struct}
base class STRRET extends Struct {
  @Uint32()
  external int uType;

  external STRRET_0 Anonymous;
}

/// {@category union}
sealed class STRRET_0 extends Union {
  external PWSTR pOleStr;

  @Uint32()
  external int uOffset;

  @Array(260)
  external Array<Uint8> cStr;
}

extension STRRET_0_Extension on STRRET {
  @pragma('vm:prefer-inline')
  PWSTR get pOleStr => this.Anonymous.pOleStr;

  @pragma('vm:prefer-inline')
  set pOleStr(PWSTR value) => this.Anonymous.pOleStr = value;

  @pragma('vm:prefer-inline')
  int get uOffset => this.Anonymous.uOffset;

  @pragma('vm:prefer-inline')
  set uOffset(int value) => this.Anonymous.uOffset = value;

  @pragma('vm:prefer-inline')
  Array<Uint8> get cStr => this.Anonymous.cStr;

  @pragma('vm:prefer-inline')
  set cStr(Array<Uint8> value) => this.Anonymous.cStr = value;
}

/// Contains the styles for a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-stylestruct>.
///
/// {@category struct}
base class STYLESTRUCT extends Struct {
  /// The previous styles for a window.
  @Uint32()
  external int styleOld;

  /// The new styles for a window.
  @Uint32()
  external int styleNew;
}

/// Contains symbol information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/ns-dbghelp-symbol_infow>.
///
/// {@category struct}
base class SYMBOL_INFO extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int SizeOfStruct;

  /// A unique value that identifies the type data that describes the symbol.
  @Uint32()
  external int TypeIndex;

  @Array(2)
  external Array<Uint64> _Reserved;

  /// The unique value for the symbol.
  @Uint32()
  external int Index;

  /// The symbol size, in bytes.
  @Uint32()
  external int Size;

  /// The base address of the module that contains the symbol.
  @Uint64()
  external int ModBase;

  @Uint32()
  external int _Flags;

  /// The value of a constant.
  @Uint64()
  external int Value;

  /// The virtual address of the start of the symbol.
  @Uint64()
  external int Address;

  /// The register.
  @Uint32()
  external int Register;

  /// The DIA scope.
  @Uint32()
  external int Scope;

  /// The PDB classification.
  @Uint32()
  external int Tag;

  /// The length of the name, in characters, not including the null-terminating
  /// character.
  @Uint32()
  external int NameLen;

  /// The size of the <b>Name</b> buffer, in characters.
  @Uint32()
  external int MaxNameLen;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _Name;

  @pragma('vm:prefer-inline')
  SYMBOL_INFO_FLAGS get Flags => SYMBOL_INFO_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(SYMBOL_INFO_FLAGS value) => _Flags = value;

  /// The name of the symbol.
  @pragma('vm:prefer-inline')
  String get Name => _Name.toDartString();

  @pragma('vm:prefer-inline')
  set Name(String value) => _Name.setString(value);
}

/// Specifies a date and time, using individual members for the month, day,
/// year, weekday, hour, minute, second, and millisecond.
///
/// The time is either in coordinated universal time (UTC) or local time,
/// depending on the function that is being called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-systemtime>.
///
/// {@category struct}
base class SYSTEMTIME extends Struct {
  /// The year.
  @Uint16()
  external int wYear;

  @Uint16()
  external int wMonth;

  @Uint16()
  external int wDayOfWeek;

  /// The day of the month.
  @Uint16()
  external int wDay;

  /// The hour.
  @Uint16()
  external int wHour;

  /// The minute.
  @Uint16()
  external int wMinute;

  /// The second.
  @Uint16()
  external int wSecond;

  /// The millisecond.
  @Uint16()
  external int wMilliseconds;
}

/// {@category struct}
base class SYSTEM_BASIC_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> _Reserved1;

  @Array(4)
  external Array<Pointer> _Reserved2;

  @Int8()
  external int NumberOfProcessors;
}

/// Contains information about the current state of the system battery.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-system_battery_state>.
///
/// {@category struct}
base class SYSTEM_BATTERY_STATE extends Struct {
  @Uint8()
  external int _AcOnLine;

  @Uint8()
  external int _BatteryPresent;

  @Uint8()
  external int _Charging;

  @Uint8()
  external int _Discharging;

  /// Reserved.
  @Array(3)
  external Array<BOOLEAN> Spare1;

  @Uint8()
  external int Tag;

  /// The theoretical capacity of the battery when new.
  @Uint32()
  external int MaxCapacity;

  /// The estimated remaining capacity of the battery.
  @Uint32()
  external int RemainingCapacity;

  /// The current rate of discharge of the battery, in mW.
  @Uint32()
  external int Rate;

  /// The estimated time remaining on the battery, in seconds.
  @Uint32()
  external int EstimatedTime;

  /// The manufacturer's suggestion of a capacity, in mWh, at which a low
  /// battery alert should occur.
  @Uint32()
  external int DefaultAlert1;

  /// The manufacturer's suggestion of a capacity, in mWh, at which a warning
  /// battery alert should occur.
  @Uint32()
  external int DefaultAlert2;

  /// If this member is [TRUE], the system battery charger is currently
  /// operating on external power.
  @pragma('vm:prefer-inline')
  bool get AcOnLine => _AcOnLine != FALSE;

  @pragma('vm:prefer-inline')
  set AcOnLine(bool value) => _AcOnLine = value ? TRUE : FALSE;

  /// If this member is [TRUE], at least one battery is present in the system.
  @pragma('vm:prefer-inline')
  bool get BatteryPresent => _BatteryPresent != FALSE;

  @pragma('vm:prefer-inline')
  set BatteryPresent(bool value) => _BatteryPresent = value ? TRUE : FALSE;

  /// If this member is [TRUE], a battery is currently charging.
  @pragma('vm:prefer-inline')
  bool get Charging => _Charging != FALSE;

  @pragma('vm:prefer-inline')
  set Charging(bool value) => _Charging = value ? TRUE : FALSE;

  /// If this member is [TRUE], a battery is currently discharging.
  @pragma('vm:prefer-inline')
  bool get Discharging => _Discharging != FALSE;

  @pragma('vm:prefer-inline')
  set Discharging(bool value) => _Discharging = value ? TRUE : FALSE;
}

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
  external Array<Uint8> _Reserved1;
}

/// Contains information about the current computer system.
///
/// This includes the architecture and type of the processor, the number of
/// processors in the system, the page size, and other such information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/ns-sysinfoapi-system_info>.
///
/// {@category struct}
base class SYSTEM_INFO extends Struct {
  external SYSTEM_INFO_0 Anonymous;

  /// The page size and the granularity of page protection and commitment.
  @Uint32()
  external int dwPageSize;

  /// A pointer to the lowest memory address accessible to applications and
  /// dynamic-link libraries (DLLs).
  external Pointer lpMinimumApplicationAddress;

  /// A pointer to the highest memory address accessible to applications and
  /// DLLs.
  external Pointer lpMaximumApplicationAddress;

  /// A mask representing the set of processors configured into the system.
  @IntPtr()
  external int dwActiveProcessorMask;

  /// The number of logical processors in the current group.
  @Uint32()
  external int dwNumberOfProcessors;

  /// An obsolete member that is retained for compatibility.
  @Uint32()
  external int dwProcessorType;

  /// The granularity for the starting address at which virtual memory can be
  /// allocated.
  @Uint32()
  external int dwAllocationGranularity;

  /// The architecture-dependent processor level.
  @Uint16()
  external int wProcessorLevel;

  /// The architecture-dependent processor revision.
  @Uint16()
  external int wProcessorRevision;
}

/// {@category union}
sealed class SYSTEM_INFO_0 extends Union {
  @Uint32()
  external int dwOemId;

  external SYSTEM_INFO_0_0 Anonymous;
}

extension SYSTEM_INFO_0_Extension on SYSTEM_INFO {
  @pragma('vm:prefer-inline')
  int get dwOemId => this.Anonymous.dwOemId;

  @pragma('vm:prefer-inline')
  set dwOemId(int value) => this.Anonymous.dwOemId = value;

  @pragma('vm:prefer-inline')
  SYSTEM_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(SYSTEM_INFO_0_0 value) => this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class SYSTEM_INFO_0_0 extends Struct {
  @Uint16()
  external int _wProcessorArchitecture;

  @Uint16()
  external int _wReserved;

  @pragma('vm:prefer-inline')
  PROCESSOR_ARCHITECTURE get wProcessorArchitecture =>
      PROCESSOR_ARCHITECTURE(_wProcessorArchitecture);

  @pragma('vm:prefer-inline')
  set wProcessorArchitecture(PROCESSOR_ARCHITECTURE value) =>
      _wProcessorArchitecture = value;
}

extension SYSTEM_INFO_0_0_Extension on SYSTEM_INFO {
  @pragma('vm:prefer-inline')
  PROCESSOR_ARCHITECTURE get wProcessorArchitecture =>
      this.Anonymous.Anonymous.wProcessorArchitecture;

  @pragma('vm:prefer-inline')
  set wProcessorArchitecture(PROCESSOR_ARCHITECTURE value) =>
      this.Anonymous.Anonymous.wProcessorArchitecture = value;
}

/// {@category struct}
base class SYSTEM_INTERRUPT_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> _Reserved1;
}

/// Describes the relationship between the specified processor set.
///
/// This structure is used with the GetLogicalProcessorInformation function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-system_logical_processor_information>.
///
/// {@category struct}
base class SYSTEM_LOGICAL_PROCESSOR_INFORMATION extends Struct {
  /// The processor mask identifying the processors described by this structure.
  @IntPtr()
  external int ProcessorMask;

  @Int32()
  external int _Relationship;

  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0 Anonymous;

  /// The relationship between the processors identified by the value of the
  /// <b>ProcessorMask</b> member.
  @pragma('vm:prefer-inline')
  LOGICAL_PROCESSOR_RELATIONSHIP get Relationship =>
      LOGICAL_PROCESSOR_RELATIONSHIP(_Relationship);

  @pragma('vm:prefer-inline')
  set Relationship(LOGICAL_PROCESSOR_RELATIONSHIP value) =>
      _Relationship = value;
}

/// {@category union}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0 extends Union {
  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 ProcessorCore;
  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 NumaNode;
  external CACHE_DESCRIPTOR Cache;

  @Array(2)
  external Array<Uint64> _Reserved;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  @pragma('vm:prefer-inline')
  SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 get ProcessorCore =>
      this.Anonymous.ProcessorCore;

  @pragma('vm:prefer-inline')
  set ProcessorCore(SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 value) =>
      this.Anonymous.ProcessorCore = value;

  @pragma('vm:prefer-inline')
  SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 get NumaNode =>
      this.Anonymous.NumaNode;

  @pragma('vm:prefer-inline')
  set NumaNode(SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 value) =>
      this.Anonymous.NumaNode = value;

  @pragma('vm:prefer-inline')
  CACHE_DESCRIPTOR get Cache => this.Anonymous.Cache;

  @pragma('vm:prefer-inline')
  set Cache(CACHE_DESCRIPTOR value) => this.Anonymous.Cache = value;
}

/// {@category struct}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 extends Struct {
  @Uint8()
  external int Flags;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  @pragma('vm:prefer-inline')
  int get Flags => this.Anonymous.ProcessorCore.Flags;

  @pragma('vm:prefer-inline')
  set Flags(int value) => this.Anonymous.ProcessorCore.Flags = value;
}

/// {@category struct}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 extends Struct {
  @Uint32()
  external int NodeNumber;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  @pragma('vm:prefer-inline')
  int get NodeNumber => this.Anonymous.NumaNode.NodeNumber;

  @pragma('vm:prefer-inline')
  set NodeNumber(int value) => this.Anonymous.NumaNode.NodeNumber = value;
}

/// {@category struct}
base class SYSTEM_LOOKASIDE_INFORMATION extends Struct {
  @Array(32)
  external Array<Uint8> _Reserved1;
}

/// {@category struct}
base class SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Array(312)
  external Array<Uint8> _Reserved1;
}

/// {@category struct}
base class SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  external Array<Pointer> _Reserved1;

  @Array(3)
  external Array<Uint32> _Reserved2;
}

/// Contains information about the power status of the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-system_power_status>.
///
/// {@category struct}
base class SYSTEM_POWER_STATUS extends Struct {
  @Uint8()
  external int ACLineStatus;

  /// The battery charge status.
  @Uint8()
  external int BatteryFlag;

  /// The percentage of full battery charge remaining.
  @Uint8()
  external int BatteryLifePercent;

  /// The status of battery saver.
  @Uint8()
  external int SystemStatusFlag;

  /// The number of seconds of battery life remaining, or –1 if remaining
  /// seconds are unknown or if the device is connected to AC power.
  @Uint32()
  external int BatteryLifeTime;

  /// The number of seconds of battery life when at full charge, or –1 if full
  /// battery lifetime is unknown or if the device is connected to AC power.
  @Uint32()
  external int BatteryFullLifeTime;
}

/// {@category struct}
base class SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION extends Struct {
  @Int64()
  external int IdleTime;

  @Int64()
  external int KernelTime;

  @Int64()
  external int UserTime;

  @Array(2)
  external Array<Int64> _Reserved1;

  @Uint32()
  external int _Reserved2;
}

/// {@category struct}
base class SYSTEM_PROCESS_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int NumberOfThreads;

  @Array(48)
  external Array<Uint8> _Reserved1;

  external UNICODE_STRING ImageName;

  @Int32()
  external int BasePriority;

  @IntPtr()
  external int UniqueProcessId;

  external Pointer _Reserved2;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int SessionId;

  external Pointer _Reserved3;

  @IntPtr()
  external int PeakVirtualSize;

  @IntPtr()
  external int VirtualSize;

  @Uint32()
  external int _Reserved4;

  @IntPtr()
  external int PeakWorkingSetSize;

  @IntPtr()
  external int WorkingSetSize;

  external Pointer _Reserved5;

  @IntPtr()
  external int QuotaPagedPoolUsage;

  external Pointer _Reserved6;

  @IntPtr()
  external int QuotaNonPagedPoolUsage;

  @IntPtr()
  external int PagefileUsage;

  @IntPtr()
  external int PeakPagefileUsage;

  @IntPtr()
  external int PrivatePageCount;

  @Array(6)
  external Array<Int64> _Reserved7;
}

/// {@category struct}
base class SYSTEM_REGISTRY_QUOTA_INFORMATION extends Struct {
  @Uint32()
  external int RegistryQuotaAllowed;

  @Uint32()
  external int RegistryQuotaUsed;

  external Pointer _Reserved1;
}

/// {@category struct}
base class SYSTEM_THREAD_INFORMATION extends Struct {
  @Array(3)
  external Array<Int64> _Reserved1;

  @Uint32()
  external int _Reserved2;

  external Pointer StartAddress;
  external CLIENT_ID ClientId;

  @Int32()
  external int Priority;

  @Int32()
  external int BasePriority;

  @Uint32()
  external int _Reserved3;

  @Uint32()
  external int ThreadState;

  @Uint32()
  external int WaitReason;
}

/// {@category struct}
base class SYSTEM_TIMEOFDAY_INFORMATION extends Struct {
  @Array(48)
  external Array<Uint8> _Reserved1;
}

/// Used in a Bluetooth query to constrain the set of attributes to return in
/// the query.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthsdpdef/ns-bthsdpdef-sdpattributerange>.
///
/// {@category struct}
base class SdpAttributeRange extends Struct {
  /// Minimum attribute value for which to search.
  @Uint16()
  external int minAttribute;

  /// Maximum attribute value for which to search.
  @Uint16()
  external int maxAttribute;
}

/// Facilitates searching for UUIDs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthsdpdef/ns-bthsdpdef-sdpqueryuuid>.
///
/// {@category struct}
base class SdpQueryUuid extends Struct {
  /// Union containing the UUID on which to search.
  external SdpQueryUuidUnion u;

  /// Type of UUID being searched.
  @Uint16()
  external int uuidType;
}

/// Contains the UUID on which to perform an SDP query.
///
/// Used in conjunction with the SdpQueryUuid structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthsdpdef/ns-bthsdpdef-sdpqueryuuidunion>.
///
/// {@category union}
sealed class SdpQueryUuidUnion extends Union {
  /// UUID in 128-bit format.
  external GUID uuid128;

  /// UUID in 32-bit format.
  @Uint32()
  external int uuid32;

  /// UUID in 16-bit format.
  @Uint16()
  external int uuid16;
}

/// The following GUIDS define the different types of sensor profiles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/medfound/sensor-profile-guids>.
final Sensor = Guid.fromComponents(
  0xe97ced00,
  0x523a,
  0x4133,
  Uint8List.fromList(const [0xbf, 0x6f, 0xd3, 0xa2, 0xda, 0xe7, 0xf6, 0xba]),
);

final SensorCollection = Guid.fromComponents(
  0x79c43adb,
  0xa429,
  0x469f,
  Uint8List.fromList(const [0xaa, 0x39, 0x2f, 0x2b, 0x74, 0xb7, 0x59, 0x37]),
);

final SensorDataReport = Guid.fromComponents(
  0x4ea9d6ef,
  0x694b,
  0x4218,
  Uint8List.fromList(const [0x88, 0x16, 0xcc, 0xda, 0x8d, 0xa7, 0x4b, 0xba]),
);

final SensorManager = Guid.fromComponents(
  0x77a1c827,
  0xfcd2,
  0x4689,
  Uint8List.fromList(const [0x89, 0x15, 0x9d, 0x61, 0x3c, 0xc5, 0xfa, 0x3e]),
);

final ShellItem = Guid.fromComponents(
  0x9ac9fbe1,
  0xe0a2,
  0x4ad6,
  Uint8List.fromList(const [0xb4, 0xee, 0xe2, 0x12, 0x1, 0x3e, 0xa9, 0x17]),
);

final ShellLink = Guid.fromComponents(
  0x21401,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

final SpDataKey = Guid.fromComponents(
  0xd9f6ee60,
  0x58c9,
  0x458b,
  Uint8List.fromList(const [0x88, 0xe1, 0x2f, 0x90, 0x8f, 0xd7, 0xf8, 0x7c]),
);

final SpObjectToken = Guid.fromComponents(
  0xef411752,
  0x3736,
  0x4cb4,
  Uint8List.fromList(const [0x9c, 0x8c, 0x8e, 0xf4, 0xcc, 0xb5, 0x8e, 0xfe]),
);

final SpObjectTokenCategory = Guid.fromComponents(
  0xa910187f,
  0xc7a,
  0x45ac,
  Uint8List.fromList(const [0x92, 0xcc, 0x59, 0xed, 0xaf, 0xb7, 0x7b, 0x53]),
);

final SpVoice = Guid.fromComponents(
  0x96749377,
  0x3391,
  0x11d2,
  Uint8List.fromList(const [0x9e, 0xe3, 0x0, 0xc0, 0x4f, 0x79, 0x73, 0x96]),
);

final SpellCheckerFactory = Guid.fromComponents(
  0x7ab36653,
  0x1796,
  0x484b,
  Uint8List.fromList(const [0xbd, 0xfa, 0xe7, 0x4f, 0x1d, 0xb7, 0xc1, 0xdc]),
);

/// Contains information used to display a task dialog.
///
/// The TaskDialogIndirect function uses this structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/ns-commctrl-taskdialogconfig>.
///
/// {@category struct}
@Packed(1)
base class TASKDIALOGCONFIG extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Handle to the parent window.
  @IntPtr()
  external int hwndParent;

  /// Handle to the module that contains the icon resource identified by the
  /// <b>pszMainIcon</b> or <b>pszFooterIcon</b> members, and the string
  /// resources identified by the <b>pszWindowTitle</b>,
  /// <b>pszMainInstruction</b>, <b>pszContent</b>, <b>pszVerificationText</b>,
  /// <b>pszExpandedInformation</b>, <b>pszExpandedControlText</b>,
  /// <b>pszCollapsedControlText</b> or <b>pszFooter</b> members.
  @IntPtr()
  external int hInstance;

  @Int32()
  external int _dwFlags;

  @Int32()
  external int _dwCommonButtons;

  /// Pointer that references the string to be used for the task dialog title.
  external PWSTR pszWindowTitle;

  external TASKDIALOGCONFIG_0 Anonymous1;

  /// Pointer that references the string to be used for the main instruction.
  external PWSTR pszMainInstruction;

  /// Pointer that references the string to be used for the dialog's primary
  /// content.
  external PWSTR pszContent;

  /// The number of entries in the <b>pButtons</b> array that is used to create
  /// buttons or command links in the task dialog.
  @Uint32()
  external int cButtons;

  /// Pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/commctrl/ns-commctrl-taskdialog_button">TASKDIALOG_BUTTON</a>
  /// structures containing the definition of the custom buttons that are to be
  /// displayed in the task dialog.
  external Pointer<TASKDIALOG_BUTTON> pButtons;

  /// The default button for the task dialog.
  @Int32()
  external int nDefaultButton;

  /// The number of entries in the <b>pRadioButtons</b> array that is used to
  /// create radio buttons in the task dialog.
  @Uint32()
  external int cRadioButtons;

  /// Pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/commctrl/ns-commctrl-taskdialog_button">TASKDIALOG_BUTTON</a>
  /// structures containing the definition of the radio buttons that are to be
  /// displayed in the task dialog.
  external Pointer<TASKDIALOG_BUTTON> pRadioButtons;

  /// The button ID of the radio button that is selected by default.
  @Int32()
  external int nDefaultRadioButton;

  /// Pointer that references the string to be used to label the verification
  /// checkbox.
  external PWSTR pszVerificationText;

  /// Pointer that references the string to be used for displaying additional
  /// information.
  external PWSTR pszExpandedInformation;

  /// Pointer that references the string to be used to label the button for
  /// collapsing the expandable information.
  external PWSTR pszExpandedControlText;

  /// Pointer that references the string to be used to label the button for
  /// expanding the expandable information.
  external PWSTR pszCollapsedControlText;

  external TASKDIALOGCONFIG_1 Anonymous2;

  /// Pointer to the string to be used in the footer area of the task dialog.
  external PWSTR pszFooter;

  /// Pointer to an application-defined callback function.
  external Pointer<NativeFunction<PFTASKDIALOGCALLBACK>> pfCallback;

  /// A pointer to application-defined reference data.
  @IntPtr()
  external int lpCallbackData;

  /// The width of the task dialog's client area, in dialog units.
  @Uint32()
  external int cxWidth;

  /// Specifies the behavior of the task dialog.
  @pragma('vm:prefer-inline')
  TASKDIALOG_FLAGS get dwFlags => TASKDIALOG_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(TASKDIALOG_FLAGS value) => _dwFlags = value;

  /// Specifies the push buttons displayed in the task dialog.
  @pragma('vm:prefer-inline')
  TASKDIALOG_COMMON_BUTTON_FLAGS get dwCommonButtons =>
      TASKDIALOG_COMMON_BUTTON_FLAGS(_dwCommonButtons);

  @pragma('vm:prefer-inline')
  set dwCommonButtons(TASKDIALOG_COMMON_BUTTON_FLAGS value) =>
      _dwCommonButtons = value;
}

/// {@category union}
@Packed(1)
sealed class TASKDIALOGCONFIG_0 extends Union {
  @IntPtr()
  external int hMainIcon;

  external PWSTR pszMainIcon;
}

extension TASKDIALOGCONFIG_0_Extension on TASKDIALOGCONFIG {
  @pragma('vm:prefer-inline')
  int get hMainIcon => this.Anonymous1.hMainIcon;

  @pragma('vm:prefer-inline')
  set hMainIcon(int value) => this.Anonymous1.hMainIcon = value;

  @pragma('vm:prefer-inline')
  PWSTR get pszMainIcon => this.Anonymous1.pszMainIcon;

  @pragma('vm:prefer-inline')
  set pszMainIcon(PWSTR value) => this.Anonymous1.pszMainIcon = value;
}

/// {@category union}
@Packed(1)
sealed class TASKDIALOGCONFIG_1 extends Union {
  @IntPtr()
  external int hFooterIcon;

  external PWSTR pszFooterIcon;
}

extension TASKDIALOGCONFIG_1_Extension on TASKDIALOGCONFIG {
  @pragma('vm:prefer-inline')
  int get hFooterIcon => this.Anonymous2.hFooterIcon;

  @pragma('vm:prefer-inline')
  set hFooterIcon(int value) => this.Anonymous2.hFooterIcon = value;

  @pragma('vm:prefer-inline')
  PWSTR get pszFooterIcon => this.Anonymous2.pszFooterIcon;

  @pragma('vm:prefer-inline')
  set pszFooterIcon(PWSTR value) => this.Anonymous2.pszFooterIcon = value;
}

/// Contains information used to display a button in a task dialog.
///
/// The TASKDIALOGCONFIG structure uses this structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/ns-commctrl-taskdialog_button>.
///
/// {@category struct}
@Packed(1)
base class TASKDIALOG_BUTTON extends Struct {
  /// Indicates the value to be returned when this button is selected.
  @Int32()
  external int nButtonID;

  /// Pointer that references the string to be used to label the button.
  external PWSTR pszButtonText;
}

/// Contains basic information about a physical font.
///
/// All sizes are specified in logical units; that is, they depend on the
/// current mapping mode of the display context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-textmetricw>.
///
/// {@category struct}
base class TEXTMETRIC extends Struct {
  /// The height (ascent + descent) of characters.
  @Int32()
  external int tmHeight;

  /// The ascent (units above the base line) of characters.
  @Int32()
  external int tmAscent;

  /// The descent (units below the base line) of characters.
  @Int32()
  external int tmDescent;

  /// The amount of leading (space) inside the bounds set by the <b>tmHeight</b>
  /// member.
  @Int32()
  external int tmInternalLeading;

  /// The amount of extra leading (space) that the application adds between
  /// rows.
  @Int32()
  external int tmExternalLeading;

  /// The average width of characters in the font (generally defined as the
  /// width of the letter <i>x</i> ).
  @Int32()
  external int tmAveCharWidth;

  /// The width of the widest character in the font.
  @Int32()
  external int tmMaxCharWidth;

  /// The weight of the font.
  @Int32()
  external int tmWeight;

  /// The extra width per string that may be added to some synthesized fonts.
  @Int32()
  external int tmOverhang;

  /// The horizontal aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectX;

  /// The vertical aspect of the device for which the font was designed.
  @Int32()
  external int tmDigitizedAspectY;

  /// The value of the first character defined in the font.
  @Uint16()
  external int tmFirstChar;

  /// The value of the last character defined in the font.
  @Uint16()
  external int tmLastChar;

  /// The value of the character to be substituted for characters not in the
  /// font.
  @Uint16()
  external int tmDefaultChar;

  /// The value of the character that will be used to define word breaks for
  /// text justification.
  @Uint16()
  external int tmBreakChar;

  /// Specifies an italic font if it is nonzero.
  @Uint8()
  external int tmItalic;

  /// Specifies an underlined font if it is nonzero.
  @Uint8()
  external int tmUnderlined;

  /// A strikeout font if it is nonzero.
  @Uint8()
  external int tmStruckOut;

  @Uint8()
  external int _tmPitchAndFamily;

  @Uint8()
  external int tmCharSet;

  /// Specifies information about the pitch, the technology, and the family of a
  /// physical font.
  @pragma('vm:prefer-inline')
  TMPF_FLAGS get tmPitchAndFamily => TMPF_FLAGS(_tmPitchAndFamily);

  @pragma('vm:prefer-inline')
  set tmPitchAndFamily(TMPF_FLAGS value) => _tmPitchAndFamily = value;
}

/// Used to specify a time interval.
///
/// It is associated with the Berkeley Software Distribution (BSD) Time.h header
/// file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-timeval>.
///
/// {@category struct}
base class TIMEVAL extends Struct {
  /// Time interval, in seconds.
  @Int32()
  external int tv_sec;

  /// Time interval, in microseconds.
  @Int32()
  external int tv_usec;
}

/// Contains title bar information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-titlebarinfo>.
///
/// {@category struct}
base class TITLEBARINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The coordinates of the title bar.
  external RECT rcTitleBar;

  /// An array that receives a value for each element of the title bar.
  @Array(6)
  external Array<Uint32> rgstate;
}

/// Expands on the information described in the TITLEBARINFO structure by
/// including the coordinates of each element of the title bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-titlebarinfoex>.
///
/// {@category struct}
base class TITLEBARINFOEX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The bounding rectangle of the title bar.
  external RECT rcTitleBar;

  /// An array that receives a <b>DWORD</b> value for each element of the title
  /// bar.
  @Array(6)
  external Array<Uint32> rgstate;

  /// An array that receives a structure for each element of the title bar.
  @Array(6)
  external Array<RECT> rgrect;
}

/// Contains information about a type library.
///
/// Information from this structure is used to identify the type library and to
/// provide national language support for member names.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-tlibattr>.
///
/// {@category struct}
base class TLIBATTR extends Struct {
  /// The globally unique identifier.
  external GUID guid;

  /// The locale identifier.
  @Uint32()
  external int lcid;

  @Int32()
  external int _syskind;

  /// The major version number.
  @Uint16()
  external int wMajorVerNum;

  /// The minor version number.
  @Uint16()
  external int wMinorVerNum;

  /// The library flags.
  @Uint16()
  external int wLibFlags;

  /// The target hardware platform.
  @pragma('vm:prefer-inline')
  SYSKIND get syskind => SYSKIND(_syskind);

  @pragma('vm:prefer-inline')
  set syskind(SYSKIND value) => _syskind = value;
}

/// Specifies all the information in a token that is necessary for an app
/// container.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-token_appcontainer_information>.
///
/// {@category struct}
base class TOKEN_APPCONTAINER_INFORMATION extends Struct {
  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">security
  /// identifier</a> (SID) of the app container.
  @IntPtr()
  external int TokenAppContainer;
}

/// Indicates whether a token has elevated privileges.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-token_elevation>.
///
/// {@category struct}
base class TOKEN_ELEVATION extends Struct {
  /// A nonzero value if the token has elevated privileges; otherwise, a zero
  /// value.
  @Uint32()
  external int TokenIsElevated;
}

/// Encapsulates data for touch input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-touchinput>.
///
/// {@category struct}
base class TOUCHINPUT extends Struct {
  /// The x-coordinate (horizontal point) of the touch input.
  @Int32()
  external int x;

  /// The y-coordinate (vertical point) of the touch input.
  @Int32()
  external int y;

  /// A device handle for the source input device.
  @IntPtr()
  external int hSource;

  /// A touch point identifier that distinguishes a particular touch input.
  @Uint32()
  external int dwID;

  @Uint32()
  external int _dwFlags;

  @Uint32()
  external int _dwMask;

  /// The time stamp for the event, in milliseconds.
  @Uint32()
  external int dwTime;

  /// An additional value associated with the touch event.
  @IntPtr()
  external int dwExtraInfo;

  /// The width of the touch contact area in hundredths of a pixel in physical
  /// screen coordinates.
  @Uint32()
  external int cxContact;

  /// The height of the touch contact area in hundredths of a pixel in physical
  /// screen coordinates.
  @Uint32()
  external int cyContact;

  /// A set of bit flags that specify various aspects of touch point press,
  /// release, and motion.
  @pragma('vm:prefer-inline')
  TOUCHEVENTF_FLAGS get dwFlags => TOUCHEVENTF_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(TOUCHEVENTF_FLAGS value) => _dwFlags = value;

  /// A set of bit flags that specify which of the optional fields in the
  /// structure contain valid values.
  @pragma('vm:prefer-inline')
  TOUCHINPUTMASKF_MASK get dwMask => TOUCHINPUTMASKF_MASK(_dwMask);

  @pragma('vm:prefer-inline')
  set dwMask(TOUCHINPUTMASKF_MASK value) => _dwMask = value;
}

/// Contains hardware input details that can be used to predict touch targets
/// and help compensate for hardware latency when processing touch and gesture
/// input that contains distance and velocity data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-touchpredictionparameters>.
///
/// {@category struct}
base class TOUCHPREDICTIONPARAMETERS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// Latency in milliseconds.
  @Uint32()
  external int dwLatency;

  /// Sample time in milliseconds (used to calculate velocity).
  @Uint32()
  external int dwSampleTime;

  /// Use timestamps provided by the hardware.
  @Uint32()
  external int bUseHWTimeStamp;
}

/// Contains extended parameters for the TrackPopupMenuEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-tpmparams>.
///
/// {@category struct}
base class TPMPARAMS extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The rectangle to be excluded when positioning the window, in screen
  /// coordinates.
  external RECT rcExclude;
}

/// Contains attributes of a type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-typeattr>.
///
/// {@category struct}
base class TYPEATTR extends Struct {
  /// The GUID of the type information.
  external GUID guid;

  /// The locale of member names and documentation strings.
  @Uint32()
  external int lcid;

  @Uint32()
  external int _dwReserved;

  /// The constructor ID, or MEMBERID_NIL if none.
  @Int32()
  external int memidConstructor;

  /// The destructor ID, or MEMBERID_NIL if none.
  @Int32()
  external int memidDestructor;

  /// Reserved.
  external PWSTR lpstrSchema;

  /// The size of an instance of this type.
  @Uint32()
  external int cbSizeInstance;

  @Int32()
  external int _typekind;

  /// The number of functions.
  @Uint16()
  external int cFuncs;

  /// The number of variables or data members.
  @Uint16()
  external int cVars;

  /// The number of implemented interfaces.
  @Uint16()
  external int cImplTypes;

  /// The size of this type's VTBL.
  @Uint16()
  external int cbSizeVft;

  /// The byte alignment for an instance of this type.
  @Uint16()
  external int cbAlignment;

  /// The type flags.
  @Uint16()
  external int wTypeFlags;

  /// The major version number.
  @Uint16()
  external int wMajorVerNum;

  /// The minor version number.
  @Uint16()
  external int wMinorVerNum;

  /// If <b>typekind</b> is TKIND_ALIAS, specifies the type for which this type
  /// is an alias.
  external TYPEDESC tdescAlias;

  /// The IDL attributes of the described type.
  external IDLDESC idldescType;

  /// The kind of type.
  @pragma('vm:prefer-inline')
  TYPEKIND get typekind => TYPEKIND(_typekind);

  @pragma('vm:prefer-inline')
  set typekind(TYPEKIND value) => _typekind = value;
}

/// Describes the type of a variable, the return type of a function, or the type
/// of a function parameter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-typedesc>.
///
/// {@category struct}
base class TYPEDESC extends Struct {
  external TYPEDESC_0 Anonymous;

  @Uint16()
  external int _vt;

  /// The variant type.
  @pragma('vm:prefer-inline')
  VARENUM get vt => VARENUM(_vt);

  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => _vt = value;
}

/// {@category union}
sealed class TYPEDESC_0 extends Union {
  external Pointer<TYPEDESC> lptdesc;
  external Pointer<ARRAYDESC> lpadesc;

  @Uint32()
  external int hreftype;
}

extension TYPEDESC_0_Extension on TYPEDESC {
  @pragma('vm:prefer-inline')
  Pointer<TYPEDESC> get lptdesc => this.Anonymous.lptdesc;

  @pragma('vm:prefer-inline')
  set lptdesc(Pointer<TYPEDESC> value) => this.Anonymous.lptdesc = value;

  @pragma('vm:prefer-inline')
  Pointer<ARRAYDESC> get lpadesc => this.Anonymous.lpadesc;

  @pragma('vm:prefer-inline')
  set lpadesc(Pointer<ARRAYDESC> value) => this.Anonymous.lpadesc = value;

  @pragma('vm:prefer-inline')
  int get hreftype => this.Anonymous.hreftype;

  @pragma('vm:prefer-inline')
  set hreftype(int value) => this.Anonymous.hreftype = value;
}

/// Used by various Local Security Authority (LSA) functions to specify a
/// Unicode string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/subauth/ns-subauth-unicode_string>.
///
/// {@category struct}
base class UNICODE_STRING extends Struct {
  /// Specifies the length, in bytes, of the string pointed to by the
  /// <b>Buffer</b> member, not including the terminating <b>NULL</b> character,
  /// if any.
  @Uint16()
  external int Length;

  /// Specifies the total size, in bytes, of memory allocated for <b>Buffer</b>.
  @Uint16()
  external int MaximumLength;

  /// Pointer to a wide-character string.
  external PWSTR Buffer;
}

/// Defines a data type used by the Desktop Window Manager (DWM) APIs.
///
/// It represents a generic ratio and is used for different purposes and units
/// even within a single API.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ns-dwmapi-unsigned_ratio>.
///
/// {@category struct}
@Packed(1)
base class UNSIGNED_RATIO extends Struct {
  /// The ratio numerator.
  @Uint32()
  external int uiNumerator;

  /// The ratio denominator.
  @Uint32()
  external int uiDenominator;
}

/// Used by UpdateLayeredWindowIndirect to provide position, size, shape,
/// content, and translucency information for a layered window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-updatelayeredwindowinfo>.
///
/// {@category struct}
base class UPDATELAYEREDWINDOWINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// A handle to a DC for the screen.
  @IntPtr()
  external int hdcDst;

  /// The new screen position of the layered window.
  external Pointer<POINT> pptDst;

  /// The new size of the layered window.
  external Pointer<SIZE> psize;

  /// A handle to the DC for the surface that defines the layered window.
  @IntPtr()
  external int hdcSrc;

  /// The location of the layer in the device context.
  external Pointer<POINT> pptSrc;

  /// The color key to be used when composing the layered window.
  @Uint32()
  external int crKey;

  /// The transparency value to be used when composing the layered window.
  external Pointer<BLENDFUNCTION> pblend;

  @Uint32()
  external int _dwFlags;

  /// The area to be updated.
  external Pointer<RECT> prcDirty;

  @pragma('vm:prefer-inline')
  UPDATE_LAYERED_WINDOW_FLAGS get dwFlags =>
      UPDATE_LAYERED_WINDOW_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(UPDATE_LAYERED_WINDOW_FLAGS value) => _dwFlags = value;
}

/// {@category union}
@Packed(1)
sealed class USB_DEVICE_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external USB_DEVICE_STATUS_0 Anonymous;
}

/// {@category struct}
@Packed(1)
sealed class USB_DEVICE_STATUS_0 extends Struct {
  @Uint16()
  external int bitfield;

  @pragma('vm:prefer-inline')
  int get SelfPowered => bitfield.getBits(0, 1);

  @pragma('vm:prefer-inline')
  set SelfPowered(int value) => bitfield = bitfield.setBits(0, 1, value);

  @pragma('vm:prefer-inline')
  int get RemoteWakeup => bitfield.getBits(1, 1);

  @pragma('vm:prefer-inline')
  set RemoteWakeup(int value) => bitfield = bitfield.setBits(1, 1, value);

  @pragma('vm:prefer-inline')
  int get U1Enable => bitfield.getBits(2, 1);

  @pragma('vm:prefer-inline')
  set U1Enable(int value) => bitfield = bitfield.setBits(2, 1, value);

  @pragma('vm:prefer-inline')
  int get U2Enable => bitfield.getBits(3, 1);

  @pragma('vm:prefer-inline')
  set U2Enable(int value) => bitfield = bitfield.setBits(3, 1, value);

  @pragma('vm:prefer-inline')
  int get LtmEnable => bitfield.getBits(4, 1);

  @pragma('vm:prefer-inline')
  set LtmEnable(int value) => bitfield = bitfield.setBits(4, 1, value);
}

extension USB_DEVICE_STATUS_0_Extension on USB_DEVICE_STATUS {
  @pragma('vm:prefer-inline')
  int get bitfield => this.Anonymous.bitfield;

  @pragma('vm:prefer-inline')
  set bitfield(int value) => this.Anonymous.bitfield = value;

  @pragma('vm:prefer-inline')
  int get SelfPowered => this.Anonymous.SelfPowered;

  @pragma('vm:prefer-inline')
  set SelfPowered(int value) => this.Anonymous.SelfPowered = value;

  @pragma('vm:prefer-inline')
  int get RemoteWakeup => this.Anonymous.RemoteWakeup;

  @pragma('vm:prefer-inline')
  set RemoteWakeup(int value) => this.Anonymous.RemoteWakeup = value;

  @pragma('vm:prefer-inline')
  int get U1Enable => this.Anonymous.U1Enable;

  @pragma('vm:prefer-inline')
  set U1Enable(int value) => this.Anonymous.U1Enable = value;

  @pragma('vm:prefer-inline')
  int get U2Enable => this.Anonymous.U2Enable;

  @pragma('vm:prefer-inline')
  set U2Enable(int value) => this.Anonymous.U2Enable = value;

  @pragma('vm:prefer-inline')
  int get LtmEnable => this.Anonymous.LtmEnable;

  @pragma('vm:prefer-inline')
  set LtmEnable(int value) => this.Anonymous.LtmEnable = value;
}

/// Contains data about a UI Automation change that occurred.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ns-uiautomationcore-uiachangeinfo>.
///
/// {@category struct}
base class UiaChangeInfo extends Struct {
  /// Identifies the type of change info.
  @Int32()
  external int uiaId;

  /// Information about the type of change that occurred.
  external VARIANT payload;

  /// Detailed information about the change that occurred.
  external VARIANT extraInfo;
}

/// Contains information about a registry value.
///
/// The RegQueryMultipleValues function uses this structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/ns-winreg-valentw>.
///
/// {@category struct}
base class VALENT extends Struct {
  /// The name of the value to be retrieved.
  external PWSTR ve_valuename;

  /// The size of the data pointed to by <b>ve_valueptr</b>, in bytes.
  @Uint32()
  external int ve_valuelen;

  /// A pointer to the data for the value entry.
  @IntPtr()
  external int ve_valueptr;

  @Uint32()
  external int _ve_type;

  /// The type of data pointed to by <b>ve_valueptr</b>.
  @pragma('vm:prefer-inline')
  REG_VALUE_TYPE get ve_type => REG_VALUE_TYPE(_ve_type);

  @pragma('vm:prefer-inline')
  set ve_type(REG_VALUE_TYPE value) => _ve_type = value;
}

/// Describes a variable, constant, or data member.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-vardesc>.
///
/// {@category struct}
base class VARDESC extends Struct {
  /// The member ID.
  @Int32()
  external int memid;

  /// Reserved.
  external PWSTR lpstrSchema;

  external VARDESC_0 Anonymous;

  /// The variable type.
  external ELEMDESC elemdescVar;

  @Uint16()
  external int _wVarFlags;

  @Int32()
  external int _varkind;

  /// The variable flags.
  @pragma('vm:prefer-inline')
  VARFLAGS get wVarFlags => VARFLAGS(_wVarFlags);

  @pragma('vm:prefer-inline')
  set wVarFlags(VARFLAGS value) => _wVarFlags = value;

  /// The variable type.
  @pragma('vm:prefer-inline')
  VARKIND get varkind => VARKIND(_varkind);

  @pragma('vm:prefer-inline')
  set varkind(VARKIND value) => _varkind = value;
}

/// {@category union}
sealed class VARDESC_0 extends Union {
  @Uint32()
  external int oInst;

  external Pointer<VARIANT> lpvarValue;
}

extension VARDESC_0_Extension on VARDESC {
  @pragma('vm:prefer-inline')
  int get oInst => this.Anonymous.oInst;

  @pragma('vm:prefer-inline')
  set oInst(int value) => this.Anonymous.oInst = value;

  @pragma('vm:prefer-inline')
  Pointer<VARIANT> get lpvarValue => this.Anonymous.lpvarValue;

  @pragma('vm:prefer-inline')
  set lpvarValue(Pointer<VARIANT> value) => this.Anonymous.lpvarValue = value;
}

/// A container for a large union that carries many types of data.
///
/// The value in the first member of the structure, vt, describes which of the
/// union members is valid.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant>.
///
/// {@category struct}
base class VARIANT extends Struct {
  external VARIANT_0 Anonymous;
}

/// {@category union}
sealed class VARIANT_0 extends Union {
  external VARIANT_0_0 Anonymous;
  external DECIMAL decVal;
}

extension VARIANT_0_Extension on VARIANT {
  @pragma('vm:prefer-inline')
  VARIANT_0_0 get Anonymous => this.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(VARIANT_0_0 value) => this.Anonymous.Anonymous = value;

  @pragma('vm:prefer-inline')
  DECIMAL get decVal => this.Anonymous.decVal;

  @pragma('vm:prefer-inline')
  set decVal(DECIMAL value) => this.Anonymous.decVal = value;
}

/// {@category struct}
sealed class VARIANT_0_0 extends Struct {
  @Uint16()
  external int _vt;

  @Uint16()
  external int _wReserved1;

  @Uint16()
  external int _wReserved2;

  @Uint16()
  external int _wReserved3;

  external VARIANT_0_0_0 Anonymous;

  @pragma('vm:prefer-inline')
  VARENUM get vt => VARENUM(_vt);

  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => _vt = value;
}

extension VARIANT_0_0_Extension on VARIANT {
  @pragma('vm:prefer-inline')
  VARENUM get vt => this.Anonymous.Anonymous.vt;

  @pragma('vm:prefer-inline')
  set vt(VARENUM value) => this.Anonymous.Anonymous.vt = value;

  @pragma('vm:prefer-inline')
  VARIANT_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(VARIANT_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

/// {@category union}
sealed class VARIANT_0_0_0 extends Union {
  @Int64()
  external int llVal;

  @Int32()
  external int lVal;

  @Uint8()
  external int bVal;

  @Int16()
  external int iVal;

  @Float()
  external double fltVal;

  @Double()
  external double dblVal;

  @Int16()
  external int _boolVal;

  @Int16()
  external int __OBSOLETE__VARIANT_BOOL;

  @Int32()
  external int scode;

  external CY cyVal;

  @Double()
  external double date;

  external BSTR bstrVal;
  external VTablePointer _punkVal;
  external VTablePointer _pdispVal;
  external Pointer<SAFEARRAY> parray;
  external Pointer<Uint8> pbVal;
  external Pointer<Int16> piVal;
  external Pointer<Int32> plVal;
  external Pointer<Int64> pllVal;
  external Pointer<Float> pfltVal;
  external Pointer<Double> pdblVal;
  external Pointer<VARIANT_BOOL> pboolVal;
  external Pointer<VARIANT_BOOL> __OBSOLETE__VARIANT_PBOOL;
  external Pointer<Int32> pscode;
  external Pointer<CY> pcyVal;
  external Pointer<Double> pdate;
  external Pointer<BSTR> pbstrVal;
  external Pointer<VTablePointer> ppunkVal;
  external Pointer<VTablePointer> ppdispVal;
  external Pointer<Pointer<SAFEARRAY>> pparray;
  external Pointer<VARIANT> pvarVal;
  external Pointer byref;

  @Int8()
  external int cVal;

  @Uint16()
  external int uiVal;

  @Uint32()
  external int ulVal;

  @Uint64()
  external int ullVal;

  @Int32()
  external int intVal;

  @Uint32()
  external int uintVal;

  external Pointer<DECIMAL> pdecVal;
  external PSTR pcVal;
  external Pointer<Uint16> puiVal;
  external Pointer<Uint32> pulVal;
  external Pointer<Uint64> pullVal;
  external Pointer<Int32> pintVal;
  external Pointer<Uint32> puintVal;
  external VARIANT_0_0_0_0 Anonymous;

  @pragma('vm:prefer-inline')
  bool get boolVal => _boolVal != FALSE;

  @pragma('vm:prefer-inline')
  set boolVal(bool value) => _boolVal = value ? VARIANT_TRUE : FALSE;

  @pragma('vm:prefer-inline')
  IUnknown? get punkVal =>
      _punkVal.isNull ? null : (IUnknown(_punkVal)..addRef());

  @pragma('vm:prefer-inline')
  set punkVal(IUnknown? value) => _punkVal = value?.ptr ?? nullptr;

  @pragma('vm:prefer-inline')
  IDispatch? get pdispVal =>
      _pdispVal.isNull ? null : (IDispatch(_pdispVal)..addRef());

  @pragma('vm:prefer-inline')
  set pdispVal(IDispatch? value) => _pdispVal = value?.ptr ?? nullptr;
}

extension VARIANT_0_0_0_Extension on VARIANT {
  @pragma('vm:prefer-inline')
  int get llVal => this.Anonymous.Anonymous.Anonymous.llVal;

  @pragma('vm:prefer-inline')
  set llVal(int value) => this.Anonymous.Anonymous.Anonymous.llVal = value;

  @pragma('vm:prefer-inline')
  int get lVal => this.Anonymous.Anonymous.Anonymous.lVal;

  @pragma('vm:prefer-inline')
  set lVal(int value) => this.Anonymous.Anonymous.Anonymous.lVal = value;

  @pragma('vm:prefer-inline')
  int get bVal => this.Anonymous.Anonymous.Anonymous.bVal;

  @pragma('vm:prefer-inline')
  set bVal(int value) => this.Anonymous.Anonymous.Anonymous.bVal = value;

  @pragma('vm:prefer-inline')
  int get iVal => this.Anonymous.Anonymous.Anonymous.iVal;

  @pragma('vm:prefer-inline')
  set iVal(int value) => this.Anonymous.Anonymous.Anonymous.iVal = value;

  @pragma('vm:prefer-inline')
  double get fltVal => this.Anonymous.Anonymous.Anonymous.fltVal;

  @pragma('vm:prefer-inline')
  set fltVal(double value) => this.Anonymous.Anonymous.Anonymous.fltVal = value;

  @pragma('vm:prefer-inline')
  double get dblVal => this.Anonymous.Anonymous.Anonymous.dblVal;

  @pragma('vm:prefer-inline')
  set dblVal(double value) => this.Anonymous.Anonymous.Anonymous.dblVal = value;

  @pragma('vm:prefer-inline')
  bool get boolVal => this.Anonymous.Anonymous.Anonymous.boolVal;

  @pragma('vm:prefer-inline')
  set boolVal(bool value) => this.Anonymous.Anonymous.Anonymous.boolVal = value;

  @pragma('vm:prefer-inline')
  int get scode => this.Anonymous.Anonymous.Anonymous.scode;

  @pragma('vm:prefer-inline')
  set scode(int value) => this.Anonymous.Anonymous.Anonymous.scode = value;

  @pragma('vm:prefer-inline')
  CY get cyVal => this.Anonymous.Anonymous.Anonymous.cyVal;

  @pragma('vm:prefer-inline')
  set cyVal(CY value) => this.Anonymous.Anonymous.Anonymous.cyVal = value;

  @pragma('vm:prefer-inline')
  double get date => this.Anonymous.Anonymous.Anonymous.date;

  @pragma('vm:prefer-inline')
  set date(double value) => this.Anonymous.Anonymous.Anonymous.date = value;

  @pragma('vm:prefer-inline')
  BSTR get bstrVal => this.Anonymous.Anonymous.Anonymous.bstrVal;

  @pragma('vm:prefer-inline')
  set bstrVal(BSTR value) => this.Anonymous.Anonymous.Anonymous.bstrVal = value;

  @pragma('vm:prefer-inline')
  IUnknown? get punkVal => this.Anonymous.Anonymous.Anonymous.punkVal;

  @pragma('vm:prefer-inline')
  set punkVal(IUnknown? value) =>
      this.Anonymous.Anonymous.Anonymous.punkVal = value;

  @pragma('vm:prefer-inline')
  IDispatch? get pdispVal => this.Anonymous.Anonymous.Anonymous.pdispVal;

  @pragma('vm:prefer-inline')
  set pdispVal(IDispatch? value) =>
      this.Anonymous.Anonymous.Anonymous.pdispVal = value;

  @pragma('vm:prefer-inline')
  Pointer<SAFEARRAY> get parray => this.Anonymous.Anonymous.Anonymous.parray;

  @pragma('vm:prefer-inline')
  set parray(Pointer<SAFEARRAY> value) =>
      this.Anonymous.Anonymous.Anonymous.parray = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint8> get pbVal => this.Anonymous.Anonymous.Anonymous.pbVal;

  @pragma('vm:prefer-inline')
  set pbVal(Pointer<Uint8> value) =>
      this.Anonymous.Anonymous.Anonymous.pbVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int16> get piVal => this.Anonymous.Anonymous.Anonymous.piVal;

  @pragma('vm:prefer-inline')
  set piVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.piVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get plVal => this.Anonymous.Anonymous.Anonymous.plVal;

  @pragma('vm:prefer-inline')
  set plVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.plVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int64> get pllVal => this.Anonymous.Anonymous.Anonymous.pllVal;

  @pragma('vm:prefer-inline')
  set pllVal(Pointer<Int64> value) =>
      this.Anonymous.Anonymous.Anonymous.pllVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Float> get pfltVal => this.Anonymous.Anonymous.Anonymous.pfltVal;

  @pragma('vm:prefer-inline')
  set pfltVal(Pointer<Float> value) =>
      this.Anonymous.Anonymous.Anonymous.pfltVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Double> get pdblVal => this.Anonymous.Anonymous.Anonymous.pdblVal;

  @pragma('vm:prefer-inline')
  set pdblVal(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdblVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VARIANT_BOOL> get pboolVal =>
      this.Anonymous.Anonymous.Anonymous.pboolVal;

  @pragma('vm:prefer-inline')
  set pboolVal(Pointer<VARIANT_BOOL> value) =>
      this.Anonymous.Anonymous.Anonymous.pboolVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get pscode => this.Anonymous.Anonymous.Anonymous.pscode;

  @pragma('vm:prefer-inline')
  set pscode(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pscode = value;

  @pragma('vm:prefer-inline')
  Pointer<CY> get pcyVal => this.Anonymous.Anonymous.Anonymous.pcyVal;

  @pragma('vm:prefer-inline')
  set pcyVal(Pointer<CY> value) =>
      this.Anonymous.Anonymous.Anonymous.pcyVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Double> get pdate => this.Anonymous.Anonymous.Anonymous.pdate;

  @pragma('vm:prefer-inline')
  set pdate(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdate = value;

  @pragma('vm:prefer-inline')
  Pointer<BSTR> get pbstrVal => this.Anonymous.Anonymous.Anonymous.pbstrVal;

  @pragma('vm:prefer-inline')
  set pbstrVal(Pointer<BSTR> value) =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get ppunkVal =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal;

  @pragma('vm:prefer-inline')
  set ppunkVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal = value;

  @pragma('vm:prefer-inline')
  Pointer<VTablePointer> get ppdispVal =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal;

  @pragma('vm:prefer-inline')
  set ppdispVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Pointer<SAFEARRAY>> get pparray =>
      this.Anonymous.Anonymous.Anonymous.pparray;

  @pragma('vm:prefer-inline')
  set pparray(Pointer<Pointer<SAFEARRAY>> value) =>
      this.Anonymous.Anonymous.Anonymous.pparray = value;

  @pragma('vm:prefer-inline')
  Pointer<VARIANT> get pvarVal => this.Anonymous.Anonymous.Anonymous.pvarVal;

  @pragma('vm:prefer-inline')
  set pvarVal(Pointer<VARIANT> value) =>
      this.Anonymous.Anonymous.Anonymous.pvarVal = value;

  @pragma('vm:prefer-inline')
  Pointer get byref => this.Anonymous.Anonymous.Anonymous.byref;

  @pragma('vm:prefer-inline')
  set byref(Pointer value) => this.Anonymous.Anonymous.Anonymous.byref = value;

  @pragma('vm:prefer-inline')
  int get cVal => this.Anonymous.Anonymous.Anonymous.cVal;

  @pragma('vm:prefer-inline')
  set cVal(int value) => this.Anonymous.Anonymous.Anonymous.cVal = value;

  @pragma('vm:prefer-inline')
  int get uiVal => this.Anonymous.Anonymous.Anonymous.uiVal;

  @pragma('vm:prefer-inline')
  set uiVal(int value) => this.Anonymous.Anonymous.Anonymous.uiVal = value;

  @pragma('vm:prefer-inline')
  int get ulVal => this.Anonymous.Anonymous.Anonymous.ulVal;

  @pragma('vm:prefer-inline')
  set ulVal(int value) => this.Anonymous.Anonymous.Anonymous.ulVal = value;

  @pragma('vm:prefer-inline')
  int get ullVal => this.Anonymous.Anonymous.Anonymous.ullVal;

  @pragma('vm:prefer-inline')
  set ullVal(int value) => this.Anonymous.Anonymous.Anonymous.ullVal = value;

  @pragma('vm:prefer-inline')
  int get intVal => this.Anonymous.Anonymous.Anonymous.intVal;

  @pragma('vm:prefer-inline')
  set intVal(int value) => this.Anonymous.Anonymous.Anonymous.intVal = value;

  @pragma('vm:prefer-inline')
  int get uintVal => this.Anonymous.Anonymous.Anonymous.uintVal;

  @pragma('vm:prefer-inline')
  set uintVal(int value) => this.Anonymous.Anonymous.Anonymous.uintVal = value;

  @pragma('vm:prefer-inline')
  Pointer<DECIMAL> get pdecVal => this.Anonymous.Anonymous.Anonymous.pdecVal;

  @pragma('vm:prefer-inline')
  set pdecVal(Pointer<DECIMAL> value) =>
      this.Anonymous.Anonymous.Anonymous.pdecVal = value;

  @pragma('vm:prefer-inline')
  PSTR get pcVal => this.Anonymous.Anonymous.Anonymous.pcVal;

  @pragma('vm:prefer-inline')
  set pcVal(PSTR value) => this.Anonymous.Anonymous.Anonymous.pcVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint16> get puiVal => this.Anonymous.Anonymous.Anonymous.puiVal;

  @pragma('vm:prefer-inline')
  set puiVal(Pointer<Uint16> value) =>
      this.Anonymous.Anonymous.Anonymous.puiVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get pulVal => this.Anonymous.Anonymous.Anonymous.pulVal;

  @pragma('vm:prefer-inline')
  set pulVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.pulVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint64> get pullVal => this.Anonymous.Anonymous.Anonymous.pullVal;

  @pragma('vm:prefer-inline')
  set pullVal(Pointer<Uint64> value) =>
      this.Anonymous.Anonymous.Anonymous.pullVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Int32> get pintVal => this.Anonymous.Anonymous.Anonymous.pintVal;

  @pragma('vm:prefer-inline')
  set pintVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pintVal = value;

  @pragma('vm:prefer-inline')
  Pointer<Uint32> get puintVal => this.Anonymous.Anonymous.Anonymous.puintVal;

  @pragma('vm:prefer-inline')
  set puintVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.puintVal = value;

  @pragma('vm:prefer-inline')
  VARIANT_0_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous.Anonymous;

  @pragma('vm:prefer-inline')
  set Anonymous(VARIANT_0_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class VARIANT_0_0_0_0 extends Struct {
  external Pointer pvRecord;
  external VTablePointer _pRecInfo;

  @pragma('vm:prefer-inline')
  IRecordInfo? get pRecInfo =>
      _pRecInfo.isNull ? null : (IRecordInfo(_pRecInfo)..addRef());

  @pragma('vm:prefer-inline')
  set pRecInfo(IRecordInfo? value) => _pRecInfo = value?.ptr ?? nullptr;
}

extension VARIANT_0_0_0_0_Extension on VARIANT {
  @pragma('vm:prefer-inline')
  Pointer get pvRecord => this.Anonymous.Anonymous.Anonymous.Anonymous.pvRecord;

  @pragma('vm:prefer-inline')
  set pvRecord(Pointer value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pvRecord = value;

  @pragma('vm:prefer-inline')
  IRecordInfo? get pRecInfo =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo;

  @pragma('vm:prefer-inline')
  set pRecInfo(IRecordInfo? value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo = value;
}

typedef VARIANT_BOOL = Int16;

/// {@category struct}
base class VERSIONEDSTREAM extends Struct {
  external GUID guidVersion;
  external VTablePointer _pStream;

  @pragma('vm:prefer-inline')
  IStream? get pStream =>
      _pStream.isNull ? null : (IStream(_pStream)..addRef());

  @pragma('vm:prefer-inline')
  set pStream(IStream? value) => _pStream = value?.ptr ?? nullptr;
}

/// Represents a physical location on a disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ns-winioctl-volume_disk_extents>.
///
/// {@category struct}
base class VOLUME_DISK_EXTENTS extends Struct {
  /// The number of disks in the volume (a volume can span multiple disks).
  @Uint32()
  external int NumberOfDiskExtents;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winioctl/ns-winioctl-disk_extent">DISK_EXTENT</a>
  /// structures.
  @Array.variableWithVariableDimension(1)
  external Array<DISK_EXTENT> Extents;
}

/// Contains version information for a file.
///
/// This information is language and code page independent.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/verrsrc/ns-verrsrc-vs_fixedfileinfo>.
///
/// {@category struct}
base class VS_FIXEDFILEINFO extends Struct {
  /// Contains the value 0xFEEF04BD.
  @Uint32()
  external int dwSignature;

  /// The binary version number of this structure.
  @Uint32()
  external int dwStrucVersion;

  /// The most significant 32 bits of the file's binary version number.
  @Uint32()
  external int dwFileVersionMS;

  /// The least significant 32 bits of the file's binary version number.
  @Uint32()
  external int dwFileVersionLS;

  /// The most significant 32 bits of the binary version number of the product
  /// with which this file was distributed.
  @Uint32()
  external int dwProductVersionMS;

  /// The least significant 32 bits of the binary version number of the product
  /// with which this file was distributed.
  @Uint32()
  external int dwProductVersionLS;

  /// Contains a bitmask that specifies the valid bits in <b>dwFileFlags</b>.
  @Uint32()
  external int dwFileFlagsMask;

  @Uint32()
  external int _dwFileFlags;

  @Uint32()
  external int _dwFileOS;

  @Uint32()
  external int _dwFileType;

  @Uint32()
  external int _dwFileSubtype;

  /// The most significant 32 bits of the file's 64-bit binary creation date and
  /// time stamp.
  @Uint32()
  external int dwFileDateMS;

  /// The least significant 32 bits of the file's 64-bit binary creation date
  /// and time stamp.
  @Uint32()
  external int dwFileDateLS;

  @pragma('vm:prefer-inline')
  VS_FIXEDFILEINFO_FILE_FLAGS get dwFileFlags =>
      VS_FIXEDFILEINFO_FILE_FLAGS(_dwFileFlags);

  @pragma('vm:prefer-inline')
  set dwFileFlags(VS_FIXEDFILEINFO_FILE_FLAGS value) => _dwFileFlags = value;

  @pragma('vm:prefer-inline')
  VS_FIXEDFILEINFO_FILE_OS get dwFileOS => VS_FIXEDFILEINFO_FILE_OS(_dwFileOS);

  @pragma('vm:prefer-inline')
  set dwFileOS(VS_FIXEDFILEINFO_FILE_OS value) => _dwFileOS = value;

  @pragma('vm:prefer-inline')
  VS_FIXEDFILEINFO_FILE_TYPE get dwFileType =>
      VS_FIXEDFILEINFO_FILE_TYPE(_dwFileType);

  @pragma('vm:prefer-inline')
  set dwFileType(VS_FIXEDFILEINFO_FILE_TYPE value) => _dwFileType = value;

  /// The function of the file.
  @pragma('vm:prefer-inline')
  VS_FIXEDFILEINFO_FILE_SUBTYPE get dwFileSubtype =>
      VS_FIXEDFILEINFO_FILE_SUBTYPE(_dwFileSubtype);

  @pragma('vm:prefer-inline')
  set dwFileSubtype(VS_FIXEDFILEINFO_FILE_SUBTYPE value) =>
      _dwFileSubtype = value;
}

/// VirtualDesktopManager implements the IVirtualDesktopManager interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/shell/virtualdesktopmanager>.
final VirtualDesktopManager = Guid.fromComponents(
  0xaa509086,
  0x5ca9,
  0x4c25,
  Uint8List.fromList(const [0x8f, 0x95, 0x58, 0x9d, 0x3c, 0x7, 0xb4, 0x8a]),
);

/// Defines the format of waveform-audio data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-waveformatex>.
///
/// {@category struct}
@Packed(1)
base class WAVEFORMATEX extends Struct {
  /// Waveform-audio format type.
  @Uint16()
  external int wFormatTag;

  /// Number of channels in the waveform-audio data.
  @Uint16()
  external int nChannels;

  /// Sample rate, in samples per second (hertz).
  @Uint32()
  external int nSamplesPerSec;

  /// Required average data-transfer rate, in bytes per second, for the format
  /// tag.
  @Uint32()
  external int nAvgBytesPerSec;

  /// Block alignment, in bytes.
  @Uint16()
  external int nBlockAlign;

  /// Bits per sample for the <b>wFormatTag</b> format type.
  @Uint16()
  external int wBitsPerSample;

  /// The size of the struct in bytes.
  @Uint16()
  external int cbSize;
}

/// Defines the format of waveform-audio data for formats having more than two
/// channels or higher sample resolutions than allowed by WAVEFORMATEX.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmreg/ns-mmreg-waveformatextensible>.
///
/// {@category struct}
@Packed(1)
base class WAVEFORMATEXTENSIBLE extends Struct {
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/dd757713(v=vs.85)">WAVEFORMATEX</a>
  /// structure that specifies the basic format.
  external WAVEFORMATEX Format;

  /// A union describing the sample format.
  external WAVEFORMATEXTENSIBLE_0 Samples;

  /// Bitmask specifying the assignment of channels in the stream to speaker
  /// positions.
  @Uint32()
  external int dwChannelMask;

  /// Subformat of the data, such as KSDATAFORMAT_SUBTYPE_PCM.
  external GUID SubFormat;
}

/// {@category union}
@Packed(1)
sealed class WAVEFORMATEXTENSIBLE_0 extends Union {
  @Uint16()
  external int wValidBitsPerSample;

  @Uint16()
  external int wSamplesPerBlock;

  @Uint16()
  external int _wReserved;
}

extension WAVEFORMATEXTENSIBLE_0_Extension on WAVEFORMATEXTENSIBLE {
  @pragma('vm:prefer-inline')
  int get wValidBitsPerSample => this.Samples.wValidBitsPerSample;

  @pragma('vm:prefer-inline')
  set wValidBitsPerSample(int value) =>
      this.Samples.wValidBitsPerSample = value;

  @pragma('vm:prefer-inline')
  int get wSamplesPerBlock => this.Samples.wSamplesPerBlock;

  @pragma('vm:prefer-inline')
  set wSamplesPerBlock(int value) => this.Samples.wSamplesPerBlock = value;
}

/// Defines the header used to identify a waveform-audio buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-wavehdr>.
///
/// {@category struct}
@Packed(1)
base class WAVEHDR extends Struct {
  /// Pointer to the waveform buffer.
  external PSTR lpData;

  /// Length, in bytes, of the buffer.
  @Uint32()
  external int dwBufferLength;

  /// When the header is used in input, specifies how much data is in the
  /// buffer.
  @Uint32()
  external int dwBytesRecorded;

  /// User data.
  @IntPtr()
  external int dwUser;

  /// A bitwise <b>OR</b> of zero or more flags.
  @Uint32()
  external int dwFlags;

  /// Number of times to play the loop.
  @Uint32()
  external int dwLoops;

  /// Reserved.
  external Pointer<WAVEHDR> lpNext;

  @IntPtr()
  external int reserved;
}

/// Describes the capabilities of a waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-waveincapsw>.
///
/// {@category struct}
@Packed(1)
base class WAVEINCAPS extends Struct {
  /// Manufacturer identifier for the device driver for the waveform-audio input
  /// device.
  @Uint16()
  external int wMid;

  /// Product identifier for the waveform-audio input device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the waveform-audio input device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Standard formats that are supported.
  @Uint32()
  external int dwFormats;

  /// Number specifying whether the device supports mono (1) or stereo (2)
  /// input.
  @Uint16()
  external int wChannels;

  @Uint16()
  external int _wReserved1;

  /// Product name in a string.
  @pragma('vm:prefer-inline')
  String get szPname => _szPname.toDartString();

  @pragma('vm:prefer-inline')
  set szPname(String value) => _szPname.setString(value);
}

/// Describes the capabilities of a waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/ns-mmeapi-waveoutcapsw>.
///
/// {@category struct}
@Packed(1)
base class WAVEOUTCAPS extends Struct {
  /// Manufacturer identifier for the device driver for the device.
  @Uint16()
  external int wMid;

  /// Product identifier for the device.
  @Uint16()
  external int wPid;

  /// Version number of the device driver for the device.
  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  /// Standard formats that are supported.
  @Uint32()
  external int dwFormats;

  /// Number specifying whether the device supports mono (1) or stereo (2)
  /// output.
  @Uint16()
  external int wChannels;

  @Uint16()
  external int _wReserved1;

  /// Optional functionality supported by the device.
  @Uint32()
  external int dwSupport;

  /// Product name in a string.
  @pragma('vm:prefer-inline')
  String get szPname => _szPname.toDartString();

  @pragma('vm:prefer-inline')
  set szPname(String value) => _szPname.setString(value);
}

/// Contains attribute information for a file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/ns-fileapi-win32_file_attribute_data>.
///
/// {@category struct}
base class WIN32_FILE_ATTRIBUTE_DATA extends Struct {
  /// The file system attribute information for a file or directory.
  @Uint32()
  external int dwFileAttributes;

  /// A `FILETIME` structure that specifies when the file or directory is
  /// created.
  external FILETIME ftCreationTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastAccessTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastWriteTime;

  /// The high-order <b>DWORD</b> of the file size.
  @Uint32()
  external int nFileSizeHigh;

  /// The low-order <b>DWORD</b> of the file size.
  @Uint32()
  external int nFileSizeLow;
}

/// Contains information about the file that is found by the FindFirstFile,
/// FindFirstFileEx, or FindNextFile function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ns-minwinbase-win32_find_dataw>.
///
/// {@category struct}
base class WIN32_FIND_DATA extends Struct {
  /// The file attributes of a file.
  @Uint32()
  external int dwFileAttributes;

  /// A `FILETIME` structure that specifies when a file or directory was
  /// created.
  external FILETIME ftCreationTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastAccessTime;

  /// A `FILETIME` structure.
  external FILETIME ftLastWriteTime;

  /// The high-order <b>DWORD</b> value of the file size, in bytes.
  @Uint32()
  external int nFileSizeHigh;

  /// The low-order <b>DWORD</b> value of the file size, in bytes.
  @Uint32()
  external int nFileSizeLow;

  @Uint32()
  external int _dwReserved0;

  @Uint32()
  external int _dwReserved1;

  @Array(260)
  external Array<Uint16> _cFileName;

  @Array(14)
  external Array<Uint16> _cAlternateFileName;

  /// The name of the file.
  @pragma('vm:prefer-inline')
  String get cFileName => _cFileName.toDartString();

  @pragma('vm:prefer-inline')
  set cFileName(String value) => _cFileName.setString(value);

  /// An alternative name for the file.
  @pragma('vm:prefer-inline')
  String get cAlternateFileName => _cAlternateFileName.toDartString();

  @pragma('vm:prefer-inline')
  set cAlternateFileName(String value) => _cAlternateFileName.setString(value);
}

/// Contains window information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-windowinfo>.
///
/// {@category struct}
base class WINDOWINFO extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  /// The coordinates of the window.
  external RECT rcWindow;

  /// The coordinates of the client area.
  external RECT rcClient;

  @Uint32()
  external int _dwStyle;

  @Uint32()
  external int _dwExStyle;

  /// The window status.
  @Uint32()
  external int dwWindowStatus;

  /// The width of the window border, in pixels.
  @Uint32()
  external int cxWindowBorders;

  /// The height of the window border, in pixels.
  @Uint32()
  external int cyWindowBorders;

  /// The window class atom (see <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/nf-winuser-registerclassa">RegisterClass</a>).
  @Uint16()
  external int atomWindowType;

  /// The Windows version of the application that created the window.
  @Uint16()
  external int wCreatorVersion;

  /// The window styles.
  @pragma('vm:prefer-inline')
  WINDOW_STYLE get dwStyle => WINDOW_STYLE(_dwStyle);

  @pragma('vm:prefer-inline')
  set dwStyle(WINDOW_STYLE value) => _dwStyle = value;

  /// The extended window styles.
  @pragma('vm:prefer-inline')
  WINDOW_EX_STYLE get dwExStyle => WINDOW_EX_STYLE(_dwExStyle);

  @pragma('vm:prefer-inline')
  set dwExStyle(WINDOW_EX_STYLE value) => _dwExStyle = value;
}

/// Contains information about the placement of a window on the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-windowplacement>.
///
/// {@category struct}
base class WINDOWPLACEMENT extends Struct {
  /// The length of the structure, in bytes.
  @Uint32()
  external int length;

  @Uint32()
  external int _flags;

  @Uint32()
  external int _showCmd;

  /// The coordinates of the window's upper-left corner when the window is
  /// minimized.
  external POINT ptMinPosition;

  /// The coordinates of the window's upper-left corner when the window is
  /// maximized.
  external POINT ptMaxPosition;

  /// The window's coordinates when the window is in the restored position.
  external RECT rcNormalPosition;

  @pragma('vm:prefer-inline')
  WINDOWPLACEMENT_FLAGS get flags => WINDOWPLACEMENT_FLAGS(_flags);

  @pragma('vm:prefer-inline')
  set flags(WINDOWPLACEMENT_FLAGS value) => _flags = value;

  /// The current show state of the window.
  @pragma('vm:prefer-inline')
  SHOW_WINDOW_CMD get showCmd => SHOW_WINDOW_CMD(_showCmd);

  @pragma('vm:prefer-inline')
  set showCmd(SHOW_WINDOW_CMD value) => _showCmd = value;
}

/// Contains information about the size and position of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-windowpos>.
///
/// {@category struct}
base class WINDOWPOS extends Struct {
  /// A handle to the window.
  @IntPtr()
  external int hwnd;

  /// The position of the window in Z order (front-to-back position).
  @IntPtr()
  external int hwndInsertAfter;

  /// The position of the left edge of the window.
  @Int32()
  external int x;

  /// The position of the top edge of the window.
  @Int32()
  external int y;

  /// The window width, in pixels.
  @Int32()
  external int cx;

  /// The window height, in pixels.
  @Int32()
  external int cy;

  @Uint32()
  external int _flags;

  @pragma('vm:prefer-inline')
  SET_WINDOW_POS_FLAGS get flags => SET_WINDOW_POS_FLAGS(_flags);

  @pragma('vm:prefer-inline')
  set flags(SET_WINDOW_POS_FLAGS value) => _flags = value;
}

/// Describes a change in the size of the console screen buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/window-buffer-size-record-str>.
///
/// {@category struct}
base class WINDOW_BUFFER_SIZE_RECORD extends Struct {
  /// A `COORD` structure that contains the size of the console screen buffer,
  /// in character cell columns and rows.
  external COORD dwSize;
}

/// Contains association attributes for a connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_association_attributes>.
///
/// {@category struct}
base class WLAN_ASSOCIATION_ATTRIBUTES extends Struct {
  /// A `DOT11_SSID` structure that contains the SSID of the association.
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int _dot11BssType;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-mac-address-type">DOT11_MAC_ADDRESS</a>
  /// that contains the BSSID of the association.
  @Array(6)
  external Array<Uint8> dot11Bssid;

  @Int32()
  external int _dot11PhyType;

  /// The position of the <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// value in the structure containing the list of PHY types.
  @Uint32()
  external int uDot11PhyIndex;

  /// A percentage value that represents the signal quality of the network.
  @Uint32()
  external int wlanSignalQuality;

  /// Contains the receiving rate of the association.
  @Uint32()
  external int ulRxRate;

  /// Contains the transmission rate of the association.
  @Uint32()
  external int ulTxRate;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that specifies whether the network is infrastructure or ad hoc.
  @pragma('vm:prefer-inline')
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  @pragma('vm:prefer-inline')
  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// value that indicates the physical type of the association.
  @pragma('vm:prefer-inline')
  DOT11_PHY_TYPE get dot11PhyType => DOT11_PHY_TYPE(_dot11PhyType);

  @pragma('vm:prefer-inline')
  set dot11PhyType(DOT11_PHY_TYPE value) => _dot11PhyType = value;
}

/// Contains a list of authentication and cipher algorithm pairs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_auth_cipher_pair_list>.
///
/// {@category struct}
base class WLAN_AUTH_CIPHER_PAIR_LIST extends Struct {
  /// Contains the number of supported auth-cipher pairs.
  @Uint32()
  external int dwNumberOfItems;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-cipher-pair">DOT11_AUTH_CIPHER_PAIR</a>
  /// structure containing a list of auth-cipher pairs.
  @Array.variableWithVariableDimension(1)
  external Array<DOT11_AUTH_CIPHER_PAIR> pAuthCipherPairList;
}

/// Contains information about an available wireless network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_available_network>.
///
/// {@category struct}
base class WLAN_AVAILABLE_NETWORK extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  /// A `DOT11_SSID` structure that contains the SSID of the visible wireless
  /// network.
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int _dot11BssType;

  /// Indicates the number of BSSIDs in the network.
  @Uint32()
  external int uNumberOfBssids;

  @Int32()
  external int _bNetworkConnectable;

  /// A WLAN_REASON_CODE value that indicates why a network cannot be connected
  /// to.
  @Uint32()
  external int wlanNotConnectableReason;

  /// The number of PHY types supported on available networks.
  @Uint32()
  external int uNumberOfPhyTypes;

  /// Contains an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// values that represent the PHY types supported by the available networks.
  @Array(8)
  external Array<Int32> dot11PhyTypes;

  @Int32()
  external int _bMorePhyTypes;

  /// A percentage value that represents the signal quality of the network.
  @Uint32()
  external int wlanSignalQuality;

  @Int32()
  external int _bSecurityEnabled;

  @Int32()
  external int _dot11DefaultAuthAlgorithm;

  @Int32()
  external int _dot11DefaultCipherAlgorithm;

  /// Contains various flags for the network.
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int _dwReserved;

  /// Contains the profile name associated with the network.
  @pragma('vm:prefer-inline')
  String get strProfileName => _strProfileName.toDartString();

  @pragma('vm:prefer-inline')
  set strProfileName(String value) => _strProfileName.setString(value);

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that specifies whether the network is infrastructure or ad hoc.
  @pragma('vm:prefer-inline')
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  @pragma('vm:prefer-inline')
  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Indicates whether the network is connectable or not.
  @pragma('vm:prefer-inline')
  bool get bNetworkConnectable => _bNetworkConnectable != FALSE;

  @pragma('vm:prefer-inline')
  set bNetworkConnectable(bool value) =>
      _bNetworkConnectable = value ? TRUE : FALSE;

  /// Specifies if there are more than <b>WLAN_MAX_PHY_TYPE_NUMBER</b> PHY types
  /// supported.
  @pragma('vm:prefer-inline')
  bool get bMorePhyTypes => _bMorePhyTypes != FALSE;

  @pragma('vm:prefer-inline')
  set bMorePhyTypes(bool value) => _bMorePhyTypes = value ? TRUE : FALSE;

  /// Indicates whether security is enabled on the network.
  @pragma('vm:prefer-inline')
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  @pragma('vm:prefer-inline')
  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-algorithm">DOT11_AUTH_ALGORITHM</a>
  /// value that indicates the default authentication algorithm used to join
  /// this network for the first time.
  @pragma('vm:prefer-inline')
  DOT11_AUTH_ALGORITHM get dot11DefaultAuthAlgorithm =>
      DOT11_AUTH_ALGORITHM(_dot11DefaultAuthAlgorithm);

  @pragma('vm:prefer-inline')
  set dot11DefaultAuthAlgorithm(DOT11_AUTH_ALGORITHM value) =>
      _dot11DefaultAuthAlgorithm = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-cipher-algorithm">DOT11_CIPHER_ALGORITHM</a>
  /// value that indicates the default cipher algorithm to be used when joining
  /// this network.
  @pragma('vm:prefer-inline')
  DOT11_CIPHER_ALGORITHM get dot11DefaultCipherAlgorithm =>
      DOT11_CIPHER_ALGORITHM(_dot11DefaultCipherAlgorithm);

  @pragma('vm:prefer-inline')
  set dot11DefaultCipherAlgorithm(DOT11_CIPHER_ALGORITHM value) =>
      _dot11DefaultCipherAlgorithm = value;
}

/// Contains an array of information about available networks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_available_network_list>.
///
/// {@category struct}
base class WLAN_AVAILABLE_NETWORK_LIST extends Struct {
  /// Contains the number of items in the <b>Network</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_available_network">WLAN_AVAILABLE_NETWORK</a>
  /// structures containing interface information.
  @Array.variableWithVariableDimension(1)
  external Array<WLAN_AVAILABLE_NETWORK> Network;
}

/// Contains information about a basic service set (BSS).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_bss_entry>.
///
/// {@category struct}
base class WLAN_BSS_ENTRY extends Struct {
  /// The SSID of the access point (AP) or peer station associated with the BSS.
  external DOT11_SSID dot11Ssid;

  /// The identifier (ID) of the PHY that the wireless LAN interface used to
  /// detect the BSS network.
  @Uint32()
  external int uPhyId;

  /// The media access control (MAC) address of the access point for
  /// infrastructure BSS networks or the peer station for independent BSS
  /// networks (ad hoc networks) that sent the 802.11 Beacon or Probe Response
  /// frame received by the wireless LAN interface while scanning.
  @Array(6)
  external Array<Uint8> dot11Bssid;

  @Int32()
  external int _dot11BssType;

  @Int32()
  external int _dot11BssPhyType;

  /// The received signal strength indicator (RSSI) value, in units of decibels
  /// referenced to 1.0 milliwatts (dBm), as detected by the wireless LAN
  /// interface driver for the AP or peer station.
  @Int32()
  external int lRssi;

  /// The link quality reported by the wireless LAN interface driver.
  @Uint32()
  external int uLinkQuality;

  @Uint8()
  external int _bInRegDomain;

  /// The value of the Beacon Interval field from the 802.11 Beacon or Probe
  /// Response frame received by the wireless LAN interface.
  @Uint16()
  external int usBeaconPeriod;

  /// The value of the Timestamp field from the 802.11 Beacon or Probe Response
  /// frame received by the wireless LAN interface.
  @Uint64()
  external int ullTimestamp;

  /// The host timestamp value that records when wireless LAN interface received
  /// the Beacon or Probe Response frame.
  @Uint64()
  external int ullHostTimestamp;

  /// The value of the Capability Information field from the 802.11 Beacon or
  /// Probe Response frame received by the wireless LAN interface.
  @Uint16()
  external int usCapabilityInformation;

  /// The channel center frequency of the band on which the 802.11 Beacon or
  /// Probe Response frame was received.
  @Uint32()
  external int ulChCenterFrequency;

  /// A set of data transfer rates supported by the BSS.
  external WLAN_RATE_SET wlanRateSet;

  /// The offset, in bytes, of the information element (IE) data blob from the
  /// beginning of the <b>WLAN_BSS_ENTRY</b> structure.
  @Uint32()
  external int ulIeOffset;

  /// The size, in bytes, of the IE data blob in the <b>WLAN_BSS_ENTRY</b>
  /// structure.
  @Uint32()
  external int ulIeSize;

  /// The BSS network type.
  @pragma('vm:prefer-inline')
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  @pragma('vm:prefer-inline')
  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// The PHY type for this network.
  @pragma('vm:prefer-inline')
  DOT11_PHY_TYPE get dot11BssPhyType => DOT11_PHY_TYPE(_dot11BssPhyType);

  @pragma('vm:prefer-inline')
  set dot11BssPhyType(DOT11_PHY_TYPE value) => _dot11BssPhyType = value;

  /// A value that specifies whether the AP or peer station is operating within
  /// the regulatory domain as identified by the country/region.
  @pragma('vm:prefer-inline')
  bool get bInRegDomain => _bInRegDomain != FALSE;

  @pragma('vm:prefer-inline')
  set bInRegDomain(bool value) => _bInRegDomain = value ? TRUE : FALSE;
}

/// Contains a list of basic service set (BSS) entries.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_bss_list>.
///
/// {@category struct}
base class WLAN_BSS_LIST extends Struct {
  /// The total size of this structure, in bytes.
  @Uint32()
  external int dwTotalSize;

  /// The number of items in the <b>wlanBssEntries</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_bss_entry">WLAN_BSS_ENTRY</a>
  /// structures that contains information about a BSS.
  @Array.variableWithVariableDimension(1)
  external Array<WLAN_BSS_ENTRY> wlanBssEntries;
}

/// Defines the attributes of a wireless connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_connection_attributes>.
///
/// {@category struct}
base class WLAN_CONNECTION_ATTRIBUTES extends Struct {
  @Int32()
  external int _isState;

  @Int32()
  external int _wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  /// A `WLAN_ASSOCIATION_ATTRIBUTES` structure that contains the attributes of
  /// the association.
  external WLAN_ASSOCIATION_ATTRIBUTES wlanAssociationAttributes;

  /// A `WLAN_SECURITY_ATTRIBUTES` structure that contains the security
  /// attributes of the connection.
  external WLAN_SECURITY_ATTRIBUTES wlanSecurityAttributes;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_state-r1">WLAN_INTERFACE_STATE</a>
  /// value that indicates the state of the interface.
  @pragma('vm:prefer-inline')
  WLAN_INTERFACE_STATE get isState => WLAN_INTERFACE_STATE(_isState);

  @pragma('vm:prefer-inline')
  set isState(WLAN_INTERFACE_STATE value) => _isState = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that indicates the mode of the connection.
  @pragma('vm:prefer-inline')
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  @pragma('vm:prefer-inline')
  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// The name of the profile used for the connection.
  @pragma('vm:prefer-inline')
  String get strProfileName => _strProfileName.toDartString();

  @pragma('vm:prefer-inline')
  set strProfileName(String value) => _strProfileName.setString(value);
}

/// Contains information about connection related notifications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_connection_notification_data>.
///
/// {@category struct}
base class WLAN_CONNECTION_NOTIFICATION_DATA extends Struct {
  @Int32()
  external int _wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  /// A `DOT11_SSID` structure that contains the SSID of the association.
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int _dot11BssType;

  @Int32()
  external int _bSecurityEnabled;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/wlan-reason-code">WLAN_REASON_CODE</a>
  /// that indicates the reason for an operation failure.
  @Uint32()
  external int wlanReasonCode;

  @Uint32()
  external int _dwFlags;

  @Array.variableWithVariableDimension(1)
  external Array<Uint16> _strProfileXml;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that specifies the mode of the connection.
  @pragma('vm:prefer-inline')
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  @pragma('vm:prefer-inline')
  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// The name of the profile used for the connection.
  @pragma('vm:prefer-inline')
  String get strProfileName => _strProfileName.toDartString();

  @pragma('vm:prefer-inline')
  set strProfileName(String value) => _strProfileName.setString(value);

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS network type.
  @pragma('vm:prefer-inline')
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  @pragma('vm:prefer-inline')
  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Indicates whether security is enabled for this connection.
  @pragma('vm:prefer-inline')
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  @pragma('vm:prefer-inline')
  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// A set of flags that provide additional information for the network
  /// connection.
  @pragma('vm:prefer-inline')
  WLAN_CONNECTION_NOTIFICATION_FLAGS get dwFlags =>
      WLAN_CONNECTION_NOTIFICATION_FLAGS(_dwFlags);

  @pragma('vm:prefer-inline')
  set dwFlags(WLAN_CONNECTION_NOTIFICATION_FLAGS value) => _dwFlags = value;

  /// This field contains the XML presentation of the profile used for
  /// discovery, if the connection succeeds.
  @pragma('vm:prefer-inline')
  String get strProfileXml => _strProfileXml.toDartString();

  @pragma('vm:prefer-inline')
  set strProfileXml(String value) => _strProfileXml.setString(value);
}

/// Specifies the parameters used when using the WlanConnect function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_connection_parameters>.
///
/// {@category struct}
base class WLAN_CONNECTION_PARAMETERS extends Struct {
  @Int32()
  external int _wlanConnectionMode;

  /// Specifies the profile being used for the connection.
  external PWSTR strProfile;

  /// Pointer to a <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-ssid">DOT11_SSID</a>
  /// structure that specifies the SSID of the network to connect to.
  external Pointer<DOT11_SSID> pDot11Ssid;

  /// Pointer to a <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bssid-list">DOT11_BSSID_LIST</a>
  /// structure that contains the list of basic service set (BSS) identifiers
  /// desired for the connection.
  external Pointer<DOT11_BSSID_LIST> pDesiredBssidList;

  @Int32()
  external int _dot11BssType;

  @Uint32()
  external int dwFlags;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that specifies the mode of connection.
  @pragma('vm:prefer-inline')
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  @pragma('vm:prefer-inline')
  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS type of the network.
  @pragma('vm:prefer-inline')
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  @pragma('vm:prefer-inline')
  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;
}

/// Contains a list of supported country or region strings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_country_or_region_string_list>.
///
/// {@category struct}
base class WLAN_COUNTRY_OR_REGION_STRING_LIST extends Struct {
  /// Indicates the number of supported country or region strings.
  @Uint32()
  external int dwNumberOfItems;

  /// A list of supported country or region strings.
  @Array.variableWithVariableDimension(3)
  external Array<Uint8> pCountryOrRegionStringList;
}

/// Contains an array of device service GUIDs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_device_service_guid_list>.
///
/// {@category struct}
base class WLAN_DEVICE_SERVICE_GUID_LIST extends Struct {
  /// The number of items in the *DeviceService* argument.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// A pointer to an array containing [GUID]s; each corresponds to a WLAN
  /// device service that the driver supports.
  @Array.variableWithVariableDimension(1)
  external Array<GUID> DeviceService;
}

/// A structure that represents a device service notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_device_service_notification_data>.
///
/// {@category struct}
base class WLAN_DEVICE_SERVICE_NOTIFICATION_DATA extends Struct {
  /// The [GUID] identifying the device service for this notification.
  external GUID DeviceService;

  /// The opcode that identifies the operation under the device service for this
  /// notification.
  @Uint32()
  external int dwOpCode;

  /// The size, in bytes, of the *DataBlob* member.
  @Uint32()
  external int dwDataSize;

  /// A pointer to an array containing **BYTES**s, representing the data blob.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> DataBlob;
}

/// Contains information about the connection settings on the wireless Hosted
/// Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_connection_settings>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS extends Struct {
  /// The SSID associated with the wireless Hosted Network.
  external DOT11_SSID hostedNetworkSSID;

  /// The maximum number of concurrent peers allowed by the wireless Hosted
  /// Network.
  @Uint32()
  external int dwMaxNumberOfPeers;
}

/// Contains information about a network state change for a data peer on the
/// wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_data_peer_state_change>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE extends Struct {
  /// The previous network state for a data peer on the wireless Hosted Network.
  external WLAN_HOSTED_NETWORK_PEER_STATE OldState;

  /// The current network state for a data peer on the wireless Hosted Network.
  external WLAN_HOSTED_NETWORK_PEER_STATE NewState;

  @Int32()
  external int _PeerStateChangeReason;

  /// The reason for the network state change for the data peer.
  @pragma('vm:prefer-inline')
  WLAN_HOSTED_NETWORK_REASON get PeerStateChangeReason =>
      WLAN_HOSTED_NETWORK_REASON(_PeerStateChangeReason);

  @pragma('vm:prefer-inline')
  set PeerStateChangeReason(WLAN_HOSTED_NETWORK_REASON value) =>
      _PeerStateChangeReason = value;
}

/// Contains information about the peer state for a peer on the wireless Hosted
/// Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_peer_state>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_PEER_STATE extends Struct {
  /// The MAC address of the peer being described.
  @Array(6)
  external Array<Uint8> PeerMacAddress;

  @Int32()
  external int _PeerAuthState;

  /// The current authentication state of this peer.
  @pragma('vm:prefer-inline')
  WLAN_HOSTED_NETWORK_PEER_AUTH_STATE get PeerAuthState =>
      WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(_PeerAuthState);

  @pragma('vm:prefer-inline')
  set PeerAuthState(WLAN_HOSTED_NETWORK_PEER_AUTH_STATE value) =>
      _PeerAuthState = value;
}

/// Contains information about the radio state on the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_radio_state>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_RADIO_STATE extends Struct {
  @Int32()
  external int _dot11SoftwareRadioState;

  @Int32()
  external int _dot11HardwareRadioState;

  /// The software radio state of the wireless Hosted Network.
  @pragma('vm:prefer-inline')
  DOT11_RADIO_STATE get dot11SoftwareRadioState =>
      DOT11_RADIO_STATE(_dot11SoftwareRadioState);

  @pragma('vm:prefer-inline')
  set dot11SoftwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11SoftwareRadioState = value;

  /// The hardware radio state of the wireless Hosted Network.
  @pragma('vm:prefer-inline')
  DOT11_RADIO_STATE get dot11HardwareRadioState =>
      DOT11_RADIO_STATE(_dot11HardwareRadioState);

  @pragma('vm:prefer-inline')
  set dot11HardwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11HardwareRadioState = value;
}

/// Contains information about the security settings on the wireless Hosted
/// Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_security_settings>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_SECURITY_SETTINGS extends Struct {
  @Int32()
  external int _dot11AuthAlgo;

  @Int32()
  external int _dot11CipherAlgo;

  /// The authentication algorithm used by the wireless Hosted Network.
  @pragma('vm:prefer-inline')
  DOT11_AUTH_ALGORITHM get dot11AuthAlgo =>
      DOT11_AUTH_ALGORITHM(_dot11AuthAlgo);

  @pragma('vm:prefer-inline')
  set dot11AuthAlgo(DOT11_AUTH_ALGORITHM value) => _dot11AuthAlgo = value;

  /// The cipher algorithm used by the wireless Hosted Network.
  @pragma('vm:prefer-inline')
  DOT11_CIPHER_ALGORITHM get dot11CipherAlgo =>
      DOT11_CIPHER_ALGORITHM(_dot11CipherAlgo);

  @pragma('vm:prefer-inline')
  set dot11CipherAlgo(DOT11_CIPHER_ALGORITHM value) => _dot11CipherAlgo = value;
}

/// Contains information about a network state change on the wireless Hosted
/// Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_state_change>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_STATE_CHANGE extends Struct {
  @Int32()
  external int _OldState;

  @Int32()
  external int _NewState;

  @Int32()
  external int _StateChangeReason;

  /// The previous network state on the wireless Hosted Network.
  @pragma('vm:prefer-inline')
  WLAN_HOSTED_NETWORK_STATE get OldState =>
      WLAN_HOSTED_NETWORK_STATE(_OldState);

  @pragma('vm:prefer-inline')
  set OldState(WLAN_HOSTED_NETWORK_STATE value) => _OldState = value;

  /// The current network state on the wireless Hosted Network.
  @pragma('vm:prefer-inline')
  WLAN_HOSTED_NETWORK_STATE get NewState =>
      WLAN_HOSTED_NETWORK_STATE(_NewState);

  @pragma('vm:prefer-inline')
  set NewState(WLAN_HOSTED_NETWORK_STATE value) => _NewState = value;

  /// The reason for the network state change.
  @pragma('vm:prefer-inline')
  WLAN_HOSTED_NETWORK_REASON get StateChangeReason =>
      WLAN_HOSTED_NETWORK_REASON(_StateChangeReason);

  @pragma('vm:prefer-inline')
  set StateChangeReason(WLAN_HOSTED_NETWORK_REASON value) =>
      _StateChangeReason = value;
}

/// Contains information about the status of the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_hosted_network_status>.
///
/// {@category struct}
base class WLAN_HOSTED_NETWORK_STATUS extends Struct {
  @Int32()
  external int _HostedNetworkState;

  /// The actual network Device ID used for the wireless Hosted Network.
  external GUID IPDeviceID;

  /// The BSSID used by the wireless Hosted Network in packets, beacons, and
  /// probe responses.
  @Array(6)
  external Array<Uint8> wlanHostedNetworkBSSID;

  @Int32()
  external int _dot11PhyType;

  /// The channel frequency of the network interface used by wireless Hosted
  /// Network.
  @Uint32()
  external int ulChannelFrequency;

  /// The current number of authenticated peers on the wireless Hosted Network.
  @Uint32()
  external int dwNumberOfPeers;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_hosted_network_peer_state">WLAN_HOSTED_NETWORK_PEER_STATE</a>
  /// structures describing each of the current peers on the wireless Hosted
  /// Network.
  @Array.variableWithVariableDimension(1)
  external Array<WLAN_HOSTED_NETWORK_PEER_STATE> PeerList;

  /// The current state of the wireless Hosted Network.
  @pragma('vm:prefer-inline')
  WLAN_HOSTED_NETWORK_STATE get HostedNetworkState =>
      WLAN_HOSTED_NETWORK_STATE(_HostedNetworkState);

  @pragma('vm:prefer-inline')
  set HostedNetworkState(WLAN_HOSTED_NETWORK_STATE value) =>
      _HostedNetworkState = value;

  /// The physical type of the network interface used by wireless Hosted
  /// Network.
  @pragma('vm:prefer-inline')
  DOT11_PHY_TYPE get dot11PhyType => DOT11_PHY_TYPE(_dot11PhyType);

  @pragma('vm:prefer-inline')
  set dot11PhyType(DOT11_PHY_TYPE value) => _dot11PhyType = value;
}

/// Contains information about the capabilities of an interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_interface_capability>.
///
/// {@category struct}
base class WLAN_INTERFACE_CAPABILITY extends Struct {
  @Int32()
  external int _interfaceType;

  @Int32()
  external int _bDot11DSupported;

  /// The maximum size of the SSID list supported by this interface.
  @Uint32()
  external int dwMaxDesiredSsidListSize;

  /// The maximum size of the basic service set (BSS) identifier list supported
  /// by this interface.
  @Uint32()
  external int dwMaxDesiredBssidListSize;

  /// Contains the number of supported PHY types.
  @Uint32()
  external int dwNumberOfSupportedPhys;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// values that specify the supported PHY types.
  @Array(64)
  external Array<Int32> dot11PhyTypes;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_interface_type">WLAN_INTERFACE_TYPE</a>
  /// value that indicates the type of the interface.
  @pragma('vm:prefer-inline')
  WLAN_INTERFACE_TYPE get interfaceType => WLAN_INTERFACE_TYPE(_interfaceType);

  @pragma('vm:prefer-inline')
  set interfaceType(WLAN_INTERFACE_TYPE value) => _interfaceType = value;

  /// Indicates whether 802.11d is supported by the interface.
  @pragma('vm:prefer-inline')
  bool get bDot11DSupported => _bDot11DSupported != FALSE;

  @pragma('vm:prefer-inline')
  set bDot11DSupported(bool value) => _bDot11DSupported = value ? TRUE : FALSE;
}

/// Contains information about a wireless LAN interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_interface_info>.
///
/// {@category struct}
base class WLAN_INTERFACE_INFO extends Struct {
  /// Contains the GUID of the interface.
  external GUID InterfaceGuid;

  @Array(256)
  external Array<Uint16> _strInterfaceDescription;

  @Int32()
  external int _isState;

  /// Contains the description of the interface.
  @pragma('vm:prefer-inline')
  String get strInterfaceDescription => _strInterfaceDescription.toDartString();

  @pragma('vm:prefer-inline')
  set strInterfaceDescription(String value) =>
      _strInterfaceDescription.setString(value);

  /// Contains a <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_state-r1">WLAN_INTERFACE_STATE</a>
  /// value that indicates the current state of the interface.
  @pragma('vm:prefer-inline')
  WLAN_INTERFACE_STATE get isState => WLAN_INTERFACE_STATE(_isState);

  @pragma('vm:prefer-inline')
  set isState(WLAN_INTERFACE_STATE value) => _isState = value;
}

/// Array of NIC interface information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_interface_info_list>.
///
/// {@category struct}
base class WLAN_INTERFACE_INFO_LIST extends Struct {
  /// Contains the number of items in the <b>InterfaceInfo</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_interface_info">WLAN_INTERFACE_INFO</a>
  /// structures containing interface information.
  @Array.variableWithVariableDimension(1)
  external Array<WLAN_INTERFACE_INFO> InterfaceInfo;
}

/// Contains information about sent and received MAC frames.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_mac_frame_statistics>.
///
/// {@category struct}
base class WLAN_MAC_FRAME_STATISTICS extends Struct {
  /// Contains the number of successfully transmitted MSDU/MMPDUs.
  @Uint64()
  external int ullTransmittedFrameCount;

  /// Contains the number of successfully received MSDU/MMPDUs.
  @Uint64()
  external int ullReceivedFrameCount;

  /// Contains the number of frames discarded due to having a "Protected" status
  /// indicated in the frame control field.
  @Uint64()
  external int ullWEPExcludedCount;

  /// Contains the number of MIC failures encountered while checking the
  /// integrity of packets received from the AP or peer station.
  @Uint64()
  external int ullTKIPLocalMICFailures;

  /// Contains the number of TKIP replay errors detected.
  @Uint64()
  external int ullTKIPReplays;

  /// Contains the number of TKIP protected packets that the NIC failed to
  /// decrypt.
  @Uint64()
  external int ullTKIPICVErrorCount;

  /// Contains the number of received unicast fragments discarded by the replay
  /// mechanism.
  @Uint64()
  external int ullCCMPReplays;

  /// Contains the number of received fragments discarded by the CCMP decryption
  /// algorithm.
  @Uint64()
  external int ullCCMPDecryptErrors;

  /// Contains the number of WEP protected packets received for which a
  /// decryption key was not available on the NIC.
  @Uint64()
  external int ullWEPUndecryptableCount;

  /// Contains the number of WEP protected packets the NIC failed to decrypt.
  @Uint64()
  external int ullWEPICVErrorCount;

  /// Contains the number of encrypted packets that the NIC has successfully
  /// decrypted.
  @Uint64()
  external int ullDecryptSuccessCount;

  /// Contains the number of encrypted packets that the NIC has failed to
  /// decrypt.
  @Uint64()
  external int ullDecryptFailureCount;
}

/// Contains information about media specific module (MSM) connection related
/// notifications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_msm_notification_data>.
///
/// {@category struct}
base class WLAN_MSM_NOTIFICATION_DATA extends Struct {
  @Int32()
  external int _wlanConnectionMode;

  @Array(256)
  external Array<Uint16> _strProfileName;

  /// A `DOT11_SSID` structure that contains the SSID of the association.
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int _dot11BssType;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-mac-address-type">DOT11_MAC_ADDRESS</a>
  /// that specifies the MAC address of the peer or access point.
  @Array(6)
  external Array<Uint8> dot11MacAddr;

  @Int32()
  external int _bSecurityEnabled;

  @Int32()
  external int _bFirstPeer;

  @Int32()
  external int _bLastPeer;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/wlan-reason-code">WLAN_REASON_CODE</a>
  /// that indicates the reason for an operation failure.
  @Uint32()
  external int wlanReasonCode;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that specifies the mode of the connection.
  @pragma('vm:prefer-inline')
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  @pragma('vm:prefer-inline')
  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// The name of the profile used for the connection.
  @pragma('vm:prefer-inline')
  String get strProfileName => _strProfileName.toDartString();

  @pragma('vm:prefer-inline')
  set strProfileName(String value) => _strProfileName.setString(value);

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS network type.
  @pragma('vm:prefer-inline')
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  @pragma('vm:prefer-inline')
  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Indicates whether security is enabled for this connection.
  @pragma('vm:prefer-inline')
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  @pragma('vm:prefer-inline')
  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// Indicates whether the peer is the first to join the ad hoc network created
  /// by the machine.
  @pragma('vm:prefer-inline')
  bool get bFirstPeer => _bFirstPeer != FALSE;

  @pragma('vm:prefer-inline')
  set bFirstPeer(bool value) => _bFirstPeer = value ? TRUE : FALSE;

  /// Indicates whether the peer is the last to leave the ad hoc network created
  /// by the machine.
  @pragma('vm:prefer-inline')
  bool get bLastPeer => _bLastPeer != FALSE;

  @pragma('vm:prefer-inline')
  set bLastPeer(bool value) => _bLastPeer = value ? TRUE : FALSE;
}

/// Contains information about sent and received PHY frames.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_phy_frame_statistics>.
///
/// {@category struct}
base class WLAN_PHY_FRAME_STATISTICS extends Struct {
  /// Contains the number of successfully transmitted MSDU/MMPDUs.
  @Uint64()
  external int ullTransmittedFrameCount;

  /// Contains the number of successfully transmitted MSDU/MMPDUs in which the
  /// multicast bit is set as the destination MAC address.
  @Uint64()
  external int ullMulticastTransmittedFrameCount;

  /// Contains the number of MSDU/MMPDUs transmission failures due to the number
  /// of transmit attempts exceeding the retry limit.
  @Uint64()
  external int ullFailedCount;

  /// Contains the number of MSDU/MMPDUs successfully transmitted after one or
  /// more retransmissions.
  @Uint64()
  external int ullRetryCount;

  /// Contains the number of MSDU/MMPDUs successfully transmitted after more
  /// than one retransmission.
  @Uint64()
  external int ullMultipleRetryCount;

  /// Contains the number of fragmented MSDU/MMPDUs that failed to send due to
  /// timeout.
  @Uint64()
  external int ullMaxTXLifetimeExceededCount;

  /// Contains the number of MPDUs with an individual address in the address 1
  /// field and MPDUs that have a multicast address with types Data or
  /// Management.
  @Uint64()
  external int ullTransmittedFragmentCount;

  /// Contains the number of times a CTS has been received in response to an
  /// RTS.
  @Uint64()
  external int ullRTSSuccessCount;

  /// Contains the number of times a CTS has not been received in response to an
  /// RTS.
  @Uint64()
  external int ullRTSFailureCount;

  /// Contains the number of times an expected ACK has not been received.
  @Uint64()
  external int ullACKFailureCount;

  /// Contains the number of MSDU/MMPDUs successfully received.
  @Uint64()
  external int ullReceivedFrameCount;

  /// Contains the number of successfully received MSDU/MMPDUs with the
  /// multicast bit set in the MAC address.
  @Uint64()
  external int ullMulticastReceivedFrameCount;

  /// Contains the number of MSDU/MMPDUs successfully received only because
  /// promiscuous mode is enabled.
  @Uint64()
  external int ullPromiscuousReceivedFrameCount;

  /// Contains the number of fragmented MSDU/MMPDUs dropped due to timeout.
  @Uint64()
  external int ullMaxRXLifetimeExceededCount;

  /// Contains the number of frames received that the Sequence Control field
  /// indicates as a duplicate.
  @Uint64()
  external int ullFrameDuplicateCount;

  /// Contains the number of successfully received Data or Management MPDUs.
  @Uint64()
  external int ullReceivedFragmentCount;

  /// Contains the number of MPDUs successfully received only because
  /// promiscuous mode is enabled.
  @Uint64()
  external int ullPromiscuousReceivedFragmentCount;

  /// Contains the number of times an FCS error has been detected in a received
  /// MPDU.
  @Uint64()
  external int ullFCSErrorCount;
}

/// Specifies the radio state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_phy_radio_state>.
///
/// {@category struct}
base class WLAN_PHY_RADIO_STATE extends Struct {
  /// The index of the PHY type on which the radio state is being set or
  /// queried.
  @Uint32()
  external int dwPhyIndex;

  @Int32()
  external int _dot11SoftwareRadioState;

  @Int32()
  external int _dot11HardwareRadioState;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-dot11_radio_state-r1">DOT11_RADIO_STATE</a>
  /// value that indicates the software radio state.
  @pragma('vm:prefer-inline')
  DOT11_RADIO_STATE get dot11SoftwareRadioState =>
      DOT11_RADIO_STATE(_dot11SoftwareRadioState);

  @pragma('vm:prefer-inline')
  set dot11SoftwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11SoftwareRadioState = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-dot11_radio_state-r1">DOT11_RADIO_STATE</a>
  /// value that indicates the hardware radio state.
  @pragma('vm:prefer-inline')
  DOT11_RADIO_STATE get dot11HardwareRadioState =>
      DOT11_RADIO_STATE(_dot11HardwareRadioState);

  @pragma('vm:prefer-inline')
  set dot11HardwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11HardwareRadioState = value;
}

/// Basic information about a profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_profile_info>.
///
/// {@category struct}
base class WLAN_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  /// A set of flags specifying settings for wireless profile.
  @Uint32()
  external int dwFlags;

  /// The name of the profile.
  @pragma('vm:prefer-inline')
  String get strProfileName => _strProfileName.toDartString();

  @pragma('vm:prefer-inline')
  set strProfileName(String value) => _strProfileName.setString(value);
}

/// Contains a list of wireless profile information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_profile_info_list>.
///
/// {@category struct}
base class WLAN_PROFILE_INFO_LIST extends Struct {
  /// The number of wireless profile entries in the <b>ProfileInfo</b> member.
  @Uint32()
  external int dwNumberOfItems;

  /// The index of the current item.
  @Uint32()
  external int dwIndex;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_profile_info">WLAN_PROFILE_INFO</a>
  /// structures containing interface information.
  @Array.variableWithVariableDimension(1)
  external Array<WLAN_PROFILE_INFO> ProfileInfo;
}

/// Specifies the radio state on a list of physical layer (PHY) types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_radio_state>.
///
/// {@category struct}
base class WLAN_RADIO_STATE extends Struct {
  /// The number of valid PHY indices in the <b>PhyRadioState</b> member.
  @Uint32()
  external int dwNumberOfPhys;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_phy_radio_state">WLAN_PHY_RADIO_STATE</a>
  /// structures that specify the radio states of a number of PHY indices.
  @Array(64)
  external Array<WLAN_PHY_RADIO_STATE> PhyRadioState;
}

/// The set of supported data rates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_rate_set>.
///
/// {@category struct}
base class WLAN_RATE_SET extends Struct {
  /// The length, in bytes, of <b>usRateSet</b>.
  @Uint32()
  external int uRateSetLength;

  /// An array of supported data transfer rates.
  @Array(126)
  external Array<Uint16> usRateSet;
}

/// Contains raw data in the form of a blob that is used by some Native Wifi
/// functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_raw_data>.
///
/// {@category struct}
base class WLAN_RAW_DATA extends Struct {
  /// The size, in bytes, of the <b>DataBlob</b> member.
  @Uint32()
  external int dwDataSize;

  /// The data blob.
  @Array.variableWithVariableDimension(1)
  external Array<Uint8> DataBlob;
}

/// Contains raw data in the form of an array of data blobs that are used by
/// some Native Wifi functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_raw_data_list>.
///
/// {@category struct}
base class WLAN_RAW_DATA_LIST extends Struct {
  /// The total size, in bytes, of the <b>WLAN_RAW_DATA_LIST</b> structure.
  @Uint32()
  external int dwTotalSize;

  /// The number of raw data entries or blobs in the <b>WLAN_RAW_DATA_LIST</b>
  /// structure.
  @Uint32()
  external int dwNumberOfItems;

  /// An array of raw data entries or blobs that make up the data list.
  @Array.variableWithVariableDimension(1)
  external Array<WLAN_RAW_DATA_LIST_0> DataList;
}

/// {@category struct}
sealed class WLAN_RAW_DATA_LIST_0 extends Struct {
  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;
}

/// Defines the security attributes for a wireless connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_security_attributes>.
///
/// {@category struct}
base class WLAN_SECURITY_ATTRIBUTES extends Struct {
  @Int32()
  external int _bSecurityEnabled;

  @Int32()
  external int _bOneXEnabled;

  @Int32()
  external int _dot11AuthAlgorithm;

  @Int32()
  external int _dot11CipherAlgorithm;

  /// Indicates whether security is enabled for this connection.
  @pragma('vm:prefer-inline')
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  @pragma('vm:prefer-inline')
  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// Indicates whether 802.1X is enabled for this connection.
  @pragma('vm:prefer-inline')
  bool get bOneXEnabled => _bOneXEnabled != FALSE;

  @pragma('vm:prefer-inline')
  set bOneXEnabled(bool value) => _bOneXEnabled = value ? TRUE : FALSE;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-algorithm">DOT11_AUTH_ALGORITHM</a>
  /// value that identifies the authentication algorithm.
  @pragma('vm:prefer-inline')
  DOT11_AUTH_ALGORITHM get dot11AuthAlgorithm =>
      DOT11_AUTH_ALGORITHM(_dot11AuthAlgorithm);

  @pragma('vm:prefer-inline')
  set dot11AuthAlgorithm(DOT11_AUTH_ALGORITHM value) =>
      _dot11AuthAlgorithm = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-cipher-algorithm">DOT11_CIPHER_ALGORITHM</a>
  /// value that identifies the cipher algorithm.
  @pragma('vm:prefer-inline')
  DOT11_CIPHER_ALGORITHM get dot11CipherAlgorithm =>
      DOT11_CIPHER_ALGORITHM(_dot11CipherAlgorithm);

  @pragma('vm:prefer-inline')
  set dot11CipherAlgorithm(DOT11_CIPHER_ALGORITHM value) =>
      _dot11CipherAlgorithm = value;
}

/// Assorted statistics about an interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ns-wlanapi-wlan_statistics>.
///
/// {@category struct}
base class WLAN_STATISTICS extends Struct {
  /// Indicates the number of 4-way handshake failures.
  @Uint64()
  external int ullFourWayHandshakeFailures;

  /// Indicates the number of TKIP countermeasures performed by an IHV Miniport
  /// driver.
  @Uint64()
  external int ullTKIPCounterMeasuresInvoked;

  @Uint64()
  external int _ullReserved;

  /// A `WLAN_MAC_FRAME_STATISTICS` structure that contains MAC layer counters
  /// for unicast packets directed to the receiver of the NIC.
  external WLAN_MAC_FRAME_STATISTICS MacUcastCounters;

  /// A `WLAN_MAC_FRAME_STATISTICS` structure that contains MAC layer counters
  /// for multicast packets directed to the current multicast address.
  external WLAN_MAC_FRAME_STATISTICS MacMcastCounters;

  /// Contains the number of <b>WLAN_PHY_FRAME_STATISTICS</b> structures in the
  /// <b>PhyCounters</b> member.
  @Uint32()
  external int dwNumberOfPhys;

  /// An array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ns-wlanapi-wlan_phy_frame_statistics">WLAN_PHY_FRAME_STATISTICS</a>
  /// structures that contain PHY layer counters.
  @Array.variableWithVariableDimension(1)
  external Array<WLAN_PHY_FRAME_STATISTICS> PhyCounters;
}

/// Contains the window class attributes that are registered by the
/// RegisterClass function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-wndclassw>.
///
/// {@category struct}
base class WNDCLASS extends Struct {
  @Uint32()
  external int _style;

  /// A pointer to the window procedure.
  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;

  /// The number of extra bytes to allocate following the window-class
  /// structure.
  @Int32()
  external int cbClsExtra;

  /// The number of extra bytes to allocate following the window instance.
  @Int32()
  external int cbWndExtra;

  /// A handle to the instance that contains the window procedure for the class.
  @IntPtr()
  external int hInstance;

  /// A handle to the class icon.
  @IntPtr()
  external int hIcon;

  /// A handle to the class cursor.
  @IntPtr()
  external int hCursor;

  /// A handle to the class background brush.
  @IntPtr()
  external int hbrBackground;

  /// The resource name of the class menu, as the name appears in the resource
  /// file.
  external PWSTR lpszMenuName;

  /// A pointer to a null-terminated string or is an atom.
  external PWSTR lpszClassName;

  /// The class style(s).
  @pragma('vm:prefer-inline')
  WNDCLASS_STYLES get style => WNDCLASS_STYLES(_style);

  @pragma('vm:prefer-inline')
  set style(WNDCLASS_STYLES value) => _style = value;
}

/// Contains window class information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-wndclassexw>.
///
/// {@category struct}
base class WNDCLASSEX extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Uint32()
  external int _style;

  /// A pointer to the window procedure.
  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;

  /// The number of extra bytes to allocate following the window-class
  /// structure.
  @Int32()
  external int cbClsExtra;

  /// The number of extra bytes to allocate following the window instance.
  @Int32()
  external int cbWndExtra;

  /// A handle to the instance that contains the window procedure for the class.
  @IntPtr()
  external int hInstance;

  /// A handle to the class icon.
  @IntPtr()
  external int hIcon;

  /// A handle to the class cursor.
  @IntPtr()
  external int hCursor;

  /// A handle to the class background brush.
  @IntPtr()
  external int hbrBackground;

  /// Pointer to a null-terminated character string that specifies the resource
  /// name of the class menu, as the name appears in the resource file.
  external PWSTR lpszMenuName;

  /// A pointer to a null-terminated string or is an atom.
  external PWSTR lpszClassName;

  /// A handle to a small icon that is associated with the window class.
  @IntPtr()
  external int hIconSm;

  /// The class style(s).
  @pragma('vm:prefer-inline')
  WNDCLASS_STYLES get style => WNDCLASS_STYLES(_style);

  @pragma('vm:prefer-inline')
  set style(WNDCLASS_STYLES value) => _style = value;
}

typedef WPARAM = IntPtr;

/// Defines options that are used to set window visual style attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ns-uxtheme-wta_options>.
///
/// {@category struct}
base class WTA_OPTIONS extends Struct {
  /// A combination of flags that modify window visual style attributes.
  @Uint32()
  external int dwFlags;

  /// A bitmask that describes how the values specified in <b>dwFlags</b> should
  /// be applied.
  @Uint32()
  external int dwMask;
}

/// Contains and manipulates both class definitions and class object instances.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemclassobject>.
final WbemClassObject = Guid.fromComponents(
  0x9a653086,
  0x174f,
  0x11d2,
  Uint8List.fromList(const [0xb5, 0xf9, 0x0, 0x10, 0x4b, 0x70, 0x3e, 0xfd]),
);

/// Used to communicate additional context information to providers when
/// submitting IWbemServices calls to WMI.
///
/// All primary calls in IWbemServices take an optional parameter pointing to an
/// object of this type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemcontext>.
final WbemContext = Guid.fromComponents(
  0x674b6698,
  0xee92,
  0x11d0,
  Uint8List.fromList(const [0xad, 0x71, 0x0, 0xc0, 0x4f, 0xd8, 0xfd, 0xff]),
);

final WbemLocator = Guid.fromComponents(
  0x4590f811,
  0x1d3a,
  0x11d0,
  Uint8List.fromList(const [0x89, 0x1f, 0x0, 0xaa, 0x0, 0x4b, 0x2e, 0x24]),
);

/// Provides an entry point through which refreshable objects such as
/// enumerators or refresher objects, can be refreshed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemrefresher>.
final WbemRefresher = Guid.fromComponents(
  0xc71566f2,
  0x561e,
  0x11d1,
  Uint8List.fromList(const [0xad, 0x87, 0x0, 0xc0, 0x4f, 0xd8, 0xfd, 0xff]),
);

/// This topic provides information about using the WinHTTP WinHttpRequest COM
/// object with scripting languages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinHttp/winhttprequest>.
final WinHttpRequest = Guid.fromComponents(
  0x2087c2f4,
  0x2cef,
  0x4953,
  Uint8List.fromList(const [0xa8, 0xab, 0x66, 0x77, 0x9b, 0x67, 0x4, 0x95]),
);

/// Specifies a world-space to page-space transformation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ns-wingdi-xform>.
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

  /// The horizontal translation component, in logical units.
  @Float()
  external double eDx;

  /// The vertical translation component, in logical units.
  @Float()
  external double eDy;
}

/// Contains information on battery type and charge state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_battery_information>.
///
/// {@category struct}
base class XINPUT_BATTERY_INFORMATION extends Struct {
  @Uint8()
  external int _BatteryType;

  @Uint8()
  external int _BatteryLevel;

  @pragma('vm:prefer-inline')
  BATTERY_TYPE get BatteryType => BATTERY_TYPE(_BatteryType);

  @pragma('vm:prefer-inline')
  set BatteryType(BATTERY_TYPE value) => _BatteryType = value;

  @pragma('vm:prefer-inline')
  BATTERY_LEVEL get BatteryLevel => BATTERY_LEVEL(_BatteryLevel);

  @pragma('vm:prefer-inline')
  set BatteryLevel(BATTERY_LEVEL value) => _BatteryLevel = value;
}

/// Describes the capabilities of a connected controller.
///
/// The XInputGetCapabilities function returns XINPUT_CAPABILITIES.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_capabilities>.
///
/// {@category struct}
base class XINPUT_CAPABILITIES extends Struct {
  @Uint8()
  external int _Type;

  @Uint8()
  external int _SubType;

  @Uint16()
  external int _Flags;

  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/xinput/ns-xinput-xinput_gamepad">XINPUT_GAMEPAD</a>
  /// structure that describes available controller features and control
  /// resolutions.
  external XINPUT_GAMEPAD Gamepad;

  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/xinput/ns-xinput-xinput_vibration">XINPUT_VIBRATION</a>
  /// structure that describes available vibration functionality and
  /// resolutions.
  external XINPUT_VIBRATION Vibration;

  @pragma('vm:prefer-inline')
  XINPUT_DEVTYPE get Type => XINPUT_DEVTYPE(_Type);

  @pragma('vm:prefer-inline')
  set Type(XINPUT_DEVTYPE value) => _Type = value;

  /// Subtype of the game controller.
  @pragma('vm:prefer-inline')
  XINPUT_DEVSUBTYPE get SubType => XINPUT_DEVSUBTYPE(_SubType);

  @pragma('vm:prefer-inline')
  set SubType(XINPUT_DEVSUBTYPE value) => _SubType = value;

  /// Features of the controller.
  @pragma('vm:prefer-inline')
  XINPUT_CAPABILITIES_FLAGS get Flags => XINPUT_CAPABILITIES_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(XINPUT_CAPABILITIES_FLAGS value) => _Flags = value;
}

/// Describes the current state of the Xbox 360 Controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_gamepad>.
///
/// {@category struct}
base class XINPUT_GAMEPAD extends Struct {
  @Uint16()
  external int _wButtons;

  /// The current value of the left trigger analog control.
  @Uint8()
  external int bLeftTrigger;

  /// The current value of the right trigger analog control.
  @Uint8()
  external int bRightTrigger;

  /// Left thumbstick x-axis value.
  @Int16()
  external int sThumbLX;

  /// Left thumbstick y-axis value.
  @Int16()
  external int sThumbLY;

  /// Right thumbstick x-axis value.
  @Int16()
  external int sThumbRX;

  /// Right thumbstick y-axis value.
  @Int16()
  external int sThumbRY;

  /// Bitmask of the device digital buttons, as follows.
  @pragma('vm:prefer-inline')
  XINPUT_GAMEPAD_BUTTON_FLAGS get wButtons =>
      XINPUT_GAMEPAD_BUTTON_FLAGS(_wButtons);

  @pragma('vm:prefer-inline')
  set wButtons(XINPUT_GAMEPAD_BUTTON_FLAGS value) => _wButtons = value;
}

/// Specifies keystroke data returned by XInputGetKeystroke.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_keystroke>.
///
/// {@category struct}
base class XINPUT_KEYSTROKE extends Struct {
  @Uint16()
  external int _VirtualKey;

  /// This member is unused and the value is zero.
  @Uint16()
  external int Unicode;

  @Uint16()
  external int _Flags;

  /// Index of the signed-in gamer associated with the device.
  @Uint8()
  external int UserIndex;

  /// HID code corresponding to the input.
  @Uint8()
  external int HidCode;

  /// Virtual-key code of the key, button, or stick movement.
  @pragma('vm:prefer-inline')
  XINPUT_VIRTUAL_KEY get VirtualKey => XINPUT_VIRTUAL_KEY(_VirtualKey);

  @pragma('vm:prefer-inline')
  set VirtualKey(XINPUT_VIRTUAL_KEY value) => _VirtualKey = value;

  /// Flags that indicate the keyboard state at the time of the input event.
  @pragma('vm:prefer-inline')
  XINPUT_KEYSTROKE_FLAGS get Flags => XINPUT_KEYSTROKE_FLAGS(_Flags);

  @pragma('vm:prefer-inline')
  set Flags(XINPUT_KEYSTROKE_FLAGS value) => _Flags = value;
}

/// Represents the state of a controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_state>.
///
/// {@category struct}
base class XINPUT_STATE extends Struct {
  /// State packet number.
  @Uint32()
  external int dwPacketNumber;

  /// <a
  /// href="https://docs.microsoft.com/windows/desktop/api/xinput/ns-xinput-xinput_gamepad">XINPUT_GAMEPAD</a>
  /// structure containing the current state of an Xbox 360 Controller.
  external XINPUT_GAMEPAD Gamepad;
}

/// Specifies motor speed levels for the vibration function of a controller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/ns-xinput-xinput_vibration>.
///
/// {@category struct}
base class XINPUT_VIBRATION extends Struct {
  /// Speed of the left motor.
  @Uint16()
  external int wLeftMotorSpeed;

  /// Speed of the right motor.
  @Uint16()
  external int wRightMotorSpeed;
}

typedef socklen_t = Int32;
