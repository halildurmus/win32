// IRDPSRAPIVirtualChannelManager.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/desktopsharing/IRDPSRAPIVirtualChannel.dart';
import '../../system/desktopsharing/structs.g.dart';

/// @nodoc
const IID_IRDPSRAPIVirtualChannelManager =
    '{0D11C661-5D0D-4EE4-89DF-2166AE1FDFED}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIVirtualChannelManager extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IRDPSRAPIVirtualChannelManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    VARIANT item,
    Pointer<Pointer<COMObject>> pChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT item,
            Pointer<Pointer<COMObject>> pChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT item,
            Pointer<Pointer<COMObject>> pChannel,
          )>()(
        ptr.ref.lpVtbl,
        item,
        pChannel,
      );

  int CreateVirtualChannel(
    Pointer<Utf16> bstrChannelName,
    int Priority,
    int ChannelFlags,
    Pointer<Pointer<COMObject>> ppChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrChannelName,
            Int32 Priority,
            Uint32 ChannelFlags,
            Pointer<Pointer<COMObject>> ppChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrChannelName,
            int Priority,
            int ChannelFlags,
            Pointer<Pointer<COMObject>> ppChannel,
          )>()(
        ptr.ref.lpVtbl,
        bstrChannelName,
        Priority,
        ChannelFlags,
        ppChannel,
      );
}
