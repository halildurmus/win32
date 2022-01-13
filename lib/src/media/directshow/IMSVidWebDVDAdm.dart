// IMSVidWebDVDAdm.dart

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

/// @nodoc
const IID_IMSVidWebDVDAdm = '{B8BE681A-EB2C-47F0-B415-94D5452F0E05}';

/// {@category Interface}
/// {@category com}
class IMSVidWebDVDAdm extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  IMSVidWebDVDAdm(Pointer<COMObject> ptr) : super(ptr);

  int ChangePassword(
    Pointer<Utf16> strUserName,
    Pointer<Utf16> strOld,
    Pointer<Utf16> strNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strOld,
            Pointer<Utf16> strNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strOld,
            Pointer<Utf16> strNew,
          )>()(
        ptr.ref.lpVtbl,
        strUserName,
        strOld,
        strNew,
      );

  int SaveParentalLevel(
    int level,
    Pointer<Utf16> strUserName,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 level,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int level,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        level,
        strUserName,
        strPassword,
      );

  int SaveParentalCountry(
    int country,
    Pointer<Utf16> strUserName,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 country,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int country,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        country,
        strUserName,
        strPassword,
      );

  int ConfirmPassword(
    Pointer<Utf16> strUserName,
    Pointer<Utf16> strPassword,
    Pointer<Int16> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
            Pointer<Int16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strUserName,
            Pointer<Utf16> strPassword,
            Pointer<Int16> pVal,
          )>()(
        ptr.ref.lpVtbl,
        strUserName,
        strPassword,
        pVal,
      );

  int GetParentalLevel(
    Pointer<Int32> lLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lLevel,
          )>()(
        ptr.ref.lpVtbl,
        lLevel,
      );

  int GetParentalCountry(
    Pointer<Int32> lCountry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lCountry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lCountry,
          )>()(
        ptr.ref.lpVtbl,
        lCountry,
      );

  int get DefaultAudioLCID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DefaultAudioLCID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get DefaultSubpictureLCID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DefaultSubpictureLCID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get DefaultMenuLCID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DefaultMenuLCID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get BookmarkOnStop {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BookmarkOnStop(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_MSVidWebDVDAdm = '{FA7C375B-66A7-4280-879D-FD459C84BB02}';

/// {@category com}
class MSVidWebDVDAdm extends IMSVidWebDVDAdm {
  MSVidWebDVDAdm(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidWebDVDAdm.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidWebDVDAdm);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidWebDVDAdm);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidWebDVDAdm(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
