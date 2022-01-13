// IRawCDImageCreator.dart

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
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';
import '../../storage/imapi/structs.g.dart';
import '../../storage/imapi/IRawCDImageTrackInfo.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IRawCDImageCreator = '{25983550-9D65-49CE-B335-40630D901227}';

/// {@category Interface}
/// {@category com}
class IRawCDImageCreator extends IDispatch {
  // vtable begins at 7, is 19 entries long.
  IRawCDImageCreator(Pointer<COMObject> ptr) : super(ptr);

  int CreateResultImage(
    Pointer<Pointer<COMObject>> resultStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> resultStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> resultStream,
          )>()(
        ptr.ref.lpVtbl,
        resultStream,
      );

  int AddTrack(
    int dataType,
    Pointer<COMObject> data,
    Pointer<Int32> trackIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dataType,
            Pointer<COMObject> data,
            Pointer<Int32> trackIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dataType,
            Pointer<COMObject> data,
            Pointer<Int32> trackIndex,
          )>()(
        ptr.ref.lpVtbl,
        dataType,
        data,
        trackIndex,
      );

  int AddSpecialPregap(
    Pointer<COMObject> data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> data,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> data,
          )>()(
        ptr.ref.lpVtbl,
        data,
      );

  int AddSubcodeRWGenerator(
    Pointer<COMObject> subcode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> subcode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> subcode,
          )>()(
        ptr.ref.lpVtbl,
        subcode,
      );

  set ResultingImageType(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ResultingImageType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get StartOfLeadout {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set StartOfLeadoutLimit(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get StartOfLeadoutLimit {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DisableGaplessAudio(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get DisableGaplessAudio {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MediaCatalogNumber(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get MediaCatalogNumber {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set StartingTrackNumber(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get StartingTrackNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_TrackInfo(
    int trackIndex,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 trackIndex,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int trackIndex,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        trackIndex,
        value,
      );

  int get NumberOfExistingTracks {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastUsedUserSectorInImage {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get ExpectedTableOfContents {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
