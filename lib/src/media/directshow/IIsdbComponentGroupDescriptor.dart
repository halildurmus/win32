// IIsdbComponentGroupDescriptor.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IIsdbComponentGroupDescriptor =
    '{A494F17F-C592-47D8-8943-64C9A34BE7B9}';

/// {@category Interface}
/// {@category com}
class IIsdbComponentGroupDescriptor extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IIsdbComponentGroupDescriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetTag(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLength(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetComponentGroupType(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetCountOfRecords(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetRecordGroupId(
    int bRecordIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        pbVal,
      );

  int GetRecordNumberOfCAUnit(
    int bRecordIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        pbVal,
      );

  int GetRecordCAUnitCAUnitId(
    int bRecordIndex,
    int bCAUnitIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Uint8 bCAUnitIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            int bCAUnitIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        bCAUnitIndex,
        pbVal,
      );

  int GetRecordCAUnitNumberOfComponents(
    int bRecordIndex,
    int bCAUnitIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Uint8 bCAUnitIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            int bCAUnitIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        bCAUnitIndex,
        pbVal,
      );

  int GetRecordCAUnitComponentTag(
    int bRecordIndex,
    int bCAUnitIndex,
    int bComponentIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Uint8 bCAUnitIndex,
            Uint8 bComponentIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            int bCAUnitIndex,
            int bComponentIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        bCAUnitIndex,
        bComponentIndex,
        pbVal,
      );

  int GetRecordTotalBitRate(
    int bRecordIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        pbVal,
      );

  int GetRecordTextW(
    int bRecordIndex,
    int convMode,
    Pointer<Pointer<Utf16>> pbstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        convMode,
        pbstrText,
      );
}
