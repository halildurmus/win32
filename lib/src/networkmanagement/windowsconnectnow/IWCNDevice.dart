// IWCNDevice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../networkmanagement/windowsconnectnow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsconnectnow/IWCNConnectNotify.dart';

/// @nodoc
const IID_IWCNDevice = '{C100BE9C-D33A-4A4B-BF23-BBEF4663D017}';

/// {@category Interface}
/// {@category com}
class IWCNDevice extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWCNDevice(Pointer<COMObject> ptr) : super(ptr);

  int SetPassword(
    int Type,
    int dwPasswordLength,
    Pointer<Uint8> pbPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Uint32 dwPasswordLength,
            Pointer<Uint8> pbPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int dwPasswordLength,
            Pointer<Uint8> pbPassword,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        dwPasswordLength,
        pbPassword,
      );

  int Connect(
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>()(
        ptr.ref.lpVtbl,
        pNotify,
      );

  int GetAttribute(
    int AttributeType,
    int dwMaxBufferSize,
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pdwBufferUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AttributeType,
            Uint32 dwMaxBufferSize,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwBufferUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AttributeType,
            int dwMaxBufferSize,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwBufferUsed,
          )>()(
        ptr.ref.lpVtbl,
        AttributeType,
        dwMaxBufferSize,
        pbBuffer,
        pdwBufferUsed,
      );

  int GetIntegerAttribute(
    int AttributeType,
    Pointer<Uint32> puInteger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AttributeType,
            Pointer<Uint32> puInteger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AttributeType,
            Pointer<Uint32> puInteger,
          )>()(
        ptr.ref.lpVtbl,
        AttributeType,
        puInteger,
      );

  int GetStringAttribute(
    int AttributeType,
    int cchMaxString,
    Pointer<Utf16> wszString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AttributeType,
            Uint32 cchMaxString,
            Pointer<Utf16> wszString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AttributeType,
            int cchMaxString,
            Pointer<Utf16> wszString,
          )>()(
        ptr.ref.lpVtbl,
        AttributeType,
        cchMaxString,
        wszString,
      );

  int GetNetworkProfile(
    int cchMaxStringLength,
    Pointer<Utf16> wszProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchMaxStringLength,
            Pointer<Utf16> wszProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchMaxStringLength,
            Pointer<Utf16> wszProfile,
          )>()(
        ptr.ref.lpVtbl,
        cchMaxStringLength,
        wszProfile,
      );

  int SetNetworkProfile(
    Pointer<Utf16> pszProfileXml,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszProfileXml,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszProfileXml,
          )>()(
        ptr.ref.lpVtbl,
        pszProfileXml,
      );

  int GetVendorExtension(
    Pointer<WCN_VENDOR_EXTENSION_SPEC> pVendorExtSpec,
    int dwMaxBufferSize,
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pdwBufferUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WCN_VENDOR_EXTENSION_SPEC> pVendorExtSpec,
            Uint32 dwMaxBufferSize,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwBufferUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WCN_VENDOR_EXTENSION_SPEC> pVendorExtSpec,
            int dwMaxBufferSize,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwBufferUsed,
          )>()(
        ptr.ref.lpVtbl,
        pVendorExtSpec,
        dwMaxBufferSize,
        pbBuffer,
        pdwBufferUsed,
      );

  int SetVendorExtension(
    Pointer<WCN_VENDOR_EXTENSION_SPEC> pVendorExtSpec,
    int cbBuffer,
    Pointer<Uint8> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WCN_VENDOR_EXTENSION_SPEC> pVendorExtSpec,
            Uint32 cbBuffer,
            Pointer<Uint8> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WCN_VENDOR_EXTENSION_SPEC> pVendorExtSpec,
            int cbBuffer,
            Pointer<Uint8> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pVendorExtSpec,
        cbBuffer,
        pbBuffer,
      );

  int Unadvise() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetNFCPasswordParams(
    int Type,
    int dwOOBPasswordID,
    int dwPasswordLength,
    Pointer<Uint8> pbPassword,
    int dwRemotePublicKeyHashLength,
    Pointer<Uint8> pbRemotePublicKeyHash,
    int dwDHKeyBlobLength,
    Pointer<Uint8> pbDHKeyBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Uint32 dwOOBPasswordID,
            Uint32 dwPasswordLength,
            Pointer<Uint8> pbPassword,
            Uint32 dwRemotePublicKeyHashLength,
            Pointer<Uint8> pbRemotePublicKeyHash,
            Uint32 dwDHKeyBlobLength,
            Pointer<Uint8> pbDHKeyBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int dwOOBPasswordID,
            int dwPasswordLength,
            Pointer<Uint8> pbPassword,
            int dwRemotePublicKeyHashLength,
            Pointer<Uint8> pbRemotePublicKeyHash,
            int dwDHKeyBlobLength,
            Pointer<Uint8> pbDHKeyBlob,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        dwOOBPasswordID,
        dwPasswordLength,
        pbPassword,
        dwRemotePublicKeyHashLength,
        pbRemotePublicKeyHash,
        dwDHKeyBlobLength,
        pbDHKeyBlob,
      );
}
