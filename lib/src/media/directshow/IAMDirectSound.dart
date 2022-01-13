// IAMDirectSound.dart

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
import '../../media/audio/directsound/IDirectSound.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/directsound/IDirectSoundBuffer.dart';

/// @nodoc
const IID_IAMDirectSound = 'null';

/// {@category Interface}
/// {@category com}
class IAMDirectSound extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IAMDirectSound(Pointer<COMObject> ptr) : super(ptr);

  int GetDirectSoundInterface(
    Pointer<Pointer<COMObject>> lplpds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpds,
          )>()(
        ptr.ref.lpVtbl,
        lplpds,
      );

  int GetPrimaryBufferInterface(
    Pointer<Pointer<COMObject>> lplpdsb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpdsb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpdsb,
          )>()(
        ptr.ref.lpVtbl,
        lplpdsb,
      );

  int GetSecondaryBufferInterface(
    Pointer<Pointer<COMObject>> lplpdsb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpdsb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpdsb,
          )>()(
        ptr.ref.lpVtbl,
        lplpdsb,
      );

  int ReleaseDirectSoundInterface(
    Pointer<COMObject> lpds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpds,
          )>()(
        ptr.ref.lpVtbl,
        lpds,
      );

  int ReleasePrimaryBufferInterface(
    Pointer<COMObject> lpdsb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpdsb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpdsb,
          )>()(
        ptr.ref.lpVtbl,
        lpdsb,
      );

  int ReleaseSecondaryBufferInterface(
    Pointer<COMObject> lpdsb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpdsb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpdsb,
          )>()(
        ptr.ref.lpVtbl,
        lpdsb,
      );

  int SetFocusWindow(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
            Int32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetFocusWindow(
    Pointer<IntPtr> param0,
    Pointer<Int32> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> param0,
            Pointer<Int32> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> param0,
            Pointer<Int32> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
