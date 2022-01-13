// INetSharingConfiguration.dart

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
import '../../networkmanagement/windowsfirewall/structs.g.dart';
import '../../networkmanagement/windowsfirewall/INetSharingPortMappingCollection.dart';
import '../../networkmanagement/windowsfirewall/INetSharingPortMapping.dart';

/// @nodoc
const IID_INetSharingConfiguration = '{C08956B6-1CD3-11D1-B1C5-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetSharingConfiguration extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  INetSharingConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int get SharingEnabled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get SharingConnectionType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int DisableSharing() => ptr.ref.lpVtbl.value
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

  int EnableSharing(
    int Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int get InternetFirewallEnabled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int DisableInternetFirewall() => ptr.ref.lpVtbl.value
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

  int EnableInternetFirewall() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int get_EnumPortMappings(
    int Flags,
    Pointer<Pointer<COMObject>> ppColl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<COMObject>> ppColl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<COMObject>> ppColl,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        ppColl,
      );

  int AddPortMapping(
    Pointer<Utf16> bstrName,
    int ucIPProtocol,
    int usExternalPort,
    int usInternalPort,
    int dwOptions,
    Pointer<Utf16> bstrTargetNameOrIPAddress,
    int eTargetType,
    Pointer<Pointer<COMObject>> ppMapping,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Uint8 ucIPProtocol,
            Uint16 usExternalPort,
            Uint16 usInternalPort,
            Uint32 dwOptions,
            Pointer<Utf16> bstrTargetNameOrIPAddress,
            Int32 eTargetType,
            Pointer<Pointer<COMObject>> ppMapping,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            int ucIPProtocol,
            int usExternalPort,
            int usInternalPort,
            int dwOptions,
            Pointer<Utf16> bstrTargetNameOrIPAddress,
            int eTargetType,
            Pointer<Pointer<COMObject>> ppMapping,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        ucIPProtocol,
        usExternalPort,
        usInternalPort,
        dwOptions,
        bstrTargetNameOrIPAddress,
        eTargetType,
        ppMapping,
      );

  int RemovePortMapping(
    Pointer<COMObject> pMapping,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMapping,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMapping,
          )>()(
        ptr.ref.lpVtbl,
        pMapping,
      );
}
