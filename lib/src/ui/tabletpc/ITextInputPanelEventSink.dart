// ITextInputPanelEventSink.dart

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
import '../../ui/tabletpc/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_ITextInputPanelEventSink = '{27560408-8E64-4FE1-804E-421201584B31}';

/// {@category Interface}
/// {@category com}
class ITextInputPanelEventSink extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  ITextInputPanelEventSink(Pointer<COMObject> ptr) : super(ptr);

  int InPlaceStateChanging(
    int oldInPlaceState,
    int newInPlaceState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldInPlaceState,
            Int32 newInPlaceState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldInPlaceState,
            int newInPlaceState,
          )>()(
        ptr.ref.lpVtbl,
        oldInPlaceState,
        newInPlaceState,
      );

  int InPlaceStateChanged(
    int oldInPlaceState,
    int newInPlaceState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldInPlaceState,
            Int32 newInPlaceState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldInPlaceState,
            int newInPlaceState,
          )>()(
        ptr.ref.lpVtbl,
        oldInPlaceState,
        newInPlaceState,
      );

  int InPlaceSizeChanging(
    RECT oldBoundingRectangle,
    RECT newBoundingRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            RECT oldBoundingRectangle,
            RECT newBoundingRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            RECT oldBoundingRectangle,
            RECT newBoundingRectangle,
          )>()(
        ptr.ref.lpVtbl,
        oldBoundingRectangle,
        newBoundingRectangle,
      );

  int InPlaceSizeChanged(
    RECT oldBoundingRectangle,
    RECT newBoundingRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            RECT oldBoundingRectangle,
            RECT newBoundingRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            RECT oldBoundingRectangle,
            RECT newBoundingRectangle,
          )>()(
        ptr.ref.lpVtbl,
        oldBoundingRectangle,
        newBoundingRectangle,
      );

  int InputAreaChanging(
    int oldInputArea,
    int newInputArea,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldInputArea,
            Int32 newInputArea,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldInputArea,
            int newInputArea,
          )>()(
        ptr.ref.lpVtbl,
        oldInputArea,
        newInputArea,
      );

  int InputAreaChanged(
    int oldInputArea,
    int newInputArea,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldInputArea,
            Int32 newInputArea,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldInputArea,
            int newInputArea,
          )>()(
        ptr.ref.lpVtbl,
        oldInputArea,
        newInputArea,
      );

  int CorrectionModeChanging(
    int oldCorrectionMode,
    int newCorrectionMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldCorrectionMode,
            Int32 newCorrectionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldCorrectionMode,
            int newCorrectionMode,
          )>()(
        ptr.ref.lpVtbl,
        oldCorrectionMode,
        newCorrectionMode,
      );

  int CorrectionModeChanged(
    int oldCorrectionMode,
    int newCorrectionMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldCorrectionMode,
            Int32 newCorrectionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldCorrectionMode,
            int newCorrectionMode,
          )>()(
        ptr.ref.lpVtbl,
        oldCorrectionMode,
        newCorrectionMode,
      );

  int InPlaceVisibilityChanging(
    int oldVisible,
    int newVisible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldVisible,
            Int32 newVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldVisible,
            int newVisible,
          )>()(
        ptr.ref.lpVtbl,
        oldVisible,
        newVisible,
      );

  int InPlaceVisibilityChanged(
    int oldVisible,
    int newVisible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 oldVisible,
            Int32 newVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int oldVisible,
            int newVisible,
          )>()(
        ptr.ref.lpVtbl,
        oldVisible,
        newVisible,
      );

  int TextInserting(
    Pointer<SAFEARRAY> Ink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> Ink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> Ink,
          )>()(
        ptr.ref.lpVtbl,
        Ink,
      );

  int TextInserted(
    Pointer<SAFEARRAY> Ink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> Ink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> Ink,
          )>()(
        ptr.ref.lpVtbl,
        Ink,
      );
}
