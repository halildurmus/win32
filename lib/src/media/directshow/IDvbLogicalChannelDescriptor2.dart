// IDvbLogicalChannelDescriptor2.dart

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

import '../../media/directshow/IDvbLogicalChannelDescriptor.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDvbLogicalChannelDescriptor2 =
    '{43ACA974-4BE8-4B98-BC17-9EAFD788B1D7}';

/// {@category Interface}
/// {@category com}
class IDvbLogicalChannelDescriptor2 extends IDvbLogicalChannelDescriptor {
  // vtable begins at 8, is 1 entries long.
  IDvbLogicalChannelDescriptor2(Pointer<COMObject> ptr) : super(ptr);

  int GetRecordLogicalChannelAndVisibility(
    int bRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        pwVal,
      );
}
