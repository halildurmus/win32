// IFeedsManager.dart

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
import '../../media/mediaplayer/structs.g.dart';

/// @nodoc
const IID_IFeedsManager = '{A74029CC-1F1A-4906-88F0-810638D86591}';

/// {@category Interface}
/// {@category com}
class IFeedsManager extends IDispatch {
  // vtable begins at 7, is 16 entries long.
  IFeedsManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get RootFolder {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> disp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> disp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int IsSubscribed(
    Pointer<Utf16> feedUrl,
    Pointer<Int16> subscribed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> feedUrl,
            Pointer<Int16> subscribed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> feedUrl,
            Pointer<Int16> subscribed,
          )>()(
        ptr.ref.lpVtbl,
        feedUrl,
        subscribed,
      );

  int ExistsFeed(
    Pointer<Utf16> feedPath,
    Pointer<Int16> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> feedPath,
            Pointer<Int16> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> feedPath,
            Pointer<Int16> exists,
          )>()(
        ptr.ref.lpVtbl,
        feedPath,
        exists,
      );

  int GetFeed(
    Pointer<Utf16> feedPath,
    Pointer<Pointer<COMObject>> disp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> feedPath,
            Pointer<Pointer<COMObject>> disp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> feedPath,
            Pointer<Pointer<COMObject>> disp,
          )>()(
        ptr.ref.lpVtbl,
        feedPath,
        disp,
      );

  int GetFeedByUrl(
    Pointer<Utf16> feedUrl,
    Pointer<Pointer<COMObject>> disp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> feedUrl,
            Pointer<Pointer<COMObject>> disp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> feedUrl,
            Pointer<Pointer<COMObject>> disp,
          )>()(
        ptr.ref.lpVtbl,
        feedUrl,
        disp,
      );

  int ExistsFolder(
    Pointer<Utf16> folderPath,
    Pointer<Int16> exists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> folderPath,
            Pointer<Int16> exists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> folderPath,
            Pointer<Int16> exists,
          )>()(
        ptr.ref.lpVtbl,
        folderPath,
        exists,
      );

  int GetFolder(
    Pointer<Utf16> folderPath,
    Pointer<Pointer<COMObject>> disp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> folderPath,
            Pointer<Pointer<COMObject>> disp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> folderPath,
            Pointer<Pointer<COMObject>> disp,
          )>()(
        ptr.ref.lpVtbl,
        folderPath,
        disp,
      );

  int DeleteFeed(
    Pointer<Utf16> feedPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> feedPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> feedPath,
          )>()(
        ptr.ref.lpVtbl,
        feedPath,
      );

  int DeleteFolder(
    Pointer<Utf16> folderPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> folderPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> folderPath,
          )>()(
        ptr.ref.lpVtbl,
        folderPath,
      );

  int BackgroundSync(
    int action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int action,
          )>()(
        ptr.ref.lpVtbl,
        action,
      );

  int get BackgroundSyncStatus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> status,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get DefaultInterval {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> minutes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> minutes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DefaultInterval(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 minutes,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int minutes,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AsyncSyncAll() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int Normalize(
    Pointer<Utf16> feedXmlIn,
    Pointer<Pointer<Utf16>> feedXmlOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> feedXmlIn,
            Pointer<Pointer<Utf16>> feedXmlOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> feedXmlIn,
            Pointer<Pointer<Utf16>> feedXmlOut,
          )>()(
        ptr.ref.lpVtbl,
        feedXmlIn,
        feedXmlOut,
      );

  int get ItemCountLimit {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> itemCountLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> itemCountLimit,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_FeedsManager = '{FAEB54C4-F66F-4806-83A0-805299F5E3AD}';

/// {@category com}
class FeedsManager extends IFeedsManager {
  FeedsManager(Pointer<COMObject> ptr) : super(ptr);

  factory FeedsManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FeedsManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFeedsManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FeedsManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
