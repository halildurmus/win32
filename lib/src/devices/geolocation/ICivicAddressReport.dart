// ICivicAddressReport.dart

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

import '../../devices/geolocation/ILocationReport.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICivicAddressReport = '{C0B19F70-4ADF-445D-87F2-CAD8FD711792}';

/// {@category Interface}
/// {@category com}
class ICivicAddressReport extends ILocationReport {
  // vtable begins at 6, is 7 entries long.
  ICivicAddressReport(Pointer<COMObject> ptr) : super(ptr);

  int GetAddressLine1(
    Pointer<Pointer<Utf16>> pbstrAddress1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrAddress1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrAddress1,
          )>()(
        ptr.ref.lpVtbl,
        pbstrAddress1,
      );

  int GetAddressLine2(
    Pointer<Pointer<Utf16>> pbstrAddress2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrAddress2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrAddress2,
          )>()(
        ptr.ref.lpVtbl,
        pbstrAddress2,
      );

  int GetCity(
    Pointer<Pointer<Utf16>> pbstrCity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCity,
          )>()(
        ptr.ref.lpVtbl,
        pbstrCity,
      );

  int GetStateProvince(
    Pointer<Pointer<Utf16>> pbstrStateProvince,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrStateProvince,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrStateProvince,
          )>()(
        ptr.ref.lpVtbl,
        pbstrStateProvince,
      );

  int GetPostalCode(
    Pointer<Pointer<Utf16>> pbstrPostalCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPostalCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPostalCode,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPostalCode,
      );

  int GetCountryRegion(
    Pointer<Pointer<Utf16>> pbstrCountryRegion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCountryRegion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCountryRegion,
          )>()(
        ptr.ref.lpVtbl,
        pbstrCountryRegion,
      );

  int GetDetailLevel(
    Pointer<Uint32> pDetailLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pDetailLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pDetailLevel,
          )>()(
        ptr.ref.lpVtbl,
        pDetailLevel,
      );
}

/// @nodoc
const CLSID_CivicAddressReport = '{D39E7BDD-7D05-46B8-8721-80CF035F57D7}';

/// {@category com}
class CivicAddressReport extends ICivicAddressReport {
  CivicAddressReport(Pointer<COMObject> ptr) : super(ptr);

  factory CivicAddressReport.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_CivicAddressReport);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICivicAddressReport);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return CivicAddressReport(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
