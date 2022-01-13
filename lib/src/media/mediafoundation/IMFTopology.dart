// IMFTopology.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFTopologyNode.dart';
import '../../media/mediafoundation/IMFTopology.dart';
import '../../media/mediafoundation/IMFCollection.dart';

/// @nodoc
const IID_IMFTopology = '{83CF873A-F6DA-4BC8-823F-BACFD55DC433}';

/// {@category Interface}
/// {@category com}
class IMFTopology extends IMFAttributes {
  // vtable begins at 33, is 10 entries long.
  IMFTopology(Pointer<COMObject> ptr) : super(ptr);

  int GetTopologyID(
    Pointer<Uint64> pID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pID,
          )>()(
        ptr.ref.lpVtbl,
        pID,
      );

  int AddNode(
    Pointer<COMObject> pNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
      );

  int RemoveNode(
    Pointer<COMObject> pNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
      );

  int GetNodeCount(
    Pointer<Uint16> pwNodes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwNodes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwNodes,
          )>()(
        ptr.ref.lpVtbl,
        pwNodes,
      );

  int GetNode(
    int wIndex,
    Pointer<Pointer<COMObject>> ppNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
            Pointer<Pointer<COMObject>> ppNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Pointer<COMObject>> ppNode,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        ppNode,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(38)
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

  int CloneFrom(
    Pointer<COMObject> pTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTopology,
          )>()(
        ptr.ref.lpVtbl,
        pTopology,
      );

  int GetNodeByID(
    int qwTopoNodeID,
    Pointer<Pointer<COMObject>> ppNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwTopoNodeID,
            Pointer<Pointer<COMObject>> ppNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwTopoNodeID,
            Pointer<Pointer<COMObject>> ppNode,
          )>()(
        ptr.ref.lpVtbl,
        qwTopoNodeID,
        ppNode,
      );

  int GetSourceNodeCollection(
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppCollection,
      );

  int GetOutputNodeCollection(
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppCollection,
      );
}
