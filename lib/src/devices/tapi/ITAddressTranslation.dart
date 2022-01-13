// ITAddressTranslation.dart

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
import '../../devices/tapi/ITAddressTranslationInfo.dart';
import '../../devices/tapi/IEnumLocation.dart';
import '../../specialTypes.dart';
import '../../devices/tapi/IEnumCallingCard.dart';

/// @nodoc
const IID_ITAddressTranslation = '{0C4D8F03-8DDB-11D1-A09E-00805FC147D3}';

/// {@category Interface}
/// {@category com}
class ITAddressTranslation extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ITAddressTranslation(Pointer<COMObject> ptr) : super(ptr);

  int TranslateAddress(
    Pointer<Utf16> pAddressToTranslate,
    int lCard,
    int lTranslateOptions,
    Pointer<Pointer<COMObject>> ppTranslated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAddressToTranslate,
            Int32 lCard,
            Int32 lTranslateOptions,
            Pointer<Pointer<COMObject>> ppTranslated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAddressToTranslate,
            int lCard,
            int lTranslateOptions,
            Pointer<Pointer<COMObject>> ppTranslated,
          )>()(
        ptr.ref.lpVtbl,
        pAddressToTranslate,
        lCard,
        lTranslateOptions,
        ppTranslated,
      );

  int TranslateDialog(
    int hwndOwner,
    Pointer<Utf16> pAddressIn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
            Pointer<Utf16> pAddressIn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
            Pointer<Utf16> pAddressIn,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
        pAddressIn,
      );

  int EnumerateLocations(
    Pointer<Pointer<COMObject>> ppEnumLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumLocation,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumLocation,
      );

  VARIANT get Locations {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int EnumerateCallingCards(
    Pointer<Pointer<COMObject>> ppEnumCallingCard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCallingCard,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCallingCard,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumCallingCard,
      );

  VARIANT get CallingCards {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
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
}
