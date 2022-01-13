// IMFTranscodeProfile.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTranscodeProfile = '{4ADFDBA3-7AB0-4953-A62B-461E7FF3DA1E}';

/// {@category Interface}
/// {@category com}
class IMFTranscodeProfile extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFTranscodeProfile(Pointer<COMObject> ptr) : super(ptr);

  int SetAudioAttributes(
    Pointer<COMObject> pAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAttrs,
          )>()(
        ptr.ref.lpVtbl,
        pAttrs,
      );

  int GetAudioAttributes(
    Pointer<Pointer<COMObject>> ppAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttrs,
          )>()(
        ptr.ref.lpVtbl,
        ppAttrs,
      );

  int SetVideoAttributes(
    Pointer<COMObject> pAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAttrs,
          )>()(
        ptr.ref.lpVtbl,
        pAttrs,
      );

  int GetVideoAttributes(
    Pointer<Pointer<COMObject>> ppAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttrs,
          )>()(
        ptr.ref.lpVtbl,
        ppAttrs,
      );

  int SetContainerAttributes(
    Pointer<COMObject> pAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAttrs,
          )>()(
        ptr.ref.lpVtbl,
        pAttrs,
      );

  int GetContainerAttributes(
    Pointer<Pointer<COMObject>> ppAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAttrs,
          )>()(
        ptr.ref.lpVtbl,
        ppAttrs,
      );
}
