// ICustomFilterInfo.dart

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

import '../../system/windowssync/ISyncFilterInfo.dart';
import '../../system/windowssync/ISyncFilter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICustomFilterInfo = '{1D335DFF-6F88-4E4D-91A8-A3F351CFD473}';

/// {@category Interface}
/// {@category com}
class ICustomFilterInfo extends ISyncFilterInfo {
  // vtable begins at 4, is 1 entries long.
  ICustomFilterInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncFilter(
    Pointer<Pointer<COMObject>> pISyncFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pISyncFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pISyncFilter,
          )>()(
        ptr.ref.lpVtbl,
        pISyncFilter,
      );
}
