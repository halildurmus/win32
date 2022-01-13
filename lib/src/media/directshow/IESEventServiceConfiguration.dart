// IESEventServiceConfiguration.dart

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
import '../../media/directshow/IESEventService.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IESEvents.dart';
import '../../media/directshow/IFilterGraph.dart';

/// @nodoc
const IID_IESEventServiceConfiguration =
    '{33B9DAAE-9309-491D-A051-BCAD2A70CD66}';

/// {@category Interface}
/// {@category com}
class IESEventServiceConfiguration extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IESEventServiceConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int SetParent(
    Pointer<COMObject> pEventService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEventService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEventService,
          )>()(
        ptr.ref.lpVtbl,
        pEventService,
      );

  int RemoveParent() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetOwner(
    Pointer<COMObject> pESEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pESEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pESEvents,
          )>()(
        ptr.ref.lpVtbl,
        pESEvents,
      );

  int RemoveOwner() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetGraph(
    Pointer<COMObject> pGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGraph,
          )>()(
        ptr.ref.lpVtbl,
        pGraph,
      );

  int RemoveGraph(
    Pointer<COMObject> pGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGraph,
          )>()(
        ptr.ref.lpVtbl,
        pGraph,
      );
}
