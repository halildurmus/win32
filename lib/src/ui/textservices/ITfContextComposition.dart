// ITfContextComposition.dart

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
import '../../ui/textservices/ITfRange.dart';
import '../../ui/textservices/ITfCompositionSink.dart';
import '../../ui/textservices/ITfComposition.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/IEnumITfCompositionView.dart';
import '../../ui/textservices/ITfCompositionView.dart';

/// @nodoc
const IID_ITfContextComposition = '{D40C8AAE-AC92-4FC7-9A11-0EE0E23AA39B}';

/// {@category Interface}
/// {@category com}
class ITfContextComposition extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfContextComposition(Pointer<COMObject> ptr) : super(ptr);

  int StartComposition(
    int ecWrite,
    Pointer<COMObject> pCompositionRange,
    Pointer<COMObject> pSink,
    Pointer<Pointer<COMObject>> ppComposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecWrite,
            Pointer<COMObject> pCompositionRange,
            Pointer<COMObject> pSink,
            Pointer<Pointer<COMObject>> ppComposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecWrite,
            Pointer<COMObject> pCompositionRange,
            Pointer<COMObject> pSink,
            Pointer<Pointer<COMObject>> ppComposition,
          )>()(
        ptr.ref.lpVtbl,
        ecWrite,
        pCompositionRange,
        pSink,
        ppComposition,
      );

  int EnumCompositions(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int FindComposition(
    int ecRead,
    Pointer<COMObject> pTestRange,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecRead,
            Pointer<COMObject> pTestRange,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecRead,
            Pointer<COMObject> pTestRange,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ecRead,
        pTestRange,
        ppEnum,
      );

  int TakeOwnership(
    int ecWrite,
    Pointer<COMObject> pComposition,
    Pointer<COMObject> pSink,
    Pointer<Pointer<COMObject>> ppComposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecWrite,
            Pointer<COMObject> pComposition,
            Pointer<COMObject> pSink,
            Pointer<Pointer<COMObject>> ppComposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecWrite,
            Pointer<COMObject> pComposition,
            Pointer<COMObject> pSink,
            Pointer<Pointer<COMObject>> ppComposition,
          )>()(
        ptr.ref.lpVtbl,
        ecWrite,
        pComposition,
        pSink,
        ppComposition,
      );
}
