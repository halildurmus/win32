// ITAddress2.dart

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

import '../../devices/tapi/ITAddress.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/IEnumPhone.dart';
import '../../devices/tapi/ITTerminal.dart';
import '../../devices/tapi/ITPhone.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITCallInfo.dart';

/// @nodoc
const IID_ITAddress2 = '{B0AE5D9B-BE51-46C9-B0F7-DFA8A22A8BC4}';

/// {@category Interface}
/// {@category com}
class ITAddress2 extends ITAddress {
  // vtable begins at 22, is 10 entries long.
  ITAddress2(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get Phones {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pPhones,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pPhones,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumeratePhones(
    Pointer<Pointer<COMObject>> ppEnumPhone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumPhone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumPhone,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumPhone,
      );

  int GetPhoneFromTerminal(
    Pointer<COMObject> pTerminal,
    Pointer<Pointer<COMObject>> ppPhone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTerminal,
            Pointer<Pointer<COMObject>> ppPhone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTerminal,
            Pointer<Pointer<COMObject>> ppPhone,
          )>()(
        ptr.ref.lpVtbl,
        pTerminal,
        ppPhone,
      );

  VARIANT get PreferredPhones {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pPhones,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pPhones,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumeratePreferredPhones(
    Pointer<Pointer<COMObject>> ppEnumPhone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumPhone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumPhone,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumPhone,
      );

  int get_EventFilter(
    int TapiEvent,
    int lSubEvent,
    Pointer<Int16> pEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 TapiEvent,
            Int32 lSubEvent,
            Pointer<Int16> pEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TapiEvent,
            int lSubEvent,
            Pointer<Int16> pEnable,
          )>()(
        ptr.ref.lpVtbl,
        TapiEvent,
        lSubEvent,
        pEnable,
      );

  int put_EventFilter(
    int TapiEvent,
    int lSubEvent,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 TapiEvent,
            Int32 lSubEvent,
            Int16 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TapiEvent,
            int lSubEvent,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        TapiEvent,
        lSubEvent,
        bEnable,
      );

  int DeviceSpecific(
    Pointer<COMObject> pCall,
    Pointer<Uint8> pParams,
    int dwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCall,
            Pointer<Uint8> pParams,
            Uint32 dwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCall,
            Pointer<Uint8> pParams,
            int dwSize,
          )>()(
        ptr.ref.lpVtbl,
        pCall,
        pParams,
        dwSize,
      );

  int DeviceSpecificVariant(
    Pointer<COMObject> pCall,
    VARIANT varDevSpecificByteArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCall,
            VARIANT varDevSpecificByteArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCall,
            VARIANT varDevSpecificByteArray,
          )>()(
        ptr.ref.lpVtbl,
        pCall,
        varDevSpecificByteArray,
      );

  int NegotiateExtVersion(
    int lLowVersion,
    int lHighVersion,
    Pointer<Int32> plExtVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLowVersion,
            Int32 lHighVersion,
            Pointer<Int32> plExtVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLowVersion,
            int lHighVersion,
            Pointer<Int32> plExtVersion,
          )>()(
        ptr.ref.lpVtbl,
        lLowVersion,
        lHighVersion,
        plExtVersion,
      );
}
