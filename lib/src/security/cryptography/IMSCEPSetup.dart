// IMSCEPSetup.dart

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

/// @nodoc
const IID_IMSCEPSetup = '{4F7761BB-9F3B-4592-9EE0-9A73259C313E}';

/// {@category Interface}
/// {@category com}
class IMSCEPSetup extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  IMSCEPSetup(Pointer<COMObject> ptr) : super(ptr);

  int get MSCEPErrorId {
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

  Pointer<Utf16> get MSCEPErrorString {
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

  int InitializeDefaults() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetMSCEPSetupProperty(
    int propertyId,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        pVal,
      );

  int SetMSCEPSetupProperty(
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

  int SetAccountInformation(
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrPassword,
          )>()(
        ptr.ref.lpVtbl,
        bstrUserName,
        bstrPassword,
      );

  int IsMSCEPStoreEmpty(
    Pointer<Int16> pbEmpty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbEmpty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbEmpty,
          )>()(
        ptr.ref.lpVtbl,
        pbEmpty,
      );

  int GetProviderNameList(
    int bExchange,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bExchange,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bExchange,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bExchange,
        pVal,
      );

  int GetKeyLengthList(
    int bExchange,
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
            Int16 bExchange,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bExchange,
            Pointer<Utf16> bstrProviderName,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        bExchange,
        bstrProviderName,
        pVal,
      );

  int Install() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int PreUnInstall() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int PostUnInstall() => ptr.ref.lpVtbl.value
          .elementAt(18)
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
