// ID2D1EffectImpl.dart

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
import '../../graphics/direct2d/ID2D1EffectContext.dart';
import '../../graphics/direct2d/ID2D1TransformGraph.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1EffectImpl = '{A248FD3F-3E6C-4E63-9F03-7F68ECC91DB9}';

/// {@category Interface}
/// {@category com}
class ID2D1EffectImpl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID2D1EffectImpl(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> effectContext,
    Pointer<COMObject> transformGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> effectContext,
            Pointer<COMObject> transformGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> effectContext,
            Pointer<COMObject> transformGraph,
          )>()(
        ptr.ref.lpVtbl,
        effectContext,
        transformGraph,
      );

  int PrepareForRender(
    int changeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 changeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int changeType,
          )>()(
        ptr.ref.lpVtbl,
        changeType,
      );

  int SetGraph(
    Pointer<COMObject> transformGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> transformGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> transformGraph,
          )>()(
        ptr.ref.lpVtbl,
        transformGraph,
      );
}
