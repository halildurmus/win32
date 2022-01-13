// IMFPMediaPlayerCallback.dart

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

import '../../system/com/IUnknown.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFPMediaPlayerCallback = '{766C8FFB-5FDB-4FEA-A28D-B912996F51BD}';

/// {@category Interface}
/// {@category com}
class IMFPMediaPlayerCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFPMediaPlayerCallback(Pointer<COMObject> ptr) : super(ptr);

  void OnMediaPlayerEvent(
    Pointer<MFP_EVENT_HEADER> pEventHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<MFP_EVENT_HEADER> pEventHeader,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<MFP_EVENT_HEADER> pEventHeader,
          )>()(
        ptr.ref.lpVtbl,
        pEventHeader,
      );
}
