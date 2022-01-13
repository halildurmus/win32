// ISyncProvider.dart

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
const IID_ISyncProvider = '{8F657056-2BCE-4A17-8C68-C7BB7898B56F}';

/// {@category Interface}
/// {@category com}
class ISyncProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetIdParameters(
    Pointer<ID_PARAMETERS> pIdParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ID_PARAMETERS> pIdParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ID_PARAMETERS> pIdParameters,
          )>()(
        ptr.ref.lpVtbl,
        pIdParameters,
      );
}
