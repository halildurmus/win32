// IWMReaderTimecode.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMReaderTimecode = '{F369E2F0-E081-4FE6-8450-B810B2F410D1}';

/// {@category Interface}
/// {@category com}
class IWMReaderTimecode extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMReaderTimecode(Pointer<COMObject> ptr) : super(ptr);

  int GetTimecodeRangeCount(
    int wStreamNum,
    Pointer<Uint16> pwRangeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Uint16> pwRangeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Uint16> pwRangeCount,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pwRangeCount,
      );

  int GetTimecodeRangeBounds(
    int wStreamNum,
    int wRangeNum,
    Pointer<Uint32> pStartTimecode,
    Pointer<Uint32> pEndTimecode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint16 wRangeNum,
            Pointer<Uint32> pStartTimecode,
            Pointer<Uint32> pEndTimecode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int wRangeNum,
            Pointer<Uint32> pStartTimecode,
            Pointer<Uint32> pEndTimecode,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        wRangeNum,
        pStartTimecode,
        pEndTimecode,
      );
}
