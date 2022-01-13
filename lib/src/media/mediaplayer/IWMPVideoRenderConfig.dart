// IWMPVideoRenderConfig.dart

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
import '../../media/mediafoundation/IMFActivate.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPVideoRenderConfig = '{6D6CF803-1EC0-4C8D-B3CA-F18E27282074}';

/// {@category Interface}
/// {@category com}
class IWMPVideoRenderConfig extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMPVideoRenderConfig(Pointer<COMObject> ptr) : super(ptr);

  set presenterActivate(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(3)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> pActivate,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> pActivate,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
