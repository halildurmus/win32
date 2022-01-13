// IWMPDownloadCollection.dart

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
import '../../media/mediaplayer/IWMPDownloadItem2.dart';

/// @nodoc
const IID_IWMPDownloadCollection = '{0A319C7F-85F9-436C-B88E-82FD88000E1C}';

/// {@category Interface}
/// {@category com}
class IWMPDownloadCollection extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IWMPDownloadCollection(Pointer<COMObject> ptr) : super(ptr);

  int get id {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int item(
    int lItem,
    Pointer<Pointer<COMObject>> ppDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lItem,
            Pointer<Pointer<COMObject>> ppDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lItem,
            Pointer<Pointer<COMObject>> ppDownload,
          )>()(
        ptr.ref.lpVtbl,
        lItem,
        ppDownload,
      );

  int startDownload(
    Pointer<Utf16> bstrSourceURL,
    Pointer<Utf16> bstrType,
    Pointer<Pointer<COMObject>> ppDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSourceURL,
            Pointer<Utf16> bstrType,
            Pointer<Pointer<COMObject>> ppDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSourceURL,
            Pointer<Utf16> bstrType,
            Pointer<Pointer<COMObject>> ppDownload,
          )>()(
        ptr.ref.lpVtbl,
        bstrSourceURL,
        bstrType,
        ppDownload,
      );

  int removeItem(
    int lItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lItem,
          )>()(
        ptr.ref.lpVtbl,
        lItem,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
