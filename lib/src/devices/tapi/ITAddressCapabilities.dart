// ITAddressCapabilities.dart

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
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../devices/tapi/IEnumBstr.dart';

/// @nodoc
const IID_ITAddressCapabilities = '{8DF232F5-821B-11D1-BB5C-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITAddressCapabilities extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  ITAddressCapabilities(Pointer<COMObject> ptr) : super(ptr);

  int get_AddressCapability(
    int AddressCap,
    Pointer<Int32> plCapability,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressCap,
            Pointer<Int32> plCapability,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressCap,
            Pointer<Int32> plCapability,
          )>()(
        ptr.ref.lpVtbl,
        AddressCap,
        plCapability,
      );

  int get_AddressCapabilityString(
    int AddressCapString,
    Pointer<Pointer<Utf16>> ppCapabilityString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AddressCapString,
            Pointer<Pointer<Utf16>> ppCapabilityString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AddressCapString,
            Pointer<Pointer<Utf16>> ppCapabilityString,
          )>()(
        ptr.ref.lpVtbl,
        AddressCapString,
        ppCapabilityString,
      );

  VARIANT get CallTreatments {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateCallTreatments(
    Pointer<Pointer<COMObject>> ppEnumCallTreatment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCallTreatment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCallTreatment,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumCallTreatment,
      );

  VARIANT get CompletionMessages {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateCompletionMessages(
    Pointer<Pointer<COMObject>> ppEnumCompletionMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCompletionMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCompletionMessage,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumCompletionMessage,
      );

  VARIANT get DeviceClasses {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateDeviceClasses(
    Pointer<Pointer<COMObject>> ppEnumDeviceClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDeviceClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDeviceClass,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumDeviceClass,
      );
}
