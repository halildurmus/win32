// IEnumConnectionPoints.dart

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
import '../../system/com/IConnectionPoint.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IEnumConnectionPoints.dart';

/// @nodoc
const IID_IEnumConnectionPoints = '{B196B285-BAB4-101A-B69C-00AA00341D07}';

/// {@category Interface}
/// {@category com}
class IEnumConnectionPoints extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumConnectionPoints(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cConnections,
    Pointer<Pointer<COMObject>> ppCP,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cConnections,
            Pointer<Pointer<COMObject>> ppCP,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cConnections,
            Pointer<Pointer<COMObject>> ppCP,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cConnections,
        ppCP,
        pcFetched,
      );

  int Skip(
    int cConnections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cConnections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cConnections,
          )>()(
        ptr.ref.lpVtbl,
        cConnections,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
