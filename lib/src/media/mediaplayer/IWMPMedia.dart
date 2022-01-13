// IWMPMedia.dart

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
import '../../media/mediaplayer/IWMPMedia.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';

/// @nodoc
const IID_IWMPMedia = '{94D55E95-3FAC-11D3-B155-00C04F79FAA6}';

/// {@category Interface}
/// {@category com}
class IWMPMedia extends IDispatch {
  // vtable begins at 7, is 18 entries long.
  IWMPMedia(Pointer<COMObject> ptr) : super(ptr);

  int get_isIdentical(
    Pointer<COMObject> pIWMPMedia,
    Pointer<Int16> pvbool,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWMPMedia,
            Pointer<Int16> pvbool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWMPMedia,
            Pointer<Int16> pvbool,
          )>()(
        ptr.ref.lpVtbl,
        pIWMPMedia,
        pvbool,
      );

  Pointer<Utf16> get sourceURL {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSourceURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSourceURL,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set name(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get imageSourceWidth {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pWidth,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get imageSourceHeight {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pHeight,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get markerCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMarkerCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMarkerCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getMarkerTime(
    int MarkerNum,
    Pointer<Double> pMarkerTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MarkerNum,
            Pointer<Double> pMarkerTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MarkerNum,
            Pointer<Double> pMarkerTime,
          )>()(
        ptr.ref.lpVtbl,
        MarkerNum,
        pMarkerTime,
      );

  int getMarkerName(
    int MarkerNum,
    Pointer<Pointer<Utf16>> pbstrMarkerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MarkerNum,
            Pointer<Pointer<Utf16>> pbstrMarkerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MarkerNum,
            Pointer<Pointer<Utf16>> pbstrMarkerName,
          )>()(
        ptr.ref.lpVtbl,
        MarkerNum,
        pbstrMarkerName,
      );

  double get duration {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pDuration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get durationString {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDuration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get attributeCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getAttributeName(
    int lIndex,
    Pointer<Pointer<Utf16>> pbstrItemName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<Utf16>> pbstrItemName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<Utf16>> pbstrItemName,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        pbstrItemName,
      );

  int getItemInfo(
    Pointer<Utf16> bstrItemName,
    Pointer<Pointer<Utf16>> pbstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
        pbstrVal,
      );

  int setItemInfo(
    Pointer<Utf16> bstrItemName,
    Pointer<Utf16> bstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
        bstrVal,
      );

  int getItemInfoByAtom(
    int lAtom,
    Pointer<Pointer<Utf16>> pbstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lAtom,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lAtom,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>()(
        ptr.ref.lpVtbl,
        lAtom,
        pbstrVal,
      );

  int isMemberOf(
    Pointer<COMObject> pPlaylist,
    Pointer<Int16> pvarfIsMemberOf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPlaylist,
            Pointer<Int16> pvarfIsMemberOf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPlaylist,
            Pointer<Int16> pvarfIsMemberOf,
          )>()(
        ptr.ref.lpVtbl,
        pPlaylist,
        pvarfIsMemberOf,
      );

  int isReadOnlyItem(
    Pointer<Utf16> bstrItemName,
    Pointer<Int16> pvarfIsReadOnly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Int16> pvarfIsReadOnly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Int16> pvarfIsReadOnly,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
        pvarfIsReadOnly,
      );
}
