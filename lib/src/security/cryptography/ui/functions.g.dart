// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/cryptography/ui/structs.g.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// cryptui.dll
// -----------------------------------------------------------------------
final _cryptui = DynamicLibrary.open('cryptui.dll');

int CertSelectionGetSerializedBlob(
  Pointer<CERT_SELECTUI_INPUT> pcsi,
  Pointer<Pointer> ppOutBuffer,
  Pointer<Uint32> pulOutBufferSize,
) =>
    _CertSelectionGetSerializedBlob(
      pcsi,
      ppOutBuffer,
      pulOutBufferSize,
    );

late final _CertSelectionGetSerializedBlob = _cryptui.lookupFunction<
    Int32 Function(
  Pointer<CERT_SELECTUI_INPUT> pcsi,
  Pointer<Pointer> ppOutBuffer,
  Pointer<Uint32> pulOutBufferSize,
),
    int Function(
  Pointer<CERT_SELECTUI_INPUT> pcsi,
  Pointer<Pointer> ppOutBuffer,
  Pointer<Uint32> pulOutBufferSize,
)>('CertSelectionGetSerializedBlob');

int CryptUIDlgCertMgr(
  Pointer<CRYPTUI_CERT_MGR_STRUCT> pCryptUICertMgr,
) =>
    _CryptUIDlgCertMgr(
      pCryptUICertMgr,
    );

late final _CryptUIDlgCertMgr = _cryptui.lookupFunction<
    Int32 Function(
  Pointer<CRYPTUI_CERT_MGR_STRUCT> pCryptUICertMgr,
),
    int Function(
  Pointer<CRYPTUI_CERT_MGR_STRUCT> pCryptUICertMgr,
)>('CryptUIDlgCertMgr');

Pointer<CERT_CONTEXT> CryptUIDlgSelectCertificateFromStore(
  Pointer hCertStore,
  int hwnd,
  Pointer<Utf16> pwszTitle,
  Pointer<Utf16> pwszDisplayString,
  int dwDontUseColumn,
  int dwFlags,
  Pointer pvReserved,
) =>
    _CryptUIDlgSelectCertificateFromStore(
      hCertStore,
      hwnd,
      pwszTitle,
      pwszDisplayString,
      dwDontUseColumn,
      dwFlags,
      pvReserved,
    );

late final _CryptUIDlgSelectCertificateFromStore = _cryptui.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  IntPtr hwnd,
  Pointer<Utf16> pwszTitle,
  Pointer<Utf16> pwszDisplayString,
  Uint32 dwDontUseColumn,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  int hwnd,
  Pointer<Utf16> pwszTitle,
  Pointer<Utf16> pwszDisplayString,
  int dwDontUseColumn,
  int dwFlags,
  Pointer pvReserved,
)>('CryptUIDlgSelectCertificateFromStore');

int CryptUIDlgViewCertificate(
  Pointer<CRYPTUI_VIEWCERTIFICATE_STRUCT> pCertViewInfo,
  Pointer<Int32> pfPropertiesChanged,
) =>
    _CryptUIDlgViewCertificate(
      pCertViewInfo,
      pfPropertiesChanged,
    );

late final _CryptUIDlgViewCertificate = _cryptui.lookupFunction<
    Int32 Function(
  Pointer<CRYPTUI_VIEWCERTIFICATE_STRUCT> pCertViewInfo,
  Pointer<Int32> pfPropertiesChanged,
),
    int Function(
  Pointer<CRYPTUI_VIEWCERTIFICATE_STRUCT> pCertViewInfo,
  Pointer<Int32> pfPropertiesChanged,
)>('CryptUIDlgViewCertificateW');

int CryptUIDlgViewContext(
  int dwContextType,
  Pointer pvContext,
  int hwnd,
  Pointer<Utf16> pwszTitle,
  int dwFlags,
  Pointer pvReserved,
) =>
    _CryptUIDlgViewContext(
      dwContextType,
      pvContext,
      hwnd,
      pwszTitle,
      dwFlags,
      pvReserved,
    );

late final _CryptUIDlgViewContext = _cryptui.lookupFunction<
    Int32 Function(
  Uint32 dwContextType,
  Pointer pvContext,
  IntPtr hwnd,
  Pointer<Utf16> pwszTitle,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  int dwContextType,
  Pointer pvContext,
  int hwnd,
  Pointer<Utf16> pwszTitle,
  int dwFlags,
  Pointer pvReserved,
)>('CryptUIDlgViewContext');

int CryptUIWizDigitalSign(
  int dwFlags,
  int hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_INFO> pDigitalSignInfo,
  Pointer<Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT>> ppSignContext,
) =>
    _CryptUIWizDigitalSign(
      dwFlags,
      hwndParent,
      pwszWizardTitle,
      pDigitalSignInfo,
      ppSignContext,
    );

late final _CryptUIWizDigitalSign = _cryptui.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_INFO> pDigitalSignInfo,
  Pointer<Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT>> ppSignContext,
),
    int Function(
  int dwFlags,
  int hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_INFO> pDigitalSignInfo,
  Pointer<Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT>> ppSignContext,
)>('CryptUIWizDigitalSign');

int CryptUIWizExport(
  int dwFlags,
  int hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_EXPORT_INFO> pExportInfo,
  Pointer pvoid,
) =>
    _CryptUIWizExport(
      dwFlags,
      hwndParent,
      pwszWizardTitle,
      pExportInfo,
      pvoid,
    );

late final _CryptUIWizExport = _cryptui.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_EXPORT_INFO> pExportInfo,
  Pointer pvoid,
),
    int Function(
  int dwFlags,
  int hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_EXPORT_INFO> pExportInfo,
  Pointer pvoid,
)>('CryptUIWizExport');

int CryptUIWizFreeDigitalSignContext(
  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT> pSignContext,
) =>
    _CryptUIWizFreeDigitalSignContext(
      pSignContext,
    );

late final _CryptUIWizFreeDigitalSignContext = _cryptui.lookupFunction<
    Int32 Function(
  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT> pSignContext,
),
    int Function(
  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT> pSignContext,
)>('CryptUIWizFreeDigitalSignContext');

int CryptUIWizImport(
  int dwFlags,
  int hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_IMPORT_SRC_INFO> pImportSrc,
  Pointer hDestCertStore,
) =>
    _CryptUIWizImport(
      dwFlags,
      hwndParent,
      pwszWizardTitle,
      pImportSrc,
      hDestCertStore,
    );

late final _CryptUIWizImport = _cryptui.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_IMPORT_SRC_INFO> pImportSrc,
  Pointer hDestCertStore,
),
    int Function(
  int dwFlags,
  int hwndParent,
  Pointer<Utf16> pwszWizardTitle,
  Pointer<CRYPTUI_WIZ_IMPORT_SRC_INFO> pImportSrc,
  Pointer hDestCertStore,
)>('CryptUIWizImport');
