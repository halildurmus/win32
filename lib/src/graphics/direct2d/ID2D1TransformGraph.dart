// ID2D1TransformGraph.dart

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
import '../../graphics/direct2d/ID2D1TransformNode.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1TransformGraph = '{13D29038-C3E6-4034-9081-13B53A417992}';

/// {@category Interface}
/// {@category com}
class ID2D1TransformGraph extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ID2D1TransformGraph(Pointer<COMObject> ptr) : super(ptr);

  int GetInputCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetSingleTransformNode(
    Pointer<COMObject> node,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> node,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> node,
          )>()(
        ptr.ref.lpVtbl,
        node,
      );

  int AddNode(
    Pointer<COMObject> node,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> node,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> node,
          )>()(
        ptr.ref.lpVtbl,
        node,
      );

  int RemoveNode(
    Pointer<COMObject> node,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> node,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> node,
          )>()(
        ptr.ref.lpVtbl,
        node,
      );

  int SetOutputNode(
    Pointer<COMObject> node,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> node,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> node,
          )>()(
        ptr.ref.lpVtbl,
        node,
      );

  int ConnectNode(
    Pointer<COMObject> fromNode,
    Pointer<COMObject> toNode,
    int toNodeInputIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fromNode,
            Pointer<COMObject> toNode,
            Uint32 toNodeInputIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fromNode,
            Pointer<COMObject> toNode,
            int toNodeInputIndex,
          )>()(
        ptr.ref.lpVtbl,
        fromNode,
        toNode,
        toNodeInputIndex,
      );

  int ConnectToEffectInput(
    int toEffectInputIndex,
    Pointer<COMObject> node,
    int toNodeInputIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 toEffectInputIndex,
            Pointer<COMObject> node,
            Uint32 toNodeInputIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int toEffectInputIndex,
            Pointer<COMObject> node,
            int toNodeInputIndex,
          )>()(
        ptr.ref.lpVtbl,
        toEffectInputIndex,
        node,
        toNodeInputIndex,
      );

  void Clear() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetPassthroughGraph(
    int effectInputIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 effectInputIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int effectInputIndex,
          )>()(
        ptr.ref.lpVtbl,
        effectInputIndex,
      );
}
