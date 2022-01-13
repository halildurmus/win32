// IMFVideoRenderer.dart

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
import '../../media/mediafoundation/IMFTransform.dart';
import '../../media/mediafoundation/IMFVideoPresenter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoRenderer = '{DFDFD197-A9CA-43D8-B341-6AF3503792CD}';

/// {@category Interface}
/// {@category com}
class IMFVideoRenderer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFVideoRenderer(Pointer<COMObject> ptr) : super(ptr);

  int InitializeRenderer(
    Pointer<COMObject> pVideoMixer,
    Pointer<COMObject> pVideoPresenter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVideoMixer,
            Pointer<COMObject> pVideoPresenter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVideoMixer,
            Pointer<COMObject> pVideoPresenter,
          )>()(
        ptr.ref.lpVtbl,
        pVideoMixer,
        pVideoPresenter,
      );
}
