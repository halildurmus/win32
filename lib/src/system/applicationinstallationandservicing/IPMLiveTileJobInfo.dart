// IPMLiveTileJobInfo.dart

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
const IID_IPMLiveTileJobInfo = '{6009A81F-4710-4697-B5F6-2208F6057B8E}';

/// {@category Interface}
/// {@category com}
class IPMLiveTileJobInfo extends IUnknown {
  // vtable begins at 3, is 24 entries long.
  IPMLiveTileJobInfo(Pointer<COMObject> ptr) : super(ptr);

  GUID get ProductID {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pProductID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pProductID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get TileID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pTileID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pTileID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  FILETIME get NextSchedule {
    final retValuePtr = calloc<FILETIME>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pNextSchedule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pNextSchedule,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_NextSchedule(
    FILETIME ftNextSchedule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            FILETIME ftNextSchedule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            FILETIME ftNextSchedule,
          )>()(
        ptr.ref.lpVtbl,
        ftNextSchedule,
      );

  FILETIME get StartSchedule {
    final retValuePtr = calloc<FILETIME>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pStartSchedule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pStartSchedule,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_StartSchedule(
    FILETIME ftStartSchedule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            FILETIME ftStartSchedule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            FILETIME ftStartSchedule,
          )>()(
        ptr.ref.lpVtbl,
        ftStartSchedule,
      );

  int get IntervalDuration {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pIntervalDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pIntervalDuration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_IntervalDuration(
    int ulIntervalDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIntervalDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIntervalDuration,
          )>()(
        ptr.ref.lpVtbl,
        ulIntervalDuration,
      );

  int get RunForever {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> IsRunForever,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> IsRunForever,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_RunForever(
    int fRunForever,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRunForever,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRunForever,
          )>()(
        ptr.ref.lpVtbl,
        fRunForever,
      );

  int get MaxRunCount {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pMaxRunCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pMaxRunCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_MaxRunCount(
    int ulMaxRunCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulMaxRunCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulMaxRunCount,
          )>()(
        ptr.ref.lpVtbl,
        ulMaxRunCount,
      );

  int get RunCount {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRunCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRunCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_RunCount(
    int ulRunCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRunCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRunCount,
          )>()(
        ptr.ref.lpVtbl,
        ulRunCount,
      );

  int get RecurrenceType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRecurrenceType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRecurrenceType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_RecurrenceType(
    int ulRecurrenceType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRecurrenceType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRecurrenceType,
          )>()(
        ptr.ref.lpVtbl,
        ulRecurrenceType,
      );

  int get_TileXML(
    Pointer<Pointer<Uint8>> pTileXml,
    Pointer<Uint32> pcbTileXml,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> pTileXml,
            Pointer<Uint32> pcbTileXml,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> pTileXml,
            Pointer<Uint32> pcbTileXml,
          )>()(
        ptr.ref.lpVtbl,
        pTileXml,
        pcbTileXml,
      );

  int set_TileXML(
    Pointer<Uint8> pTileXml,
    int cbTileXml,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pTileXml,
            Uint32 cbTileXml,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pTileXml,
            int cbTileXml,
          )>()(
        ptr.ref.lpVtbl,
        pTileXml,
        cbTileXml,
      );

  int get_UrlXML(
    Pointer<Pointer<Uint8>> pUrlXML,
    Pointer<Uint32> pcbUrlXML,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> pUrlXML,
            Pointer<Uint32> pcbUrlXML,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> pUrlXML,
            Pointer<Uint32> pcbUrlXML,
          )>()(
        ptr.ref.lpVtbl,
        pUrlXML,
        pcbUrlXML,
      );

  int set_UrlXML(
    Pointer<Uint8> pUrlXML,
    int cbUrlXML,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pUrlXML,
            Uint32 cbUrlXML,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pUrlXML,
            int cbUrlXML,
          )>()(
        ptr.ref.lpVtbl,
        pUrlXML,
        cbUrlXML,
      );

  int get AttemptCount {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pAttemptCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pAttemptCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_AttemptCount(
    int ulAttemptCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAttemptCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAttemptCount,
          )>()(
        ptr.ref.lpVtbl,
        ulAttemptCount,
      );

  int get DownloadState {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pDownloadState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pDownloadState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_DownloadState(
    int ulDownloadState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulDownloadState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulDownloadState,
          )>()(
        ptr.ref.lpVtbl,
        ulDownloadState,
      );
}
