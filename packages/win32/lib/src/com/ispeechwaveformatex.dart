// ispeechwaveformatex.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechWaveFormatEx = '{7a1ef0d5-1581-4741-88e4-209a49f11a10}';

/// {@category com}
class ISpeechWaveFormatEx extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  ISpeechWaveFormatEx(super.ptr);

  factory ISpeechWaveFormatEx.from(IUnknown interface) =>
      ISpeechWaveFormatEx(interface.toInterface(IID_ISpeechWaveFormatEx));

  int get formatTag {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int16> FormatTag)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int16> FormatTag)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set formatTag(int value) {
    final hr = (ptr.ref.vtable + 8)
        .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, Int16 FormatTag)>>>()
        .value
        .asFunction<
            int Function(Pointer, int FormatTag)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get channels {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int16> Channels)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int16> Channels)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set channels(int value) {
    final hr = (ptr.ref.vtable + 10)
        .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, Int16 Channels)>>>()
        .value
        .asFunction<
            int Function(Pointer, int Channels)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get samplesPerSec {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> SamplesPerSec)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> SamplesPerSec)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set samplesPerSec(int value) {
    final hr = (ptr.ref.vtable + 12)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, Int32 SamplesPerSec)>>>()
        .value
        .asFunction<
            int Function(Pointer, int SamplesPerSec)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get avgBytesPerSec {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Int32> AvgBytesPerSec)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Int32> AvgBytesPerSec)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set avgBytesPerSec(int value) {
    final hr = (ptr.ref.vtable + 14)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Int32 AvgBytesPerSec)>>>()
            .value
            .asFunction<int Function(Pointer, int AvgBytesPerSec)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get blockAlign {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int16> BlockAlign)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int16> BlockAlign)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set blockAlign(int value) {
    final hr = (ptr.ref.vtable + 16)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, Int16 BlockAlign)>>>()
        .value
        .asFunction<
            int Function(Pointer, int BlockAlign)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get bitsPerSample {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int16> BitsPerSample)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int16> BitsPerSample)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set bitsPerSample(int value) {
    final hr = (ptr.ref.vtable + 18)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, Int16 BitsPerSample)>>>()
        .value
        .asFunction<
            int Function(Pointer, int BitsPerSample)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  VARIANT get extraData {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = (ptr.ref.vtable + 19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<VARIANT> ExtraData)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<VARIANT> ExtraData)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set extraData(VARIANT value) {
    final hr = (ptr.ref.vtable + 20)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, VARIANT ExtraData)>>>()
        .value
        .asFunction<
            int Function(Pointer, VARIANT ExtraData)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
