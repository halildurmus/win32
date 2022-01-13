// IMILBitmapEffectFactory.dart

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
import '../../ui/wpf/IMILBitmapEffect.dart';
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectRenderContext.dart';

/// @nodoc
const IID_IMILBitmapEffectFactory = '{33A9DF34-A403-4EC7-B07E-BC0682370845}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectFactory extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMILBitmapEffectFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateEffect(
    Pointer<GUID> pguidEffect,
    Pointer<Pointer<COMObject>> ppEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidEffect,
            Pointer<Pointer<COMObject>> ppEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidEffect,
            Pointer<Pointer<COMObject>> ppEffect,
          )>()(
        ptr.ref.lpVtbl,
        pguidEffect,
        ppEffect,
      );

  int CreateContext(
    Pointer<Pointer<COMObject>> ppContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>()(
        ptr.ref.lpVtbl,
        ppContext,
      );

  int CreateEffectOuter(
    Pointer<Pointer<COMObject>> ppEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEffect,
          )>()(
        ptr.ref.lpVtbl,
        ppEffect,
      );
}
