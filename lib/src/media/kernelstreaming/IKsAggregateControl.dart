// IKsAggregateControl.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IKsAggregateControl = '{7F40EAC0-3947-11D2-874E-00A0C9223196}';

/// {@category Interface}
/// {@category com}
class IKsAggregateControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IKsAggregateControl(Pointer<COMObject> ptr) : super(ptr);

  int KsAddAggregate(
    Pointer<GUID> AggregateClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> AggregateClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> AggregateClass,
          )>()(
        ptr.ref.lpVtbl,
        AggregateClass,
      );

  int KsRemoveAggregate(
    Pointer<GUID> AggregateClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> AggregateClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> AggregateClass,
          )>()(
        ptr.ref.lpVtbl,
        AggregateClass,
      );
}
