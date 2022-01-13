// ISyncChangeBatchAdvanced.dart

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
import '../../system/windowssync/ISyncFilterInfo.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncChangeBatch.dart';

/// @nodoc
const IID_ISyncChangeBatchAdvanced = '{0F1A4995-CBC8-421D-B550-5D0BEBF3E9A5}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBatchAdvanced extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISyncChangeBatchAdvanced(Pointer<COMObject> ptr) : super(ptr);

  int GetFilterInfo(
    Pointer<Pointer<COMObject>> ppFilterInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFilterInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFilterInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppFilterInfo,
      );

  int ConvertFullEnumerationChangeBatchToRegularChangeBatch(
    Pointer<Pointer<COMObject>> ppChangeBatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppChangeBatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppChangeBatch,
          )>()(
        ptr.ref.lpVtbl,
        ppChangeBatch,
      );

  int GetUpperBoundItemId(
    Pointer<Uint8> pbItemId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pcbIdSize,
      );

  int GetBatchLevelKnowledgeShouldBeApplied(
    Pointer<Int32> pfBatchKnowledgeShouldBeApplied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfBatchKnowledgeShouldBeApplied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfBatchKnowledgeShouldBeApplied,
          )>()(
        ptr.ref.lpVtbl,
        pfBatchKnowledgeShouldBeApplied,
      );
}
