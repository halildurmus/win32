// IFilterTrackingSyncChangeBuilder.dart

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
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFilterTrackingSyncChangeBuilder =
    '{295024A0-70DA-4C58-883C-CE2AFB308D0B}';

/// {@category Interface}
/// {@category com}
class IFilterTrackingSyncChangeBuilder extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFilterTrackingSyncChangeBuilder(Pointer<COMObject> ptr) : super(ptr);

  int AddFilterChange(
    int dwFilterKey,
    Pointer<SYNC_FILTER_CHANGE> pFilterChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFilterKey,
            Pointer<SYNC_FILTER_CHANGE> pFilterChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFilterKey,
            Pointer<SYNC_FILTER_CHANGE> pFilterChange,
          )>()(
        ptr.ref.lpVtbl,
        dwFilterKey,
        pFilterChange,
      );

  int SetAllChangeUnitsPresentFlag() => ptr.ref.lpVtbl.value
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
}
