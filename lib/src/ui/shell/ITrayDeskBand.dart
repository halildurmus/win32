// ITrayDeskBand.dart

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
const IID_ITrayDeskBand = '{6D67E846-5B9C-4DB8-9CBC-DDE12F4254F1}';

/// {@category Interface}
/// {@category com}
class ITrayDeskBand extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITrayDeskBand(Pointer<COMObject> ptr) : super(ptr);

  int ShowDeskBand(
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
      );

  int HideDeskBand(
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
      );

  int IsDeskBandShown(
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
      );

  int DeskBandRegistrationChanged() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

/// @nodoc
const CLSID_TrayDeskBand = '{E6442437-6C68-4F52-94DD-2CFED267EFB9}';

/// {@category com}
class TrayDeskBand extends ITrayDeskBand {
  TrayDeskBand(Pointer<COMObject> ptr) : super(ptr);

  factory TrayDeskBand.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_TrayDeskBand);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITrayDeskBand);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TrayDeskBand(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
