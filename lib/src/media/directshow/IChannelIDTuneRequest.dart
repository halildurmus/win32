// IChannelIDTuneRequest.dart

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

import '../../media/directshow/ITuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IChannelIDTuneRequest = '{156EFF60-86F4-4E28-89FC-109799FD57EE}';

/// {@category Interface}
/// {@category com}
class IChannelIDTuneRequest extends ITuneRequest {
  // vtable begins at 12, is 2 entries long.
  IChannelIDTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get ChannelID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ChannelID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ChannelID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ChannelID(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> ChannelID,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> ChannelID,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_ChannelIDTuneRequest = '{3A9428A7-31A4-45E9-9EFB-E055BF7BB3DB}';

/// {@category com}
class ChannelIDTuneRequest extends IChannelIDTuneRequest {
  ChannelIDTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  factory ChannelIDTuneRequest.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ChannelIDTuneRequest);
    final iid = calloc<GUID>()..ref.setGUID(IID_IChannelIDTuneRequest);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ChannelIDTuneRequest(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
