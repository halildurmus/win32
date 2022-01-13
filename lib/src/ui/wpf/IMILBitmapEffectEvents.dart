// IMILBitmapEffectEvents.dart

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
import '../../ui/wpf/structs.g.dart';

/// @nodoc
const IID_IMILBitmapEffectEvents = '{2E880DD8-F8CE-457B-8199-D60BB3D7EF98}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMILBitmapEffectEvents(Pointer<COMObject> ptr) : super(ptr);

  int PropertyChange(
    Pointer<COMObject> pEffect,
    Pointer<Utf16> bstrPropertyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEffect,
            Pointer<Utf16> bstrPropertyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEffect,
            Pointer<Utf16> bstrPropertyName,
          )>()(
        ptr.ref.lpVtbl,
        pEffect,
        bstrPropertyName,
      );

  int DirtyRegion(
    Pointer<COMObject> pEffect,
    Pointer<MilRectD> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEffect,
            Pointer<MilRectD> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEffect,
            Pointer<MilRectD> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pEffect,
        pRect,
      );
}
