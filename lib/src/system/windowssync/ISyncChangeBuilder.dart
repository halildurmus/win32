// ISyncChangeBuilder.dart

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
const IID_ISyncChangeBuilder = '{56F14771-8677-484F-A170-E386E418A676}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBuilder extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncChangeBuilder(Pointer<COMObject> ptr) : super(ptr);

  int AddChangeUnitMetadata(
    Pointer<Uint8> pbChangeUnitId,
    Pointer<SYNC_VERSION> pChangeUnitVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<SYNC_VERSION> pChangeUnitVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<SYNC_VERSION> pChangeUnitVersion,
          )>()(
        ptr.ref.lpVtbl,
        pbChangeUnitId,
        pChangeUnitVersion,
      );
}
