// IMMEndpoint.dart

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
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMMEndpoint = '{1BE09788-6894-4089-8586-9A2A6C265AC5}';

/// {@category Interface}
/// {@category com}
class IMMEndpoint extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMMEndpoint(Pointer<COMObject> ptr) : super(ptr);

  int GetDataFlow(
    Pointer<Int32> pDataFlow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pDataFlow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pDataFlow,
          )>()(
        ptr.ref.lpVtbl,
        pDataFlow,
      );
}
