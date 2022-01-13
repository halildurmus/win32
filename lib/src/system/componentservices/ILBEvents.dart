// ILBEvents.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_ILBEvents = '{683130B4-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class ILBEvents extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ILBEvents(Pointer<COMObject> ptr) : super(ptr);

  int TargetUp(
    Pointer<Utf16> bstrServerName,
    Pointer<Utf16> bstrClsidEng,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrClsidEng,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrClsidEng,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        bstrClsidEng,
      );

  int TargetDown(
    Pointer<Utf16> bstrServerName,
    Pointer<Utf16> bstrClsidEng,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrClsidEng,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrServerName,
            Pointer<Utf16> bstrClsidEng,
          )>()(
        ptr.ref.lpVtbl,
        bstrServerName,
        bstrClsidEng,
      );

  int EngineDefined(
    Pointer<Utf16> bstrPropName,
    Pointer<VARIANT> varPropValue,
    Pointer<Utf16> bstrClsidEng,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> varPropValue,
            Pointer<Utf16> bstrClsidEng,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> varPropValue,
            Pointer<Utf16> bstrClsidEng,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        varPropValue,
        bstrClsidEng,
      );
}

/// @nodoc
const CLSID_LBEvents = '{ECABB0C1-7F19-11D2-978E-0000F8757E2A}';

/// {@category com}
class LBEvents extends ILBEvents {
  LBEvents(Pointer<COMObject> ptr) : super(ptr);

  factory LBEvents.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_LBEvents);
    final iid = calloc<GUID>()..ref.setGUID(IID_ILBEvents);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return LBEvents(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
