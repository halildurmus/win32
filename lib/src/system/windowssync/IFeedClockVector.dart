// IFeedClockVector.dart

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

import '../../system/windowssync/IClockVector.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFeedClockVector = '{8D1D98D1-9FB8-4EC9-A553-54DD924E0F67}';

/// {@category Interface}
/// {@category com}
class IFeedClockVector extends IClockVector {
  // vtable begins at 5, is 2 entries long.
  IFeedClockVector(Pointer<COMObject> ptr) : super(ptr);

  int GetUpdateCount(
    Pointer<Uint32> pdwUpdateCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwUpdateCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwUpdateCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwUpdateCount,
      );

  int IsNoConflictsSpecified(
    Pointer<Int32> pfIsNoConflictsSpecified,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsNoConflictsSpecified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsNoConflictsSpecified,
          )>()(
        ptr.ref.lpVtbl,
        pfIsNoConflictsSpecified,
      );
}
