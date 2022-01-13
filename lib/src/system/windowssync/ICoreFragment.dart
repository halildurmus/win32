// ICoreFragment.dart

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
import '../../system/windowssync/IClockVector.dart';

/// @nodoc
const IID_ICoreFragment = '{613B2AB5-B304-47D9-9C31-CE6C54401A15}';

/// {@category Interface}
/// {@category com}
class ICoreFragment extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ICoreFragment(Pointer<COMObject> ptr) : super(ptr);

  int NextColumn(
    Pointer<Uint8> pChangeUnitId,
    Pointer<Uint32> pChangeUnitIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pChangeUnitId,
            Pointer<Uint32> pChangeUnitIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pChangeUnitId,
            Pointer<Uint32> pChangeUnitIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pChangeUnitId,
        pChangeUnitIdSize,
      );

  int NextRange(
    Pointer<Uint8> pItemId,
    Pointer<Uint32> pItemIdSize,
    Pointer<Pointer<COMObject>> piClockVector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pItemId,
            Pointer<Uint32> pItemIdSize,
            Pointer<Pointer<COMObject>> piClockVector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pItemId,
            Pointer<Uint32> pItemIdSize,
            Pointer<Pointer<COMObject>> piClockVector,
          )>()(
        ptr.ref.lpVtbl,
        pItemId,
        pItemIdSize,
        piClockVector,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetColumnCount(
    Pointer<Uint32> pColumnCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pColumnCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pColumnCount,
          )>()(
        ptr.ref.lpVtbl,
        pColumnCount,
      );

  int GetRangeCount(
    Pointer<Uint32> pRangeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRangeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRangeCount,
          )>()(
        ptr.ref.lpVtbl,
        pRangeCount,
      );
}
