// IWMStreamPrioritization.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMStreamPrioritization = '{8C1C6090-F9A8-4748-8EC3-DD1108BA1E77}';

/// {@category Interface}
/// {@category com}
class IWMStreamPrioritization extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMStreamPrioritization(Pointer<COMObject> ptr) : super(ptr);

  int GetPriorityRecords(
    Pointer<WM_STREAM_PRIORITY_RECORD> pRecordArray,
    Pointer<Uint16> pcRecords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_STREAM_PRIORITY_RECORD> pRecordArray,
            Pointer<Uint16> pcRecords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_STREAM_PRIORITY_RECORD> pRecordArray,
            Pointer<Uint16> pcRecords,
          )>()(
        ptr.ref.lpVtbl,
        pRecordArray,
        pcRecords,
      );

  int SetPriorityRecords(
    Pointer<WM_STREAM_PRIORITY_RECORD> pRecordArray,
    int cRecords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_STREAM_PRIORITY_RECORD> pRecordArray,
            Uint16 cRecords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_STREAM_PRIORITY_RECORD> pRecordArray,
            int cRecords,
          )>()(
        ptr.ref.lpVtbl,
        pRecordArray,
        cRecords,
      );
}
