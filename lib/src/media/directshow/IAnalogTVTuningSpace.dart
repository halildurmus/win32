// IAnalogTVTuningSpace.dart

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

import '../../media/directshow/ITuningSpace.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IAnalogTVTuningSpace = '{2A6E293C-2595-11D3-B64C-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IAnalogTVTuningSpace extends ITuningSpace {
  // vtable begins at 26, is 8 entries long.
  IAnalogTVTuningSpace(Pointer<COMObject> ptr) : super(ptr);

  int get MinChannel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MinChannelVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MinChannelVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MinChannel(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 NewMinChannelVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int NewMinChannelVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get MaxChannel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MaxChannelVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MaxChannelVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MaxChannel(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 NewMaxChannelVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int NewMaxChannelVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get InputType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> InputTypeVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> InputTypeVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InputType(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(31)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 NewInputTypeVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int NewInputTypeVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CountryCode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> CountryCodeVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> CountryCodeVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CountryCode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(33)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 NewCountryCodeVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int NewCountryCodeVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_AnalogTVTuningSpace = '{8A674B4D-1F63-11D3-B64C-00C04F79498E}';

/// {@category com}
class AnalogTVTuningSpace extends IAnalogTVTuningSpace {
  AnalogTVTuningSpace(Pointer<COMObject> ptr) : super(ptr);

  factory AnalogTVTuningSpace.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AnalogTVTuningSpace);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAnalogTVTuningSpace);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AnalogTVTuningSpace(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
