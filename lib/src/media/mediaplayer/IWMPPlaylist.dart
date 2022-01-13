// IWMPPlaylist.dart

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
import '../../media/mediaplayer/IWMPMedia.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';

/// @nodoc
const IID_IWMPPlaylist = '{D5F0F4F1-130C-11D3-B14E-00C04F79FAA6}';

/// {@category Interface}
/// {@category com}
class IWMPPlaylist extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  IWMPPlaylist(Pointer<COMObject> ptr) : super(ptr);

  int get count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
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

  Pointer<Utf16> get name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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
        .elementAt(9)
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

  int get attributeCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int get_attributeName(
    int lIndex,
    Pointer<Pointer<Utf16>> pbstrAttributeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<Utf16>> pbstrAttributeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<Utf16>> pbstrAttributeName,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        pbstrAttributeName,
      );

  int get_item(
    int lIndex,
    Pointer<Pointer<COMObject>> ppIWMPMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<COMObject>> ppIWMPMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<COMObject>> ppIWMPMedia,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        ppIWMPMedia,
      );

  int getItemInfo(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<Utf16>> pbstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pbstrVal,
      );

  int setItemInfo(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrValue,
      );

  int get_isIdentical(
    Pointer<COMObject> pIWMPPlaylist,
    Pointer<Int16> pvbool,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWMPPlaylist,
            Pointer<Int16> pvbool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWMPPlaylist,
            Pointer<Int16> pvbool,
          )>()(
        ptr.ref.lpVtbl,
        pIWMPPlaylist,
        pvbool,
      );

  int clear() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int insertItem(
    int lIndex,
    Pointer<COMObject> pIWMPMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<COMObject> pIWMPMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<COMObject> pIWMPMedia,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        pIWMPMedia,
      );

  int appendItem(
    Pointer<COMObject> pIWMPMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWMPMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWMPMedia,
          )>()(
        ptr.ref.lpVtbl,
        pIWMPMedia,
      );

  int removeItem(
    Pointer<COMObject> pIWMPMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWMPMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWMPMedia,
          )>()(
        ptr.ref.lpVtbl,
        pIWMPMedia,
      );

  int moveItem(
    int lIndexOld,
    int lIndexNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndexOld,
            Int32 lIndexNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndexOld,
            int lIndexNew,
          )>()(
        ptr.ref.lpVtbl,
        lIndexOld,
        lIndexNew,
      );
}
