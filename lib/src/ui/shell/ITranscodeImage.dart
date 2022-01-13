// ITranscodeImage.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITranscodeImage = '{BAE86DDD-DC11-421C-B7AB-CC55D1D65C44}';

/// {@category Interface}
/// {@category com}
class ITranscodeImage extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITranscodeImage(Pointer<COMObject> ptr) : super(ptr);

  int TranscodeImage(
    Pointer<COMObject> pShellItem,
    int uiMaxWidth,
    int uiMaxHeight,
    int flags,
    Pointer<COMObject> pvImage,
    Pointer<Uint32> puiWidth,
    Pointer<Uint32> puiHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShellItem,
            Uint32 uiMaxWidth,
            Uint32 uiMaxHeight,
            Uint32 flags,
            Pointer<COMObject> pvImage,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShellItem,
            int uiMaxWidth,
            int uiMaxHeight,
            int flags,
            Pointer<COMObject> pvImage,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
          )>()(
        ptr.ref.lpVtbl,
        pShellItem,
        uiMaxWidth,
        uiMaxHeight,
        flags,
        pvImage,
        puiWidth,
        puiHeight,
      );
}
