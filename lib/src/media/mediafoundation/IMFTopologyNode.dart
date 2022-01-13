// IMFTopologyNode.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFTopologyNode.dart';
import '../../media/mediafoundation/IMFMediaType.dart';

/// @nodoc
const IID_IMFTopologyNode = '{83CF873A-F6DA-4BC8-823F-BACFD55DC430}';

/// {@category Interface}
/// {@category com}
class IMFTopologyNode extends IMFAttributes {
  // vtable begins at 33, is 16 entries long.
  IMFTopologyNode(Pointer<COMObject> ptr) : super(ptr);

  int SetObject(
    Pointer<COMObject> pObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObject,
          )>()(
        ptr.ref.lpVtbl,
        pObject,
      );

  int GetObject(
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        ppObject,
      );

  int GetNodeType(
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int GetTopoNodeID(
    Pointer<Uint64> pID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int SetTopoNodeID(
    int ullTopoID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullTopoID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullTopoID,
          )>()(
        ptr.ref.lpVtbl,
        ullTopoID,
      );

  int GetInputCount(
    Pointer<Uint32> pcInputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcInputs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcInputs,
          )>()(
        ptr.ref.lpVtbl,
        pcInputs,
      );

  int GetOutputCount(
    Pointer<Uint32> pcOutputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcOutputs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcOutputs,
          )>()(
        ptr.ref.lpVtbl,
        pcOutputs,
      );

  int ConnectOutput(
    int dwOutputIndex,
    Pointer<COMObject> pDownstreamNode,
    int dwInputIndexOnDownstreamNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputIndex,
            Pointer<COMObject> pDownstreamNode,
            Uint32 dwInputIndexOnDownstreamNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputIndex,
            Pointer<COMObject> pDownstreamNode,
            int dwInputIndexOnDownstreamNode,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputIndex,
        pDownstreamNode,
        dwInputIndexOnDownstreamNode,
      );

  int DisconnectOutput(
    int dwOutputIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputIndex,
      );

  int GetInput(
    int dwInputIndex,
    Pointer<Pointer<COMObject>> ppUpstreamNode,
    Pointer<Uint32> pdwOutputIndexOnUpstreamNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputIndex,
            Pointer<Pointer<COMObject>> ppUpstreamNode,
            Pointer<Uint32> pdwOutputIndexOnUpstreamNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputIndex,
            Pointer<Pointer<COMObject>> ppUpstreamNode,
            Pointer<Uint32> pdwOutputIndexOnUpstreamNode,
          )>()(
        ptr.ref.lpVtbl,
        dwInputIndex,
        ppUpstreamNode,
        pdwOutputIndexOnUpstreamNode,
      );

  int GetOutput(
    int dwOutputIndex,
    Pointer<Pointer<COMObject>> ppDownstreamNode,
    Pointer<Uint32> pdwInputIndexOnDownstreamNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputIndex,
            Pointer<Pointer<COMObject>> ppDownstreamNode,
            Pointer<Uint32> pdwInputIndexOnDownstreamNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputIndex,
            Pointer<Pointer<COMObject>> ppDownstreamNode,
            Pointer<Uint32> pdwInputIndexOnDownstreamNode,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputIndex,
        ppDownstreamNode,
        pdwInputIndexOnDownstreamNode,
      );

  int SetOutputPrefType(
    int dwOutputIndex,
    Pointer<COMObject> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputIndex,
            Pointer<COMObject> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputIndex,
            Pointer<COMObject> pType,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputIndex,
        pType,
      );

  int GetOutputPrefType(
    int dwOutputIndex,
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputIndex,
        ppType,
      );

  int SetInputPrefType(
    int dwInputIndex,
    Pointer<COMObject> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputIndex,
            Pointer<COMObject> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputIndex,
            Pointer<COMObject> pType,
          )>()(
        ptr.ref.lpVtbl,
        dwInputIndex,
        pType,
      );

  int GetInputPrefType(
    int dwInputIndex,
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        dwInputIndex,
        ppType,
      );

  int CloneFrom(
    Pointer<COMObject> pNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
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
}
