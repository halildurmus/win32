// IWMReaderAdvanced3.dart

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

import '../../media/windowsmediaformat/IWMReaderAdvanced2.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMReaderAdvanced3 = '{5DC0674B-F04B-4A4E-9F2A-B1AFDE2C8100}';

/// {@category Interface}
/// {@category com}
class IWMReaderAdvanced3 extends IWMReaderAdvanced2 {
  // vtable begins at 38, is 2 entries long.
  IWMReaderAdvanced3(Pointer<COMObject> ptr) : super(ptr);

  int StopNetStreaming() => ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int StartAtPosition(
    int wStreamNum,
    Pointer pvOffsetStart,
    Pointer pvDuration,
    int dwOffsetFormat,
    double fRate,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer pvOffsetStart,
            Pointer pvDuration,
            Int32 dwOffsetFormat,
            Float fRate,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer pvOffsetStart,
            Pointer pvDuration,
            int dwOffsetFormat,
            double fRate,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pvOffsetStart,
        pvDuration,
        dwOffsetFormat,
        fRate,
        pvContext,
      );
}
