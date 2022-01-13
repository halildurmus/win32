// IFrequencyMap.dart

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

/// @nodoc
const IID_IFrequencyMap = '{06FB45C1-693C-4EA7-B79F-7A6A54D8DEF2}';

/// {@category Interface}
/// {@category com}
class IFrequencyMap extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IFrequencyMap(Pointer<COMObject> ptr) : super(ptr);

  int get_FrequencyMapping(
    Pointer<Uint32> ulCount,
    Pointer<Pointer<Uint32>> ppulList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> ulCount,
            Pointer<Pointer<Uint32>> ppulList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> ulCount,
            Pointer<Pointer<Uint32>> ppulList,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        ppulList,
      );

  int put_FrequencyMapping(
    int ulCount,
    Pointer<Uint32> pList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<Uint32> pList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<Uint32> pList,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        pList,
      );

  int get CountryCode {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulCountryCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulCountryCode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CountryCode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulCountryCode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulCountryCode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_DefaultFrequencyMapping(
    int ulCountryCode,
    Pointer<Uint32> pulCount,
    Pointer<Pointer<Uint32>> ppulList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCountryCode,
            Pointer<Uint32> pulCount,
            Pointer<Pointer<Uint32>> ppulList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCountryCode,
            Pointer<Uint32> pulCount,
            Pointer<Pointer<Uint32>> ppulList,
          )>()(
        ptr.ref.lpVtbl,
        ulCountryCode,
        pulCount,
        ppulList,
      );

  int get_CountryCodeList(
    Pointer<Uint32> pulCount,
    Pointer<Pointer<Uint32>> ppulList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulCount,
            Pointer<Pointer<Uint32>> ppulList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulCount,
            Pointer<Pointer<Uint32>> ppulList,
          )>()(
        ptr.ref.lpVtbl,
        pulCount,
        ppulList,
      );
}
