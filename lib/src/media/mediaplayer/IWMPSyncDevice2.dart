// IWMPSyncDevice2.dart

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

import '../../media/mediaplayer/IWMPSyncDevice.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPSyncDevice2 = '{88AFB4B2-140A-44D2-91E6-4543DA467CD1}';

/// {@category Interface}
/// {@category com}
class IWMPSyncDevice2 extends IWMPSyncDevice {
  // vtable begins at 19, is 1 entries long.
  IWMPSyncDevice2(Pointer<COMObject> ptr) : super(ptr);

  int setItemInfo(
    Pointer<Utf16> bstrItemName,
    Pointer<Utf16> bstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Utf16> bstrVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
        bstrVal,
      );
}
