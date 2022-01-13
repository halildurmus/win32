// ITfRangeACP.dart

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

import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfRangeACP = '{057A6296-029B-4154-B79A-0D461D4EA94C}';

/// {@category Interface}
/// {@category com}
class ITfRangeACP extends ITfRange {
  // vtable begins at 25, is 2 entries long.
  ITfRangeACP(Pointer<COMObject> ptr) : super(ptr);

  int GetExtent(
    Pointer<Int32> pacpAnchor,
    Pointer<Int32> pcch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pacpAnchor,
            Pointer<Int32> pcch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pacpAnchor,
            Pointer<Int32> pcch,
          )>()(
        ptr.ref.lpVtbl,
        pacpAnchor,
        pcch,
      );

  int SetExtent(
    int acpAnchor,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpAnchor,
            Int32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpAnchor,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        acpAnchor,
        cch,
      );
}
