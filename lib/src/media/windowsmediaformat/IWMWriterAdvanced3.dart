// IWMWriterAdvanced3.dart

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

import '../../media/windowsmediaformat/IWMWriterAdvanced2.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMWriterAdvanced3 = '{2CD6492D-7C37-4E76-9D3B-59261183A22E}';

/// {@category Interface}
/// {@category com}
class IWMWriterAdvanced3 extends IWMWriterAdvanced2 {
  // vtable begins at 16, is 2 entries long.
  IWMWriterAdvanced3(Pointer<COMObject> ptr) : super(ptr);

  int GetStatisticsEx(
    int wStreamNum,
    Pointer<WM_WRITER_STATISTICS_EX> pStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<WM_WRITER_STATISTICS_EX> pStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<WM_WRITER_STATISTICS_EX> pStats,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pStats,
      );

  int SetNonBlocking() => ptr.ref.lpVtbl.value
          .elementAt(17)
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
}
