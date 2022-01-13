// IAMBufferNegotiation.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMBufferNegotiation = '{56ED71A0-AF5F-11D0-B3F0-00AA003761C5}';

/// {@category Interface}
/// {@category com}
class IAMBufferNegotiation extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAMBufferNegotiation(Pointer<COMObject> ptr) : super(ptr);

  int SuggestAllocatorProperties(
    Pointer<ALLOCATOR_PROPERTIES> pprop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pprop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pprop,
          )>()(
        ptr.ref.lpVtbl,
        pprop,
      );

  int GetAllocatorProperties(
    Pointer<ALLOCATOR_PROPERTIES> pprop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pprop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pprop,
          )>()(
        ptr.ref.lpVtbl,
        pprop,
      );
}
