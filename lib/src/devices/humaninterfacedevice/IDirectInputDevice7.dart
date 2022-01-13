// IDirectInputDevice7W.dart

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

import '../../devices/humaninterfacedevice/IDirectInputDevice2.dart';
import '../../foundation/structs.g.dart';
import '../../devices/humaninterfacedevice/callbacks.g.dart';
import '../../devices/humaninterfacedevice/structs.g.dart';

/// @nodoc
const IID_IDirectInputDevice7W = '{57D7C6BD-2356-11D3-8E9D-00C04F6844AE}';

/// {@category Interface}
/// {@category com}
class IDirectInputDevice7W extends IDirectInputDevice2W {
  // vtable begins at 27, is 2 entries long.
  IDirectInputDevice7W(Pointer<COMObject> ptr) : super(ptr);

  int EnumEffectsInFile(
    Pointer<Utf16> param0,
    Pointer<NativeFunction<LPDIENUMEFFECTSINFILECALLBACK>> param1,
    Pointer param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<NativeFunction<LPDIENUMEFFECTSINFILECALLBACK>> param1,
            Pointer param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<NativeFunction<LPDIENUMEFFECTSINFILECALLBACK>> param1,
            Pointer param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int WriteEffectToFile(
    Pointer<Utf16> param0,
    int param1,
    Pointer<DIFILEEFFECT> param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Uint32 param1,
            Pointer<DIFILEEFFECT> param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            int param1,
            Pointer<DIFILEEFFECT> param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );
}
