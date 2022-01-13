// ITfFnLMInternal.dart

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

import '../../ui/textservices/ITfFnLMProcessor.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnLMInternal = '{04B825B1-AC9A-4F7B-B5AD-C7168F1EE445}';

/// {@category Interface}
/// {@category com}
class ITfFnLMInternal extends ITfFnLMProcessor {
  // vtable begins at 11, is 1 entries long.
  ITfFnLMInternal(Pointer<COMObject> ptr) : super(ptr);

  int ProcessLattice(
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
      );
}
