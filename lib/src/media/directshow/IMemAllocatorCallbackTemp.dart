// IMemAllocatorCallbackTemp.dart

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

import '../../media/directshow/IMemAllocator.dart';
import '../../media/directshow/IMemAllocatorNotifyCallbackTemp.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMemAllocatorCallbackTemp = '{379A0CF0-C1DE-11D2-ABF5-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IMemAllocatorCallbackTemp extends IMemAllocator {
  // vtable begins at 9, is 2 entries long.
  IMemAllocatorCallbackTemp(Pointer<COMObject> ptr) : super(ptr);

  int SetNotify(
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>()(
        ptr.ref.lpVtbl,
        pNotify,
      );

  int GetFreeCount(
    Pointer<Int32> plBuffersFree,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plBuffersFree,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plBuffersFree,
          )>()(
        ptr.ref.lpVtbl,
        plBuffersFree,
      );
}
