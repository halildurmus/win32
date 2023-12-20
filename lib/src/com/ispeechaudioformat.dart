// ispeechaudioformat.dart

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
const IID_ISpeechAudioFormat = '{e6e9c590-3e18-40e3-8299-061f98bde7c7}';

/// {@category com}
class ISpeechAudioFormat extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ISpeechAudioFormat(super.ptr);

  factory ISpeechAudioFormat.from(IUnknown interface) =>
      ISpeechAudioFormat(interface.toInterface(IID_ISpeechAudioFormat));

  int get type {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> AudioFormat)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> AudioFormat)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set type(int value) {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, Int32 AudioFormat)>>>()
        .value
        .asFunction<
            int Function(Pointer, int AudioFormat)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get guid {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Pointer<Utf16>> Guid)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Pointer<Utf16>> Guid)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set guid(Pointer<Utf16> value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, Pointer<Utf16> Guid)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Utf16> Guid)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int getWaveFormatEx(Pointer<Pointer<COMObject>> SpeechWaveFormatEx) => ptr
          .ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer,
                          Pointer<Pointer<COMObject>> SpeechWaveFormatEx)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> SpeechWaveFormatEx)>()(
      ptr.ref.lpVtbl, SpeechWaveFormatEx);

  int setWaveFormatEx(Pointer<COMObject> SpeechWaveFormatEx) => ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<COMObject> SpeechWaveFormatEx)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<COMObject> SpeechWaveFormatEx)>()(
      ptr.ref.lpVtbl, SpeechWaveFormatEx);
}
