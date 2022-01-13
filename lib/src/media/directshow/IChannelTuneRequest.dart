// IChannelTuneRequest.dart

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
const IID_IChannelTuneRequest = '{0369B4E0-45B6-11D3-B650-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IChannelTuneRequest extends ITuneRequest {
  // vtable begins at 12, is 2 entries long.
  IChannelTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  int get Channel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Channel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Channel,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Channel(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Channel,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Channel,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_ChannelTuneRequest = '{0369B4E5-45B6-11D3-B650-00C04F79498E}';

/// {@category com}
class ChannelTuneRequest extends IChannelTuneRequest {
  ChannelTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  factory ChannelTuneRequest.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ChannelTuneRequest);
    final iid = calloc<GUID>()..ref.setGUID(IID_IChannelTuneRequest);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ChannelTuneRequest(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
