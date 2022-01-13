// IServicePartitionConfig.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServicePartitionConfig = '{80182D03-5EA4-4831-AE97-55BEFFC2E590}';

/// {@category Interface}
/// {@category com}
class IServicePartitionConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IServicePartitionConfig(Pointer<COMObject> ptr) : super(ptr);

  int PartitionConfig(
    int partitionConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 partitionConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int partitionConfig,
          )>()(
        ptr.ref.lpVtbl,
        partitionConfig,
      );

  int PartitionID(
    Pointer<GUID> guidPartitionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidPartitionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidPartitionID,
          )>()(
        ptr.ref.lpVtbl,
        guidPartitionID,
      );
}
