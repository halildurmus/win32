// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representations of Win32 structs.
//
// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: non_constant_identifier_names, unnecessary_this
// ignore_for_file: unused_field

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_com.g.dart';
import '../_win32.g.dart';
import 'bstr.dart';
import 'callbacks.g.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'extensions/_internal.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'hresult.dart';
import 'pstr.dart';
import 'pwstr.dart';
import 'types.dart';
import 'win32_error.dart';
import 'win32_result.dart';

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

  ACCEL_VIRT_FLAGS get fVirt => ACCEL_VIRT_FLAGS(_fVirt);
  set fVirt(ACCEL_VIRT_FLAGS value) => _fVirt = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ACCEL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ACL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _lpSource;

  /// Identifies the type of processor used.
  @Uint16()
  external int wProcessorArchitecture;

  /// Specifies the language manifest that should be used.
  @Uint16()
  external int wLangId;

  external Pointer<Utf16> _lpAssemblyDirectory;
  external Pointer<Utf16> _lpResourceName;
  external Pointer<Utf16> _lpApplicationName;
  external Pointer _hModule;

  /// Null-terminated string specifying the path of the manifest file or PE
  /// image to be used to create the activation context.
  PWSTR get lpSource => PWSTR(_lpSource);

  set lpSource(PWSTR value) => _lpSource = value;

  /// The base directory in which to perform private assembly probing if
  /// assemblies in the activation context are not present in the system-wide
  /// store.
  PWSTR get lpAssemblyDirectory => PWSTR(_lpAssemblyDirectory);

  set lpAssemblyDirectory(PWSTR value) => _lpAssemblyDirectory = value;

  /// Pointer to a null-terminated string that contains the resource name to be
  /// loaded from the PE specified in <b>hModule</b> or <b>lpSource</b>.
  PWSTR get lpResourceName => PWSTR(_lpResourceName);

  set lpResourceName(PWSTR value) => _lpResourceName = value;

  /// The name of the current application.
  PWSTR get lpApplicationName => PWSTR(_lpApplicationName);

  set lpApplicationName(PWSTR value) => _lpApplicationName = value;

  /// Use this member rather than <b>lpSource</b> if you have already loaded a
  /// DLL and wish to use it to create activation contexts rather than using a
  /// path in <b>lpSource</b>.
  HMODULE get hModule => HMODULE(_hModule);

  set hModule(HMODULE value) => _hModule = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ACTCTX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Identifies a print job as well as the directory and file in which an
/// application can store that job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addjob-info-1>.
///
/// {@category struct}
base class ADDJOB_INFO_1 extends Struct {
  external Pointer<Utf16> _Path;

  /// A handle to the print job.
  @Uint32()
  external int JobId;

  /// Pointer to a null-terminated string that contains the path and file name
  /// that the application can use to store the print job.
  PWSTR get Path => PWSTR(_Path);

  set Path(PWSTR value) => _Path = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ADDJOB_INFO_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _ai_canonname;

  /// A pointer to a `sockaddr` structure.
  external Pointer<SOCKADDR> ai_addr;

  /// A pointer to the next structure in a linked list.
  external Pointer<ADDRINFO> ai_next;

  /// The canonical name for the host.
  PWSTR get ai_canonname => PWSTR(_ai_canonname);

  set ai_canonname(PWSTR value) => _ai_canonname = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ADDRINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ALTTABINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  bool get forceZip32 => _forceZip32 != FALSE;

  set forceZip32(bool value) => _forceZip32 = value ? TRUE : FALSE;

  /// The hash algorithm URI to use for the block map of the package.
  IUri? get hashMethod => _hashMethod.isNull ? null : IUri(_hashMethod);

  set hashMethod(IUri? value) => _hashMethod = value?.ptr ?? nullptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<APPX_PACKAGE_SETTINGS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ARRAYDESC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _szLocale;

  @Uint32()
  external int cbLocale;

  external Pointer<Uint32> rProcessor;

  @Uint32()
  external int ulProcessor;

  external Pointer<OSINFO> rOS;

  @Uint32()
  external int ulOS;

  PWSTR get szLocale => PWSTR(_szLocale);
  set szLocale(PWSTR value) => _szLocale = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ASSEMBLYMETADATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

final ApplicationActivationManager = GUID.fromComponents(
  0x45ba127d,
  0x10a8,
  0x46ea,
  Uint8List.fromList(const [0x8a, 0xb7, 0x56, 0xea, 0x90, 0x78, 0x94, 0x3c]),
);

final AppxFactory = GUID.fromComponents(
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
  bool get bIsOffload => _bIsOffload != FALSE;

  set bIsOffload(bool value) => _bIsOffload = value ? TRUE : FALSE;

  /// An enumeration that is used to specify the category of the audio stream.
  AUDIO_STREAM_CATEGORY get eCategory => AUDIO_STREAM_CATEGORY(_eCategory);

  set eCategory(AUDIO_STREAM_CATEGORY value) => _eCategory = value;
  AUDCLNT_STREAMOPTIONS get Options => AUDCLNT_STREAMOPTIONS(_Options);
  set Options(AUDCLNT_STREAMOPTIONS value) => _Options = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<AudioClientProperties> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  ITypeComp? get lptcomp => _lptcomp.isNull ? null : ITypeComp(_lptcomp);

  set lptcomp(ITypeComp? value) => _lptcomp = value?.ptr ?? nullptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BINDPTR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BIND_OPTS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BITMAP> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BITMAPFILEHEADER> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BITMAPINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BITMAPINFOHEADER> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  BI_COMPRESSION get bV5Compression => BI_COMPRESSION(_bV5Compression);
  set bV5Compression(BI_COMPRESSION value) => _bV5Compression = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BITMAPV5HEADER> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLENDFUNCTION> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLOB> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class BLUETOOTH_ADDRESS extends Struct {
  external BLUETOOTH_ADDRESS_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_ADDRESS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class BLUETOOTH_ADDRESS_0 extends Union {
  @Uint64()
  external int ullLong;

  @Array(6)
  external Array<Uint8> rgBytes;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_ADDRESS_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BLUETOOTH_ADDRESS_0_Extension on BLUETOOTH_ADDRESS {
  int get ullLong => this.Anonymous.ullLong;
  set ullLong(int value) => this.Anonymous.ullLong = value;
  Array<Uint8> get rgBytes => this.Anonymous.rgBytes;
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
  BLUETOOTH_AUTHENTICATION_METHOD get authMethod =>
      BLUETOOTH_AUTHENTICATION_METHOD(_authMethod);

  set authMethod(BLUETOOTH_AUTHENTICATION_METHOD value) => _authMethod = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class BLUETOOTH_AUTHENTICATE_RESPONSE_0 extends Union {
  external BLUETOOTH_PIN_INFO pinInfo;
  external BLUETOOTH_OOB_DATA_INFO oobInfo;
  external BLUETOOTH_NUMERIC_COMPARISON_INFO numericCompInfo;
  external BLUETOOTH_PASSKEY_INFO passkeyInfo;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BLUETOOTH_AUTHENTICATE_RESPONSE_0_Extension
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
  BLUETOOTH_AUTHENTICATION_METHOD get authenticationMethod =>
      BLUETOOTH_AUTHENTICATION_METHOD(_authenticationMethod);

  set authenticationMethod(BLUETOOTH_AUTHENTICATION_METHOD value) =>
      _authenticationMethod = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_io_capability">BLUETOOTH_IO_CAPABILITY</a>
  /// enumeration that defines the input/output capabilities of the Bluetooth
  /// device.
  BLUETOOTH_IO_CAPABILITY get ioCapability =>
      BLUETOOTH_IO_CAPABILITY(_ioCapability);

  set ioCapability(BLUETOOTH_IO_CAPABILITY value) => _ioCapability = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_requirements">BLUETOOTH_AUTHENTICATION_REQUIREMENTS</a>
  /// specifies the 'Man in the Middle' protection required for authentication.
  BLUETOOTH_AUTHENTICATION_REQUIREMENTS get authenticationRequirements =>
      BLUETOOTH_AUTHENTICATION_REQUIREMENTS(_authenticationRequirements);

  set authenticationRequirements(BLUETOOTH_AUTHENTICATION_REQUIREMENTS value) =>
      _authenticationRequirements = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0 extends Union {
  @Uint32()
  external int Numeric_Value;

  @Uint32()
  external int Passkey;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_0_Extension
    on BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS {
  int get Numeric_Value => this.Anonymous.Numeric_Value;
  set Numeric_Value(int value) => this.Anonymous.Numeric_Value = value;
  int get Passkey => this.Anonymous.Passkey;
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

  external Pointer<Utf16> _pcszDescription;

  /// Descriptive string of the mask.
  PWSTR get pcszDescription => PWSTR(_pcszDescription);

  set pcszDescription(PWSTR value) => _pcszDescription = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_COD_PAIRS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  bool get fConnected => _fConnected != FALSE;
  set fConnected(bool value) => _fConnected = value ? TRUE : FALSE;
  bool get fRemembered => _fRemembered != FALSE;
  set fRemembered(bool value) => _fRemembered = value ? TRUE : FALSE;
  bool get fAuthenticated => _fAuthenticated != FALSE;
  set fAuthenticated(bool value) => _fAuthenticated = value ? TRUE : FALSE;
  String get szName => _szName.toDartString();
  set szName(String value) => _szName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_DEVICE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _hRadio;

  /// A value that specifies that the search should return authenticated
  /// Bluetooth devices.
  bool get fReturnAuthenticated => _fReturnAuthenticated != FALSE;

  set fReturnAuthenticated(bool value) =>
      _fReturnAuthenticated = value ? TRUE : FALSE;

  /// A value that specifies that the search should return remembered Bluetooth
  /// devices.
  bool get fReturnRemembered => _fReturnRemembered != FALSE;

  set fReturnRemembered(bool value) =>
      _fReturnRemembered = value ? TRUE : FALSE;

  /// A value that specifies that the search should return unknown Bluetooth
  /// devices.
  bool get fReturnUnknown => _fReturnUnknown != FALSE;

  set fReturnUnknown(bool value) => _fReturnUnknown = value ? TRUE : FALSE;

  /// A value that specifies that the search should return connected Bluetooth
  /// devices.
  bool get fReturnConnected => _fReturnConnected != FALSE;

  set fReturnConnected(bool value) => _fReturnConnected = value ? TRUE : FALSE;

  /// A value that specifies that a new inquiry should be issued.
  bool get fIssueInquiry => _fIssueInquiry != FALSE;

  set fIssueInquiry(bool value) => _fIssueInquiry = value ? TRUE : FALSE;

  /// A handle for the radio on which to perform the inquiry.
  HANDLE get hRadio => HANDLE(_hRadio);

  set hRadio(HANDLE value) => _hRadio = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_GATT_VALUE_CHANGED_EVENT> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_NUMERIC_COMPARISON_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_OOB_DATA_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_PASSKEY_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_PIN_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  String get szName => _szName.toDartString();

  set szName(String value) => _szName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_RADIO_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer<Utf16> _pszInfo;
  external Pointer _hwndParent;

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

  /// Sets the information text when not <b>NULL</b>.
  PWSTR get pszInfo => PWSTR(_pszInfo);

  set pszInfo(PWSTR value) => _pszInfo = value;

  /// Handle to the parent window.
  HWND get hwndParent => HWND(_hwndParent);

  set hwndParent(HWND value) => _hwndParent = value;

  /// If [TRUE], forces authentication before returning.
  bool get fForceAuthentication => _fForceAuthentication != FALSE;

  set fForceAuthentication(bool value) =>
      _fForceAuthentication = value ? TRUE : FALSE;

  /// If [TRUE], authenticated devices are shown in the picker.
  bool get fShowAuthenticated => _fShowAuthenticated != FALSE;

  set fShowAuthenticated(bool value) =>
      _fShowAuthenticated = value ? TRUE : FALSE;

  /// If [TRUE], remembered devices are shown in the picker.
  bool get fShowRemembered => _fShowRemembered != FALSE;

  set fShowRemembered(bool value) => _fShowRemembered = value ? TRUE : FALSE;

  /// If [TRUE], unknown devices that are not authenticated or remembered are
  /// shown in the picker.
  bool get fShowUnknown => _fShowUnknown != FALSE;

  set fShowUnknown(bool value) => _fShowUnknown = value ? TRUE : FALSE;

  /// If [TRUE], starts the Add New Device wizard.
  bool get fAddNewDeviceWizard => _fAddNewDeviceWizard != FALSE;

  set fAddNewDeviceWizard(bool value) =>
      _fAddNewDeviceWizard = value ? TRUE : FALSE;

  /// If [TRUE], skips the Services page in the Add New Device wizard.
  bool get fSkipServicesPage => _fSkipServicesPage != FALSE;

  set fSkipServicesPage(bool value) =>
      _fSkipServicesPage = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension type const BOOL(int _) implements int {}

extension type const BOOLEAN(int _) implements int {}

/// Contains parameters for the SHBrowseForFolder function and receives
/// information about the folder selected by the user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/ns-shlobj_core-browseinfow>.
///
/// {@category struct}
base class BROWSEINFO extends Struct {
  external Pointer _hwndOwner;

  /// A PIDL that specifies the location of the root folder from which to start
  /// browsing.
  external Pointer<ITEMIDLIST> pidlRoot;

  external Pointer<Utf16> _pszDisplayName;
  external Pointer<Utf16> _lpszTitle;

  @Uint32()
  external int ulFlags;

  /// Pointer to an application-defined function that the dialog box calls when
  /// an event occurs.
  external Pointer<NativeFunction<BFFCALLBACK>> lpfn;

  @IntPtr()
  external int _lParam;

  /// An integer value that receives the index of the image associated with the
  /// selected folder, stored in the system image list.
  @Int32()
  external int iImage;

  /// A handle to the owner window for the dialog box.
  HWND get hwndOwner => HWND(_hwndOwner);

  set hwndOwner(HWND value) => _hwndOwner = value;

  /// Pointer to a buffer to receive the display name of the folder selected by
  /// the user.
  PWSTR get pszDisplayName => PWSTR(_pszDisplayName);

  set pszDisplayName(PWSTR value) => _pszDisplayName = value;

  /// Pointer to a null-terminated string that is displayed above the tree view
  /// control in the dialog box.
  PWSTR get lpszTitle => PWSTR(_lpszTitle);

  set lpszTitle(PWSTR value) => _lpszTitle = value;

  /// An application-defined value that the dialog box passes to the callback
  /// function, if one is specified in <b>lpfn</b>.
  LPARAM get lParam => LPARAM(_lParam);

  set lParam(LPARAM value) => _lParam = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BROWSEINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hdesk;
  external Pointer _hwnd;

  /// A locally unique identifier (LUID) for the window.
  external LUID luid;

  /// A desktop handle to the window specified by <b>hwnd</b>.
  HDESK get hdesk => HDESK(_hdesk);

  set hdesk(HDESK value) => _hdesk = value;

  /// A handle to the window that denied the request.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BSMINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class BSTRBLOB extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pData;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BSTRBLOB> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Array<Int8> name;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_DEVICE_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_HCI_EVENT_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_L2CAP_EVENT_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  bool get IsBroadcastable => _IsBroadcastable != FALSE;

  set IsBroadcastable(bool value) => _IsBroadcastable = value ? TRUE : FALSE;

  /// The characteristic can be read.
  bool get IsReadable => _IsReadable != FALSE;

  set IsReadable(bool value) => _IsReadable = value ? TRUE : FALSE;

  /// The characteristic can be written to.
  bool get IsWritable => _IsWritable != FALSE;

  set IsWritable(bool value) => _IsWritable = value ? TRUE : FALSE;

  /// The characteristic can be written to without requiring a response.
  bool get IsWritableWithoutResponse => _IsWritableWithoutResponse != FALSE;

  set IsWritableWithoutResponse(bool value) =>
      _IsWritableWithoutResponse = value ? TRUE : FALSE;

  /// The characteristic can be signed writable.
  bool get IsSignedWritable => _IsSignedWritable != FALSE;

  set IsSignedWritable(bool value) => _IsSignedWritable = value ? TRUE : FALSE;

  /// The characteristic can be updated by the device through Handle Value
  /// Notifications, and the new value will be returned through the callback
  /// function registered via <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent">BluetoothGATTRegisterEvent</a>.
  bool get IsNotifiable => _IsNotifiable != FALSE;

  set IsNotifiable(bool value) => _IsNotifiable = value ? TRUE : FALSE;

  /// The characteristic can be updated by the device through Handle Value
  /// Indications, and the new value will be returned through the callback
  /// function registered via <a
  /// href="https://docs.microsoft.com/windows/desktop/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent">BluetoothGATTRegisterEvent</a>.
  bool get IsIndicatable => _IsIndicatable != FALSE;

  set IsIndicatable(bool value) => _IsIndicatable = value ? TRUE : FALSE;

  /// The characteristic has extended properties, which will be presented
  /// through a Characteristic Extended Properties descriptor.
  bool get HasExtendedProperties => _HasExtendedProperties != FALSE;

  set HasExtendedProperties(bool value) =>
      _HasExtendedProperties = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_CHARACTERISTIC> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  BTH_LE_GATT_DESCRIPTOR_TYPE get DescriptorType =>
      BTH_LE_GATT_DESCRIPTOR_TYPE(_DescriptorType);

  set DescriptorType(BTH_LE_GATT_DESCRIPTOR_TYPE value) =>
      _DescriptorType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_DESCRIPTOR> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  BTH_LE_GATT_DESCRIPTOR_TYPE get DescriptorType =>
      BTH_LE_GATT_DESCRIPTOR_TYPE(_DescriptorType);

  set DescriptorType(BTH_LE_GATT_DESCRIPTOR_TYPE value) =>
      _DescriptorType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0 extends Union {
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 CharacteristicExtendedProperties;
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 ClientCharacteristicConfiguration;
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 ServerCharacteristicConfiguration;
  external BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 CharacteristicFormat;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 get CharacteristicExtendedProperties =>
      this.Anonymous.CharacteristicExtendedProperties;
  set CharacteristicExtendedProperties(
    BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 value,
  ) => this.Anonymous.CharacteristicExtendedProperties = value;
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 get ClientCharacteristicConfiguration =>
      this.Anonymous.ClientCharacteristicConfiguration;
  set ClientCharacteristicConfiguration(
    BTH_LE_GATT_DESCRIPTOR_VALUE_0_1 value,
  ) => this.Anonymous.ClientCharacteristicConfiguration = value;
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 get ServerCharacteristicConfiguration =>
      this.Anonymous.ServerCharacteristicConfiguration;
  set ServerCharacteristicConfiguration(
    BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 value,
  ) => this.Anonymous.ServerCharacteristicConfiguration = value;
  BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 get CharacteristicFormat =>
      this.Anonymous.CharacteristicFormat;
  set CharacteristicFormat(BTH_LE_GATT_DESCRIPTOR_VALUE_0_3 value) =>
      this.Anonymous.CharacteristicFormat = value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_0 extends Struct {
  @Uint8()
  external int _IsReliableWriteEnabled;

  @Uint8()
  external int _IsAuxiliariesWritable;

  bool get IsReliableWriteEnabled => _IsReliableWriteEnabled != FALSE;
  set IsReliableWriteEnabled(bool value) =>
      _IsReliableWriteEnabled = value ? TRUE : FALSE;
  bool get IsAuxiliariesWritable => _IsAuxiliariesWritable != FALSE;
  set IsAuxiliariesWritable(bool value) =>
      _IsAuxiliariesWritable = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_0_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  bool get IsReliableWriteEnabled =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled;
  set IsReliableWriteEnabled(bool value) =>
      this.Anonymous.CharacteristicExtendedProperties.IsReliableWriteEnabled =
          value;
  bool get IsAuxiliariesWritable =>
      this.Anonymous.CharacteristicExtendedProperties.IsAuxiliariesWritable;
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

  bool get IsSubscribeToNotification => _IsSubscribeToNotification != FALSE;
  set IsSubscribeToNotification(bool value) =>
      _IsSubscribeToNotification = value ? TRUE : FALSE;
  bool get IsSubscribeToIndication => _IsSubscribeToIndication != FALSE;
  set IsSubscribeToIndication(bool value) =>
      _IsSubscribeToIndication = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE_0_1> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_1_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  bool get IsSubscribeToNotification => this
      .Anonymous
      .ClientCharacteristicConfiguration
      .IsSubscribeToNotification;
  set IsSubscribeToNotification(bool value) =>
      this
              .Anonymous
              .ClientCharacteristicConfiguration
              .IsSubscribeToNotification =
          value;
  bool get IsSubscribeToIndication =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication;
  set IsSubscribeToIndication(bool value) =>
      this.Anonymous.ClientCharacteristicConfiguration.IsSubscribeToIndication =
          value;
}

/// {@category struct}
sealed class BTH_LE_GATT_DESCRIPTOR_VALUE_0_2 extends Struct {
  @Uint8()
  external int _IsBroadcast;

  bool get IsBroadcast => _IsBroadcast != FALSE;
  set IsBroadcast(bool value) => _IsBroadcast = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE_0_2> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_2_Extension
    on BTH_LE_GATT_DESCRIPTOR_VALUE {
  bool get IsBroadcast =>
      this.Anonymous.ServerCharacteristicConfiguration.IsBroadcast;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE_0_3> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension BTH_LE_GATT_DESCRIPTOR_VALUE_0_3_Extension
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_GATT_SERVICE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  bool get IsShortUuid => _IsShortUuid != FALSE;

  set IsShortUuid(bool value) => _IsShortUuid = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_UUID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class BTH_LE_UUID_0 extends Union {
  @Uint16()
  external int ShortUuid;

  external GUID LongUuid;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_LE_UUID_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension BTH_LE_UUID_0_Extension on BTH_LE_UUID {
  int get ShortUuid => this.Value.ShortUuid;
  set ShortUuid(int value) => this.Value.ShortUuid = value;
  GUID get LongUuid => this.Value.LongUuid;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_QUERY_DEVICE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_QUERY_SERVICE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_RADIO_IN_RANGE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  external Pointer<Pointer> pRecordHandle;

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BTH_SET_SERVICE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<BY_HANDLE_FILE_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class CABOOL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int16> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CABOOL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CABSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CABSTR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CABSTRBLOB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<BSTRBLOB> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CABSTRBLOB> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAC extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Utf8> _pElems;

  PSTR get pElems => PSTR(_pElems);
  set pElems(PSTR value) => _pElems = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  PROCESSOR_CACHE_TYPE get Type => PROCESSOR_CACHE_TYPE(_Type);

  set Type(PROCESSOR_CACHE_TYPE value) => _Type = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CACHE_DESCRIPTOR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CACLIPDATA extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CLIPDATA> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CACLIPDATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CACLSID extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<GUID> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CACLSID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CACY extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<CY> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CACY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CADATE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CADATE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CADBL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Double> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CADBL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAFILETIME extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<FILETIME> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAFILETIME> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAFLT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Float> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAFLT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int64> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAH> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int16> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAI> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CALPSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf8>> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CALPSTR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CALPWSTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CALPWSTR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAPROPVARIANT extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<PROPVARIANT> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAPROPVARIANT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CASCODE extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Int32> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CASCODE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAUB extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint8> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAUB> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAUH extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint64> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAUH> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAUI extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint16> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAUI> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CAUL extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint32> pElems;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CAUL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hWndActive;

  /// This member is [TRUE] if a mouse click is causing the activation or
  /// [FALSE] if it is not.
  bool get fMouse => _fMouse != FALSE;

  set fMouse(bool value) => _fMouse = value ? TRUE : FALSE;

  /// A handle to the active window.
  HWND get hWndActive => HWND(_hWndActive);

  set hWndActive(HWND value) => _hWndActive = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CBTACTIVATESTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hwndInsertAfter;

  /// A handle to the window whose position in the Z order precedes that of the
  /// window being created.
  HWND get hwndInsertAfter => HWND(_hwndInsertAfter);

  set hwndInsertAfter(HWND value) => _hwndInsertAfter = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CBT_CREATEWND> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hCertStore;

  /// Type of encoding used.
  CERT_QUERY_ENCODING_TYPE get dwCertEncodingType =>
      CERT_QUERY_ENCODING_TYPE(_dwCertEncodingType);

  set dwCertEncodingType(CERT_QUERY_ENCODING_TYPE value) =>
      _dwCertEncodingType = value;

  /// A handle to the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/c-gly">certificate
  /// store</a> that contains the certificate <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/c-gly">context</a>.
  HCERTSTORE get hCertStore => HCERTSTORE(_hCertStore);

  set hCertStore(HCERTSTORE value) => _hCertStore = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CERT_CONTEXT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Contains the extension information for a certificate, Certificate Revocation
/// List (CRL) or Certificate Trust List (CTL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-cert_extension>.
///
/// {@category struct}
base class CERT_EXTENSION extends Struct {
  external Pointer<Utf8> _pszObjId;

  @Int32()
  external int _fCritical;

  /// A `CRYPT_OBJID_BLOB` structure that contains the encoded extension data.
  external CRYPT_INTEGER_BLOB Value;

  /// <a href="https://docs.microsoft.com/windows/desktop/SecGloss/o-gly">Object
  /// identifier</a> (OID) that specifies the structure of the extension data
  /// contained in the <b>Value</b> member.
  PSTR get pszObjId => PSTR(_pszObjId);

  set pszObjId(PSTR value) => _pszObjId = value;

  /// If [TRUE], any limitations specified by the extension in the <b>Value</b>
  /// member of this structure are imperative.
  bool get fCritical => _fCritical != FALSE;

  set fCritical(bool value) => _fCritical = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CERT_EXTENSION> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CERT_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CERT_PUBLIC_KEY_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  MSGFLTINFO_STATUS get ExtStatus => MSGFLTINFO_STATUS(_ExtStatus);
  set ExtStatus(MSGFLTINFO_STATUS value) => _ExtStatus = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CHANGEFILTERSTRUCT> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension type const CHAR(int _) implements int {}

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CHAR_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class CHAR_INFO_0 extends Union {
  @Uint16()
  external int UnicodeChar;

  @Int8()
  external int _AsciiChar;

  CHAR get AsciiChar => CHAR(_AsciiChar);
  set AsciiChar(CHAR value) => _AsciiChar = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CHAR_INFO_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension CHAR_INFO_0_Extension on CHAR_INFO {
  int get UnicodeChar => this.Char.UnicodeChar;
  set UnicodeChar(int value) => this.Char.UnicodeChar = value;
  CHAR get AsciiChar => this.Char.AsciiChar;
  set AsciiChar(CHAR value) => this.Char.AsciiChar = value;
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

  external Pointer _hwndOwner;
  external Pointer _hInstance;

  @Uint32()
  external int _rgbResult;

  /// A pointer to an array of 16 values that contain red, green, blue (RGB)
  /// values for the custom color boxes in the dialog box.
  external Pointer<Uint32> lpCustColors;

  @Uint32()
  external int _Flags;

  @IntPtr()
  external int _lCustData;

  /// A pointer to a `CCHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPCCHOOKPROC>> lpfnHook;

  external Pointer<Utf16> _lpTemplateName;

  /// A handle to the window that owns the dialog box.
  HWND get hwndOwner => HWND(_hwndOwner);

  set hwndOwner(HWND value) => _hwndOwner = value;

  /// If the <b>CC_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  HWND get hInstance => HWND(_hInstance);

  set hInstance(HWND value) => _hInstance = value;

  /// If the <b>CC_RGBINIT</b> flag is set, <b>rgbResult</b> specifies the color
  /// initially selected when the dialog box is created.
  COLORREF get rgbResult => COLORREF(_rgbResult);

  set rgbResult(COLORREF value) => _rgbResult = value;

  /// A set of bit flags that you can use to initialize the <b>Color</b> dialog
  /// box.
  CHOOSECOLOR_FLAGS get Flags => CHOOSECOLOR_FLAGS(_Flags);

  set Flags(CHOOSECOLOR_FLAGS value) => _Flags = value;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  LPARAM get lCustData => LPARAM(_lCustData);

  set lCustData(LPARAM value) => _lCustData = value;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  PWSTR get lpTemplateName => PWSTR(_lpTemplateName);

  set lpTemplateName(PWSTR value) => _lpTemplateName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CHOOSECOLOR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hwndOwner;
  external Pointer _hDC;

  /// A pointer to a `LOGFONT` structure.
  external Pointer<LOGFONT> lpLogFont;

  /// The size of the selected font, in units of 1/10 of a point.
  @Int32()
  external int iPointSize;

  @Uint32()
  external int _Flags;

  @Uint32()
  external int _rgbColors;

  @IntPtr()
  external int _lCustData;

  /// A pointer to a `CFHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPCFHOOKPROC>> lpfnHook;

  external Pointer<Utf16> _lpTemplateName;
  external Pointer _hInstance;
  external Pointer<Utf16> _lpszStyle;

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

  /// A handle to the window that owns the dialog box.
  HWND get hwndOwner => HWND(_hwndOwner);

  set hwndOwner(HWND value) => _hwndOwner = value;

  /// This member is ignored by the <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms646914(v=vs.85)">ChooseFont</a>
  /// function.
  HDC get hDC => HDC(_hDC);

  set hDC(HDC value) => _hDC = value;
  CHOOSEFONT_FLAGS get Flags => CHOOSEFONT_FLAGS(_Flags);
  set Flags(CHOOSEFONT_FLAGS value) => _Flags = value;

  /// If the <b>CF_EFFECTS</b> flag is set, <b>rgbColors</b> specifies the
  /// initial text color.
  COLORREF get rgbColors => COLORREF(_rgbColors);

  set rgbColors(COLORREF value) => _rgbColors = value;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  LPARAM get lCustData => LPARAM(_lCustData);

  set lCustData(LPARAM value) => _lCustData = value;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  PWSTR get lpTemplateName => PWSTR(_lpTemplateName);

  set lpTemplateName(PWSTR value) => _lpTemplateName = value;

  /// If the <b>CF_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  HINSTANCE get hInstance => HINSTANCE(_hInstance);

  set hInstance(HINSTANCE value) => _hInstance = value;

  /// The style data.
  PWSTR get lpszStyle => PWSTR(_lpszStyle);

  set lpszStyle(PWSTR value) => _lpszStyle = value;
  CHOOSEFONT_FONT_TYPE get nFontType => CHOOSEFONT_FONT_TYPE(_nFontType);
  set nFontType(CHOOSEFONT_FONT_TYPE value) => _nFontType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CHOOSEFONT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CIEXYZ> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CIEXYZTRIPLE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CLIENT_ID extends Struct {
  external Pointer _UniqueProcess;
  external Pointer _UniqueThread;

  HANDLE get UniqueProcess => HANDLE(_UniqueProcess);
  set UniqueProcess(HANDLE value) => _UniqueProcess = value;
  HANDLE get UniqueThread => HANDLE(_UniqueThread);
  set UniqueThread(HANDLE value) => _UniqueThread = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CLIENT_ID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CLIPDATA extends Struct {
  /// The size of the struct in bytes.
  @Uint32()
  external int cbSize;

  @Int32()
  external int ulClipFmt;

  external Pointer<Uint8> pClipData;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CLIPDATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COLORADJUSTMENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The COLORREF value is used to specify an RGB color.
///
/// To learn more, see <https://learn.microsoft.com/windows/win32/gdi/colorref>.
extension type const COLORREF(int _) implements int {}

/// Used generically to filter elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ns-shtypes-comdlg_filterspec>.
///
/// {@category struct}
base class COMDLG_FILTERSPEC extends Struct {
  external Pointer<Utf16> _pszName;
  external Pointer<Utf16> _pszSpec;

  /// A pointer to a buffer that contains the friendly name of the filter.
  PWSTR get pszName => PWSTR(_pszName);

  set pszName(PWSTR value) => _pszName = value;

  /// A pointer to a buffer that contains the filter pattern.
  PWSTR get pszSpec => PWSTR(_pszSpec);

  set pszSpec(PWSTR value) => _pszSpec = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COMDLG_FILTERSPEC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get wcProviderData => _wcProviderData.toDartString();

  set wcProviderData(String value) => _wcProviderData.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COMMCONFIG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  COMMPROP_STOP_PARITY get wSettableStopParity =>
      COMMPROP_STOP_PARITY(_wSettableStopParity);

  set wSettableStopParity(COMMPROP_STOP_PARITY value) =>
      _wSettableStopParity = value;

  /// Any provider-specific data.
  String get wcProvChar => _wcProvChar.toDartString();

  set wcProvChar(String value) => _wcProvChar.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COMMPROP> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COMMTIMEOUTS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  int get fCtsHold => bitfield.getBits(0, 1);
  set fCtsHold(int value) => bitfield = bitfield.setBits(0, 1, value);
  int get fDsrHold => bitfield.getBits(1, 1);
  set fDsrHold(int value) => bitfield = bitfield.setBits(1, 1, value);
  int get fRlsdHold => bitfield.getBits(2, 1);
  set fRlsdHold(int value) => bitfield = bitfield.setBits(2, 1, value);
  int get fXoffHold => bitfield.getBits(3, 1);
  set fXoffHold(int value) => bitfield = bitfield.setBits(3, 1, value);
  int get fXoffSent => bitfield.getBits(4, 1);
  set fXoffSent(int value) => bitfield = bitfield.setBits(4, 1, value);
  int get fEof => bitfield.getBits(5, 1);
  set fEof(int value) => bitfield = bitfield.setBits(5, 1, value);
  int get fTxim => bitfield.getBits(6, 1);
  set fTxim(int value) => bitfield = bitfield.setBits(6, 1, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COMSTAT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class CONDITION_VARIABLE extends Struct {
  external Pointer Ptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CONDITION_VARIABLE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  IUnknown? get pUnk => _pUnk.isNull ? null : IUnknown(_pUnk);

  set pUnk(IUnknown? value) => _pUnk = value?.ptr ?? nullptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CONNECTDATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  bool get bVisible => _bVisible != FALSE;

  set bVisible(bool value) => _bVisible = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CONSOLE_CURSOR_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CONSOLE_READCONSOLE_CONTROL> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  CONSOLE_CHARACTER_ATTRIBUTES get wAttributes =>
      CONSOLE_CHARACTER_ATTRIBUTES(_wAttributes);

  set wAttributes(CONSOLE_CHARACTER_ATTRIBUTES value) => _wAttributes = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CONSOLE_SCREEN_BUFFER_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CONSOLE_SELECTION_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Invalid handle values are: `0`.
extension type const CONTROLTRACE_HANDLE(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != 0;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COORD> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class COR_FIELD_OFFSET extends Struct {
  @Uint32()
  external int ridOfField;

  @Uint32()
  external int ulOffset;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<COR_FIELD_OFFSET> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [CoDecrementMTAUsage] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const CO_MTA_USAGE_COOKIE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  void close() => CoDecrementMTAUsage(this);
}

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

  external Pointer _hTemplateFile;

  /// A valid handle to a template file with the **GENERIC_READ** access right.
  HANDLE get hTemplateFile => HANDLE(_hTemplateFile);

  set hTemplateFile(HANDLE value) => _hTemplateFile = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _hInstance;
  external Pointer _hMenu;
  external Pointer _hwndParent;

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

  external Pointer<Utf16> _lpszName;
  external Pointer<Utf16> _lpszClass;

  @Uint32()
  external int _dwExStyle;

  /// A handle to the module that owns the new window.
  HINSTANCE get hInstance => HINSTANCE(_hInstance);

  set hInstance(HINSTANCE value) => _hInstance = value;

  /// A handle to the menu to be used by the new window.
  HMENU get hMenu => HMENU(_hMenu);

  set hMenu(HMENU value) => _hMenu = value;

  /// A handle to the parent window, if the window is a child window.
  HWND get hwndParent => HWND(_hwndParent);

  set hwndParent(HWND value) => _hwndParent = value;

  /// The style for the new window.
  WINDOW_STYLE get style => WINDOW_STYLE(_style);

  set style(WINDOW_STYLE value) => _style = value;

  /// The name of the new window.
  PWSTR get lpszName => PWSTR(_lpszName);

  set lpszName(PWSTR value) => _lpszName = value;

  /// A pointer to a null-terminated string or an atom that specifies the class
  /// name of the new window.
  PWSTR get lpszClass => PWSTR(_lpszClass);

  set lpszClass(PWSTR value) => _lpszClass = value;

  /// The extended window style for the new window.
  WINDOW_EX_STYLE get dwExStyle => WINDOW_EX_STYLE(_dwExStyle);

  set dwExStyle(WINDOW_EX_STYLE value) => _dwExStyle = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CREATESTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _TargetName;
  external Pointer<Utf16> _Comment;

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

  external Pointer<Utf16> _TargetAlias;
  external Pointer<Utf16> _UserName;

  /// A bit member that identifies characteristics of the credential.
  CRED_FLAGS get Flags => CRED_FLAGS(_Flags);

  set Flags(CRED_FLAGS value) => _Flags = value;

  /// The type of the credential.
  CRED_TYPE get Type => CRED_TYPE(_Type);

  set Type(CRED_TYPE value) => _Type = value;

  /// The name of the credential.
  PWSTR get TargetName => PWSTR(_TargetName);

  set TargetName(PWSTR value) => _TargetName = value;

  /// A string comment from the user that describes this credential.
  PWSTR get Comment => PWSTR(_Comment);

  set Comment(PWSTR value) => _Comment = value;

  /// Defines the persistence of this credential.
  CRED_PERSIST get Persist => CRED_PERSIST(_Persist);

  set Persist(CRED_PERSIST value) => _Persist = value;

  /// Alias for the <b>TargetName</b> member.
  PWSTR get TargetAlias => PWSTR(_TargetAlias);

  set TargetAlias(PWSTR value) => _TargetAlias = value;

  /// The user name of the account used to connect to <b>TargetName</b>.
  PWSTR get UserName => PWSTR(_UserName);

  set UserName(PWSTR value) => _UserName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CREDENTIAL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer<Utf16> _Keyword;

  /// Identifies characteristics of the credential attribute.
  @Uint32()
  external int Flags;

  /// Length of <b>Value</b> in bytes.
  @Uint32()
  external int ValueSize;

  /// Data associated with the attribute.
  external Pointer<Uint8> Value;

  /// Name of the application-specific attribute.
  PWSTR get Keyword => PWSTR(_Keyword);

  set Keyword(PWSTR value) => _Keyword = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CREDENTIAL_ATTRIBUTE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _hwndApp;
  external Pointer<Utf16> _szPrompt;

  /// Window handle to the parent window.
  HWND get hwndApp => HWND(_hwndApp);

  set hwndApp(HWND value) => _hwndApp = value;

  /// A string containing the text of a prompt to be displayed.
  PWSTR get szPrompt => PWSTR(_szPrompt);

  set szPrompt(PWSTR value) => _szPrompt = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Specifies an algorithm used to encrypt a private key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincrypt/ns-wincrypt-crypt_algorithm_identifier>.
///
/// {@category struct}
base class CRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external Pointer<Utf8> _pszObjId;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/b-gly">BLOB</a>
  /// that provides encoded algorithm-specific parameters.
  external CRYPT_INTEGER_BLOB Parameters;

  PSTR get pszObjId => PSTR(_pszObjId);
  set pszObjId(PSTR value) => _pszObjId = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CRYPT_BIT_BLOB> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CRYPT_INTEGER_BLOB> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

final CUIAutomation = GUID.fromComponents(
  0xff48dba4,
  0x60ef,
  0x4201,
  Uint8List.fromList(const [0xaa, 0x87, 0x54, 0x10, 0x3e, 0xef, 0x59, 0x4e]),
);

final CUIAutomation8 = GUID.fromComponents(
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

  external Pointer _hCursor;

  /// A structure that receives the screen coordinates of the cursor.
  external POINT ptScreenPos;

  CURSORINFO_FLAGS get flags => CURSORINFO_FLAGS(_flags);
  set flags(CURSORINFO_FLAGS value) => _flags = value;

  /// A handle to the cursor.
  HCURSOR get hCursor => HCURSOR(_hCursor);

  set hCursor(HCURSOR value) => _hCursor = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CURSORINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Defines the message parameters passed to a WH_CALLWNDPROCRET hook procedure,
/// CallWndRetProc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cwpretstruct>.
///
/// {@category struct}
base class CWPRETSTRUCT extends Struct {
  @IntPtr()
  external int _lResult;

  @IntPtr()
  external int _lParam;

  @IntPtr()
  external int _wParam;

  /// The message.
  @Uint32()
  external int message;

  external Pointer _hwnd;

  /// The return value of the window procedure that processed the message
  /// specified by the <b>message</b> value.
  LRESULT get lResult => LRESULT(_lResult);

  set lResult(LRESULT value) => _lResult = value;

  /// Additional information about the message.
  LPARAM get lParam => LPARAM(_lParam);

  set lParam(LPARAM value) => _lParam = value;

  /// Additional information about the message.
  WPARAM get wParam => WPARAM(_wParam);

  set wParam(WPARAM value) => _wParam = value;

  /// A handle to the window that processed the message specified by the
  /// <b>message</b> value.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CWPRETSTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Defines the message parameters passed to a WH_CALLWNDPROC hook procedure,
/// CallWndProc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-cwpstruct>.
///
/// {@category struct}
base class CWPSTRUCT extends Struct {
  @IntPtr()
  external int _lParam;

  @IntPtr()
  external int _wParam;

  /// The message.
  @Uint32()
  external int message;

  external Pointer _hwnd;

  /// Additional information about the message.
  LPARAM get lParam => LPARAM(_lParam);

  set lParam(LPARAM value) => _lParam = value;

  /// Additional information about the message.
  WPARAM get wParam => WPARAM(_wParam);

  set wParam(WPARAM value) => _wParam = value;

  /// A handle to the window to receive the message.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CWPSTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
sealed class CY_0 extends Struct {
  @Uint32()
  external int Lo;

  @Int32()
  external int Hi;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<CY_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension CY_0_Extension on CY {
  int get Lo => this.Anonymous.Lo;
  set Lo(int value) => this.Anonymous.Lo = value;
  int get Hi => this.Anonymous.Hi;
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

  @Int8()
  external int _XonChar;

  @Int8()
  external int _XoffChar;

  @Int8()
  external int _ErrorChar;

  @Int8()
  external int _EofChar;

  @Int8()
  external int _EvtChar;

  @Uint16()
  external int _wReserved1;

  int get fBinary => bitfield.getBits(0, 1);
  set fBinary(int value) => bitfield = bitfield.setBits(0, 1, value);
  int get fParity => bitfield.getBits(1, 1);
  set fParity(int value) => bitfield = bitfield.setBits(1, 1, value);
  int get fOutxCtsFlow => bitfield.getBits(2, 1);
  set fOutxCtsFlow(int value) => bitfield = bitfield.setBits(2, 1, value);
  int get fOutxDsrFlow => bitfield.getBits(3, 1);
  set fOutxDsrFlow(int value) => bitfield = bitfield.setBits(3, 1, value);
  int get fDtrControl => bitfield.getBits(4, 2);
  set fDtrControl(int value) => bitfield = bitfield.setBits(4, 2, value);
  int get fDsrSensitivity => bitfield.getBits(6, 1);
  set fDsrSensitivity(int value) => bitfield = bitfield.setBits(6, 1, value);
  int get fTXContinueOnXoff => bitfield.getBits(7, 1);
  set fTXContinueOnXoff(int value) => bitfield = bitfield.setBits(7, 1, value);
  int get fOutX => bitfield.getBits(8, 1);
  set fOutX(int value) => bitfield = bitfield.setBits(8, 1, value);
  int get fInX => bitfield.getBits(9, 1);
  set fInX(int value) => bitfield = bitfield.setBits(9, 1, value);
  int get fErrorChar => bitfield.getBits(10, 1);
  set fErrorChar(int value) => bitfield = bitfield.setBits(10, 1, value);
  int get fNull => bitfield.getBits(11, 1);
  set fNull(int value) => bitfield = bitfield.setBits(11, 1, value);
  int get fRtsControl => bitfield.getBits(12, 2);
  set fRtsControl(int value) => bitfield = bitfield.setBits(12, 2, value);
  int get fAbortOnError => bitfield.getBits(14, 1);
  set fAbortOnError(int value) => bitfield = bitfield.setBits(14, 1, value);
  int get fDummy2 => bitfield.getBits(15, 17);
  set fDummy2(int value) => bitfield = bitfield.setBits(15, 17, value);
  DCB_PARITY get Parity => DCB_PARITY(_Parity);
  set Parity(DCB_PARITY value) => _Parity = value;
  DCB_STOP_BITS get StopBits => DCB_STOP_BITS(_StopBits);
  set StopBits(DCB_STOP_BITS value) => _StopBits = value;

  /// The value of the XON character for both transmission and reception.
  CHAR get XonChar => CHAR(_XonChar);

  set XonChar(CHAR value) => _XonChar = value;

  /// The value of the XOFF character for both transmission and reception.
  CHAR get XoffChar => CHAR(_XoffChar);

  set XoffChar(CHAR value) => _XoffChar = value;

  /// The value of the character used to replace bytes received with a parity
  /// error.
  CHAR get ErrorChar => CHAR(_ErrorChar);

  set ErrorChar(CHAR value) => _ErrorChar = value;

  /// The value of the character used to signal the end of data.
  CHAR get EofChar => CHAR(_EofChar);

  set EofChar(CHAR value) => _EofChar = value;

  /// The value of the character used to signal an event.
  CHAR get EvtChar => CHAR(_EvtChar);

  set EvtChar(CHAR value) => _EvtChar = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DCB> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  @IntPtr()
  external int _lParam;

  @IntPtr()
  external int _wParam;

  /// The value to be passed to the hook in the <i>nCode</i> parameter of the <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  @Int32()
  external int code;

  /// The value to be passed to the hook in the <i>lParam</i> parameter of the
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  LPARAM get lParam => LPARAM(_lParam);

  set lParam(LPARAM value) => _lParam = value;

  /// The value to be passed to the hook in the <i>wParam</i> parameter of the
  /// <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/legacy/ms644978(v=vs.85)">DebugProc</a>
  /// callback function.
  WPARAM get wParam => WPARAM(_wParam);

  set wParam(WPARAM value) => _wParam = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEBUGHOOKINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DECIMAL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class DECIMAL_0 extends Union {
  external DECIMAL_0_0 Anonymous;

  @Uint16()
  external int signscale;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DECIMAL_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DECIMAL_0_Extension on DECIMAL {
  DECIMAL_0_0 get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(DECIMAL_0_0 value) => this.Anonymous1.Anonymous = value;
  int get signscale => this.Anonymous1.signscale;
  set signscale(int value) => this.Anonymous1.signscale = value;
}

/// {@category struct}
sealed class DECIMAL_0_0 extends Struct {
  @Uint8()
  external int scale;

  @Uint8()
  external int sign;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DECIMAL_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DECIMAL_0_0_Extension on DECIMAL {
  int get scale => this.Anonymous1.Anonymous.scale;
  set scale(int value) => this.Anonymous1.Anonymous.scale = value;
  int get sign => this.Anonymous1.Anonymous.sign;
  set sign(int value) => this.Anonymous1.Anonymous.sign = value;
}

/// {@category union}
sealed class DECIMAL_1 extends Union {
  external DECIMAL_1_0 Anonymous;

  @Uint64()
  external int Lo64;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DECIMAL_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DECIMAL_1_Extension on DECIMAL {
  DECIMAL_1_0 get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(DECIMAL_1_0 value) => this.Anonymous2.Anonymous = value;
  int get Lo64 => this.Anonymous2.Lo64;
  set Lo64(int value) => this.Anonymous2.Lo64 = value;
}

/// {@category struct}
sealed class DECIMAL_1_0 extends Struct {
  @Uint32()
  external int Lo32;

  @Uint32()
  external int Mid32;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DECIMAL_1_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DECIMAL_1_0_Extension on DECIMAL {
  int get Lo32 => this.Anonymous2.Anonymous.Lo32;
  set Lo32(int value) => this.Anonymous2.Anonymous.Lo32 = value;
  int get Mid32 => this.Anonymous2.Anonymous.Mid32;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DESIGNVECTOR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get dmDeviceName => _dmDeviceName.toDartString();

  set dmDeviceName(String value) => _dmDeviceName.setString(value);

  /// Specifies bit flags identifying which of the following DEVMODEW members
  /// are in use.
  DEVMODE_FIELD_FLAGS get dmFields => DEVMODE_FIELD_FLAGS(_dmFields);

  set dmFields(DEVMODE_FIELD_FLAGS value) => _dmFields = value;

  /// For printers, specifies whether a color printer should print color or
  /// monochrome.
  DEVMODE_COLOR get dmColor => DEVMODE_COLOR(_dmColor);

  set dmColor(DEVMODE_COLOR value) => _dmColor = value;
  DEVMODE_DUPLEX get dmDuplex => DEVMODE_DUPLEX(_dmDuplex);
  set dmDuplex(DEVMODE_DUPLEX value) => _dmDuplex = value;

  /// For printers, specifies how TrueType fonts should be printed.
  DEVMODE_TRUETYPE_OPTION get dmTTOption =>
      DEVMODE_TRUETYPE_OPTION(_dmTTOption);

  set dmTTOption(DEVMODE_TRUETYPE_OPTION value) => _dmTTOption = value;
  DEVMODE_COLLATE get dmCollate => DEVMODE_COLLATE(_dmCollate);
  set dmCollate(DEVMODE_COLLATE value) => _dmCollate = value;

  /// For printers, specifies the name of the form to use; such as "Letter" or
  /// "Legal".
  String get dmFormName => _dmFormName.toDartString();

  set dmFormName(String value) => _dmFormName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEVMODE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class DEVMODE_0 extends Union {
  external DEVMODE_0_0 Anonymous1;
  external DEVMODE_0_1 Anonymous2;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEVMODE_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DEVMODE_0_Extension on DEVMODE {
  DEVMODE_0_0 get Anonymous1 => this.Anonymous1.Anonymous1;
  set Anonymous1(DEVMODE_0_0 value) => this.Anonymous1.Anonymous1 = value;
  DEVMODE_0_1 get Anonymous2 => this.Anonymous1.Anonymous2;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEVMODE_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DEVMODE_0_0_Extension on DEVMODE {
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
sealed class DEVMODE_0_1 extends Struct {
  external POINTL dmPosition;

  @Uint32()
  external int _dmDisplayOrientation;

  @Uint32()
  external int _dmDisplayFixedOutput;

  DEVMODE_DISPLAY_ORIENTATION get dmDisplayOrientation =>
      DEVMODE_DISPLAY_ORIENTATION(_dmDisplayOrientation);
  set dmDisplayOrientation(DEVMODE_DISPLAY_ORIENTATION value) =>
      _dmDisplayOrientation = value;
  DEVMODE_DISPLAY_FIXED_OUTPUT get dmDisplayFixedOutput =>
      DEVMODE_DISPLAY_FIXED_OUTPUT(_dmDisplayFixedOutput);
  set dmDisplayFixedOutput(DEVMODE_DISPLAY_FIXED_OUTPUT value) =>
      _dmDisplayFixedOutput = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEVMODE_0_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DEVMODE_0_1_Extension on DEVMODE {
  POINTL get dmPosition => this.Anonymous1.Anonymous2.dmPosition;
  set dmPosition(POINTL value) => this.Anonymous1.Anonymous2.dmPosition = value;
  DEVMODE_DISPLAY_ORIENTATION get dmDisplayOrientation =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation;
  set dmDisplayOrientation(DEVMODE_DISPLAY_ORIENTATION value) =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation = value;
  DEVMODE_DISPLAY_FIXED_OUTPUT get dmDisplayFixedOutput =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput;
  set dmDisplayFixedOutput(DEVMODE_DISPLAY_FIXED_OUTPUT value) =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput = value;
}

/// {@category union}
sealed class DEVMODE_1 extends Union {
  @Uint32()
  external int dmDisplayFlags;

  @Uint32()
  external int dmNup;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEVMODE_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension DEVMODE_1_Extension on DEVMODE {
  int get dmDisplayFlags => this.Anonymous2.dmDisplayFlags;
  set dmDisplayFlags(int value) => this.Anonymous2.dmDisplayFlags = value;
  int get dmNup => this.Anonymous2.dmNup;
  set dmNup(int value) => this.Anonymous2.dmNup = value;
}

/// {@category struct}
base class DEVPROPKEY extends Struct {
  external GUID fmtid;

  @Uint32()
  external int pid;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEVPROPKEY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get dbcc_name => _dbcc_name.toDartString();

  set dbcc_name(String value) => _dbcc_name.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEV_BROADCAST_DEVICEINTERFACE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  DEV_BROADCAST_HDR_DEVICE_TYPE get dbch_devicetype =>
      DEV_BROADCAST_HDR_DEVICE_TYPE(_dbch_devicetype);
  set dbch_devicetype(DEV_BROADCAST_HDR_DEVICE_TYPE value) =>
      _dbch_devicetype = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEV_BROADCAST_HDR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  DEV_BROADCAST_VOLUME_FLAGS get dbcv_flags =>
      DEV_BROADCAST_VOLUME_FLAGS(_dbcv_flags);
  set dbcv_flags(DEV_BROADCAST_VOLUME_FLAGS value) => _dbcv_flags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DEV_BROADCAST_VOLUME> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _dshSection;

  /// The offset to the bitmap's bit values within the file mapping object
  /// referenced by <i>dshSection</i>.
  @Uint32()
  external int dsOffset;

  /// Contains a handle to the file mapping object that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/nf-wingdi-createdibsection">CreateDIBSection</a>
  /// function used to create the DIB.
  HANDLE get dshSection => HANDLE(_dshSection);

  set dshSection(HANDLE value) => _dshSection = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DIBSECTION> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISK_EXTENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  MEDIA_TYPE get MediaType => MEDIA_TYPE(_MediaType);

  set MediaType(MEDIA_TYPE value) => _MediaType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISK_GEOMETRY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISK_GEOMETRY_EX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_2DREGION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_DESKTOP_IMAGE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DISPLAYCONFIG_DEVICE_INFO_TYPE get type =>
      DISPLAYCONFIG_DEVICE_INFO_TYPE(_type);

  set type(DISPLAYCONFIG_DEVICE_INFO_TYPE value) => _type = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_DEVICE_INFO_HEADER> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DISPLAYCONFIG_MODE_INFO_TYPE get infoType =>
      DISPLAYCONFIG_MODE_INFO_TYPE(_infoType);

  set infoType(DISPLAYCONFIG_MODE_INFO_TYPE value) => _infoType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_MODE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class DISPLAYCONFIG_MODE_INFO_0 extends Union {
  external DISPLAYCONFIG_TARGET_MODE targetMode;
  external DISPLAYCONFIG_SOURCE_MODE sourceMode;
  external DISPLAYCONFIG_DESKTOP_IMAGE_INFO desktopImageInfo;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_MODE_INFO_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension DISPLAYCONFIG_MODE_INFO_0_Extension on DISPLAYCONFIG_MODE_INFO {
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_PATH_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_PATH_SOURCE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class DISPLAYCONFIG_PATH_SOURCE_INFO_0 extends Union {
  @Uint32()
  external int modeInfoIdx;

  external DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_PATH_SOURCE_INFO_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_0_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;
  DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_PATH_SOURCE_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;

  int get cloneGroupId => bitfield.getBits(0, 16);
  set cloneGroupId(int value) => bitfield = bitfield.setBits(0, 16, value);
  int get sourceModeInfoIdx => bitfield.getBits(16, 16);
  set sourceModeInfoIdx(int value) =>
      bitfield = bitfield.setBits(16, 16, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_PATH_SOURCE_INFO_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_0_0_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
  int get cloneGroupId => this.Anonymous.Anonymous.cloneGroupId;
  set cloneGroupId(int value) => this.Anonymous.Anonymous.cloneGroupId = value;
  int get sourceModeInfoIdx => this.Anonymous.Anonymous.sourceModeInfoIdx;
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
  DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY get outputTechnology =>
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(_outputTechnology);

  set outputTechnology(DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY value) =>
      _outputTechnology = value;

  /// A value that specifies the rotation of the target.
  DISPLAYCONFIG_ROTATION get rotation => DISPLAYCONFIG_ROTATION(_rotation);

  set rotation(DISPLAYCONFIG_ROTATION value) => _rotation = value;

  /// A value that specifies how the source image is scaled to the target.
  DISPLAYCONFIG_SCALING get scaling => DISPLAYCONFIG_SCALING(_scaling);

  set scaling(DISPLAYCONFIG_SCALING value) => _scaling = value;

  /// A value that specifies the scan-line ordering of the output on the target.
  DISPLAYCONFIG_SCANLINE_ORDERING get scanLineOrdering =>
      DISPLAYCONFIG_SCANLINE_ORDERING(_scanLineOrdering);

  set scanLineOrdering(DISPLAYCONFIG_SCANLINE_ORDERING value) =>
      _scanLineOrdering = value;

  /// A Boolean value that specifies whether the target is available.
  bool get targetAvailable => _targetAvailable != FALSE;

  set targetAvailable(bool value) => _targetAvailable = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_PATH_TARGET_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class DISPLAYCONFIG_PATH_TARGET_INFO_0 extends Union {
  @Uint32()
  external int modeInfoIdx;

  external DISPLAYCONFIG_PATH_TARGET_INFO_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_PATH_TARGET_INFO_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_0_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;
  DISPLAYCONFIG_PATH_TARGET_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(DISPLAYCONFIG_PATH_TARGET_INFO_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_PATH_TARGET_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;

  int get desktopModeInfoIdx => bitfield.getBits(0, 16);
  set desktopModeInfoIdx(int value) =>
      bitfield = bitfield.setBits(0, 16, value);
  int get targetModeInfoIdx => bitfield.getBits(16, 16);
  set targetModeInfoIdx(int value) =>
      bitfield = bitfield.setBits(16, 16, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_PATH_TARGET_INFO_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_0_0_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
  int get desktopModeInfoIdx => this.Anonymous.Anonymous.desktopModeInfoIdx;
  set desktopModeInfoIdx(int value) =>
      this.Anonymous.Anonymous.desktopModeInfoIdx = value;
  int get targetModeInfoIdx => this.Anonymous.Anonymous.targetModeInfoIdx;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_RATIONAL> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DISPLAYCONFIG_PIXELFORMAT get pixelFormat =>
      DISPLAYCONFIG_PIXELFORMAT(_pixelFormat);

  set pixelFormat(DISPLAYCONFIG_PIXELFORMAT value) => _pixelFormat = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_SOURCE_MODE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_TARGET_MODE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DISPLAYCONFIG_SCANLINE_ORDERING get scanLineOrdering =>
      DISPLAYCONFIG_SCANLINE_ORDERING(_scanLineOrdering);

  set scanLineOrdering(DISPLAYCONFIG_SCANLINE_ORDERING value) =>
      _scanLineOrdering = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_VIDEO_SIGNAL_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0 extends Union {
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 AdditionalSignalInfo;

  @Uint32()
  external int videoStandard;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 get AdditionalSignalInfo =>
      this.Anonymous.AdditionalSignalInfo;
  set AdditionalSignalInfo(DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 value) =>
      this.Anonymous.AdditionalSignalInfo = value;
  int get videoStandard => this.Anonymous.videoStandard;
  set videoStandard(int value) => this.Anonymous.videoStandard = value;
}

/// {@category struct}
sealed class DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0 extends Struct {
  @Uint32()
  external int bitfield;

  int get videoStandard => bitfield.getBits(0, 16);
  set videoStandard(int value) => bitfield = bitfield.setBits(0, 16, value);
  int get vSyncFreqDivider => bitfield.getBits(16, 6);
  set vSyncFreqDivider(int value) => bitfield = bitfield.setBits(16, 6, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_0_0_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  int get bitfield => this.Anonymous.AdditionalSignalInfo.bitfield;
  set bitfield(int value) =>
      this.Anonymous.AdditionalSignalInfo.bitfield = value;
  int get videoStandard => this.Anonymous.AdditionalSignalInfo.videoStandard;
  set videoStandard(int value) =>
      this.Anonymous.AdditionalSignalInfo.videoStandard = value;
  int get vSyncFreqDivider =>
      this.Anonymous.AdditionalSignalInfo.vSyncFreqDivider;
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
  String get DeviceName => _DeviceName.toDartString();

  set DeviceName(String value) => _DeviceName.setString(value);

  /// A string containing the device context string.
  String get DeviceString => _DeviceString.toDartString();

  set DeviceString(String value) => _DeviceString.setString(value);

  /// Device state flags.
  DISPLAY_DEVICE_STATE_FLAGS get StateFlags =>
      DISPLAY_DEVICE_STATE_FLAGS(_StateFlags);

  set StateFlags(DISPLAY_DEVICE_STATE_FLAGS value) => _StateFlags = value;
  String get DeviceID => _DeviceID.toDartString();
  set DeviceID(String value) => _DeviceID.setString(value);

  /// Reserved.
  String get DeviceKey => _DeviceKey.toDartString();

  set DeviceKey(String value) => _DeviceKey.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPLAY_DEVICE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DISPPARAMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DLGITEMTEMPLATE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DLGTEMPLATE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DLLVERSIONINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Describes a document that will be printed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/doc-info-1>.
///
/// {@category struct}
base class DOC_INFO_1 extends Struct {
  external Pointer<Utf16> _pDocName;
  external Pointer<Utf16> _pOutputFile;
  external Pointer<Utf16> _pDatatype;

  /// Pointer to a null-terminated string that specifies the name of the
  /// document.
  PWSTR get pDocName => PWSTR(_pDocName);

  set pDocName(PWSTR value) => _pDocName = value;

  /// Pointer to a null-terminated string that specifies the name of an output
  /// file.
  PWSTR get pOutputFile => PWSTR(_pOutputFile);

  set pOutputFile(PWSTR value) => _pOutputFile = value;

  /// Pointer to a null-terminated string that identifies the type of data used
  /// to record the document.
  PWSTR get pDatatype => PWSTR(_pDatatype);

  set pDatatype(PWSTR value) => _pDatatype = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DOC_INFO_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  DOT11_AUTH_ALGORITHM get AuthAlgoId => DOT11_AUTH_ALGORITHM(_AuthAlgoId);

  set AuthAlgoId(DOT11_AUTH_ALGORITHM value) => _AuthAlgoId = value;

  /// A cipher algorithm that uses a `DOT11_CIPHER_ALGORITHM` enumerated type.
  DOT11_CIPHER_ALGORITHM get CipherAlgoId =>
      DOT11_CIPHER_ALGORITHM(_CipherAlgoId);

  set CipherAlgoId(DOT11_CIPHER_ALGORITHM value) => _CipherAlgoId = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DOT11_AUTH_CIPHER_PAIR> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DOT11_BSSID_LIST> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DOT11_NETWORK> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DOT11_NETWORK_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DOT11_SSID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Invalid handle values are: `0`.
extension type const DPI_AWARENESS_CONTEXT(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != Pointer.fromAddress(0);
}

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DRAWTEXTPARAMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  bool get fNC => _fNC != FALSE;

  set fNC(bool value) => _fNC = value ? TRUE : FALSE;

  /// A value that indicates whether the file contains ANSI or Unicode
  /// characters.
  bool get fWide => _fWide != FALSE;

  set fWide(bool value) => _fWide = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DROPFILES> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _pszDeviceId;
  external Pointer<Utf16> _pszIdpDomain;
  external Pointer<Utf16> _pszTenantId;
  external Pointer<Utf16> _pszJoinUserEmail;
  external Pointer<Utf16> _pszTenantDisplayName;
  external Pointer<Utf16> _pszMdmEnrollmentUrl;
  external Pointer<Utf16> _pszMdmTermsOfUseUrl;
  external Pointer<Utf16> _pszMdmComplianceUrl;
  external Pointer<Utf16> _pszUserSettingSyncUrl;

  /// Information about the user account that was used to join a device to Azure
  /// AD.
  external Pointer<DSREG_USER_INFO> pUserInfo;

  /// An enumeration value that specifies the type of the join.
  DSREG_JOIN_TYPE get joinType => DSREG_JOIN_TYPE(_joinType);

  set joinType(DSREG_JOIN_TYPE value) => _joinType = value;

  /// The identifier of the device.
  PWSTR get pszDeviceId => PWSTR(_pszDeviceId);

  set pszDeviceId(PWSTR value) => _pszDeviceId = value;

  /// A string that represents Azure Active Directory (Azure AD).
  PWSTR get pszIdpDomain => PWSTR(_pszIdpDomain);

  set pszIdpDomain(PWSTR value) => _pszIdpDomain = value;

  /// The identifier of the joined Azure AD tenant.
  PWSTR get pszTenantId => PWSTR(_pszTenantId);

  set pszTenantId(PWSTR value) => _pszTenantId = value;

  /// The email address for the joined account.
  PWSTR get pszJoinUserEmail => PWSTR(_pszJoinUserEmail);

  set pszJoinUserEmail(PWSTR value) => _pszJoinUserEmail = value;

  /// The display name for the joined account.
  PWSTR get pszTenantDisplayName => PWSTR(_pszTenantDisplayName);

  set pszTenantDisplayName(PWSTR value) => _pszTenantDisplayName = value;

  /// The URL to use to enroll in the Mobile Device Management (MDM) service.
  PWSTR get pszMdmEnrollmentUrl => PWSTR(_pszMdmEnrollmentUrl);

  set pszMdmEnrollmentUrl(PWSTR value) => _pszMdmEnrollmentUrl = value;

  /// The URL that provides information about the terms of use for the MDM
  /// service.
  PWSTR get pszMdmTermsOfUseUrl => PWSTR(_pszMdmTermsOfUseUrl);

  set pszMdmTermsOfUseUrl(PWSTR value) => _pszMdmTermsOfUseUrl = value;

  /// The URL that provides information about compliance for the MDM service.
  PWSTR get pszMdmComplianceUrl => PWSTR(_pszMdmComplianceUrl);

  set pszMdmComplianceUrl(PWSTR value) => _pszMdmComplianceUrl = value;

  /// The URL for synchronizing user settings.
  PWSTR get pszUserSettingSyncUrl => PWSTR(_pszUserSettingSyncUrl);

  set pszUserSettingSyncUrl(PWSTR value) => _pszUserSettingSyncUrl = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DSREG_JOIN_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Contains information about a user account that is used to join a device to
/// Microsoft Azure Active Directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/ns-lmjoin-dsreg_user_info>.
///
/// {@category struct}
base class DSREG_USER_INFO extends Struct {
  external Pointer<Utf16> _pszUserEmail;
  external Pointer<Utf16> _pszUserKeyId;
  external Pointer<Utf16> _pszUserKeyName;

  /// The email address of the user.
  PWSTR get pszUserEmail => PWSTR(_pszUserEmail);

  set pszUserEmail(PWSTR value) => _pszUserEmail = value;

  /// The identifier of the Microsoft Passport key that is provisioned for the
  /// user.
  PWSTR get pszUserKeyId => PWSTR(_pszUserKeyId);

  set pszUserKeyId(PWSTR value) => _pszUserKeyId = value;

  /// The name of the Microsoft Passport key that is provisioned for the user.
  PWSTR get pszUserKeyName => PWSTR(_pszUserKeyName);

  set pszUserKeyName(PWSTR value) => _pszUserKeyName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DSREG_USER_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DTBGOPTS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  @Uint32()
  external int _crText;

  @Uint32()
  external int _crBorder;

  @Uint32()
  external int _crShadow;

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

  @IntPtr()
  external int _lParam;

  /// A combination of flags that specify whether certain values of the
  /// <b>DTTOPTS</b> structure have been specified, and how to interpret these
  /// values.
  DTTOPTS_FLAGS get dwFlags => DTTOPTS_FLAGS(_dwFlags);

  set dwFlags(DTTOPTS_FLAGS value) => _dwFlags = value;

  /// Specifies the color of the text that will be drawn.
  COLORREF get crText => COLORREF(_crText);

  set crText(COLORREF value) => _crText = value;

  /// Specifies the color of the outline that will be drawn around the text.
  COLORREF get crBorder => COLORREF(_crBorder);

  set crBorder(COLORREF value) => _crBorder = value;

  /// Specifies the color of the shadow that will be drawn behind the text.
  COLORREF get crShadow => COLORREF(_crShadow);

  set crShadow(COLORREF value) => _crShadow = value;

  /// If [TRUE], text will be drawn on top of the shadow and outline effects.
  bool get fApplyOverlay => _fApplyOverlay != FALSE;

  set fApplyOverlay(bool value) => _fApplyOverlay = value ? TRUE : FALSE;

  /// Parameter for callback back function specified by
  /// <b>pfnDrawTextCallback</b>.
  LPARAM get lParam => LPARAM(_lParam);

  set lParam(LPARAM value) => _lParam = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DTTOPTS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hRgnBlur;

  @Int32()
  external int _fTransitionOnMaximized;

  /// [TRUE] to register the window handle to DWM blur behind; [FALSE] to
  /// unregister the window handle from DWM blur behind.
  bool get fEnable => _fEnable != FALSE;

  set fEnable(bool value) => _fEnable = value ? TRUE : FALSE;

  /// The region within the client area where the blur behind will be applied.
  HRGN get hRgnBlur => HRGN(_hRgnBlur);

  set hRgnBlur(HRGN value) => _hRgnBlur = value;

  /// [TRUE] if the window's colorization should transition to match the
  /// maximized windows; otherwise, [FALSE].
  bool get fTransitionOnMaximized => _fTransitionOnMaximized != FALSE;

  set fTransitionOnMaximized(bool value) =>
      _fTransitionOnMaximized = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<DWM_BLURBEHIND> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

final DesktopWallpaper = GUID.fromComponents(
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<EAP_METHOD_TYPE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<EAP_TYPE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ELEMDESC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class ELEMDESC_0 extends Union {
  external IDLDESC idldesc;
  external PARAMDESC paramdesc;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ELEMDESC_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension ELEMDESC_0_Extension on ELEMDESC {
  IDLDESC get idldesc => this.Anonymous.idldesc;
  set idldesc(IDLDESC value) => this.Anonymous.idldesc = value;
  PARAMDESC get paramdesc => this.Anonymous.paramdesc;
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
  String get elfFullName => _elfFullName.toDartString();

  set elfFullName(String value) => _elfFullName.setString(value);

  /// The style of the font.
  String get elfStyle => _elfStyle.toDartString();

  set elfStyle(String value) => _elfStyle.setString(value);

  /// The script, that is, the character set, of the font.
  String get elfScript => _elfScript.toDartString();

  set elfScript(String value) => _elfScript.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ENUMLOGFONTEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ENUM_PAGE_FILE_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  external Pointer<Utf16> _lpServiceName;
  external Pointer<Utf16> _lpDisplayName;

  /// A `SERVICE_STATUS` structure that contains status information for the
  /// <b>lpServiceName</b> service.
  external SERVICE_STATUS ServiceStatus;

  /// The name of a service in the service control manager database.
  PWSTR get lpServiceName => PWSTR(_lpServiceName);

  set lpServiceName(PWSTR value) => _lpServiceName = value;

  /// A display name that can be used by service control programs, such as
  /// Services in Control Panel, to identify the service.
  PWSTR get lpDisplayName => PWSTR(_lpDisplayName);

  set lpDisplayName(PWSTR value) => _lpDisplayName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ENUM_SERVICE_STATUS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  external Pointer<Utf16> _lpServiceName;
  external Pointer<Utf16> _lpDisplayName;

  /// A `SERVICE_STATUS_PROCESS` structure that contains status information for
  /// the <b>lpServiceName</b> service.
  external SERVICE_STATUS_PROCESS ServiceStatusProcess;

  /// The name of a service in the service control manager database.
  PWSTR get lpServiceName => PWSTR(_lpServiceName);

  set lpServiceName(PWSTR value) => _lpServiceName = value;

  /// A display name that can be used by service control programs, such as
  /// Services in Control Panel, to identify the service.
  PWSTR get lpDisplayName => PWSTR(_lpDisplayName);

  set lpDisplayName(PWSTR value) => _lpDisplayName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ENUM_SERVICE_STATUS_PROCESS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _hwnd;

  /// A handle to the window to which the message was posted.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<EVENTMSG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [EvtClose] function.
///
/// Invalid handle values are: `0`.
extension type const EVT_HANDLE(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != 0;

  /// Closes the handle.
  Win32Result<bool> close() => EvtClose(this);
}

/// Contains the information used to connect to a remote computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ns-winevt-evt_rpc_login>.
///
/// {@category struct}
base class EVT_RPC_LOGIN extends Struct {
  external Pointer<Utf16> _Server;
  external Pointer<Utf16> _User;
  external Pointer<Utf16> _Domain;
  external Pointer<Utf16> _Password;

  /// The authentication method to use to authenticate the user when connecting
  /// to the remote computer.
  @Uint32()
  external int Flags;

  /// The name of the remote computer to connect to.
  PWSTR get Server => PWSTR(_Server);

  set Server(PWSTR value) => _Server = value;

  /// The user name to use to connect to the remote computer.
  PWSTR get User => PWSTR(_User);

  set User(PWSTR value) => _User = value;

  /// The domain to which the user account belongs.
  PWSTR get Domain => PWSTR(_Domain);

  set Domain(PWSTR value) => _Domain = value;

  /// The password for the user account.
  PWSTR get Password => PWSTR(_Password);

  set Password(PWSTR value) => _Password = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<EVT_RPC_LOGIN> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<EVT_VARIANT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer<Utf16> _StringVal;
  external Pointer<Utf8> _AnsiStringVal;
  external Pointer<Uint8> BinaryVal;
  external Pointer _SidVal;

  @IntPtr()
  external int SizeTVal;

  external Pointer<Int32> BooleanArr;
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
  external Pointer<Pointer<Utf16>> StringArr;
  external Pointer<Pointer<Utf8>> AnsiStringArr;
  external Pointer<Pointer> SidArr;
  external Pointer<IntPtr> SizeTArr;

  @IntPtr()
  external int _EvtHandleVal;

  external Pointer<Utf16> _XmlVal;
  external Pointer<Pointer<Utf16>> XmlValArr;

  bool get BooleanVal => _BooleanVal != FALSE;
  set BooleanVal(bool value) => _BooleanVal = value ? TRUE : FALSE;
  PWSTR get StringVal => PWSTR(_StringVal);
  set StringVal(PWSTR value) => _StringVal = value;
  PSTR get AnsiStringVal => PSTR(_AnsiStringVal);
  set AnsiStringVal(PSTR value) => _AnsiStringVal = value;
  PSID get SidVal => PSID(_SidVal);
  set SidVal(PSID value) => _SidVal = value;
  EVT_HANDLE get EvtHandleVal => EVT_HANDLE(_EvtHandleVal);
  set EvtHandleVal(EVT_HANDLE value) => _EvtHandleVal = value;
  PWSTR get XmlVal => PWSTR(_XmlVal);
  set XmlVal(PWSTR value) => _XmlVal = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<EVT_VARIANT_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension EVT_VARIANT_0_Extension on EVT_VARIANT {
  bool get BooleanVal => this.Anonymous.BooleanVal;
  set BooleanVal(bool value) => this.Anonymous.BooleanVal = value;
  int get SByteVal => this.Anonymous.SByteVal;
  set SByteVal(int value) => this.Anonymous.SByteVal = value;
  int get Int16Val => this.Anonymous.Int16Val;
  set Int16Val(int value) => this.Anonymous.Int16Val = value;
  int get Int32Val => this.Anonymous.Int32Val;
  set Int32Val(int value) => this.Anonymous.Int32Val = value;
  int get Int64Val => this.Anonymous.Int64Val;
  set Int64Val(int value) => this.Anonymous.Int64Val = value;
  int get ByteVal => this.Anonymous.ByteVal;
  set ByteVal(int value) => this.Anonymous.ByteVal = value;
  int get UInt16Val => this.Anonymous.UInt16Val;
  set UInt16Val(int value) => this.Anonymous.UInt16Val = value;
  int get UInt32Val => this.Anonymous.UInt32Val;
  set UInt32Val(int value) => this.Anonymous.UInt32Val = value;
  int get UInt64Val => this.Anonymous.UInt64Val;
  set UInt64Val(int value) => this.Anonymous.UInt64Val = value;
  double get SingleVal => this.Anonymous.SingleVal;
  set SingleVal(double value) => this.Anonymous.SingleVal = value;
  double get DoubleVal => this.Anonymous.DoubleVal;
  set DoubleVal(double value) => this.Anonymous.DoubleVal = value;
  int get FileTimeVal => this.Anonymous.FileTimeVal;
  set FileTimeVal(int value) => this.Anonymous.FileTimeVal = value;
  Pointer<SYSTEMTIME> get SysTimeVal => this.Anonymous.SysTimeVal;
  set SysTimeVal(Pointer<SYSTEMTIME> value) =>
      this.Anonymous.SysTimeVal = value;
  Pointer<GUID> get GuidVal => this.Anonymous.GuidVal;
  set GuidVal(Pointer<GUID> value) => this.Anonymous.GuidVal = value;
  PWSTR get StringVal => this.Anonymous.StringVal;
  set StringVal(PWSTR value) => this.Anonymous.StringVal = value;
  PSTR get AnsiStringVal => this.Anonymous.AnsiStringVal;
  set AnsiStringVal(PSTR value) => this.Anonymous.AnsiStringVal = value;
  Pointer<Uint8> get BinaryVal => this.Anonymous.BinaryVal;
  set BinaryVal(Pointer<Uint8> value) => this.Anonymous.BinaryVal = value;
  PSID get SidVal => this.Anonymous.SidVal;
  set SidVal(PSID value) => this.Anonymous.SidVal = value;
  int get SizeTVal => this.Anonymous.SizeTVal;
  set SizeTVal(int value) => this.Anonymous.SizeTVal = value;
  Pointer<Int32> get BooleanArr => this.Anonymous.BooleanArr;
  set BooleanArr(Pointer<Int32> value) => this.Anonymous.BooleanArr = value;
  Pointer<Int8> get SByteArr => this.Anonymous.SByteArr;
  set SByteArr(Pointer<Int8> value) => this.Anonymous.SByteArr = value;
  Pointer<Int16> get Int16Arr => this.Anonymous.Int16Arr;
  set Int16Arr(Pointer<Int16> value) => this.Anonymous.Int16Arr = value;
  Pointer<Int32> get Int32Arr => this.Anonymous.Int32Arr;
  set Int32Arr(Pointer<Int32> value) => this.Anonymous.Int32Arr = value;
  Pointer<Int64> get Int64Arr => this.Anonymous.Int64Arr;
  set Int64Arr(Pointer<Int64> value) => this.Anonymous.Int64Arr = value;
  Pointer<Uint8> get ByteArr => this.Anonymous.ByteArr;
  set ByteArr(Pointer<Uint8> value) => this.Anonymous.ByteArr = value;
  Pointer<Uint16> get UInt16Arr => this.Anonymous.UInt16Arr;
  set UInt16Arr(Pointer<Uint16> value) => this.Anonymous.UInt16Arr = value;
  Pointer<Uint32> get UInt32Arr => this.Anonymous.UInt32Arr;
  set UInt32Arr(Pointer<Uint32> value) => this.Anonymous.UInt32Arr = value;
  Pointer<Uint64> get UInt64Arr => this.Anonymous.UInt64Arr;
  set UInt64Arr(Pointer<Uint64> value) => this.Anonymous.UInt64Arr = value;
  Pointer<Float> get SingleArr => this.Anonymous.SingleArr;
  set SingleArr(Pointer<Float> value) => this.Anonymous.SingleArr = value;
  Pointer<Double> get DoubleArr => this.Anonymous.DoubleArr;
  set DoubleArr(Pointer<Double> value) => this.Anonymous.DoubleArr = value;
  Pointer<FILETIME> get FileTimeArr => this.Anonymous.FileTimeArr;
  set FileTimeArr(Pointer<FILETIME> value) =>
      this.Anonymous.FileTimeArr = value;
  Pointer<SYSTEMTIME> get SysTimeArr => this.Anonymous.SysTimeArr;
  set SysTimeArr(Pointer<SYSTEMTIME> value) =>
      this.Anonymous.SysTimeArr = value;
  Pointer<GUID> get GuidArr => this.Anonymous.GuidArr;
  set GuidArr(Pointer<GUID> value) => this.Anonymous.GuidArr = value;
  Pointer<Pointer<Utf16>> get StringArr => this.Anonymous.StringArr;
  set StringArr(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.StringArr = value;
  Pointer<Pointer<Utf8>> get AnsiStringArr => this.Anonymous.AnsiStringArr;
  set AnsiStringArr(Pointer<Pointer<Utf8>> value) =>
      this.Anonymous.AnsiStringArr = value;
  Pointer<Pointer> get SidArr => this.Anonymous.SidArr;
  set SidArr(Pointer<Pointer> value) => this.Anonymous.SidArr = value;
  Pointer<IntPtr> get SizeTArr => this.Anonymous.SizeTArr;
  set SizeTArr(Pointer<IntPtr> value) => this.Anonymous.SizeTArr = value;
  EVT_HANDLE get EvtHandleVal => this.Anonymous.EvtHandleVal;
  set EvtHandleVal(EVT_HANDLE value) => this.Anonymous.EvtHandleVal = value;
  PWSTR get XmlVal => this.Anonymous.XmlVal;
  set XmlVal(PWSTR value) => this.Anonymous.XmlVal = value;
  Pointer<Pointer<Utf16>> get XmlValArr => this.Anonymous.XmlValArr;
  set XmlValArr(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.XmlValArr = value;
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

  external Pointer<Utf16> _bstrSource;
  external Pointer<Utf16> _bstrDescription;
  external Pointer<Utf16> _bstrHelpFile;

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

  /// The name of the exception source.
  BSTR get bstrSource => BSTR(_bstrSource);

  set bstrSource(BSTR value) => _bstrSource = value;

  /// The exception description to display.
  BSTR get bstrDescription => BSTR(_bstrDescription);

  set bstrDescription(BSTR value) => _bstrDescription = value;

  /// The fully qualified help file path.
  BSTR get bstrHelpFile => BSTR(_bstrHelpFile);

  set bstrHelpFile(BSTR value) => _bstrHelpFile = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<EXCEPINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Represents a Microsoft-extended property.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/SecCrypto/extendedproperty>.
///
/// {@category struct}
base class ExtendedProperty extends Struct {
  external Pointer<Utf16> _PropertyName;
  external Pointer<Utf16> _PropertyValue;

  BSTR get PropertyName => BSTR(_PropertyName);
  set PropertyName(BSTR value) => _PropertyName = value;
  BSTR get PropertyValue => BSTR(_PropertyValue);
  set PropertyValue(BSTR value) => _PropertyValue = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ExtendedProperty> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Array<IntPtr> fd_array;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<FD_SET> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<FILETIME> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<FILE_SEGMENT_ELEMENT> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// The handle must be closed using the [FindClosePrinterChangeNotification]
/// function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const FINDPRINTERCHANGENOTIFICATION_HANDLE(Pointer _)
    implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => FindClosePrinterChangeNotification(this);
}

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

  external Pointer _hwndOwner;
  external Pointer _hInstance;

  @Uint32()
  external int _Flags;

  external Pointer<Utf16> _lpstrFindWhat;
  external Pointer<Utf16> _lpstrReplaceWith;

  /// The length, in bytes, of the buffer pointed to by the <b>lpstrFindWhat</b>
  /// member.
  @Uint16()
  external int wFindWhatLen;

  /// The length, in bytes, of the buffer pointed to by the
  /// <b>lpstrReplaceWith</b> member.
  @Uint16()
  external int wReplaceWithLen;

  @IntPtr()
  external int _lCustData;

  /// A pointer to an `FRHookProc` hook procedure that can process messages
  /// intended for the dialog box.
  external Pointer<NativeFunction<LPFRHOOKPROC>> lpfnHook;

  external Pointer<Utf16> _lpTemplateName;

  /// A handle to the window that owns the dialog box.
  HWND get hwndOwner => HWND(_hwndOwner);

  set hwndOwner(HWND value) => _hwndOwner = value;

  /// If the <b>FR_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>,
  /// <b>hInstance</b> is a handle to a memory object containing a dialog box
  /// template.
  HINSTANCE get hInstance => HINSTANCE(_hInstance);

  set hInstance(HINSTANCE value) => _hInstance = value;
  FINDREPLACE_FLAGS get Flags => FINDREPLACE_FLAGS(_Flags);
  set Flags(FINDREPLACE_FLAGS value) => _Flags = value;

  /// The search string that the user typed in the <b>Find What</b> edit
  /// control.
  PWSTR get lpstrFindWhat => PWSTR(_lpstrFindWhat);

  set lpstrFindWhat(PWSTR value) => _lpstrFindWhat = value;

  /// The replacement string that the user typed in the <b>Replace With</b> edit
  /// control.
  PWSTR get lpstrReplaceWith => PWSTR(_lpstrReplaceWith);

  set lpstrReplaceWith(PWSTR value) => _lpstrReplaceWith = value;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  LPARAM get lCustData => LPARAM(_lCustData);

  set lCustData(LPARAM value) => _lCustData = value;

  /// The name of the dialog box template resource in the module identified by
  /// the <b>hInstance</b> member.
  PWSTR get lpTemplateName => PWSTR(_lpTemplateName);

  set lpTemplateName(PWSTR value) => _lpTemplateName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<FINDREPLACE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  bool get bSetFocus => _bSetFocus != FALSE;

  set bSetFocus(bool value) => _bSetFocus = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<FOCUS_EVENT_RECORD> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  FUNCKIND get funckind => FUNCKIND(_funckind);

  set funckind(FUNCKIND value) => _funckind = value;

  /// The invocation type.
  INVOKEKIND get invkind => INVOKEKIND(_invkind);

  set invkind(INVOKEKIND value) => _invkind = value;

  /// The calling convention.
  CALLCONV get callconv => CALLCONV(_callconv);

  set callconv(CALLCONV value) => _callconv = value;

  /// The function flags.
  FUNCFLAGS get wFuncFlags => FUNCFLAGS(_wFuncFlags);

  set wFuncFlags(FUNCFLAGS value) => _wFuncFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<FUNCDESC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

final FileOpenDialog = GUID.fromComponents(
  0xdc1c5a9c,
  0xe88a,
  0x4dde,
  Uint8List.fromList(const [0xa5, 0xa1, 0x60, 0xf8, 0x2a, 0x20, 0xae, 0xf7]),
);

final FileSaveDialog = GUID.fromComponents(
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
  GESTURECONFIG_ID get dwID => GESTURECONFIG_ID(_dwID);

  set dwID(GESTURECONFIG_ID value) => _dwID = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<GESTURECONFIG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hwndTarget;

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

  /// A handle to the window that is targeted by this gesture.
  HWND get hwndTarget => HWND(_hwndTarget);

  set hwndTarget(HWND value) => _hwndTarget = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<GESTUREINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hwndTarget;

  /// The location of the gesture in physical screen coordinates.
  external POINTS ptsLocation;

  /// A specific gesture instance with gesture messages starting with
  /// <b>GID_START</b> and ending with <b>GID_END</b>.
  @Uint32()
  external int dwInstanceID;

  /// The target window for the gesture notification.
  HWND get hwndTarget => HWND(_hwndTarget);

  set hwndTarget(HWND value) => _hwndTarget = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<GESTURENOTIFYSTRUCT> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

final GUID_NULL = GUID.fromComponents(
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

  external Pointer _hwndActive;
  external Pointer _hwndFocus;
  external Pointer _hwndCapture;
  external Pointer _hwndMenuOwner;
  external Pointer _hwndMoveSize;
  external Pointer _hwndCaret;

  /// The caret's bounding rectangle, in client coordinates, relative to the
  /// window specified by the <b>hwndCaret</b> member.
  external RECT rcCaret;

  GUITHREADINFO_FLAGS get flags => GUITHREADINFO_FLAGS(_flags);
  set flags(GUITHREADINFO_FLAGS value) => _flags = value;

  /// A handle to the active window within the thread.
  HWND get hwndActive => HWND(_hwndActive);

  set hwndActive(HWND value) => _hwndActive = value;

  /// A handle to the window that has the keyboard focus.
  HWND get hwndFocus => HWND(_hwndFocus);

  set hwndFocus(HWND value) => _hwndFocus = value;

  /// A handle to the window that has captured the mouse.
  HWND get hwndCapture => HWND(_hwndCapture);

  set hwndCapture(HWND value) => _hwndCapture = value;

  /// A handle to the window that owns any active menus.
  HWND get hwndMenuOwner => HWND(_hwndMenuOwner);

  set hwndMenuOwner(HWND value) => _hwndMenuOwner = value;

  /// A handle to the window in a move or size loop.
  HWND get hwndMoveSize => HWND(_hwndMoveSize);

  set hwndMoveSize(HWND value) => _hwndMoveSize = value;

  /// A handle to the window that is displaying the caret.
  HWND get hwndCaret => HWND(_hwndCaret);

  set hwndCaret(HWND value) => _hwndCaret = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<GUITHREADINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [DestroyAcceleratorTable] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HACCEL(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DestroyAcceleratorTable(this);
}

/// The handle must be closed using the [CloseHandle] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HANDLE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => CloseHandle(this);
}

extension type const HANDLE_PTR(int _) implements int {}

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<HARDWAREINPUT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [DeleteObject] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HBITMAP(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteObject(HGDIOBJ(this));
}

/// The handle must be closed using the [BluetoothFindDeviceClose] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HBLUETOOTH_DEVICE_FIND(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => BluetoothFindDeviceClose(this);
}

/// The handle must be closed using the [BluetoothFindRadioClose] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HBLUETOOTH_RADIO_FIND(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => BluetoothFindRadioClose(this);
}

/// The handle must be closed using the [DeleteObject] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HBRUSH(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteObject(HGDIOBJ(this));
}

/// Invalid handle values are: `-1`, `0`.
extension type const HCERTSTORE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

/// The handle must be closed using the [DestroyCursor] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HCURSOR(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => DestroyCursor(this);
}

/// Invalid handle values are: `-1`, `0`.
extension type const HDC(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

/// The handle must be closed using the [CloseDesktop] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HDESK(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => CloseDesktop(this);
}

/// The handle must be closed using the [SetupDiDestroyDeviceInfoList] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HDEVINFO(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != -1 && this != 0;

  /// Closes the handle.
  Win32Result<bool> close() => SetupDiDestroyDeviceInfoList(this);
}

/// The handle must be closed using the [UnregisterDeviceNotification] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HDEVNOTIFY(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => UnregisterDeviceNotification(this);
}

/// Invalid handle values are: `-1`, `0`.
extension type const HDROP(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

/// Invalid handle values are: `0`.
extension type const HDWP(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != Pointer.fromAddress(0);
}

/// The handle must be closed using the [DeleteObject] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HFONT(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteObject(HGDIOBJ(this));
}

/// The handle must be closed using the [DeleteObject] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HGDIOBJ(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteObject(this);
}

/// The handle must be closed using the [CloseGestureInfoHandle] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HGESTUREINFO(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => CloseGestureInfoHandle(this);
}

/// The handle must be closed using the [GlobalFree] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HGLOBAL(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<HGLOBAL> close() => GlobalFree(this);
}

/// The handle must be closed using the [UnhookWindowsHookEx] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HHOOK(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => UnhookWindowsHookEx(this);
}

/// The handle must be closed using the [DestroyIcon] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HICON(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => DestroyIcon(this);
}

/// The handle must be closed using the [ImageList_Destroy] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HIMAGELIST(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != -1 && this != 0;

  /// Closes the handle.
  bool close() => ImageList_Destroy(this);
}

/// The handle must be closed using the [FreeLibrary] function.
///
/// Invalid handle values are: `0`.
extension type const HINSTANCE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => FreeLibrary(HMODULE(this));
}

/// The handle must be closed using the [RegCloseKey] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HKEY(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  WIN32_ERROR close() => RegCloseKey(this);
}

/// The handle must be closed using the [UnloadKeyboardLayout] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HKL(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => UnloadKeyboardLayout(this);
}

/// The handle must be closed using the [LocalFree] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HLOCAL(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<HLOCAL> close() => LocalFree(this);
}

/// The handle must be closed using the [DestroyMenu] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HMENU(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => DestroyMenu(this);
}

/// The handle must be closed using the [DeleteMetaFile] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HMETAFILE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteMetaFile(this);
}

/// Invalid handle values are: `-1`, `0`.
extension type const HMIDI(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

/// The handle must be closed using the [midiInClose] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HMIDIIN(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  int close() => midiInClose(this);
}

/// The handle must be closed using the [midiOutClose] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HMIDIOUT(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  int close() => midiOutClose(this);
}

/// The handle must be closed using the [FreeLibrary] function.
///
/// Invalid handle values are: `0`.
extension type const HMODULE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => FreeLibrary(this);
}

/// Invalid handle values are: `-1`, `0`.
extension type const HMONITOR(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

/// Used by functions to store information about a given host, such as host
/// name, IPv4 address, and so forth.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-hostent>.
///
/// {@category struct}
base class HOSTENT extends Struct {
  external Pointer<Utf8> _h_name;

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

  /// The official name of the host (PC).
  PSTR get h_name => PSTR(_h_name);

  set h_name(PSTR value) => _h_name = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<HOSTENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [DeleteObject] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HPALETTE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteObject(HGDIOBJ(this));
}

/// The handle must be closed using the [ClosePseudoConsole] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HPCON(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != -1 && this != 0;

  /// Closes the handle.
  void close() => ClosePseudoConsole(this);
}

/// The handle must be closed using the [DeleteObject] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HPEN(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteObject(HGDIOBJ(this));
}

/// The handle must be closed using the [UnregisterPowerSettingNotification]
/// function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HPOWERNOTIFY(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != -1 && this != 0;

  /// Closes the handle.
  Win32Result<bool> close() => UnregisterPowerSettingNotification(this);
}

/// Invalid handle values are: `-1`, `0`.
extension type const HRAWINPUT(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

/// The handle must be closed using the [DeleteObject] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HRGN(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  bool close() => DeleteObject(HGDIOBJ(this));
}

/// Invalid handle values are: `-1`, `0`.
extension type const HRSRC(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

/// A handle to a mutable string buffer that you can use to create an HSTRING.
///
/// The handle must be closed using the [WindowsDeleteStringBuffer] function.
///
/// Invalid handle values are: `-1`, `0`.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinRT/hstring-buffer>.
extension type const HSTRING_BUFFER(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  void close() => WindowsDeleteStringBuffer(this);
}

/// The handle must be closed using the [CloseThemeData] function.
///
/// Invalid handle values are: `0`.
extension type const HTHEME(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != 0;

  /// Closes the handle.
  void close() => CloseThemeData(this);
}

/// The handle must be closed using the [CloseTouchInputHandle] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HTOUCHINPUT(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => CloseTouchInputHandle(this);
}

/// The handle must be closed using the [waveInClose] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HWAVEIN(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  int close() => waveInClose(this);
}

/// The handle must be closed using the [waveOutClose] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HWAVEOUT(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  int close() => waveOutClose(this);
}

/// The handle must be closed using the [CloseWindowStation] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const HWINSTA(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => CloseWindowStation(this);
}

extension type const HWND(Pointer _) implements Pointer {}

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

  external Pointer _hbmMask;
  external Pointer _hbmColor;

  /// Specifies whether this structure defines an icon or a cursor.
  bool get fIcon => _fIcon != FALSE;

  set fIcon(bool value) => _fIcon = value ? TRUE : FALSE;

  /// A handle to the icon monochrome mask <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  HBITMAP get hbmMask => HBITMAP(_hbmMask);

  set hbmMask(HBITMAP value) => _hbmMask = value;

  /// A handle to the icon color <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  HBITMAP get hbmColor => HBITMAP(_hbmColor);

  set hbmColor(HBITMAP value) => _hbmColor = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ICONINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hbmMask;
  external Pointer _hbmColor;

  /// The icon or cursor resource bits.
  @Uint16()
  external int wResID;

  @Array(260)
  external Array<Uint16> _szModName;

  @Array(260)
  external Array<Uint16> _szResName;

  /// Specifies whether this structure defines an icon or a cursor.
  bool get fIcon => _fIcon != FALSE;

  set fIcon(bool value) => _fIcon = value ? TRUE : FALSE;

  /// A handle to the icon monochrome mask <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  HBITMAP get hbmMask => HBITMAP(_hbmMask);

  set hbmMask(HBITMAP value) => _hbmMask = value;

  /// A handle to the icon color <a
  /// href="https://docs.microsoft.com/windows/win32/gdi/bitmaps">bitmap</a>.
  HBITMAP get hbmColor => HBITMAP(_hbmColor);

  set hbmColor(HBITMAP value) => _hbmColor = value;

  /// The fully qualified path of the module.
  String get szModName => _szModName.toDartString();

  set szModName(String value) => _szModName.setString(value);

  /// The fully qualified path of the resource.
  String get szResName => _szResName.toDartString();

  set szResName(String value) => _szResName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ICONINFOEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class IDLDESC extends Struct {
  @IntPtr()
  external int _dwReserved;

  @Uint16()
  external int _wIDLFlags;

  IDLFLAGS get wIDLFlags => IDLFLAGS(_wIDLFlags);
  set wIDLFlags(IDLFLAGS value) => _wIDLFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IDLDESC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  INITCOMMONCONTROLSEX_ICC get dwICC => INITCOMMONCONTROLSEX_ICC(_dwICC);
  set dwICC(INITCOMMONCONTROLSEX_ICC value) => _dwICC = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INITCOMMONCONTROLSEX> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class INIT_ONCE extends Struct {
  external Pointer Ptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INIT_ONCE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  INPUT_TYPE get type => INPUT_TYPE(_type);
  set type(INPUT_TYPE value) => _type = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INPUT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class INPUT_0 extends Union {
  external MOUSEINPUT mi;
  external KEYBDINPUT ki;
  external HARDWAREINPUT hi;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INPUT_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension INPUT_0_Extension on INPUT {
  MOUSEINPUT get mi => this.Anonymous.mi;
  set mi(MOUSEINPUT value) => this.Anonymous.mi = value;
  KEYBDINPUT get ki => this.Anonymous.ki;
  set ki(KEYBDINPUT value) => this.Anonymous.ki = value;
  HARDWAREINPUT get hi => this.Anonymous.hi;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INPUT_RECORD> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class INPUT_RECORD_0 extends Union {
  external KEY_EVENT_RECORD KeyEvent;
  external MOUSE_EVENT_RECORD MouseEvent;
  external WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
  external MENU_EVENT_RECORD MenuEvent;
  external FOCUS_EVENT_RECORD FocusEvent;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INPUT_RECORD_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension INPUT_RECORD_0_Extension on INPUT_RECORD {
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
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-input_transform>.
///
/// {@category struct}
base class INPUT_TRANSFORM extends Struct {
  external INPUT_TRANSFORM_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INPUT_TRANSFORM> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class INPUT_TRANSFORM_0 extends Union {
  external INPUT_TRANSFORM_0_0 Anonymous;

  @Array(16)
  external Array<Float> m;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INPUT_TRANSFORM_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension INPUT_TRANSFORM_0_Extension on INPUT_TRANSFORM {
  INPUT_TRANSFORM_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(INPUT_TRANSFORM_0_0 value) => this.Anonymous.Anonymous = value;
  Array<Float> get m => this.Anonymous.m;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<INPUT_TRANSFORM_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension INPUT_TRANSFORM_0_0_Extension on INPUT_TRANSFORM {
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

/// Represents an IPv4 address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/inaddr/ns-inaddr-in_addr>.
///
/// {@category struct}
base class IN_ADDR extends Struct {
  external IN_ADDR_0 S_un;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IN_ADDR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class IN_ADDR_0 extends Union {
  external IN_ADDR_0_0 S_un_b;
  external IN_ADDR_0_1 S_un_w;

  @Uint32()
  external int S_addr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IN_ADDR_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension IN_ADDR_0_Extension on IN_ADDR {
  IN_ADDR_0_0 get S_un_b => this.S_un.S_un_b;
  set S_un_b(IN_ADDR_0_0 value) => this.S_un.S_un_b = value;
  IN_ADDR_0_1 get S_un_w => this.S_un.S_un_w;
  set S_un_w(IN_ADDR_0_1 value) => this.S_un.S_un_w = value;
  int get S_addr => this.S_un.S_addr;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IN_ADDR_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension IN_ADDR_0_0_Extension on IN_ADDR {
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
sealed class IN_ADDR_0_1 extends Struct {
  @Uint16()
  external int s_w1;

  @Uint16()
  external int s_w2;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IN_ADDR_0_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension IN_ADDR_0_1_Extension on IN_ADDR {
  int get s_w1 => this.S_un.S_un_w.s_w1;
  set s_w1(int value) => this.S_un.S_un_w.s_w1 = value;
  int get s_w2 => this.S_un.S_un_w.s_w2;
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

  external Pointer<Utf8> _AdapterName;

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

  external Pointer<Utf16> _DnsSuffix;
  external Pointer<Utf16> _Description;
  external Pointer<Utf16> _FriendlyName;

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

  @Uint32()
  external int _CompartmentId;

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

  /// An array of characters that contains the name of the adapter with which
  /// these addresses are associated.
  PSTR get AdapterName => PSTR(_AdapterName);

  set AdapterName(PSTR value) => _AdapterName = value;

  /// The Domain Name System (DNS) suffix associated with this adapter.
  PWSTR get DnsSuffix => PWSTR(_DnsSuffix);

  set DnsSuffix(PWSTR value) => _DnsSuffix = value;

  /// A description for the adapter.
  PWSTR get Description => PWSTR(_Description);

  set Description(PWSTR value) => _Description = value;

  /// A user-friendly name for the adapter.
  PWSTR get FriendlyName => PWSTR(_FriendlyName);

  set FriendlyName(PWSTR value) => _FriendlyName = value;

  /// The operational status for the interface as defined in RFC 2863.
  IF_OPER_STATUS get OperStatus => IF_OPER_STATUS(_OperStatus);

  set OperStatus(IF_OPER_STATUS value) => _OperStatus = value;

  /// The routing compartment ID for the adapter address.
  NET_IF_COMPARTMENT_ID get CompartmentId =>
      NET_IF_COMPARTMENT_ID(_CompartmentId);

  set CompartmentId(NET_IF_COMPARTMENT_ID value) => _CompartmentId = value;

  /// The interface connection type for the adapter address.
  NET_IF_CONNECTION_TYPE get ConnectionType =>
      NET_IF_CONNECTION_TYPE(_ConnectionType);

  set ConnectionType(NET_IF_CONNECTION_TYPE value) => _ConnectionType = value;

  /// The encapsulation method used by a tunnel if the adapter address is a
  /// tunnel.
  TUNNEL_TYPE get TunnelType => TUNNEL_TYPE(_TunnelType);

  set TunnelType(TUNNEL_TYPE value) => _TunnelType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ADDRESSES_LH> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_ADDRESSES_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_ADDRESSES_LH_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ADDRESSES_LH_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_ADDRESSES_LH_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Alignment => this.Anonymous1.Alignment;
  set Alignment(int value) => this.Anonymous1.Alignment = value;
  IP_ADAPTER_ADDRESSES_LH_0_0 get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(IP_ADAPTER_ADDRESSES_LH_0_0 value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ADDRESSES_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int IfIndex;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ADDRESSES_LH_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_ADDRESSES_LH_0_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Length => this.Anonymous1.Anonymous.Length;
  set Length(int value) => this.Anonymous1.Anonymous.Length = value;
  int get IfIndex => this.Anonymous1.Anonymous.IfIndex;
  set IfIndex(int value) => this.Anonymous1.Anonymous.IfIndex = value;
}

/// {@category union}
sealed class IP_ADAPTER_ADDRESSES_LH_1 extends Union {
  @Uint32()
  external int Flags;

  external IP_ADAPTER_ADDRESSES_LH_1_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ADDRESSES_LH_1> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_ADDRESSES_LH_1_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Flags => this.Anonymous2.Flags;
  set Flags(int value) => this.Anonymous2.Flags = value;
  IP_ADAPTER_ADDRESSES_LH_1_0 get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(IP_ADAPTER_ADDRESSES_LH_1_0 value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ADDRESSES_LH_1_0 extends Struct {
  @Uint32()
  external int bitfield;

  int get DdnsEnabled => bitfield.getBits(0, 1);
  set DdnsEnabled(int value) => bitfield = bitfield.setBits(0, 1, value);
  int get RegisterAdapterSuffix => bitfield.getBits(1, 1);
  set RegisterAdapterSuffix(int value) =>
      bitfield = bitfield.setBits(1, 1, value);
  int get Dhcpv4Enabled => bitfield.getBits(2, 1);
  set Dhcpv4Enabled(int value) => bitfield = bitfield.setBits(2, 1, value);
  int get ReceiveOnly => bitfield.getBits(3, 1);
  set ReceiveOnly(int value) => bitfield = bitfield.setBits(3, 1, value);
  int get NoMulticast => bitfield.getBits(4, 1);
  set NoMulticast(int value) => bitfield = bitfield.setBits(4, 1, value);
  int get Ipv6OtherStatefulConfig => bitfield.getBits(5, 1);
  set Ipv6OtherStatefulConfig(int value) =>
      bitfield = bitfield.setBits(5, 1, value);
  int get NetbiosOverTcpipEnabled => bitfield.getBits(6, 1);
  set NetbiosOverTcpipEnabled(int value) =>
      bitfield = bitfield.setBits(6, 1, value);
  int get Ipv4Enabled => bitfield.getBits(7, 1);
  set Ipv4Enabled(int value) => bitfield = bitfield.setBits(7, 1, value);
  int get Ipv6Enabled => bitfield.getBits(8, 1);
  set Ipv6Enabled(int value) => bitfield = bitfield.setBits(8, 1, value);
  int get Ipv6ManagedAddressConfigurationSupported => bitfield.getBits(9, 1);
  set Ipv6ManagedAddressConfigurationSupported(int value) =>
      bitfield = bitfield.setBits(9, 1, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ADDRESSES_LH_1_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_ADDRESSES_LH_1_0_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
  int get DdnsEnabled => this.Anonymous2.Anonymous.DdnsEnabled;
  set DdnsEnabled(int value) => this.Anonymous2.Anonymous.DdnsEnabled = value;
  int get RegisterAdapterSuffix =>
      this.Anonymous2.Anonymous.RegisterAdapterSuffix;
  set RegisterAdapterSuffix(int value) =>
      this.Anonymous2.Anonymous.RegisterAdapterSuffix = value;
  int get Dhcpv4Enabled => this.Anonymous2.Anonymous.Dhcpv4Enabled;
  set Dhcpv4Enabled(int value) =>
      this.Anonymous2.Anonymous.Dhcpv4Enabled = value;
  int get ReceiveOnly => this.Anonymous2.Anonymous.ReceiveOnly;
  set ReceiveOnly(int value) => this.Anonymous2.Anonymous.ReceiveOnly = value;
  int get NoMulticast => this.Anonymous2.Anonymous.NoMulticast;
  set NoMulticast(int value) => this.Anonymous2.Anonymous.NoMulticast = value;
  int get Ipv6OtherStatefulConfig =>
      this.Anonymous2.Anonymous.Ipv6OtherStatefulConfig;
  set Ipv6OtherStatefulConfig(int value) =>
      this.Anonymous2.Anonymous.Ipv6OtherStatefulConfig = value;
  int get NetbiosOverTcpipEnabled =>
      this.Anonymous2.Anonymous.NetbiosOverTcpipEnabled;
  set NetbiosOverTcpipEnabled(int value) =>
      this.Anonymous2.Anonymous.NetbiosOverTcpipEnabled = value;
  int get Ipv4Enabled => this.Anonymous2.Anonymous.Ipv4Enabled;
  set Ipv4Enabled(int value) => this.Anonymous2.Anonymous.Ipv4Enabled = value;
  int get Ipv6Enabled => this.Anonymous2.Anonymous.Ipv6Enabled;
  set Ipv6Enabled(int value) => this.Anonymous2.Anonymous.Ipv6Enabled = value;
  int get Ipv6ManagedAddressConfigurationSupported =>
      this.Anonymous2.Anonymous.Ipv6ManagedAddressConfigurationSupported;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_ANYCAST_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_0_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
  IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
  int get Flags => this.Anonymous.Anonymous.Flags;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
  IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int _Reserved;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
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
  String get String$ => _String$.toDartString();

  set String$(String value) => _String$.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_DNS_SUFFIX> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_GATEWAY_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_0_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
  IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int _Reserved;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
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
  String get Name => _Name.toDartString();

  set Name(String value) => _Name.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_INDEX_MAP> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_MULTICAST_ADDRESS_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_0_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
  IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_0_0_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
  int get Flags => this.Anonymous.Anonymous.Flags;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_PREFIX_XP> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_PREFIX_XP_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_PREFIX_XP_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_PREFIX_XP_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_PREFIX_XP_0_Extension on IP_ADAPTER_PREFIX_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
  IP_ADAPTER_PREFIX_XP_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_PREFIX_XP_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_PREFIX_XP_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_PREFIX_XP_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_PREFIX_XP_0_0_Extension on IP_ADAPTER_PREFIX_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
  int get Flags => this.Anonymous.Anonymous.Flags;
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
  NL_PREFIX_ORIGIN get PrefixOrigin => NL_PREFIX_ORIGIN(_PrefixOrigin);

  set PrefixOrigin(NL_PREFIX_ORIGIN value) => _PrefixOrigin = value;

  /// The suffix or host part of the IP address.
  NL_SUFFIX_ORIGIN get SuffixOrigin => NL_SUFFIX_ORIGIN(_SuffixOrigin);

  set SuffixOrigin(NL_SUFFIX_ORIGIN value) => _SuffixOrigin = value;

  /// The duplicate address detection (DAD) state.
  NL_DAD_STATE get DadState => NL_DAD_STATE(_DadState);

  set DadState(NL_DAD_STATE value) => _DadState = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_UNICAST_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_0_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
  IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_UNICAST_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;
  int get Flags => this.Anonymous.Anonymous.Flags;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0 extends Union {
  @Uint64()
  external int Alignment;

  external IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;
  IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int _Reserved;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_0_0_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
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
  external Array<Int8> String$;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADDRESS_STRING> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_ADDR_STRING> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_INTERFACE_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<IP_PER_ADAPTER_INFO_W2KSP1> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<ITEMIDLIST> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _VolumeName;

  /// The base size of the normalized I/O unit, in bytes.
  @Uint32()
  external int BaseIoSize;

  @Uint32()
  external int _ControlFlags;

  /// The NT device name for the volume to which you want to apply the policy
  /// for the I/O rate.
  PWSTR get VolumeName => PWSTR(_VolumeName);

  set VolumeName(PWSTR value) => _VolumeName = value;
  JOB_OBJECT_IO_RATE_CONTROL_FLAGS get ControlFlags =>
      JOB_OBJECT_IO_RATE_CONTROL_FLAGS(_ControlFlags);
  set ControlFlags(JOB_OBJECT_IO_RATE_CONTROL_FLAGS value) =>
      _ControlFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer<Utf16> _pPrinterName;
  external Pointer<Utf16> _pMachineName;
  external Pointer<Utf16> _pUserName;
  external Pointer<Utf16> _pDocument;
  external Pointer<Utf16> _pDatatype;
  external Pointer<Utf16> _pStatus;

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

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer for which the job is spooled.
  PWSTR get pPrinterName => PWSTR(_pPrinterName);

  set pPrinterName(PWSTR value) => _pPrinterName = value;

  /// A pointer to a null-terminated string that specifies the name of the
  /// machine that created the print job.
  PWSTR get pMachineName => PWSTR(_pMachineName);

  set pMachineName(PWSTR value) => _pMachineName = value;

  /// A pointer to a null-terminated string that specifies the name of the user
  /// that owns the print job.
  PWSTR get pUserName => PWSTR(_pUserName);

  set pUserName(PWSTR value) => _pUserName = value;

  /// A pointer to a null-terminated string that specifies the name of the print
  /// job (for example, "MS-WORD: Review.doc").
  PWSTR get pDocument => PWSTR(_pDocument);

  set pDocument(PWSTR value) => _pDocument = value;

  /// A pointer to a null-terminated string that specifies the type of data used
  /// to record the print job.
  PWSTR get pDatatype => PWSTR(_pDatatype);

  set pDatatype(PWSTR value) => _pDatatype = value;

  /// A pointer to a null-terminated string that specifies the status of the
  /// print job.
  PWSTR get pStatus => PWSTR(_pStatus);

  set pStatus(PWSTR value) => _pStatus = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<JOB_INFO_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  KBDLLHOOKSTRUCT_FLAGS get flags => KBDLLHOOKSTRUCT_FLAGS(_flags);

  set flags(KBDLLHOOKSTRUCT_FLAGS value) => _flags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<KBDLLHOOKSTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  VIRTUAL_KEY get wVk => VIRTUAL_KEY(_wVk);

  set wVk(VIRTUAL_KEY value) => _wVk = value;
  KEYBD_EVENT_FLAGS get dwFlags => KEYBD_EVENT_FLAGS(_dwFlags);
  set dwFlags(KEYBD_EVENT_FLAGS value) => _dwFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<KEYBDINPUT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  bool get bKeyDown => _bKeyDown != FALSE;

  set bKeyDown(bool value) => _bKeyDown = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<KEY_EVENT_RECORD> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class KEY_EVENT_RECORD_0 extends Union {
  @Uint16()
  external int UnicodeChar;

  @Int8()
  external int _AsciiChar;

  CHAR get AsciiChar => CHAR(_AsciiChar);
  set AsciiChar(CHAR value) => _AsciiChar = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<KEY_EVENT_RECORD_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension KEY_EVENT_RECORD_0_Extension on KEY_EVENT_RECORD {
  int get UnicodeChar => this.uChar.UnicodeChar;
  set UnicodeChar(int value) => this.uChar.UnicodeChar = value;
  CHAR get AsciiChar => this.uChar.AsciiChar;
  set AsciiChar(CHAR value) => this.uChar.AsciiChar = value;
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

  external Pointer<Utf16> _pszName;
  external Pointer<Utf16> _pszDescription;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/shell/knownfolderid">KNOWNFOLDERID</a>
  /// value that names another known folder to serve as the parent folder.
  external GUID fidParent;

  external Pointer<Utf16> _pszRelativePath;
  external Pointer<Utf16> _pszParsingName;
  external Pointer<Utf16> _pszTooltip;
  external Pointer<Utf16> _pszLocalizedName;
  external Pointer<Utf16> _pszIcon;
  external Pointer<Utf16> _pszSecurity;

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
  KF_CATEGORY get category => KF_CATEGORY(_category);

  set category(KF_CATEGORY value) => _category = value;

  /// A pointer to the non-localized, canonical name for the known folder,
  /// stored as a null-terminated Unicode string.
  PWSTR get pszName => PWSTR(_pszName);

  set pszName(PWSTR value) => _pszName = value;

  /// A pointer to a short description of the known folder, stored as a
  /// null-terminated Unicode string.
  PWSTR get pszDescription => PWSTR(_pszDescription);

  set pszDescription(PWSTR value) => _pszDescription = value;

  /// Optional.
  PWSTR get pszRelativePath => PWSTR(_pszRelativePath);

  set pszRelativePath(PWSTR value) => _pszRelativePath = value;

  /// A pointer to the Shell namespace folder path of the folder, stored as a
  /// null-terminated Unicode string.
  PWSTR get pszParsingName => PWSTR(_pszParsingName);

  set pszParsingName(PWSTR value) => _pszParsingName = value;

  /// Optional.
  PWSTR get pszTooltip => PWSTR(_pszTooltip);

  set pszTooltip(PWSTR value) => _pszTooltip = value;

  /// Optional.
  PWSTR get pszLocalizedName => PWSTR(_pszLocalizedName);

  set pszLocalizedName(PWSTR value) => _pszLocalizedName = value;

  /// Optional.
  PWSTR get pszIcon => PWSTR(_pszIcon);

  set pszIcon(PWSTR value) => _pszIcon = value;

  /// Optional.
  PWSTR get pszSecurity => PWSTR(_pszSecurity);

  set pszSecurity(PWSTR value) => _pszSecurity = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<KNOWNFOLDER_DEFINITION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

final KnownFolderManager = GUID.fromComponents(
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

  WLAN_NOTIFICATION_SOURCES get NotificationSource =>
      WLAN_NOTIFICATION_SOURCES(_NotificationSource);
  set NotificationSource(WLAN_NOTIFICATION_SOURCES value) =>
      _NotificationSource = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<L2_NOTIFICATION_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<LASTINPUTINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  @Uint32()
  external int _lbColor;

  /// A hatch style.
  @IntPtr()
  external int lbHatch;

  /// The brush style.
  BRUSH_STYLE get lbStyle => BRUSH_STYLE(_lbStyle);

  set lbStyle(BRUSH_STYLE value) => _lbStyle = value;

  /// The color in which the brush is to be drawn.
  COLORREF get lbColor => COLORREF(_lbColor);

  set lbColor(COLORREF value) => _lbColor = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<LOGBRUSH> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  FONT_CHARSET get lfCharSet => FONT_CHARSET(_lfCharSet);

  set lfCharSet(FONT_CHARSET value) => _lfCharSet = value;
  FONT_OUTPUT_PRECISION get lfOutPrecision =>
      FONT_OUTPUT_PRECISION(_lfOutPrecision);
  set lfOutPrecision(FONT_OUTPUT_PRECISION value) => _lfOutPrecision = value;
  FONT_CLIP_PRECISION get lfClipPrecision =>
      FONT_CLIP_PRECISION(_lfClipPrecision);
  set lfClipPrecision(FONT_CLIP_PRECISION value) => _lfClipPrecision = value;
  FONT_QUALITY get lfQuality => FONT_QUALITY(_lfQuality);
  set lfQuality(FONT_QUALITY value) => _lfQuality = value;

  /// Specifies a string that specifies the typeface name of the font.
  String get lfFaceName => _lfFaceName.toDartString();

  set lfFaceName(String value) => _lfFaceName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<LOGFONT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<LOGPALETTE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension type const LPARAM(int _) implements int {}

/// The handle must be closed using the [DeleteProcThreadAttributeList]
/// function.
extension type const LPPROC_THREAD_ATTRIBUTE_LIST(Pointer _)
    implements Pointer {
  /// Closes the handle.
  void close() => DeleteProcThreadAttributeList(this);
}

extension type const LRESULT(int _) implements int {}

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<LUID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MAGCOLOREFFECT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MAGIMAGEHEADER> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MAGTRANSFORM> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MARGINS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _lpstrDeviceType;
  external Pointer<Utf16> _lpstrElementName;
  external Pointer<Utf16> _lpstrAlias;

  /// Name or constant identifier of the device type.
  PWSTR get lpstrDeviceType => PWSTR(_lpstrDeviceType);

  set lpstrDeviceType(PWSTR value) => _lpstrDeviceType = value;

  /// Device element (often a path).
  PWSTR get lpstrElementName => PWSTR(_lpstrElementName);

  set lpstrElementName(PWSTR value) => _lpstrElementName = value;

  /// Optional device alias.
  PWSTR get lpstrAlias => PWSTR(_lpstrAlias);

  set lpstrAlias(PWSTR value) => _lpstrAlias = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MCI_OPEN_PARMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MCI_PLAY_PARMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MCI_SEEK_PARMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MCI_STATUS_PARMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MEMORYSTATUSEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  PAGE_PROTECTION_FLAGS get AllocationProtect =>
      PAGE_PROTECTION_FLAGS(_AllocationProtect);

  set AllocationProtect(PAGE_PROTECTION_FLAGS value) =>
      _AllocationProtect = value;
  VIRTUAL_ALLOCATION_TYPE get State => VIRTUAL_ALLOCATION_TYPE(_State);
  set State(VIRTUAL_ALLOCATION_TYPE value) => _State = value;

  /// The access protection of the pages in the region.
  PAGE_PROTECTION_FLAGS get Protect => PAGE_PROTECTION_FLAGS(_Protect);

  set Protect(PAGE_PROTECTION_FLAGS value) => _Protect = value;

  /// The type of pages in the region.
  PAGE_TYPE get Type => PAGE_TYPE(_Type);

  set Type(PAGE_TYPE value) => _Type = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MEMORY_BASIC_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Invalid handle values are: `0`.
extension type const MEMORY_MAPPED_VIEW_ADDRESS(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != Pointer.fromAddress(0);
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

  external Pointer _hMenu;
  external Pointer _hwndMenu;

  @Int32()
  external int bitfield;

  /// A handle to the menu bar or popup menu.
  HMENU get hMenu => HMENU(_hMenu);

  set hMenu(HMENU value) => _hMenu = value;

  /// A handle to the submenu.
  HWND get hwndMenu => HWND(_hwndMenu);

  set hwndMenu(HWND value) => _hwndMenu = value;
  int get fBarFocused => bitfield.getBits(0, 1);
  set fBarFocused(int value) => bitfield = bitfield.setBits(0, 1, value);
  int get fFocused => bitfield.getBits(1, 1);
  set fFocused(int value) => bitfield = bitfield.setBits(1, 1, value);
  int get fUnused => bitfield.getBits(2, 30);
  set fUnused(int value) => bitfield = bitfield.setBits(2, 30, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MENUBARINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hbrBack;

  /// The context help identifier.
  @Uint32()
  external int dwContextHelpID;

  /// An application-defined value.
  @IntPtr()
  external int dwMenuData;

  MENUINFO_MASK get fMask => MENUINFO_MASK(_fMask);
  set fMask(MENUINFO_MASK value) => _fMask = value;
  MENUINFO_STYLE get dwStyle => MENUINFO_STYLE(_dwStyle);
  set dwStyle(MENUINFO_STYLE value) => _dwStyle = value;

  /// A handle to the brush to be used for the menu's background.
  HBRUSH get hbrBack => HBRUSH(_hbrBack);

  set hbrBack(HBRUSH value) => _hbrBack = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MENUINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hSubMenu;
  external Pointer _hbmpChecked;
  external Pointer _hbmpUnchecked;

  /// An application-defined value associated with the menu item.
  @IntPtr()
  external int dwItemData;

  external Pointer<Utf16> _dwTypeData;

  /// The length of the menu item text, in characters, when information is
  /// received about a menu item of the <b>MFT_STRING</b> type.
  @Uint32()
  external int cch;

  external Pointer _hbmpItem;

  MENU_ITEM_MASK get fMask => MENU_ITEM_MASK(_fMask);
  set fMask(MENU_ITEM_MASK value) => _fMask = value;
  MENU_ITEM_TYPE get fType => MENU_ITEM_TYPE(_fType);
  set fType(MENU_ITEM_TYPE value) => _fType = value;

  /// The menu item state.
  MENU_ITEM_STATE get fState => MENU_ITEM_STATE(_fState);

  set fState(MENU_ITEM_STATE value) => _fState = value;

  /// A handle to the drop-down menu or submenu associated with the menu item.
  HMENU get hSubMenu => HMENU(_hSubMenu);

  set hSubMenu(HMENU value) => _hSubMenu = value;

  /// A handle to the bitmap to display next to the item if it is selected.
  HBITMAP get hbmpChecked => HBITMAP(_hbmpChecked);

  set hbmpChecked(HBITMAP value) => _hbmpChecked = value;

  /// A handle to the bitmap to display next to the item if it is not selected.
  HBITMAP get hbmpUnchecked => HBITMAP(_hbmpUnchecked);

  set hbmpUnchecked(HBITMAP value) => _hbmpUnchecked = value;

  /// The contents of the menu item.
  PWSTR get dwTypeData => PWSTR(_dwTypeData);

  set dwTypeData(PWSTR value) => _dwTypeData = value;

  /// A handle to the bitmap to be displayed, or it can be one of the values in
  /// the following table.
  HBITMAP get hbmpItem => HBITMAP(_hbmpItem);

  set hbmpItem(HBITMAP value) => _hbmpItem = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MENUITEMINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get mtString => _mtString.toDartString();

  set mtString(String value) => _mtString.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MENUITEMTEMPLATE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MENUITEMTEMPLATEHEADER> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MENU_EVENT_RECORD> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hMF;

  /// A handle to a memory metafile.
  HMETAFILE get hMF => HMETAFILE(_hMF);

  set hMF(HMETAFILE value) => _hMF = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<METAFILEPICT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MIDIEVENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer<Utf8> _lpData;

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

  /// Pointer to MIDI data.
  PSTR get lpData => PSTR(_lpData);

  set lpData(PSTR value) => _lpData = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MIDIHDR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MIDIINCAPS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MIDIOUTCAPS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MIDIPROPTEMPO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MIDIPROPTIMEDIV> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MIDISTRMBUFFVER> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MINMAXINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

final MMDeviceEnumerator = GUID.fromComponents(
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MMTIME> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MMTIME_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension MMTIME_0_Extension on MMTIME {
  int get ms => this.u.ms;
  set ms(int value) => this.u.ms = value;
  int get sample => this.u.sample;
  set sample(int value) => this.u.sample = value;
  int get cb => this.u.cb;
  set cb(int value) => this.u.cb = value;
  int get ticks => this.u.ticks;
  set ticks(int value) => this.u.ticks = value;
  MMTIME_0_0 get smpte => this.u.smpte;
  set smpte(MMTIME_0_0 value) => this.u.smpte = value;
  MMTIME_0_1 get midi => this.u.midi;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MMTIME_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension MMTIME_0_0_Extension on MMTIME {
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
sealed class MMTIME_0_1 extends Struct {
  @Uint32()
  external int songptrpos;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MMTIME_0_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension MMTIME_0_1_Extension on MMTIME {
  int get songptrpos => this.u.midi.songptrpos;
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

  MODEMDEVCAPS_DIAL_OPTIONS get dwDialOptions =>
      MODEMDEVCAPS_DIAL_OPTIONS(_dwDialOptions);
  set dwDialOptions(MODEMDEVCAPS_DIAL_OPTIONS value) => _dwDialOptions = value;
  MODEMDEVCAPS_SPEAKER_VOLUME get dwSpeakerVolume =>
      MODEMDEVCAPS_SPEAKER_VOLUME(_dwSpeakerVolume);
  set dwSpeakerVolume(MODEMDEVCAPS_SPEAKER_VOLUME value) =>
      _dwSpeakerVolume = value;
  MODEMDEVCAPS_SPEAKER_MODE get dwSpeakerMode =>
      MODEMDEVCAPS_SPEAKER_MODE(_dwSpeakerMode);
  set dwSpeakerMode(MODEMDEVCAPS_SPEAKER_MODE value) => _dwSpeakerMode = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MODEMDEVCAPS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  MODEM_SPEAKER_VOLUME get dwSpeakerVolume =>
      MODEM_SPEAKER_VOLUME(_dwSpeakerVolume);
  set dwSpeakerVolume(MODEM_SPEAKER_VOLUME value) => _dwSpeakerVolume = value;
  MODEMSETTINGS_SPEAKER_MODE get dwSpeakerMode =>
      MODEMSETTINGS_SPEAKER_MODE(_dwSpeakerMode);
  set dwSpeakerMode(MODEMSETTINGS_SPEAKER_MODE value) => _dwSpeakerMode = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MODEMSETTINGS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  MODLOAD_DATA_TYPE get ssig => MODLOAD_DATA_TYPE(_ssig);
  set ssig(MODLOAD_DATA_TYPE value) => _ssig = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MODLOAD_DATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MODULEINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MONITORINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get szDevice => _szDevice.toDartString();

  set szDevice(String value) => _szDevice.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MONITORINFOEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hwnd;

  /// The hit-test value.
  @Uint32()
  external int wHitTestCode;

  /// Additional information associated with the message.
  @IntPtr()
  external int dwExtraInfo;

  /// A handle to the window that will receive the mouse message corresponding
  /// to the mouse event.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MOUSEHOOKSTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MOUSEHOOKSTRUCTEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  MOUSE_EVENT_FLAGS get dwFlags => MOUSE_EVENT_FLAGS(_dwFlags);
  set dwFlags(MOUSE_EVENT_FLAGS value) => _dwFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MOUSEINPUT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MOUSEMOVEPOINT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MOUSE_EVENT_RECORD> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Contains message information from a thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-msg>.
///
/// {@category struct}
base class MSG extends Struct {
  external Pointer _hwnd;

  /// The message identifier.
  @Uint32()
  external int message;

  @IntPtr()
  external int _wParam;

  @IntPtr()
  external int _lParam;

  /// The time at which the message was posted.
  @Uint32()
  external int time;

  /// The cursor position, in screen coordinates, when the message was posted.
  external POINT pt;

  /// A handle to the window whose window procedure receives the message.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// Additional information about the message.
  WPARAM get wParam => WPARAM(_wParam);

  set wParam(WPARAM value) => _wParam = value;

  /// Additional information about the message.
  LPARAM get lParam => LPARAM(_lParam);

  set lParam(LPARAM value) => _lParam = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MSG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<MSLLHOOKSTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NCCALCSIZE_PARAMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NDIS_OBJECT_HEADER> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension type const NET_IF_COMPARTMENT_ID(int _) implements int {}

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NET_LUID_LH> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
sealed class NET_LUID_LH_0 extends Struct {
  @Uint64()
  external int bitfield;

  int get NetLuidIndex => bitfield.getBits(24, 24);
  set NetLuidIndex(int value) => bitfield = bitfield.setBits(24, 24, value);
  int get IfType => bitfield.getBits(48, 16);
  set IfType(int value) => bitfield = bitfield.setBits(48, 16, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NET_LUID_LH_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension NET_LUID_LH_0_Extension on NET_LUID_LH {
  int get bitfield => this.Info.bitfield;
  set bitfield(int value) => this.Info.bitfield = value;
  int get NetLuidIndex => this.Info.NetLuidIndex;
  set NetLuidIndex(int value) => this.Info.NetLuidIndex = value;
  int get IfType => this.Info.IfType;
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
  TMPF_FLAGS get tmPitchAndFamily => TMPF_FLAGS(_tmPitchAndFamily);

  set tmPitchAndFamily(TMPF_FLAGS value) => _tmPitchAndFamily = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NEWTEXTMETRIC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get ProfileName => _ProfileName.toDartString();

  set ProfileName(String value) => _ProfileName.setString(value);

  /// The network cost.
  NLM_CONNECTION_COST get cost => NLM_CONNECTION_COST(_cost);

  set cost(NLM_CONNECTION_COST value) => _cost = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NLM_SIMULATED_PROFILE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NONCLIENTMETRICS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hWnd;

  /// The application-defined identifier of the taskbar icon.
  @Uint32()
  external int uID;

  @Uint32()
  external int _uFlags;

  /// An application-defined message identifier.
  @Uint32()
  external int uCallbackMessage;

  external Pointer _hIcon;

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
  external Pointer _hBalloonIcon;

  /// A handle to the window that receives notifications associated with an icon
  /// in the notification area.
  HWND get hWnd => HWND(_hWnd);

  set hWnd(HWND value) => _hWnd = value;
  NOTIFY_ICON_DATA_FLAGS get uFlags => NOTIFY_ICON_DATA_FLAGS(_uFlags);
  set uFlags(NOTIFY_ICON_DATA_FLAGS value) => _uFlags = value;

  /// A handle to the icon to be added, modified, or deleted.
  HICON get hIcon => HICON(_hIcon);

  set hIcon(HICON value) => _hIcon = value;

  /// A string that specifies the text for a standard tooltip.
  String get szTip => _szTip.toDartString();

  set szTip(String value) => _szTip.setString(value);
  NOTIFY_ICON_STATE get dwState => NOTIFY_ICON_STATE(_dwState);
  set dwState(NOTIFY_ICON_STATE value) => _dwState = value;
  NOTIFY_ICON_STATE get dwStateMask => NOTIFY_ICON_STATE(_dwStateMask);
  set dwStateMask(NOTIFY_ICON_STATE value) => _dwStateMask = value;
  String get szInfo => _szInfo.toDartString();
  set szInfo(String value) => _szInfo.setString(value);
  String get szInfoTitle => _szInfoTitle.toDartString();
  set szInfoTitle(String value) => _szInfoTitle.setString(value);
  NOTIFY_ICON_INFOTIP_FLAGS get dwInfoFlags =>
      NOTIFY_ICON_INFOTIP_FLAGS(_dwInfoFlags);
  set dwInfoFlags(NOTIFY_ICON_INFOTIP_FLAGS value) => _dwInfoFlags = value;
  HICON get hBalloonIcon => HICON(_hBalloonIcon);
  set hBalloonIcon(HICON value) => _hBalloonIcon = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NOTIFYICONDATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class NOTIFYICONDATA_0 extends Union {
  @Uint32()
  external int uTimeout;

  @Uint32()
  external int uVersion;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<NOTIFYICONDATA_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension NOTIFYICONDATA_0_Extension on NOTIFYICONDATA {
  int get uTimeout => this.Anonymous.uTimeout;
  set uTimeout(int value) => this.Anonymous.uTimeout = value;
  int get uVersion => this.Anonymous.uVersion;
  set uVersion(int value) => this.Anonymous.uVersion = value;
}

final NetworkListManager = GUID.fromComponents(
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

  external Pointer _hwndOwner;

  /// The context used for communication with the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a> <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/r-gly">resource
  /// manager</a>.
  @IntPtr()
  external int hSCardContext;

  external Pointer<Utf16> _lpstrGroupNames;

  /// The maximum number of bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version) in the <b>lpstrGroupNames</b> string.
  @Uint32()
  external int nMaxGroupNames;

  external Pointer<Utf16> _lpstrCardNames;

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

  external Pointer<Utf16> _lpstrRdr;

  /// The size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrRdr</b>.
  @Uint32()
  external int nMaxRdr;

  external Pointer<Utf16> _lpstrCard;

  /// The size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrCard</b>.
  @Uint32()
  external int nMaxCard;

  external Pointer<Utf16> _lpstrTitle;

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

  /// The window that owns the dialog box.
  HWND get hwndOwner => HWND(_hwndOwner);

  set hwndOwner(HWND value) => _hwndOwner = value;

  /// A pointer to a buffer that contains null-terminated group name strings.
  PWSTR get lpstrGroupNames => PWSTR(_lpstrGroupNames);

  set lpstrGroupNames(PWSTR value) => _lpstrGroupNames = value;

  /// A pointer to a buffer that contains null-terminated card name strings.
  PWSTR get lpstrCardNames => PWSTR(_lpstrCardNames);

  set lpstrCardNames(PWSTR value) => _lpstrCardNames = value;

  /// If the card is located, the <b>lpstrRdr</b> buffer contains the name of
  /// the reader that contains the located card.
  PWSTR get lpstrRdr => PWSTR(_lpstrRdr);

  set lpstrRdr(PWSTR value) => _lpstrRdr = value;

  /// If the card is located, the <b>lpstrCard</b> buffer contains the name of
  /// the located card.
  PWSTR get lpstrCard => PWSTR(_lpstrCard);

  set lpstrCard(PWSTR value) => _lpstrCard = value;

  /// A pointer to a string to be placed in the title bar of the dialog box.
  PWSTR get lpstrTitle => PWSTR(_lpstrTitle);

  set lpstrTitle(PWSTR value) => _lpstrTitle = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OPENCARDNAME> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hwndOwner;

  /// A set of bit flags that you can use to initialize the dialog box.
  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> _lpstrTitle;
  external Pointer<Utf16> _lpstrSearchDesc;
  external Pointer _hIcon;

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

  external Pointer<Utf16> _lpstrRdr;

  /// Size, in bytes (ANSI version) or characters (<a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/u-gly">Unicode</a>
  /// version), of the buffer pointed to by <b>lpstrRdr</b>.
  @Uint32()
  external int nMaxRdr;

  external Pointer<Utf16> _lpstrCard;

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

  /// The window that owns the dialog box.
  HWND get hwndOwner => HWND(_hwndOwner);

  set hwndOwner(HWND value) => _hwndOwner = value;

  /// A pointer to a string to be placed in the title bar of the dialog box.
  PWSTR get lpstrTitle => PWSTR(_lpstrTitle);

  set lpstrTitle(PWSTR value) => _lpstrTitle = value;

  /// A pointer to a string to be displayed to the user as a prompt to insert
  /// the <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">smart
  /// card</a>.
  PWSTR get lpstrSearchDesc => PWSTR(_lpstrSearchDesc);

  set lpstrSearchDesc(PWSTR value) => _lpstrSearchDesc = value;

  /// A handle to an icon (32 x 32 pixels).
  HICON get hIcon => HICON(_hIcon);

  set hIcon(HICON value) => _hIcon = value;

  /// If the card is located, the <b>lpstrRdr</b> buffer contains the name of
  /// the reader that contains the located card.
  PWSTR get lpstrRdr => PWSTR(_lpstrRdr);

  set lpstrRdr(PWSTR value) => _lpstrRdr = value;

  /// If the card is located, the <i>lpstrCard</i> buffer contains the name of
  /// the located card.
  PWSTR get lpstrCard => PWSTR(_lpstrCard);

  set lpstrCard(PWSTR value) => _lpstrCard = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OPENCARDNAME_EX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _lpstrGroupNames;

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

  external Pointer<Utf16> _lpstrCardNames;

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

  /// A pointer to a buffer containing null-terminated group name strings.
  PWSTR get lpstrGroupNames => PWSTR(_lpstrGroupNames);

  set lpstrGroupNames(PWSTR value) => _lpstrGroupNames = value;

  /// A pointer to a buffer that contains null-terminated card name strings.
  PWSTR get lpstrCardNames => PWSTR(_lpstrCardNames);

  set lpstrCardNames(PWSTR value) => _lpstrCardNames = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OPENCARD_SEARCH_CRITERIA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _hwndOwner;
  external Pointer _hInstance;
  external Pointer<Utf16> _lpstrFilter;
  external Pointer<Utf16> _lpstrCustomFilter;

  /// The size, in characters, of the buffer identified by
  /// <b>lpstrCustomFilter</b>.
  @Uint32()
  external int nMaxCustFilter;

  /// The index of the currently selected filter in the <b>File Types</b>
  /// control.
  @Uint32()
  external int nFilterIndex;

  external Pointer<Utf16> _lpstrFile;

  /// The size, in characters, of the buffer pointed to by <b>lpstrFile</b>.
  @Uint32()
  external int nMaxFile;

  external Pointer<Utf16> _lpstrFileTitle;

  /// The size, in characters, of the buffer pointed to by
  /// <b>lpstrFileTitle</b>.
  @Uint32()
  external int nMaxFileTitle;

  external Pointer<Utf16> _lpstrInitialDir;
  external Pointer<Utf16> _lpstrTitle;

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

  external Pointer<Utf16> _lpstrDefExt;

  @IntPtr()
  external int _lCustData;

  /// A pointer to a hook procedure.
  external Pointer<NativeFunction<LPOFNHOOKPROC>> lpfnHook;

  external Pointer<Utf16> _lpTemplateName;
  external Pointer _pvReserved;

  @Uint32()
  external int _dwReserved;

  @Uint32()
  external int _FlagsEx;

  /// A handle to the window that owns the dialog box.
  HWND get hwndOwner => HWND(_hwndOwner);

  set hwndOwner(HWND value) => _hwndOwner = value;

  /// If the <b>OFN_ENABLETEMPLATEHANDLE</b> flag is set in the <b>Flags</b>
  /// member, <b>hInstance</b> is a handle to a memory object containing a
  /// dialog box template.
  HINSTANCE get hInstance => HINSTANCE(_hInstance);

  set hInstance(HINSTANCE value) => _hInstance = value;

  /// A buffer containing pairs of null-terminated filter strings.
  PWSTR get lpstrFilter => PWSTR(_lpstrFilter);

  set lpstrFilter(PWSTR value) => _lpstrFilter = value;

  /// A static buffer that contains a pair of null-terminated filter strings for
  /// preserving the filter pattern chosen by the user.
  PWSTR get lpstrCustomFilter => PWSTR(_lpstrCustomFilter);

  set lpstrCustomFilter(PWSTR value) => _lpstrCustomFilter = value;

  /// The file name used to initialize the <b>File Name</b> edit control.
  PWSTR get lpstrFile => PWSTR(_lpstrFile);

  set lpstrFile(PWSTR value) => _lpstrFile = value;

  /// The file name and extension (without path information) of the selected
  /// file.
  PWSTR get lpstrFileTitle => PWSTR(_lpstrFileTitle);

  set lpstrFileTitle(PWSTR value) => _lpstrFileTitle = value;

  /// The initial directory.
  PWSTR get lpstrInitialDir => PWSTR(_lpstrInitialDir);

  set lpstrInitialDir(PWSTR value) => _lpstrInitialDir = value;

  /// A string to be placed in the title bar of the dialog box.
  PWSTR get lpstrTitle => PWSTR(_lpstrTitle);

  set lpstrTitle(PWSTR value) => _lpstrTitle = value;

  /// A set of bit flags you can use to initialize the dialog box.
  OPEN_FILENAME_FLAGS get Flags => OPEN_FILENAME_FLAGS(_Flags);

  set Flags(OPEN_FILENAME_FLAGS value) => _Flags = value;

  /// The default extension.
  PWSTR get lpstrDefExt => PWSTR(_lpstrDefExt);

  set lpstrDefExt(PWSTR value) => _lpstrDefExt = value;

  /// Application-defined data that the system passes to the hook procedure
  /// identified by the <b>lpfnHook</b> member.
  LPARAM get lCustData => LPARAM(_lCustData);

  set lCustData(LPARAM value) => _lCustData = value;

  /// The name of the dialog template resource in the module identified by the
  /// <b>hInstance</b> member.
  PWSTR get lpTemplateName => PWSTR(_lpTemplateName);

  set lpTemplateName(PWSTR value) => _lpTemplateName = value;

  /// A set of bit flags you can use to initialize the dialog box.
  OPEN_FILENAME_FLAGS_EX get FlagsEx => OPEN_FILENAME_FLAGS_EX(_FlagsEx);

  set FlagsEx(OPEN_FILENAME_FLAGS_EX value) => _FlagsEx = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OPENFILENAME> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class OSINFO extends Struct {
  @Uint32()
  external int dwOSPlatformId;

  @Uint32()
  external int dwOSMajorVersion;

  @Uint32()
  external int dwOSMinorVersion;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OSINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get szCSDVersion => _szCSDVersion.toDartString();

  set szCSDVersion(String value) => _szCSDVersion.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OSVERSIONINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get szCSDVersion => _szCSDVersion.toDartString();

  set szCSDVersion(String value) => _szCSDVersion.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OSVERSIONINFOEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer _hEvent;

  /// A handle to the event that will be set to a signaled state by the system
  /// when the operation has completed.
  HANDLE get hEvent => HANDLE(_hEvent);

  set hEvent(HANDLE value) => _hEvent = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OVERLAPPED> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class OVERLAPPED_0 extends Union {
  external OVERLAPPED_0_0 Anonymous;
  external Pointer Pointer$;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OVERLAPPED_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension OVERLAPPED_0_Extension on OVERLAPPED {
  OVERLAPPED_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(OVERLAPPED_0_0 value) => this.Anonymous.Anonymous = value;
  Pointer get Pointer$ => this.Anonymous.Pointer$;
  set Pointer$(Pointer value) => this.Anonymous.Pointer$ = value;
}

/// {@category struct}
sealed class OVERLAPPED_0_0 extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int OffsetHigh;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OVERLAPPED_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension OVERLAPPED_0_0_Extension on OVERLAPPED {
  int get Offset => this.Anonymous.Anonymous.Offset;
  set Offset(int value) => this.Anonymous.Anonymous.Offset = value;
  int get OffsetHigh => this.Anonymous.Anonymous.OffsetHigh;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<OVERLAPPED_ENTRY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer _hdc;

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

  /// A handle to the display DC to be used for painting.
  HDC get hdc => HDC(_hdc);

  set hdc(HDC value) => _hdc = value;

  /// Indicates whether the background must be erased.
  bool get fErase => _fErase != FALSE;

  set fErase(bool value) => _fErase = value ? TRUE : FALSE;

  /// Reserved; used internally by the system.
  bool get fRestore => _fRestore != FALSE;

  set fRestore(bool value) => _fRestore = value ? TRUE : FALSE;

  /// Reserved; used internally by the system.
  bool get fIncUpdate => _fIncUpdate != FALSE;

  set fIncUpdate(bool value) => _fIncUpdate = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PAINTSTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PALETTEENTRY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  PARAMFLAGS get wParamFlags => PARAMFLAGS(_wParamFlags);

  set wParamFlags(PARAMFLAGS value) => _wParamFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PARAMDESC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PARAMDESCEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PERFORMANCE_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Contains a handle and text description corresponding to a physical monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/ns-physicalmonitorenumerationapi-physical_monitor>.
///
/// {@category struct}
@Packed(1)
base class PHYSICAL_MONITOR extends Struct {
  external Pointer _hPhysicalMonitor;

  @Array(128)
  external Array<Uint16> _szPhysicalMonitorDescription;

  /// Handle to the physical monitor.
  HANDLE get hPhysicalMonitor => HANDLE(_hPhysicalMonitor);

  set hPhysicalMonitor(HANDLE value) => _hPhysicalMonitor = value;

  /// Text description of the physical monitor.
  String get szPhysicalMonitorDescription =>
      _szPhysicalMonitorDescription.toDartString();

  set szPhysicalMonitorDescription(String value) =>
      _szPhysicalMonitorDescription.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PHYSICAL_MONITOR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POINT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _sourceDevice;
  external Pointer _hwndTarget;

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
  POINTER_INPUT_TYPE get pointerType => POINTER_INPUT_TYPE(_pointerType);

  set pointerType(POINTER_INPUT_TYPE value) => _pointerType = value;

  /// May be any reasonable combination of flags from the <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">Pointer
  /// Flags</a> constants.
  POINTER_FLAGS get pointerFlags => POINTER_FLAGS(_pointerFlags);

  set pointerFlags(POINTER_FLAGS value) => _pointerFlags = value;

  /// Handle to the source device that can be used in calls to the raw input
  /// device API and the digitizer device API.
  HANDLE get sourceDevice => HANDLE(_sourceDevice);

  set sourceDevice(HANDLE value) => _sourceDevice = value;

  /// Window to which this message was targeted.
  HWND get hwndTarget => HWND(_hwndTarget);

  set hwndTarget(HWND value) => _hwndTarget = value;

  /// A value from the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winuser/ne-winuser-pointer_button_change_type">POINTER_BUTTON_CHANGE_TYPE</a>
  /// enumeration that specifies the change in button state between this input
  /// and the previous input.
  POINTER_BUTTON_CHANGE_TYPE get ButtonChangeType =>
      POINTER_BUTTON_CHANGE_TYPE(_ButtonChangeType);

  set ButtonChangeType(POINTER_BUTTON_CHANGE_TYPE value) =>
      _ButtonChangeType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POINTER_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POINTER_PEN_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POINTER_TOUCH_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POINTL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POINTS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _lpstr;

  @Uint32()
  external int uiFlags;

  /// A rectangle structure that contains the dimensions of the opaquing or
  /// clipping rectangle.
  external RECT rcl;

  /// Pointer to an array containing the width value for each character in the
  /// string.
  external Pointer<Int32> pdx;

  /// Pointer to a string of text to be drawn by the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/nf-wingdi-polytextouta">PolyTextOut</a>
  /// function.
  PWSTR get lpstr => PWSTR(_lpstr);

  set lpstr(PWSTR value) => _lpstr = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POLYTEXT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Identifies a supported printer port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/port-info-1>.
///
/// {@category struct}
base class PORT_INFO_1 extends Struct {
  external Pointer<Utf16> _pName;

  /// Pointer to a null-terminated string that identifies a supported printer
  /// port (for example, "LPT1:").
  PWSTR get pName => PWSTR(_pName);

  set pName(PWSTR value) => _pName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PORT_INFO_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Identifies a supported printer port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/port-info-2>.
///
/// {@category struct}
base class PORT_INFO_2 extends Struct {
  external Pointer<Utf16> _pPortName;
  external Pointer<Utf16> _pMonitorName;
  external Pointer<Utf16> _pDescription;

  /// Bitmask describing the type of port.
  @Uint32()
  external int fPortType;

  @Uint32()
  external int _Reserved;

  /// Pointer to a null-terminated string that identifies a supported printer
  /// port (for example, "LPT1:").
  PWSTR get pPortName => PWSTR(_pPortName);

  set pPortName(PWSTR value) => _pPortName = value;

  /// Pointer to a null-terminated string that identifies an installed monitor
  /// (for example, "PJL monitor").
  PWSTR get pMonitorName => PWSTR(_pMonitorName);

  set pMonitorName(PWSTR value) => _pMonitorName = value;

  /// Pointer to a null-terminated string that describes the port in more detail
  /// (for example, if **pPortName** is "LPT1:", **pDescription** is "printer
  /// port").
  PWSTR get pDescription => PWSTR(_pDescription);

  set pDescription(PWSTR value) => _pDescription = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PORT_INFO_2> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<POWERBROADCAST_SETTING> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Specifies the default data type, environment, initialization data, and
/// access rights for a printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-defaults>.
///
/// {@category struct}
base class PRINTER_DEFAULTS extends Struct {
  external Pointer<Utf16> _pDatatype;

  /// Pointer to a `DEVMODE` structure that identifies the default environment
  /// and initialization data for a printer.
  external Pointer<DEVMODE> pDevMode;

  @Uint32()
  external int _DesiredAccess;

  /// Pointer to a null-terminated string that specifies the default data type
  /// for a printer.
  PWSTR get pDatatype => PWSTR(_pDatatype);

  set pDatatype(PWSTR value) => _pDatatype = value;

  /// Specifies desired access rights for a printer.
  PRINTER_ACCESS_RIGHTS get DesiredAccess =>
      PRINTER_ACCESS_RIGHTS(_DesiredAccess);

  set DesiredAccess(PRINTER_ACCESS_RIGHTS value) => _DesiredAccess = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_DEFAULTS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [ClosePrinter] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const PRINTER_HANDLE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => ClosePrinter(this);
}

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

  external Pointer<Utf16> _pDescription;
  external Pointer<Utf16> _pName;
  external Pointer<Utf16> _pComment;

  /// Pointer to a null-terminated string that describes the contents of the
  /// structure.
  PWSTR get pDescription => PWSTR(_pDescription);

  set pDescription(PWSTR value) => _pDescription = value;

  /// Pointer to a null-terminated string that names the contents of the
  /// structure.
  PWSTR get pName => PWSTR(_pName);

  set pName(PWSTR value) => _pName = value;

  /// Pointer to a null-terminated string that contains additional data
  /// describing the structure.
  PWSTR get pComment => PWSTR(_pComment);

  set pComment(PWSTR value) => _pComment = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_INFO_1> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Specifies detailed printer information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-2>.
///
/// {@category struct}
base class PRINTER_INFO_2 extends Struct {
  external Pointer<Utf16> _pServerName;
  external Pointer<Utf16> _pPrinterName;
  external Pointer<Utf16> _pShareName;
  external Pointer<Utf16> _pPortName;
  external Pointer<Utf16> _pDriverName;
  external Pointer<Utf16> _pComment;
  external Pointer<Utf16> _pLocation;

  /// A pointer to a `DEVMODE` structure that defines default printer data such
  /// as the paper orientation and the resolution.
  external Pointer<DEVMODE> pDevMode;

  external Pointer<Utf16> _pSepFile;
  external Pointer<Utf16> _pPrintProcessor;
  external Pointer<Utf16> _pDatatype;
  external Pointer<Utf16> _pParameters;
  external Pointer _pSecurityDescriptor;

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

  /// A pointer to a null-terminated string identifying the server that controls
  /// the printer.
  PWSTR get pServerName => PWSTR(_pServerName);

  set pServerName(PWSTR value) => _pServerName = value;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer.
  PWSTR get pPrinterName => PWSTR(_pPrinterName);

  set pPrinterName(PWSTR value) => _pPrinterName = value;

  /// A pointer to a null-terminated string that identifies the share point for
  /// the printer.
  PWSTR get pShareName => PWSTR(_pShareName);

  set pShareName(PWSTR value) => _pShareName = value;

  /// A pointer to a null-terminated string that identifies the port(s) used to
  /// transmit data to the printer.
  PWSTR get pPortName => PWSTR(_pPortName);

  set pPortName(PWSTR value) => _pPortName = value;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer driver.
  PWSTR get pDriverName => PWSTR(_pDriverName);

  set pDriverName(PWSTR value) => _pDriverName = value;

  /// A pointer to a null-terminated string that provides a brief description of
  /// the printer.
  PWSTR get pComment => PWSTR(_pComment);

  set pComment(PWSTR value) => _pComment = value;

  /// A pointer to a null-terminated string that specifies the physical location
  /// of the printer (for example, "Bldg.
  PWSTR get pLocation => PWSTR(_pLocation);

  set pLocation(PWSTR value) => _pLocation = value;

  /// A pointer to a null-terminated string that specifies the name of the file
  /// used to create the separator page.
  PWSTR get pSepFile => PWSTR(_pSepFile);

  set pSepFile(PWSTR value) => _pSepFile = value;

  /// A pointer to a null-terminated string that specifies the name of the print
  /// processor used by the printer.
  PWSTR get pPrintProcessor => PWSTR(_pPrintProcessor);

  set pPrintProcessor(PWSTR value) => _pPrintProcessor = value;

  /// A pointer to a null-terminated string that specifies the data type used to
  /// record the print job.
  PWSTR get pDatatype => PWSTR(_pDatatype);

  set pDatatype(PWSTR value) => _pDatatype = value;

  /// A pointer to a null-terminated string that specifies the default
  /// print-processor parameters.
  PWSTR get pParameters => PWSTR(_pParameters);

  set pParameters(PWSTR value) => _pParameters = value;

  /// A pointer to a `SECURITY_DESCRIPTOR` structure for the printer.
  PSECURITY_DESCRIPTOR get pSecurityDescriptor =>
      PSECURITY_DESCRIPTOR(_pSecurityDescriptor);

  set pSecurityDescriptor(PSECURITY_DESCRIPTOR value) =>
      _pSecurityDescriptor = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_INFO_2> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Specifies printer security information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-3>.
///
/// {@category struct}
base class PRINTER_INFO_3 extends Struct {
  external Pointer _pSecurityDescriptor;

  /// Pointer to a `SECURITY_DESCRIPTOR` structure that specifies a printer's
  /// security information.
  PSECURITY_DESCRIPTOR get pSecurityDescriptor =>
      PSECURITY_DESCRIPTOR(_pSecurityDescriptor);

  set pSecurityDescriptor(PSECURITY_DESCRIPTOR value) =>
      _pSecurityDescriptor = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_INFO_3> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer<Utf16> _pPrinterName;
  external Pointer<Utf16> _pServerName;

  /// Specifies information about the returned data.
  @Uint32()
  external int Attributes;

  /// Pointer to a null-terminated string that specifies the name of the printer
  /// (local or remote).
  PWSTR get pPrinterName => PWSTR(_pPrinterName);

  set pPrinterName(PWSTR value) => _pPrinterName = value;

  /// Pointer to a null-terminated string that is the name of the server.
  PWSTR get pServerName => PWSTR(_pServerName);

  set pServerName(PWSTR value) => _pServerName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_INFO_4> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Specifies detailed printer information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-info-5>.
///
/// {@category struct}
base class PRINTER_INFO_5 extends Struct {
  external Pointer<Utf16> _pPrinterName;
  external Pointer<Utf16> _pPortName;

  /// The printer attributes.
  @Uint32()
  external int Attributes;

  /// This value is not used.
  @Uint32()
  external int DeviceNotSelectedTimeout;

  /// This value is not used.
  @Uint32()
  external int TransmissionRetryTimeout;

  /// A pointer to a null-terminated string that specifies the name of the
  /// printer.
  PWSTR get pPrinterName => PWSTR(_pPrinterName);

  set pPrinterName(PWSTR value) => _pPrinterName = value;

  /// A pointer to a null-terminated string that identifies the port(s) used to
  /// transmit data to the printer.
  PWSTR get pPortName => PWSTR(_pPortName);

  set pPortName(PWSTR value) => _pPortName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_INFO_5> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_INFO_6> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_NOTIFY_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_NOTIFY_INFO_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class PRINTER_NOTIFY_INFO_DATA_0 extends Union {
  @Array(2)
  external Array<Uint32> adwData;

  external PRINTER_NOTIFY_INFO_DATA_0_0 Data;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_NOTIFY_INFO_DATA_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension PRINTER_NOTIFY_INFO_DATA_0_Extension on PRINTER_NOTIFY_INFO_DATA {
  Array<Uint32> get adwData => this.NotifyData.adwData;
  set adwData(Array<Uint32> value) => this.NotifyData.adwData = value;
  PRINTER_NOTIFY_INFO_DATA_0_0 get Data => this.NotifyData.Data;
  set Data(PRINTER_NOTIFY_INFO_DATA_0_0 value) => this.NotifyData.Data = value;
}

/// {@category struct}
sealed class PRINTER_NOTIFY_INFO_DATA_0_0 extends Struct {
  @Uint32()
  external int cbBuf;

  external Pointer pBuf;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_NOTIFY_INFO_DATA_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension PRINTER_NOTIFY_INFO_DATA_0_0_Extension on PRINTER_NOTIFY_INFO_DATA {
  int get cbBuf => this.NotifyData.Data.cbBuf;
  set cbBuf(int value) => this.NotifyData.Data.cbBuf = value;
  Pointer get pBuf => this.NotifyData.Data.pBuf;
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
  PRINTER_OPTION_FLAGS get dwFlags => PRINTER_OPTION_FLAGS(_dwFlags);

  set dwFlags(PRINTER_OPTION_FLAGS value) => _dwFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINTER_OPTIONS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  PRINT_EXECUTION_CONTEXT get context => PRINT_EXECUTION_CONTEXT(_context);

  set context(PRINT_EXECUTION_CONTEXT value) => _context = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PRINT_EXECUTION_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// The handle must be closed using the [CloseTrace] function.
///
/// Invalid handle values are: `-1`.
extension type const PROCESSTRACE_HANDLE(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != -1;

  /// Closes the handle.
  WIN32_ERROR close() => CloseTrace(this);
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROCESS_HEAP_ENTRY> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class PROCESS_HEAP_ENTRY_0 extends Union {
  external PROCESS_HEAP_ENTRY_0_0 Block;
  external PROCESS_HEAP_ENTRY_0_1 Region;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROCESS_HEAP_ENTRY_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension PROCESS_HEAP_ENTRY_0_Extension on PROCESS_HEAP_ENTRY {
  PROCESS_HEAP_ENTRY_0_0 get Block => this.Anonymous.Block;
  set Block(PROCESS_HEAP_ENTRY_0_0 value) => this.Anonymous.Block = value;
  PROCESS_HEAP_ENTRY_0_1 get Region => this.Anonymous.Region;
  set Region(PROCESS_HEAP_ENTRY_0_1 value) => this.Anonymous.Region = value;
}

/// {@category struct}
sealed class PROCESS_HEAP_ENTRY_0_0 extends Struct {
  external Pointer _hMem;

  @Array(3)
  external Array<Uint32> _dwReserved;

  HANDLE get hMem => HANDLE(_hMem);
  set hMem(HANDLE value) => _hMem = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROCESS_HEAP_ENTRY_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension PROCESS_HEAP_ENTRY_0_0_Extension on PROCESS_HEAP_ENTRY {
  HANDLE get hMem => this.Anonymous.Block.hMem;
  set hMem(HANDLE value) => this.Anonymous.Block.hMem = value;
}

/// {@category struct}
sealed class PROCESS_HEAP_ENTRY_0_1 extends Struct {
  @Uint32()
  external int dwCommittedSize;

  @Uint32()
  external int dwUnCommittedSize;

  external Pointer lpFirstBlock;
  external Pointer lpLastBlock;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROCESS_HEAP_ENTRY_0_1> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension PROCESS_HEAP_ENTRY_0_1_Extension on PROCESS_HEAP_ENTRY {
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
  external Pointer _hProcess;
  external Pointer _hThread;

  /// A value that can be used to identify a process.
  @Uint32()
  external int dwProcessId;

  /// A value that can be used to identify a thread.
  @Uint32()
  external int dwThreadId;

  /// A handle to the newly created process.
  HANDLE get hProcess => HANDLE(_hProcess);

  set hProcess(HANDLE value) => _hProcess = value;

  /// A handle to the primary thread of the newly created process.
  HANDLE get hThread => HANDLE(_hThread);

  set hThread(HANDLE value) => _hThread = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROCESS_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Contains the memory statistics for a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/ns-psapi-process_memory_counters>.
///
/// {@category struct}
base class PROCESS_MEMORY_COUNTERS extends Struct {
  /// The size of the structure, in bytes.
  @Uint32()
  external int cb;

  /// The number of page faults.
  @Uint32()
  external int PageFaultCount;

  /// The peak working set size, in bytes.
  @IntPtr()
  external int PeakWorkingSetSize;

  /// The current working set size, in bytes.
  @IntPtr()
  external int WorkingSetSize;

  /// The peak paged pool usage, in bytes.
  @IntPtr()
  external int QuotaPeakPagedPoolUsage;

  /// The current paged pool usage, in bytes.
  @IntPtr()
  external int QuotaPagedPoolUsage;

  /// The peak nonpaged pool usage, in bytes.
  @IntPtr()
  external int QuotaPeakNonPagedPoolUsage;

  /// The current nonpaged pool usage, in bytes.
  @IntPtr()
  external int QuotaNonPagedPoolUsage;

  /// The Commit Charge value in bytes for this process.
  @IntPtr()
  external int PagefileUsage;

  /// The peak value in bytes of the Commit Charge during the lifetime of this
  /// process.
  @IntPtr()
  external int PeakPagefileUsage;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROCESS_MEMORY_COUNTERS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROPERTYKEY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  PROPSPEC_KIND get ulKind => PROPSPEC_KIND(_ulKind);
  set ulKind(PROPSPEC_KIND value) => _ulKind = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROPSPEC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class PROPSPEC_0 extends Union {
  @Uint32()
  external int propid;

  external Pointer<Utf16> _lpwstr;

  PWSTR get lpwstr => PWSTR(_lpwstr);
  set lpwstr(PWSTR value) => _lpwstr = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROPSPEC_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension PROPSPEC_0_Extension on PROPSPEC {
  int get propid => this.Anonymous.propid;
  set propid(int value) => this.Anonymous.propid = value;
  PWSTR get lpwstr => this.Anonymous.lpwstr;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROPVARIANT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class PROPVARIANT_0 extends Union {
  external PROPVARIANT_0_0 Anonymous;
  external DECIMAL decVal;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROPVARIANT_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension PROPVARIANT_0_Extension on PROPVARIANT {
  PROPVARIANT_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(PROPVARIANT_0_0 value) => this.Anonymous.Anonymous = value;
  DECIMAL get decVal => this.Anonymous.decVal;
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

  VARENUM get vt => VARENUM(_vt);
  set vt(VARENUM value) => _vt = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROPVARIANT_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension PROPVARIANT_0_0_Extension on PROPVARIANT {
  VARENUM get vt => this.Anonymous.Anonymous.vt;
  set vt(VARENUM value) => this.Anonymous.Anonymous.vt = value;
  PROPVARIANT_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous;
  set Anonymous(PROPVARIANT_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

/// {@category union}
sealed class PROPVARIANT_0_0_0 extends Union {
  @Int8()
  external int _cVal;

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
  external Pointer<Utf16> _bstrVal;
  external BSTRBLOB bstrblobVal;
  external BLOB blob;
  external Pointer<Utf8> _pszVal;
  external Pointer<Utf16> _pwszVal;
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
  external Pointer<Utf8> _pcVal;
  external Pointer<Uint8> pbVal;
  external Pointer<Int16> piVal;
  external Pointer<Uint16> puiVal;
  external Pointer<Int32> plVal;
  external Pointer<Uint32> pulVal;
  external Pointer<Int32> pintVal;
  external Pointer<Uint32> puintVal;
  external Pointer<Float> pfltVal;
  external Pointer<Double> pdblVal;
  external Pointer<Int16> pboolVal;
  external Pointer<DECIMAL> pdecVal;
  external Pointer<Int32> pscode;
  external Pointer<CY> pcyVal;
  external Pointer<Double> pdate;
  external Pointer<Pointer<Utf16>> pbstrVal;
  external Pointer<VTablePointer> ppunkVal;
  external Pointer<VTablePointer> ppdispVal;
  external Pointer<Pointer<SAFEARRAY>> pparray;
  external Pointer<PROPVARIANT> pvarVal;

  CHAR get cVal => CHAR(_cVal);
  set cVal(CHAR value) => _cVal = value;
  bool get boolVal => _boolVal != FALSE;
  set boolVal(bool value) => _boolVal = value ? VARIANT_TRUE : FALSE;
  BSTR get bstrVal => BSTR(_bstrVal);
  set bstrVal(BSTR value) => _bstrVal = value;
  PSTR get pszVal => PSTR(_pszVal);
  set pszVal(PSTR value) => _pszVal = value;
  PWSTR get pwszVal => PWSTR(_pwszVal);
  set pwszVal(PWSTR value) => _pwszVal = value;
  IUnknown? get punkVal => _punkVal.isNull ? null : IUnknown(_punkVal);
  set punkVal(IUnknown? value) => _punkVal = value?.ptr ?? nullptr;
  IDispatch? get pdispVal => _pdispVal.isNull ? null : IDispatch(_pdispVal);
  set pdispVal(IDispatch? value) => _pdispVal = value?.ptr ?? nullptr;
  IStream? get pStream => _pStream.isNull ? null : IStream(_pStream);
  set pStream(IStream? value) => _pStream = value?.ptr ?? nullptr;
  IStorage? get pStorage => _pStorage.isNull ? null : IStorage(_pStorage);
  set pStorage(IStorage? value) => _pStorage = value?.ptr ?? nullptr;
  PSTR get pcVal => PSTR(_pcVal);
  set pcVal(PSTR value) => _pcVal = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROPVARIANT_0_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension PROPVARIANT_0_0_0_Extension on PROPVARIANT {
  CHAR get cVal => this.Anonymous.Anonymous.Anonymous.cVal;
  set cVal(CHAR value) => this.Anonymous.Anonymous.Anonymous.cVal = value;
  int get bVal => this.Anonymous.Anonymous.Anonymous.bVal;
  set bVal(int value) => this.Anonymous.Anonymous.Anonymous.bVal = value;
  int get iVal => this.Anonymous.Anonymous.Anonymous.iVal;
  set iVal(int value) => this.Anonymous.Anonymous.Anonymous.iVal = value;
  int get uiVal => this.Anonymous.Anonymous.Anonymous.uiVal;
  set uiVal(int value) => this.Anonymous.Anonymous.Anonymous.uiVal = value;
  int get lVal => this.Anonymous.Anonymous.Anonymous.lVal;
  set lVal(int value) => this.Anonymous.Anonymous.Anonymous.lVal = value;
  int get ulVal => this.Anonymous.Anonymous.Anonymous.ulVal;
  set ulVal(int value) => this.Anonymous.Anonymous.Anonymous.ulVal = value;
  int get intVal => this.Anonymous.Anonymous.Anonymous.intVal;
  set intVal(int value) => this.Anonymous.Anonymous.Anonymous.intVal = value;
  int get uintVal => this.Anonymous.Anonymous.Anonymous.uintVal;
  set uintVal(int value) => this.Anonymous.Anonymous.Anonymous.uintVal = value;
  int get hVal => this.Anonymous.Anonymous.Anonymous.hVal;
  set hVal(int value) => this.Anonymous.Anonymous.Anonymous.hVal = value;
  int get uhVal => this.Anonymous.Anonymous.Anonymous.uhVal;
  set uhVal(int value) => this.Anonymous.Anonymous.Anonymous.uhVal = value;
  double get fltVal => this.Anonymous.Anonymous.Anonymous.fltVal;
  set fltVal(double value) => this.Anonymous.Anonymous.Anonymous.fltVal = value;
  double get dblVal => this.Anonymous.Anonymous.Anonymous.dblVal;
  set dblVal(double value) => this.Anonymous.Anonymous.Anonymous.dblVal = value;
  bool get boolVal => this.Anonymous.Anonymous.Anonymous.boolVal;
  set boolVal(bool value) => this.Anonymous.Anonymous.Anonymous.boolVal = value;
  int get scode => this.Anonymous.Anonymous.Anonymous.scode;
  set scode(int value) => this.Anonymous.Anonymous.Anonymous.scode = value;
  CY get cyVal => this.Anonymous.Anonymous.Anonymous.cyVal;
  set cyVal(CY value) => this.Anonymous.Anonymous.Anonymous.cyVal = value;
  double get date => this.Anonymous.Anonymous.Anonymous.date;
  set date(double value) => this.Anonymous.Anonymous.Anonymous.date = value;
  FILETIME get filetime => this.Anonymous.Anonymous.Anonymous.filetime;
  set filetime(FILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.filetime = value;
  Pointer<GUID> get puuid => this.Anonymous.Anonymous.Anonymous.puuid;
  set puuid(Pointer<GUID> value) =>
      this.Anonymous.Anonymous.Anonymous.puuid = value;
  Pointer<CLIPDATA> get pclipdata =>
      this.Anonymous.Anonymous.Anonymous.pclipdata;
  set pclipdata(Pointer<CLIPDATA> value) =>
      this.Anonymous.Anonymous.Anonymous.pclipdata = value;
  BSTR get bstrVal => this.Anonymous.Anonymous.Anonymous.bstrVal;
  set bstrVal(BSTR value) => this.Anonymous.Anonymous.Anonymous.bstrVal = value;
  BSTRBLOB get bstrblobVal => this.Anonymous.Anonymous.Anonymous.bstrblobVal;
  set bstrblobVal(BSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.bstrblobVal = value;
  BLOB get blob => this.Anonymous.Anonymous.Anonymous.blob;
  set blob(BLOB value) => this.Anonymous.Anonymous.Anonymous.blob = value;
  PSTR get pszVal => this.Anonymous.Anonymous.Anonymous.pszVal;
  set pszVal(PSTR value) => this.Anonymous.Anonymous.Anonymous.pszVal = value;
  PWSTR get pwszVal => this.Anonymous.Anonymous.Anonymous.pwszVal;
  set pwszVal(PWSTR value) =>
      this.Anonymous.Anonymous.Anonymous.pwszVal = value;
  IUnknown? get punkVal => this.Anonymous.Anonymous.Anonymous.punkVal;
  set punkVal(IUnknown? value) =>
      this.Anonymous.Anonymous.Anonymous.punkVal = value;
  IDispatch? get pdispVal => this.Anonymous.Anonymous.Anonymous.pdispVal;
  set pdispVal(IDispatch? value) =>
      this.Anonymous.Anonymous.Anonymous.pdispVal = value;
  IStream? get pStream => this.Anonymous.Anonymous.Anonymous.pStream;
  set pStream(IStream? value) =>
      this.Anonymous.Anonymous.Anonymous.pStream = value;
  IStorage? get pStorage => this.Anonymous.Anonymous.Anonymous.pStorage;
  set pStorage(IStorage? value) =>
      this.Anonymous.Anonymous.Anonymous.pStorage = value;
  Pointer<VERSIONEDSTREAM> get pVersionedStream =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream;
  set pVersionedStream(Pointer<VERSIONEDSTREAM> value) =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream = value;
  Pointer<SAFEARRAY> get parray => this.Anonymous.Anonymous.Anonymous.parray;
  set parray(Pointer<SAFEARRAY> value) =>
      this.Anonymous.Anonymous.Anonymous.parray = value;
  CAC get cac => this.Anonymous.Anonymous.Anonymous.cac;
  set cac(CAC value) => this.Anonymous.Anonymous.Anonymous.cac = value;
  CAUB get caub => this.Anonymous.Anonymous.Anonymous.caub;
  set caub(CAUB value) => this.Anonymous.Anonymous.Anonymous.caub = value;
  CAI get cai => this.Anonymous.Anonymous.Anonymous.cai;
  set cai(CAI value) => this.Anonymous.Anonymous.Anonymous.cai = value;
  CAUI get caui => this.Anonymous.Anonymous.Anonymous.caui;
  set caui(CAUI value) => this.Anonymous.Anonymous.Anonymous.caui = value;
  CAL get cal => this.Anonymous.Anonymous.Anonymous.cal;
  set cal(CAL value) => this.Anonymous.Anonymous.Anonymous.cal = value;
  CAUL get caul => this.Anonymous.Anonymous.Anonymous.caul;
  set caul(CAUL value) => this.Anonymous.Anonymous.Anonymous.caul = value;
  CAH get cah => this.Anonymous.Anonymous.Anonymous.cah;
  set cah(CAH value) => this.Anonymous.Anonymous.Anonymous.cah = value;
  CAUH get cauh => this.Anonymous.Anonymous.Anonymous.cauh;
  set cauh(CAUH value) => this.Anonymous.Anonymous.Anonymous.cauh = value;
  CAFLT get caflt => this.Anonymous.Anonymous.Anonymous.caflt;
  set caflt(CAFLT value) => this.Anonymous.Anonymous.Anonymous.caflt = value;
  CADBL get cadbl => this.Anonymous.Anonymous.Anonymous.cadbl;
  set cadbl(CADBL value) => this.Anonymous.Anonymous.Anonymous.cadbl = value;
  CABOOL get cabool => this.Anonymous.Anonymous.Anonymous.cabool;
  set cabool(CABOOL value) => this.Anonymous.Anonymous.Anonymous.cabool = value;
  CASCODE get cascode => this.Anonymous.Anonymous.Anonymous.cascode;
  set cascode(CASCODE value) =>
      this.Anonymous.Anonymous.Anonymous.cascode = value;
  CACY get cacy => this.Anonymous.Anonymous.Anonymous.cacy;
  set cacy(CACY value) => this.Anonymous.Anonymous.Anonymous.cacy = value;
  CADATE get cadate => this.Anonymous.Anonymous.Anonymous.cadate;
  set cadate(CADATE value) => this.Anonymous.Anonymous.Anonymous.cadate = value;
  CAFILETIME get cafiletime => this.Anonymous.Anonymous.Anonymous.cafiletime;
  set cafiletime(CAFILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.cafiletime = value;
  CACLSID get cauuid => this.Anonymous.Anonymous.Anonymous.cauuid;
  set cauuid(CACLSID value) =>
      this.Anonymous.Anonymous.Anonymous.cauuid = value;
  CACLIPDATA get caclipdata => this.Anonymous.Anonymous.Anonymous.caclipdata;
  set caclipdata(CACLIPDATA value) =>
      this.Anonymous.Anonymous.Anonymous.caclipdata = value;
  CABSTR get cabstr => this.Anonymous.Anonymous.Anonymous.cabstr;
  set cabstr(CABSTR value) => this.Anonymous.Anonymous.Anonymous.cabstr = value;
  CABSTRBLOB get cabstrblob => this.Anonymous.Anonymous.Anonymous.cabstrblob;
  set cabstrblob(CABSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.cabstrblob = value;
  CALPSTR get calpstr => this.Anonymous.Anonymous.Anonymous.calpstr;
  set calpstr(CALPSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpstr = value;
  CALPWSTR get calpwstr => this.Anonymous.Anonymous.Anonymous.calpwstr;
  set calpwstr(CALPWSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpwstr = value;
  CAPROPVARIANT get capropvar => this.Anonymous.Anonymous.Anonymous.capropvar;
  set capropvar(CAPROPVARIANT value) =>
      this.Anonymous.Anonymous.Anonymous.capropvar = value;
  PSTR get pcVal => this.Anonymous.Anonymous.Anonymous.pcVal;
  set pcVal(PSTR value) => this.Anonymous.Anonymous.Anonymous.pcVal = value;
  Pointer<Uint8> get pbVal => this.Anonymous.Anonymous.Anonymous.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      this.Anonymous.Anonymous.Anonymous.pbVal = value;
  Pointer<Int16> get piVal => this.Anonymous.Anonymous.Anonymous.piVal;
  set piVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.piVal = value;
  Pointer<Uint16> get puiVal => this.Anonymous.Anonymous.Anonymous.puiVal;
  set puiVal(Pointer<Uint16> value) =>
      this.Anonymous.Anonymous.Anonymous.puiVal = value;
  Pointer<Int32> get plVal => this.Anonymous.Anonymous.Anonymous.plVal;
  set plVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.plVal = value;
  Pointer<Uint32> get pulVal => this.Anonymous.Anonymous.Anonymous.pulVal;
  set pulVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.pulVal = value;
  Pointer<Int32> get pintVal => this.Anonymous.Anonymous.Anonymous.pintVal;
  set pintVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pintVal = value;
  Pointer<Uint32> get puintVal => this.Anonymous.Anonymous.Anonymous.puintVal;
  set puintVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.puintVal = value;
  Pointer<Float> get pfltVal => this.Anonymous.Anonymous.Anonymous.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      this.Anonymous.Anonymous.Anonymous.pfltVal = value;
  Pointer<Double> get pdblVal => this.Anonymous.Anonymous.Anonymous.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdblVal = value;
  Pointer<Int16> get pboolVal => this.Anonymous.Anonymous.Anonymous.pboolVal;
  set pboolVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.pboolVal = value;
  Pointer<DECIMAL> get pdecVal => this.Anonymous.Anonymous.Anonymous.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) =>
      this.Anonymous.Anonymous.Anonymous.pdecVal = value;
  Pointer<Int32> get pscode => this.Anonymous.Anonymous.Anonymous.pscode;
  set pscode(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pscode = value;
  Pointer<CY> get pcyVal => this.Anonymous.Anonymous.Anonymous.pcyVal;
  set pcyVal(Pointer<CY> value) =>
      this.Anonymous.Anonymous.Anonymous.pcyVal = value;
  Pointer<Double> get pdate => this.Anonymous.Anonymous.Anonymous.pdate;
  set pdate(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdate = value;
  Pointer<Pointer<Utf16>> get pbstrVal =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal;
  set pbstrVal(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal = value;
  Pointer<VTablePointer> get ppunkVal =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal;
  set ppunkVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal = value;
  Pointer<VTablePointer> get ppdispVal =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal;
  set ppdispVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal = value;
  Pointer<Pointer<SAFEARRAY>> get pparray =>
      this.Anonymous.Anonymous.Anonymous.pparray;
  set pparray(Pointer<Pointer<SAFEARRAY>> value) =>
      this.Anonymous.Anonymous.Anonymous.pparray = value;
  Pointer<PROPVARIANT> get pvarVal =>
      this.Anonymous.Anonymous.Anonymous.pvarVal;
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
  external Pointer<Utf8> _p_name;

  /// Null-terminated array of alternate names.
  external Pointer<Pointer<Int8>> p_aliases;

  /// Protocol number, in host byte order.
  @Int16()
  external int p_proto;

  /// Official name of the protocol.
  PSTR get p_name => PSTR(_p_name);

  set p_name(PSTR value) => _p_name = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<PROTOENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Invalid handle values are: `-1`, `0`.
extension type const PSECURITY_DESCRIPTOR(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

extension type const PSID(Pointer _) implements Pointer {}

final PortableDeviceKeyCollection = GUID.fromComponents(
  0xde2d022d,
  0x2480,
  0x43be,
  Uint8List.fromList(const [0x97, 0xf0, 0xd1, 0xfa, 0x2c, 0xf9, 0x8f, 0x4f]),
);

final PortableDevicePropVariantCollection = GUID.fromComponents(
  0x8a99e2f,
  0x6d6d,
  0x4b80,
  Uint8List.fromList(const [0xaf, 0x5a, 0xba, 0xf2, 0xbc, 0xbe, 0x4c, 0xb9]),
);

final PortableDeviceValues = GUID.fromComponents(
  0xc15d503,
  0xd017,
  0x47ce,
  Uint8List.fromList(const [0x90, 0x16, 0x7b, 0x3f, 0x97, 0x87, 0x21, 0xcc]),
);

final PortableDeviceValuesCollection = GUID.fromComponents(
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

  external Pointer<Utf16> _lpBinaryPathName;
  external Pointer<Utf16> _lpLoadOrderGroup;

  /// A unique tag value for this service in the group specified by the
  /// <i>lpLoadOrderGroup</i> parameter.
  @Uint32()
  external int dwTagId;

  external Pointer<Utf16> _lpDependencies;
  external Pointer<Utf16> _lpServiceStartName;
  external Pointer<Utf16> _lpDisplayName;

  ENUM_SERVICE_TYPE get dwServiceType => ENUM_SERVICE_TYPE(_dwServiceType);
  set dwServiceType(ENUM_SERVICE_TYPE value) => _dwServiceType = value;
  SERVICE_START_TYPE get dwStartType => SERVICE_START_TYPE(_dwStartType);
  set dwStartType(SERVICE_START_TYPE value) => _dwStartType = value;
  SERVICE_ERROR get dwErrorControl => SERVICE_ERROR(_dwErrorControl);
  set dwErrorControl(SERVICE_ERROR value) => _dwErrorControl = value;

  /// The fully qualified path to the service binary file.
  PWSTR get lpBinaryPathName => PWSTR(_lpBinaryPathName);

  set lpBinaryPathName(PWSTR value) => _lpBinaryPathName = value;

  /// The name of the load ordering group to which this service belongs.
  PWSTR get lpLoadOrderGroup => PWSTR(_lpLoadOrderGroup);

  set lpLoadOrderGroup(PWSTR value) => _lpLoadOrderGroup = value;

  /// A pointer to an array of null-separated names of services or load ordering
  /// groups that must start before this service.
  PWSTR get lpDependencies => PWSTR(_lpDependencies);

  set lpDependencies(PWSTR value) => _lpDependencies = value;

  /// If the service type is <b>SERVICE_WIN32_OWN_PROCESS</b> or
  /// <b>SERVICE_WIN32_SHARE_PROCESS</b>, this member is the name of the account
  /// that the service process will be logged on as when it runs.
  PWSTR get lpServiceStartName => PWSTR(_lpServiceStartName);

  set lpServiceStartName(PWSTR value) => _lpServiceStartName = value;

  /// The display name to be used by service control programs to identify the
  /// service.
  PWSTR get lpDisplayName => PWSTR(_lpDisplayName);

  set lpDisplayName(PWSTR value) => _lpDisplayName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<QUERY_SERVICE_CONFIG> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer<Utf16> _lpLockOwner;

  /// The time since the lock was first acquired, in seconds.
  @Uint32()
  external int dwLockDuration;

  /// The name of the user who acquired the lock.
  PWSTR get lpLockOwner => PWSTR(_lpLockOwner);

  set lpLockOwner(PWSTR value) => _lpLockOwner = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<QUERY_SERVICE_LOCK_STATUS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWHID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWINPUT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class RAWINPUT_0 extends Union {
  external RAWMOUSE mouse;
  external RAWKEYBOARD keyboard;
  external RAWHID hid;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWINPUT_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension RAWINPUT_0_Extension on RAWINPUT {
  RAWMOUSE get mouse => this.data.mouse;
  set mouse(RAWMOUSE value) => this.data.mouse = value;
  RAWKEYBOARD get keyboard => this.data.keyboard;
  set keyboard(RAWKEYBOARD value) => this.data.keyboard = value;
  RAWHID get hid => this.data.hid;
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

  external Pointer _hwndTarget;

  RAWINPUTDEVICE_FLAGS get dwFlags => RAWINPUTDEVICE_FLAGS(_dwFlags);
  set dwFlags(RAWINPUTDEVICE_FLAGS value) => _dwFlags = value;

  /// A handle to the target window.
  HWND get hwndTarget => HWND(_hwndTarget);

  set hwndTarget(HWND value) => _hwndTarget = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWINPUTDEVICE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Contains information about a raw input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-rawinputdevicelist>.
///
/// {@category struct}
base class RAWINPUTDEVICELIST extends Struct {
  external Pointer _hDevice;

  @Uint32()
  external int _dwType;

  /// A handle to the raw input device.
  HANDLE get hDevice => HANDLE(_hDevice);

  set hDevice(HANDLE value) => _hDevice = value;
  RID_DEVICE_INFO_TYPE get dwType => RID_DEVICE_INFO_TYPE(_dwType);
  set dwType(RID_DEVICE_INFO_TYPE value) => _dwType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWINPUTDEVICELIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _hDevice;

  @IntPtr()
  external int _wParam;

  /// A handle to the device generating the raw input data.
  HANDLE get hDevice => HANDLE(_hDevice);

  set hDevice(HANDLE value) => _hDevice = value;

  /// The value passed in the <i>wParam</i> parameter of the `WM_INPUT` message.
  WPARAM get wParam => WPARAM(_wParam);

  set wParam(WPARAM value) => _wParam = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWINPUTHEADER> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWKEYBOARD> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  MOUSE_STATE get usFlags => MOUSE_STATE(_usFlags);

  set usFlags(MOUSE_STATE value) => _usFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWMOUSE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class RAWMOUSE_0 extends Union {
  @Uint32()
  external int ulButtons;

  external RAWMOUSE_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWMOUSE_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension RAWMOUSE_0_Extension on RAWMOUSE {
  int get ulButtons => this.Anonymous.ulButtons;
  set ulButtons(int value) => this.Anonymous.ulButtons = value;
  RAWMOUSE_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(RAWMOUSE_0_0 value) => this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class RAWMOUSE_0_0 extends Struct {
  @Uint16()
  external int usButtonFlags;

  @Uint16()
  external int usButtonData;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RAWMOUSE_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension RAWMOUSE_0_0_Extension on RAWMOUSE {
  int get usButtonFlags => this.Anonymous.Anonymous.usButtonFlags;
  set usButtonFlags(int value) =>
      this.Anonymous.Anonymous.usButtonFlags = value;
  int get usButtonData => this.Anonymous.Anonymous.usButtonData;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RECT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RECTL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<RGBQUAD> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  ADVANCED_FEATURE_FLAGS get fFeatures => ADVANCED_FEATURE_FLAGS(_fFeatures);

  set fFeatures(ADVANCED_FEATURE_FLAGS value) => _fFeatures = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SAFEARRAY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SAFEARRAYBOUND> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SCARD_ATRMASK> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SCARD_IO_REQUEST> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Used by functions for tracking smart cards within readers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/ns-winscard-scard_readerstatew>.
///
/// {@category struct}
base class SCARD_READERSTATE extends Struct {
  external Pointer<Utf16> _szReader;
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

  /// A pointer to the name of the reader being monitored.
  PWSTR get szReader => PWSTR(_szReader);

  set szReader(PWSTR value) => _szReader = value;
  SCARD_STATE get dwCurrentState => SCARD_STATE(_dwCurrentState);
  set dwCurrentState(SCARD_STATE value) => _dwCurrentState = value;
  SCARD_STATE get dwEventState => SCARD_STATE(_dwEventState);
  set dwEventState(SCARD_STATE value) => _dwEventState = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SCARD_READERSTATE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SCROLLBARINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  SCROLLINFO_MASK get fMask => SCROLLINFO_MASK(_fMask);
  set fMask(SCROLLINFO_MASK value) => _fMask = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SCROLLINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  SC_ACTION_TYPE get Type => SC_ACTION_TYPE(_Type);
  set Type(SC_ACTION_TYPE value) => _Type = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SC_ACTION> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [CloseServiceHandle] function.
///
/// Invalid handle values are: `-1`, `0`.
extension type const SC_HANDLE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);

  /// Closes the handle.
  Win32Result<bool> close() => CloseServiceHandle(this);
}

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
  SDP_TYPE get type => SDP_TYPE(_type);

  set type(SDP_TYPE value) => _type = value;

  /// Specific type of SDP element, used to further specify generic element
  /// types.
  SDP_SPECIFICTYPE get specificType => SDP_SPECIFICTYPE(_specificType);

  set specificType(SDP_SPECIFICTYPE value) => _specificType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_ELEMENT_DATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external int _int8;

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

  CHAR get int8 => CHAR(_int8);
  set int8(CHAR value) => _int8 = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_ELEMENT_DATA_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SDP_ELEMENT_DATA_0_Extension on SDP_ELEMENT_DATA {
  SDP_LARGE_INTEGER_16 get int128 => this.data.int128;
  set int128(SDP_LARGE_INTEGER_16 value) => this.data.int128 = value;
  int get int64 => this.data.int64;
  set int64(int value) => this.data.int64 = value;
  int get int32 => this.data.int32;
  set int32(int value) => this.data.int32 = value;
  int get int16 => this.data.int16;
  set int16(int value) => this.data.int16 = value;
  CHAR get int8 => this.data.int8;
  set int8(CHAR value) => this.data.int8 = value;
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
  SDP_ELEMENT_DATA_0_0 get string => this.data.string;
  set string(SDP_ELEMENT_DATA_0_0 value) => this.data.string = value;
  SDP_ELEMENT_DATA_0_1 get url => this.data.url;
  set url(SDP_ELEMENT_DATA_0_1 value) => this.data.url = value;
  SDP_ELEMENT_DATA_0_2 get sequence => this.data.sequence;
  set sequence(SDP_ELEMENT_DATA_0_2 value) => this.data.sequence = value;
  SDP_ELEMENT_DATA_0_3 get alternative => this.data.alternative;
  set alternative(SDP_ELEMENT_DATA_0_3 value) => this.data.alternative = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_0 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_ELEMENT_DATA_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SDP_ELEMENT_DATA_0_0_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.string.value;
  set value(Pointer<Uint8> value) => this.data.string.value = value;
  int get length => this.data.string.length;
  set length(int value) => this.data.string.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_1 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_ELEMENT_DATA_0_1> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SDP_ELEMENT_DATA_0_1_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.url.value;
  set value(Pointer<Uint8> value) => this.data.url.value = value;
  int get length => this.data.url.length;
  set length(int value) => this.data.url.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_2 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_ELEMENT_DATA_0_2> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SDP_ELEMENT_DATA_0_2_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.sequence.value;
  set value(Pointer<Uint8> value) => this.data.sequence.value = value;
  int get length => this.data.sequence.length;
  set length(int value) => this.data.sequence.length = value;
}

/// {@category struct}
sealed class SDP_ELEMENT_DATA_0_3 extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_ELEMENT_DATA_0_3> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SDP_ELEMENT_DATA_0_3_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.alternative.value;
  set value(Pointer<Uint8> value) => this.data.alternative.value = value;
  int get length => this.data.alternative.length;
  set length(int value) => this.data.alternative.length = value;
}

/// {@category struct}
base class SDP_LARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Int64()
  external int HighPart;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_LARGE_INTEGER_16> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_STRING_TYPE_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class SDP_ULARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Uint64()
  external int HighPart;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SDP_ULARGE_INTEGER_16> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  bool get bInheritHandle => _bInheritHandle != FALSE;

  set bInheritHandle(bool value) => _bInheritHandle = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SECURITY_ATTRIBUTES> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _Owner;
  external Pointer _Group;
  external Pointer<ACL> Sacl;
  external Pointer<ACL> Dacl;

  SECURITY_DESCRIPTOR_CONTROL get Control =>
      SECURITY_DESCRIPTOR_CONTROL(_Control);
  set Control(SECURITY_DESCRIPTOR_CONTROL value) => _Control = value;
  PSID get Owner => PSID(_Owner);
  set Owner(PSID value) => _Owner = value;
  PSID get Group => PSID(_Group);
  set Group(PSID value) => _Group = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SECURITY_DESCRIPTOR> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Used to store or return the name and service number for a given service
/// name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/ns-winsock-servent>.
///
/// {@category struct}
base class SERVENT extends Struct {
  external Pointer<Utf8> _s_name;

  /// A <b>NULL</b>-terminated array of alternate names.
  external Pointer<Pointer<Int8>> s_aliases;

  external Pointer<Utf8> _s_proto;

  /// The port number at which the service can be contacted.
  @Int16()
  external int s_port;

  /// The official name of the service.
  PSTR get s_name => PSTR(_s_name);

  set s_name(PSTR value) => _s_name = value;

  /// The name of the protocol to use when contacting the service.
  PSTR get s_proto => PSTR(_s_proto);

  set s_proto(PSTR value) => _s_proto = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _pszComment;

  /// A pointer to a `SERVICE_STATUS_PROCESS` structure that receives the latest
  /// service status information.
  external SERVICE_STATUS_PROCESS ServiceStatus;

  /// An optional string that provides additional information about the service
  /// stop.
  PWSTR get pszComment => PWSTR(_pszComment);

  set pszComment(PWSTR value) => _pszComment = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_CONTROL_STATUS_REASON_PARAMS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  bool get fDelayedAutostart => _fDelayedAutostart != FALSE;

  set fDelayedAutostart(bool value) =>
      _fDelayedAutostart = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_DELAYED_AUTO_START_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Contains a service description.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_descriptionw>.
///
/// {@category struct}
base class SERVICE_DESCRIPTION extends Struct {
  external Pointer<Utf16> _lpDescription;

  /// The description of the service.
  PWSTR get lpDescription => PWSTR(_lpDescription);

  set lpDescription(PWSTR value) => _lpDescription = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_DESCRIPTION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer<Utf16> _lpRebootMsg;
  external Pointer<Utf16> _lpCommand;

  /// The number of elements in the <b>lpsaActions</b> array.
  @Uint32()
  external int cActions;

  /// A pointer to an array of <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/ns-winsvc-sc_action">SC_ACTION</a>
  /// structures.
  external Pointer<SC_ACTION> lpsaActions;

  /// The message to be broadcast to server users before rebooting in response
  /// to the <b>SC_ACTION_REBOOT</b> service controller action.
  PWSTR get lpRebootMsg => PWSTR(_lpRebootMsg);

  set lpRebootMsg(PWSTR value) => _lpRebootMsg = value;

  /// The command line of the process for the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/processthreadsapi/nf-processthreadsapi-createprocessa">CreateProcess</a>
  /// function to execute in response to the <b>SC_ACTION_RUN_COMMAND</b>
  /// service controller action.
  PWSTR get lpCommand => PWSTR(_lpCommand);

  set lpCommand(PWSTR value) => _lpCommand = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_FAILURE_ACTIONS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  bool get fFailureActionsOnNonCrashFailures =>
      _fFailureActionsOnNonCrashFailures != FALSE;

  set fFailureActionsOnNonCrashFailures(bool value) =>
      _fFailureActionsOnNonCrashFailures = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_FAILURE_ACTIONS_FLAG> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_LAUNCH_PROTECTED_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer<Utf16> _pszServiceNames;

  /// If <b>dwNotificationStatus</b> is <b>ERROR_SUCCESS</b> and the
  /// notification is <b>SERVICE_NOTIFY_CREATED</b> or
  /// <b>SERVICE_NOTIFY_DELETED</b>, this member is valid and it is a
  /// <b>MULTI_SZ</b> string that contains one or more service names.
  PWSTR get pszServiceNames => PWSTR(_pszServiceNames);

  set pszServiceNames(PWSTR value) => _pszServiceNames = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_NOTIFY_2> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  bool get fDelete => _fDelete != FALSE;

  set fDelete(bool value) => _fDelete = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_PREFERRED_NODE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_PRESHUTDOWN_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Represents the required privileges for a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ns-winsvc-service_required_privileges_infow>.
///
/// {@category struct}
base class SERVICE_REQUIRED_PRIVILEGES_INFO extends Struct {
  external Pointer<Utf16> _pmszRequiredPrivileges;

  /// A multi-string that specifies the privileges.
  PWSTR get pmszRequiredPrivileges => PWSTR(_pmszRequiredPrivileges);

  set pmszRequiredPrivileges(PWSTR value) => _pmszRequiredPrivileges = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_REQUIRED_PRIVILEGES_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_SID_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  ENUM_SERVICE_TYPE get dwServiceType => ENUM_SERVICE_TYPE(_dwServiceType);
  set dwServiceType(ENUM_SERVICE_TYPE value) => _dwServiceType = value;
  SERVICE_STATUS_CURRENT_STATE get dwCurrentState =>
      SERVICE_STATUS_CURRENT_STATE(_dwCurrentState);
  set dwCurrentState(SERVICE_STATUS_CURRENT_STATE value) =>
      _dwCurrentState = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_STATUS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Invalid handle values are: `-1`, `0`.
extension type const SERVICE_STATUS_HANDLE(Pointer _) implements Pointer {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid =>
      this != Pointer.fromAddress(-1) && this != Pointer.fromAddress(0);
}

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

  ENUM_SERVICE_TYPE get dwServiceType => ENUM_SERVICE_TYPE(_dwServiceType);
  set dwServiceType(ENUM_SERVICE_TYPE value) => _dwServiceType = value;
  SERVICE_STATUS_CURRENT_STATE get dwCurrentState =>
      SERVICE_STATUS_CURRENT_STATE(_dwCurrentState);
  set dwCurrentState(SERVICE_STATUS_CURRENT_STATE value) =>
      _dwCurrentState = value;
  SERVICE_RUNS_IN_PROCESS get dwServiceFlags =>
      SERVICE_RUNS_IN_PROCESS(_dwServiceFlags);
  set dwServiceFlags(SERVICE_RUNS_IN_PROCESS value) => _dwServiceFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_STATUS_PROCESS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  external Pointer<Utf16> _lpServiceName;

  /// A pointer to a <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winsvc/nc-winsvc-lpservice_main_functiona">ServiceMain</a>
  /// function.
  external Pointer<NativeFunction<LPSERVICE_MAIN_FUNCTION>> lpServiceProc;

  /// The name of a service to be run in this service process.
  PWSTR get lpServiceName => PWSTR(_lpServiceName);

  set lpServiceName(PWSTR value) => _lpServiceName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_TABLE_ENTRY> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_TIMECHANGE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  SERVICE_TRIGGER_TYPE get dwTriggerType =>
      SERVICE_TRIGGER_TYPE(_dwTriggerType);
  set dwTriggerType(SERVICE_TRIGGER_TYPE value) => _dwTriggerType = value;
  SERVICE_TRIGGER_ACTION get dwAction => SERVICE_TRIGGER_ACTION(_dwAction);
  set dwAction(SERVICE_TRIGGER_ACTION value) => _dwAction = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_TRIGGER> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_TRIGGER_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE get dwDataType =>
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(_dwDataType);
  set dwDataType(SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE value) =>
      _dwDataType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _hwnd;
  external Pointer<Utf16> _lpVerb;
  external Pointer<Utf16> _lpFile;
  external Pointer<Utf16> _lpParameters;
  external Pointer<Utf16> _lpDirectory;

  /// Required.
  @Int32()
  external int nShow;

  external Pointer _hInstApp;

  /// The address of an absolute <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shtypes/ns-shtypes-itemidlist">ITEMIDLIST</a>
  /// structure (PCIDLIST_ABSOLUTE) to contain an item identifier list that
  /// uniquely identifies the file to execute.
  external Pointer lpIDList;

  external Pointer<Utf16> _lpClass;
  external Pointer _hkeyClass;

  /// A keyboard shortcut to associate with the application.
  @Uint32()
  external int dwHotKey;

  external SHELLEXECUTEINFO_0 Anonymous;
  external Pointer _hProcess;

  /// Optional.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// A string, referred to as a <i>verb</i>, that specifies the action to be
  /// performed.
  PWSTR get lpVerb => PWSTR(_lpVerb);

  set lpVerb(PWSTR value) => _lpVerb = value;

  /// The address of a null-terminated string that specifies the name of the
  /// file or object on which <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellapi/nf-shellapi-shellexecuteexa">ShellExecuteEx</a>
  /// will perform the action specified by the <b>lpVerb</b> parameter.
  PWSTR get lpFile => PWSTR(_lpFile);

  set lpFile(PWSTR value) => _lpFile = value;

  /// Optional.
  PWSTR get lpParameters => PWSTR(_lpParameters);

  set lpParameters(PWSTR value) => _lpParameters = value;

  /// Optional.
  PWSTR get lpDirectory => PWSTR(_lpDirectory);

  set lpDirectory(PWSTR value) => _lpDirectory = value;

  /// If SEE_MASK_NOCLOSEPROCESS is set and the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/shellapi/nf-shellapi-shellexecuteexa">ShellExecuteEx</a>
  /// call succeeds, it sets this member to a value greater than 32.
  HINSTANCE get hInstApp => HINSTANCE(_hInstApp);

  set hInstApp(HINSTANCE value) => _hInstApp = value;

  /// The address of a null-terminated string that specifies one of the
  /// following: - A ProgId.
  PWSTR get lpClass => PWSTR(_lpClass);

  set lpClass(PWSTR value) => _lpClass = value;

  /// A handle to the registry key for the file type.
  HKEY get hkeyClass => HKEY(_hkeyClass);

  set hkeyClass(HKEY value) => _hkeyClass = value;

  /// A handle to the newly started application.
  HANDLE get hProcess => HANDLE(_hProcess);

  set hProcess(HANDLE value) => _hProcess = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SHELLEXECUTEINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class SHELLEXECUTEINFO_0 extends Union {
  external Pointer _hIcon;
  external Pointer _hMonitor;

  HANDLE get hIcon => HANDLE(_hIcon);
  set hIcon(HANDLE value) => _hIcon = value;
  HANDLE get hMonitor => HANDLE(_hMonitor);
  set hMonitor(HANDLE value) => _hMonitor = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SHELLEXECUTEINFO_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SHELLEXECUTEINFO_0_Extension on SHELLEXECUTEINFO {
  HANDLE get hIcon => this.Anonymous.hIcon;
  set hIcon(HANDLE value) => this.Anonymous.hIcon = value;
  HANDLE get hMonitor => this.Anonymous.hMonitor;
  set hMonitor(HANDLE value) => this.Anonymous.hMonitor = value;
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
  String get szName => _szName.toDartString();

  set szName(String value) => _szName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SHELL_ITEM_RESOURCE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// Contains information about a file object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shfileinfow>.
///
/// {@category struct}
base class SHFILEINFO extends Struct {
  external Pointer _hIcon;

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

  /// A handle to the icon that represents the file.
  HICON get hIcon => HICON(_hIcon);

  set hIcon(HICON value) => _hIcon = value;

  /// A string that contains the name of the file as it appears in the Windows
  /// Shell, or the path and file name of the file that contains the icon
  /// representing the file.
  String get szDisplayName => _szDisplayName.toDartString();

  set szDisplayName(String value) => _szDisplayName.setString(value);

  /// A string that describes the type of file.
  String get szTypeName => _szTypeName.toDartString();

  set szTypeName(String value) => _szTypeName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SHFILEINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Contains information that the SHFileOperation function uses to perform file
/// operations.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/ns-shellapi-shfileopstructw>.
///
/// {@category struct}
base class SHFILEOPSTRUCT extends Struct {
  external Pointer _hwnd;

  @Uint32()
  external int wFunc;

  external Pointer<Utf16> _pFrom;
  external Pointer<Utf16> _pTo;

  /// Flags that control the file operation.
  @Uint16()
  external int fFlags;

  @Int32()
  external int _fAnyOperationsAborted;

  /// When the function returns, this member contains a handle to a name mapping
  /// object that contains the old and new names of the renamed files.
  external Pointer hNameMappings;

  external Pointer<Utf16> _lpszProgressTitle;

  /// A window handle to the dialog box to display information about the status
  /// of the file operation.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// <b>Note</b> This string must be double-null terminated.</div> <div> </div>
  /// A pointer to one or more source file names.
  PWSTR get pFrom => PWSTR(_pFrom);

  set pFrom(PWSTR value) => _pFrom = value;

  /// <b>Note</b> This string must be double-null terminated.</div> <div> </div>
  /// A pointer to the destination file or directory name.
  PWSTR get pTo => PWSTR(_pTo);

  set pTo(PWSTR value) => _pTo = value;

  /// When the function returns, this member contains [TRUE] if any file
  /// operations were aborted before they were completed; otherwise, [FALSE].
  bool get fAnyOperationsAborted => _fAnyOperationsAborted != FALSE;

  set fAnyOperationsAborted(bool value) =>
      _fAnyOperationsAborted = value ? TRUE : FALSE;

  /// A pointer to the title of a progress dialog box.
  PWSTR get lpszProgressTitle => PWSTR(_lpszProgressTitle);

  set lpszProgressTitle(PWSTR value) => _lpszProgressTitle = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SHFILEOPSTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SHITEMID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SHQUERYRBINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SID_IDENTIFIER_AUTHORITY> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SIZE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SMALL_RECT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Array<Int8> sa_data;

  ADDRESS_FAMILY get sa_family => ADDRESS_FAMILY(_sa_family);
  set sa_family(ADDRESS_FAMILY value) => _sa_family = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SOCKADDR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SOCKADDR_BTH> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The handle must be closed using the [closesocket] function.
///
/// Invalid handle values are: `-1`.
extension type const SOCKET(int _) implements int {
  /// Whether this handle is valid (i.e., not one of the invalid handle values).
  bool get isValid => this != -1;

  /// Closes the handle.
  Win32Result<int> close() => closesocket(this);
}

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SOCKET_ADDRESS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _pPrincipalName;

  @Int32()
  external int _hr;

  /// The principal name to be used with the authentication service.
  PWSTR get pPrincipalName => PWSTR(_pPrincipalName);

  set pPrincipalName(PWSTR value) => _pPrincipalName = value;

  /// When used in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-coinitializesecurity">CoInitializeSecurity</a>,
  /// set on return to indicate the status of the call to register the
  /// authentication services.
  HRESULT get hr => HRESULT(_hr);

  set hr(HRESULT value) => _hr = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SOLE_AUTHENTICATION_SERVICE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  external int _wParam;

  @IntPtr()
  external int _lParam;

  int get eEventId => bitfield.getBits(0, 16);
  set eEventId(int value) => bitfield = bitfield.setBits(0, 16, value);
  int get elParamType => bitfield.getBits(16, 16);
  set elParamType(int value) => bitfield = bitfield.setBits(16, 16, value);
  WPARAM get wParam => WPARAM(_wParam);
  set wParam(WPARAM value) => _wParam = value;
  LPARAM get lParam => LPARAM(_lParam);
  set lParam(LPARAM value) => _lParam = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SPEVENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class SPEVENTSOURCEINFO extends Struct {
  @Uint64()
  external int ullEventInterest;

  @Uint64()
  external int ullQueuedInterest;

  @Uint32()
  external int ulCount;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SPEVENTSOURCEINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class SPVOICESTATUS extends Struct {
  @Uint32()
  external int ulCurrentStream;

  @Uint32()
  external int ulLastStreamQueued;

  @Int32()
  external int _hrLastResult;

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

  HRESULT get hrLastResult => HRESULT(_hrLastResult);
  set hrLastResult(HRESULT value) => _hrLastResult = value;
  SPVISEMES get VisemeId => SPVISEMES(_VisemeId);
  set VisemeId(SPVISEMES value) => _VisemeId = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SPVOICESTATUS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SP_DEVICE_INTERFACE_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  String get DevicePath => _DevicePath.toDartString();

  set DevicePath(String value) => _DevicePath.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SP_DEVINFO_DATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class SRWLOCK extends Struct {
  external Pointer Ptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SRWLOCK> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _lpReserved;
  external Pointer<Utf16> _lpDesktop;
  external Pointer<Utf16> _lpTitle;

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
  external Pointer _hStdInput;
  external Pointer _hStdOutput;
  external Pointer _hStdError;

  /// The name of the desktop, or the name of both the desktop and window
  /// station for this process.
  PWSTR get lpDesktop => PWSTR(_lpDesktop);

  set lpDesktop(PWSTR value) => _lpDesktop = value;

  /// For console processes, this is the title displayed in the title bar if a
  /// new console window is created.
  PWSTR get lpTitle => PWSTR(_lpTitle);

  set lpTitle(PWSTR value) => _lpTitle = value;

  /// A bitfield that determines whether certain.
  STARTUPINFOW_FLAGS get dwFlags => STARTUPINFOW_FLAGS(_dwFlags);

  set dwFlags(STARTUPINFOW_FLAGS value) => _dwFlags = value;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard input handle for the process.
  HANDLE get hStdInput => HANDLE(_hStdInput);

  set hStdInput(HANDLE value) => _hStdInput = value;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard output handle for the process.
  HANDLE get hStdOutput => HANDLE(_hStdOutput);

  set hStdOutput(HANDLE value) => _hStdOutput = value;

  /// If <b>dwFlags</b> specifies STARTF_USESTDHANDLES, this member is the
  /// standard error handle for the process.
  HANDLE get hStdError => HANDLE(_hStdError);

  set hStdError(HANDLE value) => _hStdError = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STARTUPINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _lpAttributeList;

  /// An attribute list.
  LPPROC_THREAD_ATTRIBUTE_LIST get lpAttributeList =>
      LPPROC_THREAD_ATTRIBUTE_LIST(_lpAttributeList);

  set lpAttributeList(LPPROC_THREAD_ATTRIBUTE_LIST value) =>
      _lpAttributeList = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STARTUPINFOEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STATPROPSETSTG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer<Utf16> _lpwstrName;

  /// A 32-bit identifier that uniquely identifies the property within the
  /// property set.
  @Uint32()
  external int propid;

  @Uint16()
  external int _vt;

  /// A wide-character null-terminated Unicode string that contains the optional
  /// string name associated with the property.
  PWSTR get lpwstrName => PWSTR(_lpwstrName);

  set lpwstrName(PWSTR value) => _lpwstrName = value;

  /// The property type.
  VARENUM get vt => VARENUM(_vt);

  set vt(VARENUM value) => _vt = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STATPROPSTG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Contains statistical data about an open storage, stream, or byte-array
/// object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ns-objidl-statstg>.
///
/// {@category struct}
base class STATSTG extends Struct {
  external Pointer<Utf16> _pwcsName;

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

  /// A pointer to a <b>NULL</b>-terminated Unicode string that contains the
  /// name.
  PWSTR get pwcsName => PWSTR(_pwcsName);

  set pwcsName(PWSTR value) => _pwcsName = value;

  /// Indicates the access mode specified when the object was opened.
  STGM get grfMode => STGM(_grfMode);

  set grfMode(STGM value) => _grfMode = value;

  /// Indicates the types of region locking supported by the stream or byte
  /// array.
  LOCKTYPE get grfLocksSupported => LOCKTYPE(_grfLocksSupported);

  set grfLocksSupported(LOCKTYPE value) => _grfLocksSupported = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STATSTG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STORAGE_DEVICE_NUMBER> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STRRET> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class STRRET_0 extends Union {
  external Pointer<Utf16> _pOleStr;

  @Uint32()
  external int uOffset;

  @Array(260)
  external Array<Uint8> cStr;

  PWSTR get pOleStr => PWSTR(_pOleStr);
  set pOleStr(PWSTR value) => _pOleStr = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STRRET_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension STRRET_0_Extension on STRRET {
  PWSTR get pOleStr => this.Anonymous.pOleStr;
  set pOleStr(PWSTR value) => this.Anonymous.pOleStr = value;
  int get uOffset => this.Anonymous.uOffset;
  set uOffset(int value) => this.Anonymous.uOffset = value;
  Array<Uint8> get cStr => this.Anonymous.cStr;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<STYLESTRUCT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  SYMBOL_INFO_FLAGS get Flags => SYMBOL_INFO_FLAGS(_Flags);
  set Flags(SYMBOL_INFO_FLAGS value) => _Flags = value;

  /// The name of the symbol.
  String get Name => _Name.toDartString();

  set Name(String value) => _Name.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYMBOL_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEMTIME> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
base class SYSTEM_BASIC_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> _Reserved1;

  @Array(4)
  external Array<Pointer> _Reserved2;

  @Int8()
  external int NumberOfProcessors;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_BASIC_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  external Array<Uint8> Spare1;

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
  bool get AcOnLine => _AcOnLine != FALSE;

  set AcOnLine(bool value) => _AcOnLine = value ? TRUE : FALSE;

  /// If this member is [TRUE], at least one battery is present in the system.
  bool get BatteryPresent => _BatteryPresent != FALSE;

  set BatteryPresent(bool value) => _BatteryPresent = value ? TRUE : FALSE;

  /// If this member is [TRUE], a battery is currently charging.
  bool get Charging => _Charging != FALSE;

  set Charging(bool value) => _Charging = value ? TRUE : FALSE;

  /// If this member is [TRUE], a battery is currently discharging.
  bool get Discharging => _Discharging != FALSE;

  set Discharging(bool value) => _Discharging = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_BATTERY_STATE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class SYSTEM_CODEINTEGRITY_INFORMATION extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int CodeIntegrityOptions;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_CODEINTEGRITY_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class SYSTEM_EXCEPTION_INFORMATION extends Struct {
  @Array(16)
  external Array<Uint8> _Reserved1;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_EXCEPTION_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class SYSTEM_INFO_0 extends Union {
  @Uint32()
  external int dwOemId;

  external SYSTEM_INFO_0_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_INFO_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension SYSTEM_INFO_0_Extension on SYSTEM_INFO {
  int get dwOemId => this.Anonymous.dwOemId;
  set dwOemId(int value) => this.Anonymous.dwOemId = value;
  SYSTEM_INFO_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(SYSTEM_INFO_0_0 value) => this.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class SYSTEM_INFO_0_0 extends Struct {
  @Uint16()
  external int _wProcessorArchitecture;

  @Uint16()
  external int _wReserved;

  PROCESSOR_ARCHITECTURE get wProcessorArchitecture =>
      PROCESSOR_ARCHITECTURE(_wProcessorArchitecture);
  set wProcessorArchitecture(PROCESSOR_ARCHITECTURE value) =>
      _wProcessorArchitecture = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_INFO_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension SYSTEM_INFO_0_0_Extension on SYSTEM_INFO {
  PROCESSOR_ARCHITECTURE get wProcessorArchitecture =>
      this.Anonymous.Anonymous.wProcessorArchitecture;
  set wProcessorArchitecture(PROCESSOR_ARCHITECTURE value) =>
      this.Anonymous.Anonymous.wProcessorArchitecture = value;
}

/// {@category struct}
base class SYSTEM_INTERRUPT_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> _Reserved1;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_INTERRUPT_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  LOGICAL_PROCESSOR_RELATIONSHIP get Relationship =>
      LOGICAL_PROCESSOR_RELATIONSHIP(_Relationship);

  set Relationship(LOGICAL_PROCESSOR_RELATIONSHIP value) =>
      _Relationship = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0 extends Union {
  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 ProcessorCore;
  external SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 NumaNode;
  external CACHE_DESCRIPTOR Cache;

  @Array(2)
  external Array<Uint64> _Reserved;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 get ProcessorCore =>
      this.Anonymous.ProcessorCore;
  set ProcessorCore(SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 value) =>
      this.Anonymous.ProcessorCore = value;
  SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 get NumaNode =>
      this.Anonymous.NumaNode;
  set NumaNode(SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 value) =>
      this.Anonymous.NumaNode = value;
  CACHE_DESCRIPTOR get Cache => this.Anonymous.Cache;
  set Cache(CACHE_DESCRIPTOR value) => this.Anonymous.Cache = value;
}

/// {@category struct}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0 extends Struct {
  @Uint8()
  external int Flags;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_0_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get Flags => this.Anonymous.ProcessorCore.Flags;
  set Flags(int value) => this.Anonymous.ProcessorCore.Flags = value;
}

/// {@category struct}
sealed class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1 extends Struct {
  @Uint32()
  external int NodeNumber;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_0_1_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get NodeNumber => this.Anonymous.NumaNode.NodeNumber;
  set NodeNumber(int value) => this.Anonymous.NumaNode.NodeNumber = value;
}

/// {@category struct}
base class SYSTEM_LOOKASIDE_INFORMATION extends Struct {
  @Array(32)
  external Array<Uint8> _Reserved1;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_LOOKASIDE_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Array(312)
  external Array<Uint8> _Reserved1;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_PERFORMANCE_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  external Array<Pointer> _Reserved1;

  @Array(3)
  external Array<Uint32> _Reserved2;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_POLICY_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_POWER_STATUS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer _UniqueProcessId;
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

  HANDLE get UniqueProcessId => HANDLE(_UniqueProcessId);
  set UniqueProcessId(HANDLE value) => _UniqueProcessId = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_PROCESS_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class SYSTEM_REGISTRY_QUOTA_INFORMATION extends Struct {
  @Uint32()
  external int RegistryQuotaAllowed;

  @Uint32()
  external int RegistryQuotaUsed;

  external Pointer _Reserved1;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_REGISTRY_QUOTA_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_THREAD_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
base class SYSTEM_TIMEOFDAY_INFORMATION extends Struct {
  @Array(48)
  external Array<Uint8> _Reserved1;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SYSTEM_TIMEOFDAY_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SdpAttributeRange> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SdpQueryUuid> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<SdpQueryUuidUnion> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// The following GUIDS define the different types of sensor profiles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/medfound/sensor-profile-guids>.
final Sensor = GUID.fromComponents(
  0xe97ced00,
  0x523a,
  0x4133,
  Uint8List.fromList(const [0xbf, 0x6f, 0xd3, 0xa2, 0xda, 0xe7, 0xf6, 0xba]),
);

final SensorCollection = GUID.fromComponents(
  0x79c43adb,
  0xa429,
  0x469f,
  Uint8List.fromList(const [0xaa, 0x39, 0x2f, 0x2b, 0x74, 0xb7, 0x59, 0x37]),
);

final SensorDataReport = GUID.fromComponents(
  0x4ea9d6ef,
  0x694b,
  0x4218,
  Uint8List.fromList(const [0x88, 0x16, 0xcc, 0xda, 0x8d, 0xa7, 0x4b, 0xba]),
);

final SensorManager = GUID.fromComponents(
  0x77a1c827,
  0xfcd2,
  0x4689,
  Uint8List.fromList(const [0x89, 0x15, 0x9d, 0x61, 0x3c, 0xc5, 0xfa, 0x3e]),
);

final ShellItem = GUID.fromComponents(
  0x9ac9fbe1,
  0xe0a2,
  0x4ad6,
  Uint8List.fromList(const [0xb4, 0xee, 0xe2, 0x12, 0x1, 0x3e, 0xa9, 0x17]),
);

final ShellLink = GUID.fromComponents(
  0x21401,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

final SpDataKey = GUID.fromComponents(
  0xd9f6ee60,
  0x58c9,
  0x458b,
  Uint8List.fromList(const [0x88, 0xe1, 0x2f, 0x90, 0x8f, 0xd7, 0xf8, 0x7c]),
);

final SpObjectToken = GUID.fromComponents(
  0xef411752,
  0x3736,
  0x4cb4,
  Uint8List.fromList(const [0x9c, 0x8c, 0x8e, 0xf4, 0xcc, 0xb5, 0x8e, 0xfe]),
);

final SpObjectTokenCategory = GUID.fromComponents(
  0xa910187f,
  0xc7a,
  0x45ac,
  Uint8List.fromList(const [0x92, 0xcc, 0x59, 0xed, 0xaf, 0xb7, 0x7b, 0x53]),
);

final SpVoice = GUID.fromComponents(
  0x96749377,
  0x3391,
  0x11d2,
  Uint8List.fromList(const [0x9e, 0xe3, 0x0, 0xc0, 0x4f, 0x79, 0x73, 0x96]),
);

final SpellCheckerFactory = GUID.fromComponents(
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

  external Pointer _hwndParent;
  external Pointer _hInstance;

  @Int32()
  external int _dwFlags;

  @Int32()
  external int _dwCommonButtons;

  external Pointer<Utf16> _pszWindowTitle;
  external TASKDIALOGCONFIG_0 Anonymous1;
  external Pointer<Utf16> _pszMainInstruction;
  external Pointer<Utf16> _pszContent;

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

  external Pointer<Utf16> _pszVerificationText;
  external Pointer<Utf16> _pszExpandedInformation;
  external Pointer<Utf16> _pszExpandedControlText;
  external Pointer<Utf16> _pszCollapsedControlText;
  external TASKDIALOGCONFIG_1 Anonymous2;
  external Pointer<Utf16> _pszFooter;

  /// Pointer to an application-defined callback function.
  external Pointer<NativeFunction<PFTASKDIALOGCALLBACK>> pfCallback;

  /// A pointer to application-defined reference data.
  @IntPtr()
  external int lpCallbackData;

  /// The width of the task dialog's client area, in dialog units.
  @Uint32()
  external int cxWidth;

  /// Handle to the parent window.
  HWND get hwndParent => HWND(_hwndParent);

  set hwndParent(HWND value) => _hwndParent = value;

  /// Handle to the module that contains the icon resource identified by the
  /// <b>pszMainIcon</b> or <b>pszFooterIcon</b> members, and the string
  /// resources identified by the <b>pszWindowTitle</b>,
  /// <b>pszMainInstruction</b>, <b>pszContent</b>, <b>pszVerificationText</b>,
  /// <b>pszExpandedInformation</b>, <b>pszExpandedControlText</b>,
  /// <b>pszCollapsedControlText</b> or <b>pszFooter</b> members.
  HINSTANCE get hInstance => HINSTANCE(_hInstance);

  set hInstance(HINSTANCE value) => _hInstance = value;

  /// Specifies the behavior of the task dialog.
  TASKDIALOG_FLAGS get dwFlags => TASKDIALOG_FLAGS(_dwFlags);

  set dwFlags(TASKDIALOG_FLAGS value) => _dwFlags = value;

  /// Specifies the push buttons displayed in the task dialog.
  TASKDIALOG_COMMON_BUTTON_FLAGS get dwCommonButtons =>
      TASKDIALOG_COMMON_BUTTON_FLAGS(_dwCommonButtons);

  set dwCommonButtons(TASKDIALOG_COMMON_BUTTON_FLAGS value) =>
      _dwCommonButtons = value;

  /// Pointer that references the string to be used for the task dialog title.
  PWSTR get pszWindowTitle => PWSTR(_pszWindowTitle);

  set pszWindowTitle(PWSTR value) => _pszWindowTitle = value;

  /// Pointer that references the string to be used for the main instruction.
  PWSTR get pszMainInstruction => PWSTR(_pszMainInstruction);

  set pszMainInstruction(PWSTR value) => _pszMainInstruction = value;

  /// Pointer that references the string to be used for the dialog's primary
  /// content.
  PWSTR get pszContent => PWSTR(_pszContent);

  set pszContent(PWSTR value) => _pszContent = value;

  /// Pointer that references the string to be used to label the verification
  /// checkbox.
  PWSTR get pszVerificationText => PWSTR(_pszVerificationText);

  set pszVerificationText(PWSTR value) => _pszVerificationText = value;

  /// Pointer that references the string to be used for displaying additional
  /// information.
  PWSTR get pszExpandedInformation => PWSTR(_pszExpandedInformation);

  set pszExpandedInformation(PWSTR value) => _pszExpandedInformation = value;

  /// Pointer that references the string to be used to label the button for
  /// collapsing the expandable information.
  PWSTR get pszExpandedControlText => PWSTR(_pszExpandedControlText);

  set pszExpandedControlText(PWSTR value) => _pszExpandedControlText = value;

  /// Pointer that references the string to be used to label the button for
  /// expanding the expandable information.
  PWSTR get pszCollapsedControlText => PWSTR(_pszCollapsedControlText);

  set pszCollapsedControlText(PWSTR value) => _pszCollapsedControlText = value;

  /// Pointer to the string to be used in the footer area of the task dialog.
  PWSTR get pszFooter => PWSTR(_pszFooter);

  set pszFooter(PWSTR value) => _pszFooter = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TASKDIALOGCONFIG> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
@Packed(1)
sealed class TASKDIALOGCONFIG_0 extends Union {
  external Pointer _hMainIcon;
  external Pointer<Utf16> _pszMainIcon;

  HICON get hMainIcon => HICON(_hMainIcon);
  set hMainIcon(HICON value) => _hMainIcon = value;
  PWSTR get pszMainIcon => PWSTR(_pszMainIcon);
  set pszMainIcon(PWSTR value) => _pszMainIcon = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TASKDIALOGCONFIG_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension TASKDIALOGCONFIG_0_Extension on TASKDIALOGCONFIG {
  HICON get hMainIcon => this.Anonymous1.hMainIcon;
  set hMainIcon(HICON value) => this.Anonymous1.hMainIcon = value;
  PWSTR get pszMainIcon => this.Anonymous1.pszMainIcon;
  set pszMainIcon(PWSTR value) => this.Anonymous1.pszMainIcon = value;
}

/// {@category union}
@Packed(1)
sealed class TASKDIALOGCONFIG_1 extends Union {
  external Pointer _hFooterIcon;
  external Pointer<Utf16> _pszFooterIcon;

  HICON get hFooterIcon => HICON(_hFooterIcon);
  set hFooterIcon(HICON value) => _hFooterIcon = value;
  PWSTR get pszFooterIcon => PWSTR(_pszFooterIcon);
  set pszFooterIcon(PWSTR value) => _pszFooterIcon = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TASKDIALOGCONFIG_1> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension TASKDIALOGCONFIG_1_Extension on TASKDIALOGCONFIG {
  HICON get hFooterIcon => this.Anonymous2.hFooterIcon;
  set hFooterIcon(HICON value) => this.Anonymous2.hFooterIcon = value;
  PWSTR get pszFooterIcon => this.Anonymous2.pszFooterIcon;
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

  external Pointer<Utf16> _pszButtonText;

  /// Pointer that references the string to be used to label the button.
  PWSTR get pszButtonText => PWSTR(_pszButtonText);

  set pszButtonText(PWSTR value) => _pszButtonText = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TASKDIALOG_BUTTON> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  TMPF_FLAGS get tmPitchAndFamily => TMPF_FLAGS(_tmPitchAndFamily);

  set tmPitchAndFamily(TMPF_FLAGS value) => _tmPitchAndFamily = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TEXTMETRIC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TIMEVAL> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TITLEBARINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TITLEBARINFOEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  SYSKIND get syskind => SYSKIND(_syskind);

  set syskind(SYSKIND value) => _syskind = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TLIBATTR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Specifies all the information in a token that is necessary for an app
/// container.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ns-winnt-token_appcontainer_information>.
///
/// {@category struct}
base class TOKEN_APPCONTAINER_INFORMATION extends Struct {
  external Pointer _TokenAppContainer;

  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">security
  /// identifier</a> (SID) of the app container.
  PSID get TokenAppContainer => PSID(_TokenAppContainer);

  set TokenAppContainer(PSID value) => _TokenAppContainer = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TOKEN_APPCONTAINER_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TOKEN_ELEVATION> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hSource;

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

  /// A device handle for the source input device.
  HANDLE get hSource => HANDLE(_hSource);

  set hSource(HANDLE value) => _hSource = value;

  /// A set of bit flags that specify various aspects of touch point press,
  /// release, and motion.
  TOUCHEVENTF_FLAGS get dwFlags => TOUCHEVENTF_FLAGS(_dwFlags);

  set dwFlags(TOUCHEVENTF_FLAGS value) => _dwFlags = value;

  /// A set of bit flags that specify which of the optional fields in the
  /// structure contain valid values.
  TOUCHINPUTMASKF_MASK get dwMask => TOUCHINPUTMASKF_MASK(_dwMask);

  set dwMask(TOUCHINPUTMASKF_MASK value) => _dwMask = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TOUCHINPUT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TOUCHPREDICTIONPARAMETERS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TPMPARAMS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _lpstrSchema;

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

  /// Reserved.
  PWSTR get lpstrSchema => PWSTR(_lpstrSchema);

  set lpstrSchema(PWSTR value) => _lpstrSchema = value;

  /// The kind of type.
  TYPEKIND get typekind => TYPEKIND(_typekind);

  set typekind(TYPEKIND value) => _typekind = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TYPEATTR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  VARENUM get vt => VARENUM(_vt);

  set vt(VARENUM value) => _vt = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TYPEDESC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class TYPEDESC_0 extends Union {
  external Pointer<TYPEDESC> lptdesc;
  external Pointer<ARRAYDESC> lpadesc;

  @Uint32()
  external int hreftype;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<TYPEDESC_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension TYPEDESC_0_Extension on TYPEDESC {
  Pointer<TYPEDESC> get lptdesc => this.Anonymous.lptdesc;
  set lptdesc(Pointer<TYPEDESC> value) => this.Anonymous.lptdesc = value;
  Pointer<ARRAYDESC> get lpadesc => this.Anonymous.lpadesc;
  set lpadesc(Pointer<ARRAYDESC> value) => this.Anonymous.lpadesc = value;
  int get hreftype => this.Anonymous.hreftype;
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

  external Pointer<Utf16> _Buffer;

  /// Pointer to a wide-character string.
  PWSTR get Buffer => PWSTR(_Buffer);

  set Buffer(PWSTR value) => _Buffer = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<UNICODE_STRING> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<UNSIGNED_RATIO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hdcDst;

  /// The new screen position of the layered window.
  external Pointer<POINT> pptDst;

  /// The new size of the layered window.
  external Pointer<SIZE> psize;

  external Pointer _hdcSrc;

  /// The location of the layer in the device context.
  external Pointer<POINT> pptSrc;

  @Uint32()
  external int _crKey;

  /// The transparency value to be used when composing the layered window.
  external Pointer<BLENDFUNCTION> pblend;

  @Uint32()
  external int _dwFlags;

  /// The area to be updated.
  external Pointer<RECT> prcDirty;

  /// A handle to a DC for the screen.
  HDC get hdcDst => HDC(_hdcDst);

  set hdcDst(HDC value) => _hdcDst = value;

  /// A handle to the DC for the surface that defines the layered window.
  HDC get hdcSrc => HDC(_hdcSrc);

  set hdcSrc(HDC value) => _hdcSrc = value;

  /// The color key to be used when composing the layered window.
  COLORREF get crKey => COLORREF(_crKey);

  set crKey(COLORREF value) => _crKey = value;
  UPDATE_LAYERED_WINDOW_FLAGS get dwFlags =>
      UPDATE_LAYERED_WINDOW_FLAGS(_dwFlags);
  set dwFlags(UPDATE_LAYERED_WINDOW_FLAGS value) => _dwFlags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<UPDATELAYEREDWINDOWINFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category union}
@Packed(1)
sealed class USB_DEVICE_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external USB_DEVICE_STATUS_0 Anonymous;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<USB_DEVICE_STATUS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category struct}
@Packed(1)
sealed class USB_DEVICE_STATUS_0 extends Struct {
  @Uint16()
  external int bitfield;

  int get SelfPowered => bitfield.getBits(0, 1);
  set SelfPowered(int value) => bitfield = bitfield.setBits(0, 1, value);
  int get RemoteWakeup => bitfield.getBits(1, 1);
  set RemoteWakeup(int value) => bitfield = bitfield.setBits(1, 1, value);
  int get U1Enable => bitfield.getBits(2, 1);
  set U1Enable(int value) => bitfield = bitfield.setBits(2, 1, value);
  int get U2Enable => bitfield.getBits(3, 1);
  set U2Enable(int value) => bitfield = bitfield.setBits(3, 1, value);
  int get LtmEnable => bitfield.getBits(4, 1);
  set LtmEnable(int value) => bitfield = bitfield.setBits(4, 1, value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<USB_DEVICE_STATUS_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension USB_DEVICE_STATUS_0_Extension on USB_DEVICE_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
  int get SelfPowered => this.Anonymous.SelfPowered;
  set SelfPowered(int value) => this.Anonymous.SelfPowered = value;
  int get RemoteWakeup => this.Anonymous.RemoteWakeup;
  set RemoteWakeup(int value) => this.Anonymous.RemoteWakeup = value;
  int get U1Enable => this.Anonymous.U1Enable;
  set U1Enable(int value) => this.Anonymous.U1Enable = value;
  int get U2Enable => this.Anonymous.U2Enable;
  set U2Enable(int value) => this.Anonymous.U2Enable = value;
  int get LtmEnable => this.Anonymous.LtmEnable;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<UiaChangeInfo> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  external Pointer<Utf16> _ve_valuename;

  /// The size of the data pointed to by <b>ve_valueptr</b>, in bytes.
  @Uint32()
  external int ve_valuelen;

  /// A pointer to the data for the value entry.
  @IntPtr()
  external int ve_valueptr;

  @Uint32()
  external int _ve_type;

  /// The name of the value to be retrieved.
  PWSTR get ve_valuename => PWSTR(_ve_valuename);

  set ve_valuename(PWSTR value) => _ve_valuename = value;

  /// The type of data pointed to by <b>ve_valueptr</b>.
  REG_VALUE_TYPE get ve_type => REG_VALUE_TYPE(_ve_type);

  set ve_type(REG_VALUE_TYPE value) => _ve_type = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VALENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer<Utf16> _lpstrSchema;
  external VARDESC_0 Anonymous;

  /// The variable type.
  external ELEMDESC elemdescVar;

  @Uint16()
  external int _wVarFlags;

  @Int32()
  external int _varkind;

  /// Reserved.
  PWSTR get lpstrSchema => PWSTR(_lpstrSchema);

  set lpstrSchema(PWSTR value) => _lpstrSchema = value;

  /// The variable flags.
  VARFLAGS get wVarFlags => VARFLAGS(_wVarFlags);

  set wVarFlags(VARFLAGS value) => _wVarFlags = value;

  /// The variable type.
  VARKIND get varkind => VARKIND(_varkind);

  set varkind(VARKIND value) => _varkind = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VARDESC> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class VARDESC_0 extends Union {
  @Uint32()
  external int oInst;

  external Pointer<VARIANT> lpvarValue;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VARDESC_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension VARDESC_0_Extension on VARDESC {
  int get oInst => this.Anonymous.oInst;
  set oInst(int value) => this.Anonymous.oInst = value;
  Pointer<VARIANT> get lpvarValue => this.Anonymous.lpvarValue;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VARIANT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// {@category union}
sealed class VARIANT_0 extends Union {
  external VARIANT_0_0 Anonymous;
  external DECIMAL decVal;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VARIANT_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension VARIANT_0_Extension on VARIANT {
  VARIANT_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(VARIANT_0_0 value) => this.Anonymous.Anonymous = value;
  DECIMAL get decVal => this.Anonymous.decVal;
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

  VARENUM get vt => VARENUM(_vt);
  set vt(VARENUM value) => _vt = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VARIANT_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension VARIANT_0_0_Extension on VARIANT {
  VARENUM get vt => this.Anonymous.Anonymous.vt;
  set vt(VARENUM value) => this.Anonymous.Anonymous.vt = value;
  VARIANT_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous;
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

  external Pointer<Utf16> _bstrVal;
  external VTablePointer _punkVal;
  external VTablePointer _pdispVal;
  external Pointer<SAFEARRAY> parray;
  external Pointer<Uint8> pbVal;
  external Pointer<Int16> piVal;
  external Pointer<Int32> plVal;
  external Pointer<Int64> pllVal;
  external Pointer<Float> pfltVal;
  external Pointer<Double> pdblVal;
  external Pointer<Int16> pboolVal;
  external Pointer<Int16> __OBSOLETE__VARIANT_PBOOL;
  external Pointer<Int32> pscode;
  external Pointer<CY> pcyVal;
  external Pointer<Double> pdate;
  external Pointer<Pointer<Utf16>> pbstrVal;
  external Pointer<VTablePointer> ppunkVal;
  external Pointer<VTablePointer> ppdispVal;
  external Pointer<Pointer<SAFEARRAY>> pparray;
  external Pointer<VARIANT> pvarVal;
  external Pointer byref;

  @Int8()
  external int _cVal;

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
  external Pointer<Utf8> _pcVal;
  external Pointer<Uint16> puiVal;
  external Pointer<Uint32> pulVal;
  external Pointer<Uint64> pullVal;
  external Pointer<Int32> pintVal;
  external Pointer<Uint32> puintVal;
  external VARIANT_0_0_0_0 Anonymous;

  bool get boolVal => _boolVal != FALSE;
  set boolVal(bool value) => _boolVal = value ? VARIANT_TRUE : FALSE;
  BSTR get bstrVal => BSTR(_bstrVal);
  set bstrVal(BSTR value) => _bstrVal = value;
  IUnknown? get punkVal => _punkVal.isNull ? null : IUnknown(_punkVal);
  set punkVal(IUnknown? value) => _punkVal = value?.ptr ?? nullptr;
  IDispatch? get pdispVal => _pdispVal.isNull ? null : IDispatch(_pdispVal);
  set pdispVal(IDispatch? value) => _pdispVal = value?.ptr ?? nullptr;
  CHAR get cVal => CHAR(_cVal);
  set cVal(CHAR value) => _cVal = value;
  PSTR get pcVal => PSTR(_pcVal);
  set pcVal(PSTR value) => _pcVal = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VARIANT_0_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension VARIANT_0_0_0_Extension on VARIANT {
  int get llVal => this.Anonymous.Anonymous.Anonymous.llVal;
  set llVal(int value) => this.Anonymous.Anonymous.Anonymous.llVal = value;
  int get lVal => this.Anonymous.Anonymous.Anonymous.lVal;
  set lVal(int value) => this.Anonymous.Anonymous.Anonymous.lVal = value;
  int get bVal => this.Anonymous.Anonymous.Anonymous.bVal;
  set bVal(int value) => this.Anonymous.Anonymous.Anonymous.bVal = value;
  int get iVal => this.Anonymous.Anonymous.Anonymous.iVal;
  set iVal(int value) => this.Anonymous.Anonymous.Anonymous.iVal = value;
  double get fltVal => this.Anonymous.Anonymous.Anonymous.fltVal;
  set fltVal(double value) => this.Anonymous.Anonymous.Anonymous.fltVal = value;
  double get dblVal => this.Anonymous.Anonymous.Anonymous.dblVal;
  set dblVal(double value) => this.Anonymous.Anonymous.Anonymous.dblVal = value;
  bool get boolVal => this.Anonymous.Anonymous.Anonymous.boolVal;
  set boolVal(bool value) => this.Anonymous.Anonymous.Anonymous.boolVal = value;
  int get scode => this.Anonymous.Anonymous.Anonymous.scode;
  set scode(int value) => this.Anonymous.Anonymous.Anonymous.scode = value;
  CY get cyVal => this.Anonymous.Anonymous.Anonymous.cyVal;
  set cyVal(CY value) => this.Anonymous.Anonymous.Anonymous.cyVal = value;
  double get date => this.Anonymous.Anonymous.Anonymous.date;
  set date(double value) => this.Anonymous.Anonymous.Anonymous.date = value;
  BSTR get bstrVal => this.Anonymous.Anonymous.Anonymous.bstrVal;
  set bstrVal(BSTR value) => this.Anonymous.Anonymous.Anonymous.bstrVal = value;
  IUnknown? get punkVal => this.Anonymous.Anonymous.Anonymous.punkVal;
  set punkVal(IUnknown? value) =>
      this.Anonymous.Anonymous.Anonymous.punkVal = value;
  IDispatch? get pdispVal => this.Anonymous.Anonymous.Anonymous.pdispVal;
  set pdispVal(IDispatch? value) =>
      this.Anonymous.Anonymous.Anonymous.pdispVal = value;
  Pointer<SAFEARRAY> get parray => this.Anonymous.Anonymous.Anonymous.parray;
  set parray(Pointer<SAFEARRAY> value) =>
      this.Anonymous.Anonymous.Anonymous.parray = value;
  Pointer<Uint8> get pbVal => this.Anonymous.Anonymous.Anonymous.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      this.Anonymous.Anonymous.Anonymous.pbVal = value;
  Pointer<Int16> get piVal => this.Anonymous.Anonymous.Anonymous.piVal;
  set piVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.piVal = value;
  Pointer<Int32> get plVal => this.Anonymous.Anonymous.Anonymous.plVal;
  set plVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.plVal = value;
  Pointer<Int64> get pllVal => this.Anonymous.Anonymous.Anonymous.pllVal;
  set pllVal(Pointer<Int64> value) =>
      this.Anonymous.Anonymous.Anonymous.pllVal = value;
  Pointer<Float> get pfltVal => this.Anonymous.Anonymous.Anonymous.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      this.Anonymous.Anonymous.Anonymous.pfltVal = value;
  Pointer<Double> get pdblVal => this.Anonymous.Anonymous.Anonymous.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdblVal = value;
  Pointer<Int16> get pboolVal => this.Anonymous.Anonymous.Anonymous.pboolVal;
  set pboolVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.pboolVal = value;
  Pointer<Int32> get pscode => this.Anonymous.Anonymous.Anonymous.pscode;
  set pscode(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pscode = value;
  Pointer<CY> get pcyVal => this.Anonymous.Anonymous.Anonymous.pcyVal;
  set pcyVal(Pointer<CY> value) =>
      this.Anonymous.Anonymous.Anonymous.pcyVal = value;
  Pointer<Double> get pdate => this.Anonymous.Anonymous.Anonymous.pdate;
  set pdate(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdate = value;
  Pointer<Pointer<Utf16>> get pbstrVal =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal;
  set pbstrVal(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal = value;
  Pointer<VTablePointer> get ppunkVal =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal;
  set ppunkVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal = value;
  Pointer<VTablePointer> get ppdispVal =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal;
  set ppdispVal(Pointer<VTablePointer> value) =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal = value;
  Pointer<Pointer<SAFEARRAY>> get pparray =>
      this.Anonymous.Anonymous.Anonymous.pparray;
  set pparray(Pointer<Pointer<SAFEARRAY>> value) =>
      this.Anonymous.Anonymous.Anonymous.pparray = value;
  Pointer<VARIANT> get pvarVal => this.Anonymous.Anonymous.Anonymous.pvarVal;
  set pvarVal(Pointer<VARIANT> value) =>
      this.Anonymous.Anonymous.Anonymous.pvarVal = value;
  Pointer get byref => this.Anonymous.Anonymous.Anonymous.byref;
  set byref(Pointer value) => this.Anonymous.Anonymous.Anonymous.byref = value;
  CHAR get cVal => this.Anonymous.Anonymous.Anonymous.cVal;
  set cVal(CHAR value) => this.Anonymous.Anonymous.Anonymous.cVal = value;
  int get uiVal => this.Anonymous.Anonymous.Anonymous.uiVal;
  set uiVal(int value) => this.Anonymous.Anonymous.Anonymous.uiVal = value;
  int get ulVal => this.Anonymous.Anonymous.Anonymous.ulVal;
  set ulVal(int value) => this.Anonymous.Anonymous.Anonymous.ulVal = value;
  int get ullVal => this.Anonymous.Anonymous.Anonymous.ullVal;
  set ullVal(int value) => this.Anonymous.Anonymous.Anonymous.ullVal = value;
  int get intVal => this.Anonymous.Anonymous.Anonymous.intVal;
  set intVal(int value) => this.Anonymous.Anonymous.Anonymous.intVal = value;
  int get uintVal => this.Anonymous.Anonymous.Anonymous.uintVal;
  set uintVal(int value) => this.Anonymous.Anonymous.Anonymous.uintVal = value;
  Pointer<DECIMAL> get pdecVal => this.Anonymous.Anonymous.Anonymous.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) =>
      this.Anonymous.Anonymous.Anonymous.pdecVal = value;
  PSTR get pcVal => this.Anonymous.Anonymous.Anonymous.pcVal;
  set pcVal(PSTR value) => this.Anonymous.Anonymous.Anonymous.pcVal = value;
  Pointer<Uint16> get puiVal => this.Anonymous.Anonymous.Anonymous.puiVal;
  set puiVal(Pointer<Uint16> value) =>
      this.Anonymous.Anonymous.Anonymous.puiVal = value;
  Pointer<Uint32> get pulVal => this.Anonymous.Anonymous.Anonymous.pulVal;
  set pulVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.pulVal = value;
  Pointer<Uint64> get pullVal => this.Anonymous.Anonymous.Anonymous.pullVal;
  set pullVal(Pointer<Uint64> value) =>
      this.Anonymous.Anonymous.Anonymous.pullVal = value;
  Pointer<Int32> get pintVal => this.Anonymous.Anonymous.Anonymous.pintVal;
  set pintVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pintVal = value;
  Pointer<Uint32> get puintVal => this.Anonymous.Anonymous.Anonymous.puintVal;
  set puintVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.puintVal = value;
  VARIANT_0_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous.Anonymous;
  set Anonymous(VARIANT_0_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous = value;
}

/// {@category struct}
sealed class VARIANT_0_0_0_0 extends Struct {
  external Pointer pvRecord;
  external VTablePointer _pRecInfo;

  IRecordInfo? get pRecInfo => _pRecInfo.isNull ? null : IRecordInfo(_pRecInfo);
  set pRecInfo(IRecordInfo? value) => _pRecInfo = value?.ptr ?? nullptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VARIANT_0_0_0_0> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension VARIANT_0_0_0_0_Extension on VARIANT {
  Pointer get pvRecord => this.Anonymous.Anonymous.Anonymous.Anonymous.pvRecord;
  set pvRecord(Pointer value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pvRecord = value;
  IRecordInfo? get pRecInfo =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo;
  set pRecInfo(IRecordInfo? value) =>
      this.Anonymous.Anonymous.Anonymous.Anonymous.pRecInfo = value;
}

extension type const VARIANT_BOOL(int _) implements int {}

/// {@category struct}
base class VERSIONEDSTREAM extends Struct {
  external GUID guidVersion;
  external VTablePointer _pStream;

  IStream? get pStream => _pStream.isNull ? null : IStream(_pStream);
  set pStream(IStream? value) => _pStream = value?.ptr ?? nullptr;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VERSIONEDSTREAM> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VOLUME_DISK_EXTENTS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  VS_FIXEDFILEINFO_FILE_FLAGS get dwFileFlags =>
      VS_FIXEDFILEINFO_FILE_FLAGS(_dwFileFlags);
  set dwFileFlags(VS_FIXEDFILEINFO_FILE_FLAGS value) => _dwFileFlags = value;
  VS_FIXEDFILEINFO_FILE_OS get dwFileOS => VS_FIXEDFILEINFO_FILE_OS(_dwFileOS);
  set dwFileOS(VS_FIXEDFILEINFO_FILE_OS value) => _dwFileOS = value;
  VS_FIXEDFILEINFO_FILE_TYPE get dwFileType =>
      VS_FIXEDFILEINFO_FILE_TYPE(_dwFileType);
  set dwFileType(VS_FIXEDFILEINFO_FILE_TYPE value) => _dwFileType = value;

  /// The function of the file.
  VS_FIXEDFILEINFO_FILE_SUBTYPE get dwFileSubtype =>
      VS_FIXEDFILEINFO_FILE_SUBTYPE(_dwFileSubtype);

  set dwFileSubtype(VS_FIXEDFILEINFO_FILE_SUBTYPE value) =>
      _dwFileSubtype = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<VS_FIXEDFILEINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// VirtualDesktopManager implements the IVirtualDesktopManager interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/shell/virtualdesktopmanager>.
final VirtualDesktopManager = GUID.fromComponents(
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WAVEFORMATEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WAVEFORMATEXTENSIBLE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WAVEFORMATEXTENSIBLE_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

extension WAVEFORMATEXTENSIBLE_0_Extension on WAVEFORMATEXTENSIBLE {
  int get wValidBitsPerSample => this.Samples.wValidBitsPerSample;
  set wValidBitsPerSample(int value) =>
      this.Samples.wValidBitsPerSample = value;
  int get wSamplesPerBlock => this.Samples.wSamplesPerBlock;
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
  external Pointer<Utf8> _lpData;

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

  /// Pointer to the waveform buffer.
  PSTR get lpData => PSTR(_lpData);

  set lpData(PSTR value) => _lpData = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WAVEHDR> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WAVEINCAPS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  String get szPname => _szPname.toDartString();

  set szPname(String value) => _szPname.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WAVEOUTCAPS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WIN32_FILE_ATTRIBUTE_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  String get cFileName => _cFileName.toDartString();

  set cFileName(String value) => _cFileName.setString(value);

  /// An alternative name for the file.
  String get cAlternateFileName => _cAlternateFileName.toDartString();

  set cAlternateFileName(String value) => _cAlternateFileName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WIN32_FIND_DATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  WINDOW_STYLE get dwStyle => WINDOW_STYLE(_dwStyle);

  set dwStyle(WINDOW_STYLE value) => _dwStyle = value;

  /// The extended window styles.
  WINDOW_EX_STYLE get dwExStyle => WINDOW_EX_STYLE(_dwExStyle);

  set dwExStyle(WINDOW_EX_STYLE value) => _dwExStyle = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WINDOWINFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  WINDOWPLACEMENT_FLAGS get flags => WINDOWPLACEMENT_FLAGS(_flags);
  set flags(WINDOWPLACEMENT_FLAGS value) => _flags = value;

  /// The current show state of the window.
  SHOW_WINDOW_CMD get showCmd => SHOW_WINDOW_CMD(_showCmd);

  set showCmd(SHOW_WINDOW_CMD value) => _showCmd = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WINDOWPLACEMENT> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Contains information about the size and position of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ns-winuser-windowpos>.
///
/// {@category struct}
base class WINDOWPOS extends Struct {
  external Pointer _hwnd;
  external Pointer _hwndInsertAfter;

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

  /// A handle to the window.
  HWND get hwnd => HWND(_hwnd);

  set hwnd(HWND value) => _hwnd = value;

  /// The position of the window in Z order (front-to-back position).
  HWND get hwndInsertAfter => HWND(_hwndInsertAfter);

  set hwndInsertAfter(HWND value) => _hwndInsertAfter = value;
  SET_WINDOW_POS_FLAGS get flags => SET_WINDOW_POS_FLAGS(_flags);
  set flags(SET_WINDOW_POS_FLAGS value) => _flags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WINDOWPOS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WINDOW_BUFFER_SIZE_RECORD> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-phy-type">DOT11_PHY_TYPE</a>
  /// value that indicates the physical type of the association.
  DOT11_PHY_TYPE get dot11PhyType => DOT11_PHY_TYPE(_dot11PhyType);

  set dot11PhyType(DOT11_PHY_TYPE value) => _dot11PhyType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_ASSOCIATION_ATTRIBUTES> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_AUTH_CIPHER_PAIR_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that specifies whether the network is infrastructure or ad hoc.
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Indicates whether the network is connectable or not.
  bool get bNetworkConnectable => _bNetworkConnectable != FALSE;

  set bNetworkConnectable(bool value) =>
      _bNetworkConnectable = value ? TRUE : FALSE;

  /// Specifies if there are more than <b>WLAN_MAX_PHY_TYPE_NUMBER</b> PHY types
  /// supported.
  bool get bMorePhyTypes => _bMorePhyTypes != FALSE;

  set bMorePhyTypes(bool value) => _bMorePhyTypes = value ? TRUE : FALSE;

  /// Indicates whether security is enabled on the network.
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-algorithm">DOT11_AUTH_ALGORITHM</a>
  /// value that indicates the default authentication algorithm used to join
  /// this network for the first time.
  DOT11_AUTH_ALGORITHM get dot11DefaultAuthAlgorithm =>
      DOT11_AUTH_ALGORITHM(_dot11DefaultAuthAlgorithm);

  set dot11DefaultAuthAlgorithm(DOT11_AUTH_ALGORITHM value) =>
      _dot11DefaultAuthAlgorithm = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-cipher-algorithm">DOT11_CIPHER_ALGORITHM</a>
  /// value that indicates the default cipher algorithm to be used when joining
  /// this network.
  DOT11_CIPHER_ALGORITHM get dot11DefaultCipherAlgorithm =>
      DOT11_CIPHER_ALGORITHM(_dot11DefaultCipherAlgorithm);

  set dot11DefaultCipherAlgorithm(DOT11_CIPHER_ALGORITHM value) =>
      _dot11DefaultCipherAlgorithm = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_AVAILABLE_NETWORK> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_AVAILABLE_NETWORK_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// The PHY type for this network.
  DOT11_PHY_TYPE get dot11BssPhyType => DOT11_PHY_TYPE(_dot11BssPhyType);

  set dot11BssPhyType(DOT11_PHY_TYPE value) => _dot11BssPhyType = value;

  /// A value that specifies whether the AP or peer station is operating within
  /// the regulatory domain as identified by the country/region.
  bool get bInRegDomain => _bInRegDomain != FALSE;

  set bInRegDomain(bool value) => _bInRegDomain = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_BSS_ENTRY> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_BSS_LIST> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  WLAN_INTERFACE_STATE get isState => WLAN_INTERFACE_STATE(_isState);

  set isState(WLAN_INTERFACE_STATE value) => _isState = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/ne-wlanapi-wlan_connection_mode">WLAN_CONNECTION_MODE</a>
  /// value that indicates the mode of the connection.
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// The name of the profile used for the connection.
  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_CONNECTION_ATTRIBUTES> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// The name of the profile used for the connection.
  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS network type.
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Indicates whether security is enabled for this connection.
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// A set of flags that provide additional information for the network
  /// connection.
  WLAN_CONNECTION_NOTIFICATION_FLAGS get dwFlags =>
      WLAN_CONNECTION_NOTIFICATION_FLAGS(_dwFlags);

  set dwFlags(WLAN_CONNECTION_NOTIFICATION_FLAGS value) => _dwFlags = value;

  /// This field contains the XML presentation of the profile used for
  /// discovery, if the connection succeeds.
  String get strProfileXml => _strProfileXml.toDartString();

  set strProfileXml(String value) => _strProfileXml.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_CONNECTION_NOTIFICATION_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  external Pointer<Utf16> _strProfile;

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
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// Specifies the profile being used for the connection.
  PWSTR get strProfile => PWSTR(_strProfile);

  set strProfile(PWSTR value) => _strProfile = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS type of the network.
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_CONNECTION_PARAMETERS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_COUNTRY_OR_REGION_STRING_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_DEVICE_SERVICE_GUID_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_DEVICE_SERVICE_NOTIFICATION_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  WLAN_HOSTED_NETWORK_REASON get PeerStateChangeReason =>
      WLAN_HOSTED_NETWORK_REASON(_PeerStateChangeReason);

  set PeerStateChangeReason(WLAN_HOSTED_NETWORK_REASON value) =>
      _PeerStateChangeReason = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  WLAN_HOSTED_NETWORK_PEER_AUTH_STATE get PeerAuthState =>
      WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(_PeerAuthState);

  set PeerAuthState(WLAN_HOSTED_NETWORK_PEER_AUTH_STATE value) =>
      _PeerAuthState = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_HOSTED_NETWORK_PEER_STATE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DOT11_RADIO_STATE get dot11SoftwareRadioState =>
      DOT11_RADIO_STATE(_dot11SoftwareRadioState);

  set dot11SoftwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11SoftwareRadioState = value;

  /// The hardware radio state of the wireless Hosted Network.
  DOT11_RADIO_STATE get dot11HardwareRadioState =>
      DOT11_RADIO_STATE(_dot11HardwareRadioState);

  set dot11HardwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11HardwareRadioState = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_HOSTED_NETWORK_RADIO_STATE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DOT11_AUTH_ALGORITHM get dot11AuthAlgo =>
      DOT11_AUTH_ALGORITHM(_dot11AuthAlgo);

  set dot11AuthAlgo(DOT11_AUTH_ALGORITHM value) => _dot11AuthAlgo = value;

  /// The cipher algorithm used by the wireless Hosted Network.
  DOT11_CIPHER_ALGORITHM get dot11CipherAlgo =>
      DOT11_CIPHER_ALGORITHM(_dot11CipherAlgo);

  set dot11CipherAlgo(DOT11_CIPHER_ALGORITHM value) => _dot11CipherAlgo = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_HOSTED_NETWORK_SECURITY_SETTINGS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  WLAN_HOSTED_NETWORK_STATE get OldState =>
      WLAN_HOSTED_NETWORK_STATE(_OldState);

  set OldState(WLAN_HOSTED_NETWORK_STATE value) => _OldState = value;

  /// The current network state on the wireless Hosted Network.
  WLAN_HOSTED_NETWORK_STATE get NewState =>
      WLAN_HOSTED_NETWORK_STATE(_NewState);

  set NewState(WLAN_HOSTED_NETWORK_STATE value) => _NewState = value;

  /// The reason for the network state change.
  WLAN_HOSTED_NETWORK_REASON get StateChangeReason =>
      WLAN_HOSTED_NETWORK_REASON(_StateChangeReason);

  set StateChangeReason(WLAN_HOSTED_NETWORK_REASON value) =>
      _StateChangeReason = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_HOSTED_NETWORK_STATE_CHANGE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  WLAN_HOSTED_NETWORK_STATE get HostedNetworkState =>
      WLAN_HOSTED_NETWORK_STATE(_HostedNetworkState);

  set HostedNetworkState(WLAN_HOSTED_NETWORK_STATE value) =>
      _HostedNetworkState = value;

  /// The physical type of the network interface used by wireless Hosted
  /// Network.
  DOT11_PHY_TYPE get dot11PhyType => DOT11_PHY_TYPE(_dot11PhyType);

  set dot11PhyType(DOT11_PHY_TYPE value) => _dot11PhyType = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_HOSTED_NETWORK_STATUS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  WLAN_INTERFACE_TYPE get interfaceType => WLAN_INTERFACE_TYPE(_interfaceType);

  set interfaceType(WLAN_INTERFACE_TYPE value) => _interfaceType = value;

  /// Indicates whether 802.11d is supported by the interface.
  bool get bDot11DSupported => _bDot11DSupported != FALSE;

  set bDot11DSupported(bool value) => _bDot11DSupported = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_INTERFACE_CAPABILITY> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  String get strInterfaceDescription => _strInterfaceDescription.toDartString();

  set strInterfaceDescription(String value) =>
      _strInterfaceDescription.setString(value);

  /// Contains a <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_state-r1">WLAN_INTERFACE_STATE</a>
  /// value that indicates the current state of the interface.
  WLAN_INTERFACE_STATE get isState => WLAN_INTERFACE_STATE(_isState);

  set isState(WLAN_INTERFACE_STATE value) => _isState = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_INTERFACE_INFO> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_INTERFACE_INFO_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_MAC_FRAME_STATISTICS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  WLAN_CONNECTION_MODE get wlanConnectionMode =>
      WLAN_CONNECTION_MODE(_wlanConnectionMode);

  set wlanConnectionMode(WLAN_CONNECTION_MODE value) =>
      _wlanConnectionMode = value;

  /// The name of the profile used for the connection.
  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-bss-type">DOT11_BSS_TYPE</a>
  /// value that indicates the BSS network type.
  DOT11_BSS_TYPE get dot11BssType => DOT11_BSS_TYPE(_dot11BssType);

  set dot11BssType(DOT11_BSS_TYPE value) => _dot11BssType = value;

  /// Indicates whether security is enabled for this connection.
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// Indicates whether the peer is the first to join the ad hoc network created
  /// by the machine.
  bool get bFirstPeer => _bFirstPeer != FALSE;

  set bFirstPeer(bool value) => _bFirstPeer = value ? TRUE : FALSE;

  /// Indicates whether the peer is the last to leave the ad hoc network created
  /// by the machine.
  bool get bLastPeer => _bLastPeer != FALSE;

  set bLastPeer(bool value) => _bLastPeer = value ? TRUE : FALSE;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_MSM_NOTIFICATION_DATA> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_PHY_FRAME_STATISTICS> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  DOT11_RADIO_STATE get dot11SoftwareRadioState =>
      DOT11_RADIO_STATE(_dot11SoftwareRadioState);

  set dot11SoftwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11SoftwareRadioState = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-dot11_radio_state-r1">DOT11_RADIO_STATE</a>
  /// value that indicates the hardware radio state.
  DOT11_RADIO_STATE get dot11HardwareRadioState =>
      DOT11_RADIO_STATE(_dot11HardwareRadioState);

  set dot11HardwareRadioState(DOT11_RADIO_STATE value) =>
      _dot11HardwareRadioState = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_PHY_RADIO_STATE> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  String get strProfileName => _strProfileName.toDartString();

  set strProfileName(String value) => _strProfileName.setString(value);

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_PROFILE_INFO> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_PROFILE_INFO_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_RADIO_STATE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_RATE_SET> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_RAW_DATA> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_RAW_DATA_LIST> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
}

/// {@category struct}
sealed class WLAN_RAW_DATA_LIST_0 extends Struct {
  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_RAW_DATA_LIST_0> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  bool get bSecurityEnabled => _bSecurityEnabled != FALSE;

  set bSecurityEnabled(bool value) => _bSecurityEnabled = value ? TRUE : FALSE;

  /// Indicates whether 802.1X is enabled for this connection.
  bool get bOneXEnabled => _bOneXEnabled != FALSE;

  set bOneXEnabled(bool value) => _bOneXEnabled = value ? TRUE : FALSE;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-auth-algorithm">DOT11_AUTH_ALGORITHM</a>
  /// value that identifies the authentication algorithm.
  DOT11_AUTH_ALGORITHM get dot11AuthAlgorithm =>
      DOT11_AUTH_ALGORITHM(_dot11AuthAlgorithm);

  set dot11AuthAlgorithm(DOT11_AUTH_ALGORITHM value) =>
      _dot11AuthAlgorithm = value;

  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/NativeWiFi/dot11-cipher-algorithm">DOT11_CIPHER_ALGORITHM</a>
  /// value that identifies the cipher algorithm.
  DOT11_CIPHER_ALGORITHM get dot11CipherAlgorithm =>
      DOT11_CIPHER_ALGORITHM(_dot11CipherAlgorithm);

  set dot11CipherAlgorithm(DOT11_CIPHER_ALGORITHM value) =>
      _dot11CipherAlgorithm = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_SECURITY_ATTRIBUTES> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WLAN_STATISTICS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hInstance;
  external Pointer _hIcon;
  external Pointer _hCursor;
  external Pointer _hbrBackground;
  external Pointer<Utf16> _lpszMenuName;
  external Pointer<Utf16> _lpszClassName;

  /// The class style(s).
  WNDCLASS_STYLES get style => WNDCLASS_STYLES(_style);

  set style(WNDCLASS_STYLES value) => _style = value;

  /// A handle to the instance that contains the window procedure for the class.
  HINSTANCE get hInstance => HINSTANCE(_hInstance);

  set hInstance(HINSTANCE value) => _hInstance = value;

  /// A handle to the class icon.
  HICON get hIcon => HICON(_hIcon);

  set hIcon(HICON value) => _hIcon = value;

  /// A handle to the class cursor.
  HCURSOR get hCursor => HCURSOR(_hCursor);

  set hCursor(HCURSOR value) => _hCursor = value;

  /// A handle to the class background brush.
  HBRUSH get hbrBackground => HBRUSH(_hbrBackground);

  set hbrBackground(HBRUSH value) => _hbrBackground = value;

  /// The resource name of the class menu, as the name appears in the resource
  /// file.
  PWSTR get lpszMenuName => PWSTR(_lpszMenuName);

  set lpszMenuName(PWSTR value) => _lpszMenuName = value;

  /// A pointer to a null-terminated string or is an atom.
  PWSTR get lpszClassName => PWSTR(_lpszClassName);

  set lpszClassName(PWSTR value) => _lpszClassName = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WNDCLASS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  external Pointer _hInstance;
  external Pointer _hIcon;
  external Pointer _hCursor;
  external Pointer _hbrBackground;
  external Pointer<Utf16> _lpszMenuName;
  external Pointer<Utf16> _lpszClassName;
  external Pointer _hIconSm;

  /// The class style(s).
  WNDCLASS_STYLES get style => WNDCLASS_STYLES(_style);

  set style(WNDCLASS_STYLES value) => _style = value;

  /// A handle to the instance that contains the window procedure for the class.
  HINSTANCE get hInstance => HINSTANCE(_hInstance);

  set hInstance(HINSTANCE value) => _hInstance = value;

  /// A handle to the class icon.
  HICON get hIcon => HICON(_hIcon);

  set hIcon(HICON value) => _hIcon = value;

  /// A handle to the class cursor.
  HCURSOR get hCursor => HCURSOR(_hCursor);

  set hCursor(HCURSOR value) => _hCursor = value;

  /// A handle to the class background brush.
  HBRUSH get hbrBackground => HBRUSH(_hbrBackground);

  set hbrBackground(HBRUSH value) => _hbrBackground = value;

  /// Pointer to a null-terminated character string that specifies the resource
  /// name of the class menu, as the name appears in the resource file.
  PWSTR get lpszMenuName => PWSTR(_lpszMenuName);

  set lpszMenuName(PWSTR value) => _lpszMenuName = value;

  /// A pointer to a null-terminated string or is an atom.
  PWSTR get lpszClassName => PWSTR(_lpszClassName);

  set lpszClassName(PWSTR value) => _lpszClassName = value;

  /// A handle to a small icon that is associated with the window class.
  HICON get hIconSm => HICON(_hIconSm);

  set hIconSm(HICON value) => _hIconSm = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WNDCLASSEX> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension type const WPARAM(int _) implements int {}

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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<WTA_OPTIONS> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

/// Contains and manipulates both class definitions and class object instances.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemclassobject>.
final WbemClassObject = GUID.fromComponents(
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
final WbemContext = GUID.fromComponents(
  0x674b6698,
  0xee92,
  0x11d0,
  Uint8List.fromList(const [0xad, 0x71, 0x0, 0xc0, 0x4f, 0xd8, 0xfd, 0xff]),
);

final WbemLocator = GUID.fromComponents(
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
final WbemRefresher = GUID.fromComponents(
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
final WinHttpRequest = GUID.fromComponents(
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<XFORM> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  BATTERY_TYPE get BatteryType => BATTERY_TYPE(_BatteryType);
  set BatteryType(BATTERY_TYPE value) => _BatteryType = value;
  BATTERY_LEVEL get BatteryLevel => BATTERY_LEVEL(_BatteryLevel);
  set BatteryLevel(BATTERY_LEVEL value) => _BatteryLevel = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<XINPUT_BATTERY_INFORMATION> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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

  XINPUT_DEVTYPE get Type => XINPUT_DEVTYPE(_Type);
  set Type(XINPUT_DEVTYPE value) => _Type = value;

  /// Subtype of the game controller.
  XINPUT_DEVSUBTYPE get SubType => XINPUT_DEVSUBTYPE(_SubType);

  set SubType(XINPUT_DEVSUBTYPE value) => _SubType = value;

  /// Features of the controller.
  XINPUT_CAPABILITIES_FLAGS get Flags => XINPUT_CAPABILITIES_FLAGS(_Flags);

  set Flags(XINPUT_CAPABILITIES_FLAGS value) => _Flags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<XINPUT_CAPABILITIES> toNative({
    Allocator allocator = adaptiveCalloc,
  }) => allocator()..ref = this;
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
  XINPUT_GAMEPAD_BUTTON_FLAGS get wButtons =>
      XINPUT_GAMEPAD_BUTTON_FLAGS(_wButtons);

  set wButtons(XINPUT_GAMEPAD_BUTTON_FLAGS value) => _wButtons = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<XINPUT_GAMEPAD> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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
  XINPUT_VIRTUAL_KEY get VirtualKey => XINPUT_VIRTUAL_KEY(_VirtualKey);

  set VirtualKey(XINPUT_VIRTUAL_KEY value) => _VirtualKey = value;

  /// Flags that indicate the keyboard state at the time of the input event.
  XINPUT_KEYSTROKE_FLAGS get Flags => XINPUT_KEYSTROKE_FLAGS(_Flags);

  set Flags(XINPUT_KEYSTROKE_FLAGS value) => _Flags = value;

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<XINPUT_KEYSTROKE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<XINPUT_STATE> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
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

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena]) is
  /// used, in which case the allocator manages the lifetime.
  Pointer<XINPUT_VIBRATION> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;
}

extension type const socklen_t(int _) implements int {}
