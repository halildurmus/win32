// IMbnInterface.dart

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
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../networkmanagement/mobilebroadband/IMbnSubscriberInformation.dart';
import '../../system/com/structs.g.dart';
import '../../networkmanagement/mobilebroadband/IMbnConnection.dart';

/// @nodoc
const IID_IMbnInterface = '{DCBBBAB6-2001-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnInterface extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IMbnInterface(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get InterfaceID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> InterfaceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> InterfaceID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetInterfaceCapability(
    Pointer<MBN_INTERFACE_CAPS> interfaceCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MBN_INTERFACE_CAPS> interfaceCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MBN_INTERFACE_CAPS> interfaceCaps,
          )>()(
        ptr.ref.lpVtbl,
        interfaceCaps,
      );

  int GetSubscriberInformation(
    Pointer<Pointer<COMObject>> subscriberInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> subscriberInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> subscriberInformation,
          )>()(
        ptr.ref.lpVtbl,
        subscriberInformation,
      );

  int GetReadyState(
    Pointer<Int32> readyState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> readyState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> readyState,
          )>()(
        ptr.ref.lpVtbl,
        readyState,
      );

  int InEmergencyMode(
    Pointer<Int16> emergencyMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> emergencyMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> emergencyMode,
          )>()(
        ptr.ref.lpVtbl,
        emergencyMode,
      );

  int GetHomeProvider(
    Pointer<MBN_PROVIDER> homeProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MBN_PROVIDER> homeProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MBN_PROVIDER> homeProvider,
          )>()(
        ptr.ref.lpVtbl,
        homeProvider,
      );

  int GetPreferredProviders(
    Pointer<Pointer<SAFEARRAY>> preferredProviders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> preferredProviders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> preferredProviders,
          )>()(
        ptr.ref.lpVtbl,
        preferredProviders,
      );

  int SetPreferredProviders(
    Pointer<SAFEARRAY> preferredProviders,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> preferredProviders,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> preferredProviders,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        preferredProviders,
        requestID,
      );

  int GetVisibleProviders(
    Pointer<Uint32> age,
    Pointer<Pointer<SAFEARRAY>> visibleProviders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> age,
            Pointer<Pointer<SAFEARRAY>> visibleProviders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> age,
            Pointer<Pointer<SAFEARRAY>> visibleProviders,
          )>()(
        ptr.ref.lpVtbl,
        age,
        visibleProviders,
      );

  int ScanNetwork(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );

  int GetConnection(
    Pointer<Pointer<COMObject>> mbnConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> mbnConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> mbnConnection,
          )>()(
        ptr.ref.lpVtbl,
        mbnConnection,
      );
}
