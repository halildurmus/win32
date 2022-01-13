// ICertSrvSetup.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../specialTypes.dart';
import '../../security/cryptography/ICertSrvSetupKeyInformationCollection.dart';
import '../../security/cryptography/ICertSrvSetupKeyInformation.dart';

/// @nodoc
const IID_ICertSrvSetup = '{B760A1BB-4784-44C0-8F12-555F0780FF25}';

/// {@category Interface}
/// {@category com}
class ICertSrvSetup extends IDispatch {
  // vtable begins at 7, is 20 entries long.
  ICertSrvSetup(Pointer<COMObject> ptr) : super(ptr);

  int get CAErrorId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get CAErrorString {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int InitializeDefaults(
    int bServer,
    int bClient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bServer,
            Int16 bClient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bServer,
            int bClient,
          )>()(
        ptr.ref.lpVtbl,
        bServer,
        bClient,
      );

  int GetCASetupProperty(
    int propertyId,
    Pointer<VARIANT> pPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        pPropertyValue,
      );

  int SetCASetupProperty(
    int propertyId,
    Pointer<VARIANT> pPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        pPropertyValue,
      );

  int IsPropertyEditable(
    int propertyId,
    Pointer<Int16> pbEditable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            Pointer<Int16> pbEditable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            Pointer<Int16> pbEditable,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        pbEditable,
      );

  int GetSupportedCATypes(
    Pointer<VARIANT> pCATypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pCATypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pCATypes,
          )>()(
        ptr.ref.lpVtbl,
        pCATypes,
      );

  int GetProviderNameList(
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetKeyLengthList(
    Pointer<Utf16> bstrProviderName,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrProviderName,
        pVal,
      );

  int GetHashAlgorithmList(
    Pointer<Utf16> bstrProviderName,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrProviderName,
        pVal,
      );

  int GetPrivateKeyContainerList(
    Pointer<Utf16> bstrProviderName,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrProviderName,
        pVal,
      );

  int GetExistingCACertificates(
    Pointer<Pointer<COMObject>> ppVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(
        ptr.ref.lpVtbl,
        ppVal,
      );

  int CAImportPFX(
    Pointer<Utf16> bstrFileName,
    Pointer<Utf16> bstrPasswd,
    int bOverwriteExistingKey,
    Pointer<Pointer<COMObject>> ppVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Pointer<Utf16> bstrPasswd,
            Int16 bOverwriteExistingKey,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Pointer<Utf16> bstrPasswd,
            int bOverwriteExistingKey,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrFileName,
        bstrPasswd,
        bOverwriteExistingKey,
        ppVal,
      );

  int SetCADistinguishedName(
    Pointer<Utf16> bstrCADN,
    int bIgnoreUnicode,
    int bOverwriteExistingKey,
    int bOverwriteExistingCAInDS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCADN,
            Int16 bIgnoreUnicode,
            Int16 bOverwriteExistingKey,
            Int16 bOverwriteExistingCAInDS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCADN,
            int bIgnoreUnicode,
            int bOverwriteExistingKey,
            int bOverwriteExistingCAInDS,
          )>()(
        ptr.ref.lpVtbl,
        bstrCADN,
        bIgnoreUnicode,
        bOverwriteExistingKey,
        bOverwriteExistingCAInDS,
      );

  int SetDatabaseInformation(
    Pointer<Utf16> bstrDBDirectory,
    Pointer<Utf16> bstrLogDirectory,
    Pointer<Utf16> bstrSharedFolder,
    int bForceOverwrite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDBDirectory,
            Pointer<Utf16> bstrLogDirectory,
            Pointer<Utf16> bstrSharedFolder,
            Int16 bForceOverwrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDBDirectory,
            Pointer<Utf16> bstrLogDirectory,
            Pointer<Utf16> bstrSharedFolder,
            int bForceOverwrite,
          )>()(
        ptr.ref.lpVtbl,
        bstrDBDirectory,
        bstrLogDirectory,
        bstrSharedFolder,
        bForceOverwrite,
      );

  int SetParentCAInformation(
    Pointer<Utf16> bstrCAConfiguration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCAConfiguration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCAConfiguration,
          )>()(
        ptr.ref.lpVtbl,
        bstrCAConfiguration,
      );

  int SetWebCAInformation(
    Pointer<Utf16> bstrCAConfiguration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCAConfiguration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCAConfiguration,
          )>()(
        ptr.ref.lpVtbl,
        bstrCAConfiguration,
      );

  int Install() => ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int PreUnInstall(
    int bClientOnly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bClientOnly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bClientOnly,
          )>()(
        ptr.ref.lpVtbl,
        bClientOnly,
      );

  int PostUnInstall() => ptr.ref.lpVtbl.value
          .elementAt(26)
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
}
