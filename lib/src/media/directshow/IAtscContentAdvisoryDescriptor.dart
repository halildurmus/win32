// IAtscContentAdvisoryDescriptor.dart

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
const IID_IAtscContentAdvisoryDescriptor =
    '{FF76E60C-0283-43EA-BA32-B422238547EE}';

/// {@category Interface}
/// {@category com}
class IAtscContentAdvisoryDescriptor extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IAtscContentAdvisoryDescriptor(Pointer<COMObject> ptr) : super(ptr);

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

  int GetRatingRegionCount(
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

  int GetRecordRatingRegion(
    int bIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bIndex,
        pbVal,
      );

  int GetRecordRatedDimensions(
    int bIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bIndex,
        pbVal,
      );

  int GetRecordRatingDimension(
    int bIndexOuter,
    int bIndexInner,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bIndexOuter,
            Uint8 bIndexInner,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIndexOuter,
            int bIndexInner,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bIndexOuter,
        bIndexInner,
        pbVal,
      );

  int GetRecordRatingValue(
    int bIndexOuter,
    int bIndexInner,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bIndexOuter,
            Uint8 bIndexInner,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIndexOuter,
            int bIndexInner,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bIndexOuter,
        bIndexInner,
        pbVal,
      );

  int GetRecordRatingDescriptionText(
    int bIndex,
    Pointer<Uint8> pbLength,
    Pointer<Pointer<Uint8>> ppText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bIndex,
            Pointer<Uint8> pbLength,
            Pointer<Pointer<Uint8>> ppText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIndex,
            Pointer<Uint8> pbLength,
            Pointer<Pointer<Uint8>> ppText,
          )>()(
        ptr.ref.lpVtbl,
        bIndex,
        pbLength,
        ppText,
      );
}
