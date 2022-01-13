// IDirectInputEffect.dart

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
import '../../foundation/structs.g.dart';
import '../../devices/humaninterfacedevice/structs.g.dart';

/// @nodoc
const IID_IDirectInputEffect = '{E7E1F7C0-88D2-11D0-9AD0-00A0C9A06E35}';

/// {@category Interface}
/// {@category com}
class IDirectInputEffect extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IDirectInputEffect(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int param0,
    int param1,
    Pointer<GUID> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
            Uint32 param1,
            Pointer<GUID> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            Pointer<GUID> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int GetEffectGuid(
    Pointer<GUID> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetParameters(
    Pointer<DIEFFECT> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIEFFECT> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIEFFECT> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetParameters(
    Pointer<DIEFFECT> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIEFFECT> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIEFFECT> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int Start(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
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

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetEffectStatus(
    Pointer<Uint32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Download() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Unload() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Escape(
    Pointer<DIEFFESCAPE> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIEFFESCAPE> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIEFFESCAPE> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );
}
