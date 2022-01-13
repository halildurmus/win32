// ISdoMachine.dart

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
import '../../specialTypes.dart';
import '../../networkmanagement/networkpolicyserver/structs.g.dart';

/// @nodoc
const IID_ISdoMachine = '{479F6E75-49A2-11D2-8ECA-00C04FC2F519}';

/// {@category Interface}
/// {@category com}
class ISdoMachine extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  ISdoMachine(Pointer<COMObject> ptr) : super(ptr);

  int Attach(
    Pointer<Utf16> bstrComputerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrComputerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrComputerName,
          )>()(
        ptr.ref.lpVtbl,
        bstrComputerName,
      );

  int GetDictionarySDO(
    Pointer<Pointer<COMObject>> ppDictionarySDO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDictionarySDO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDictionarySDO,
          )>()(
        ptr.ref.lpVtbl,
        ppDictionarySDO,
      );

  int GetServiceSDO(
    int eDataStore,
    Pointer<Utf16> bstrServiceName,
    Pointer<Pointer<COMObject>> ppServiceSDO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eDataStore,
            Pointer<Utf16> bstrServiceName,
            Pointer<Pointer<COMObject>> ppServiceSDO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eDataStore,
            Pointer<Utf16> bstrServiceName,
            Pointer<Pointer<COMObject>> ppServiceSDO,
          )>()(
        ptr.ref.lpVtbl,
        eDataStore,
        bstrServiceName,
        ppServiceSDO,
      );

  int GetUserSDO(
    int eDataStore,
    Pointer<Utf16> bstrUserName,
    Pointer<Pointer<COMObject>> ppUserSDO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eDataStore,
            Pointer<Utf16> bstrUserName,
            Pointer<Pointer<COMObject>> ppUserSDO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eDataStore,
            Pointer<Utf16> bstrUserName,
            Pointer<Pointer<COMObject>> ppUserSDO,
          )>()(
        ptr.ref.lpVtbl,
        eDataStore,
        bstrUserName,
        ppUserSDO,
      );

  int GetOSType(
    Pointer<Int32> eOSType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> eOSType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> eOSType,
          )>()(
        ptr.ref.lpVtbl,
        eOSType,
      );

  int GetDomainType(
    Pointer<Int32> eDomainType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> eDomainType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> eDomainType,
          )>()(
        ptr.ref.lpVtbl,
        eDomainType,
      );

  int IsDirectoryAvailable(
    Pointer<Int16> boolDirectoryAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> boolDirectoryAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> boolDirectoryAvailable,
          )>()(
        ptr.ref.lpVtbl,
        boolDirectoryAvailable,
      );

  int GetAttachedComputer(
    Pointer<Pointer<Utf16>> bstrComputerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrComputerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> bstrComputerName,
          )>()(
        ptr.ref.lpVtbl,
        bstrComputerName,
      );

  int GetSDOSchema(
    Pointer<Pointer<COMObject>> ppSDOSchema,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSDOSchema,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSDOSchema,
          )>()(
        ptr.ref.lpVtbl,
        ppSDOSchema,
      );
}

/// @nodoc
const CLSID_SdoMachine = '{E9218AE7-9E91-11D1-BF60-0080C7846BC0}';

/// {@category com}
class SdoMachine extends ISdoMachine {
  SdoMachine(Pointer<COMObject> ptr) : super(ptr);

  factory SdoMachine.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SdoMachine);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISdoMachine);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SdoMachine(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
