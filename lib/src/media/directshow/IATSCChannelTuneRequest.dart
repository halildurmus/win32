// IATSCChannelTuneRequest.dart

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

import '../../media/directshow/IChannelTuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IATSCChannelTuneRequest = '{0369B4E1-45B6-11D3-B650-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IATSCChannelTuneRequest extends IChannelTuneRequest {
  // vtable begins at 14, is 2 entries long.
  IATSCChannelTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  int get MinorChannel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MinorChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MinorChannel,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MinorChannel(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 MinorChannel,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int MinorChannel,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_ATSCChannelTuneRequest = '{0369B4E6-45B6-11D3-B650-00C04F79498E}';

/// {@category com}
class ATSCChannelTuneRequest extends IATSCChannelTuneRequest {
  ATSCChannelTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  factory ATSCChannelTuneRequest.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ATSCChannelTuneRequest);
    final iid = calloc<GUID>()..ref.setGUID(IID_IATSCChannelTuneRequest);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ATSCChannelTuneRequest(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
