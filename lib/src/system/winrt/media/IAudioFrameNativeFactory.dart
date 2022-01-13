// IAudioFrameNativeFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/winrt/IInspectable.dart';
import '../../../media/mediafoundation/IMFSample.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioFrameNativeFactory = '{7BD67CF8-BF7D-43E6-AF8D-B170EE0C0110}';

/// {@category Interface}
/// {@category com}
class IAudioFrameNativeFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IAudioFrameNativeFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateFromMFSample(
    Pointer<COMObject> data,
    int forceReadOnly,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> data,
            Int32 forceReadOnly,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> data,
            int forceReadOnly,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        data,
        forceReadOnly,
        riid,
        ppv,
      );
}
