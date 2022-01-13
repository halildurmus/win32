// IAMNetShowExProps.dart

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
const IID_IAMNetShowExProps = '{FA2AA8F5-8B62-11D0-A520-000000000000}';

/// {@category Interface}
/// {@category com}
class IAMNetShowExProps extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  IAMNetShowExProps(Pointer<COMObject> ptr) : super(ptr);

  int get SourceProtocol {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSourceProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSourceProtocol,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Bandwidth {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pBandwidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pBandwidth,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get ErrorCorrection {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrErrorCorrection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrErrorCorrection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CodecCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCodecCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCodecCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetCodecInstalled(
    int CodecNum,
    Pointer<Int16> pCodecInstalled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CodecNum,
            Pointer<Int16> pCodecInstalled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CodecNum,
            Pointer<Int16> pCodecInstalled,
          )>()(
        ptr.ref.lpVtbl,
        CodecNum,
        pCodecInstalled,
      );

  int GetCodecDescription(
    int CodecNum,
    Pointer<Pointer<Utf16>> pbstrCodecDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CodecNum,
            Pointer<Pointer<Utf16>> pbstrCodecDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CodecNum,
            Pointer<Pointer<Utf16>> pbstrCodecDescription,
          )>()(
        ptr.ref.lpVtbl,
        CodecNum,
        pbstrCodecDescription,
      );

  int GetCodecURL(
    int CodecNum,
    Pointer<Pointer<Utf16>> pbstrCodecURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CodecNum,
            Pointer<Pointer<Utf16>> pbstrCodecURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CodecNum,
            Pointer<Pointer<Utf16>> pbstrCodecURL,
          )>()(
        ptr.ref.lpVtbl,
        CodecNum,
        pbstrCodecURL,
      );

  double get CreationDate {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pCreationDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pCreationDate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get SourceLink {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSourceLink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSourceLink,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
