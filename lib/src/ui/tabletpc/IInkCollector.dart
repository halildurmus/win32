// IInkCollector.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/IInkDrawingAttributes.dart';
import '../../ui/tabletpc/IInkRenderer.dart';
import '../../ui/tabletpc/IInkDisp.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/ole/IPictureDisp.dart';
import '../../ui/tabletpc/IInkCursors.dart';
import '../../ui/tabletpc/IInkTablet.dart';
import '../../ui/tabletpc/IInkRectangle.dart';

/// @nodoc
const IID_IInkCollector = '{F0F060B5-8B1F-4A7C-89EC-880692588A4F}';

/// {@category Interface}
/// {@category com}
class IInkCollector extends IDispatch {
  // vtable begins at 7, is 40 entries long.
  IInkCollector(Pointer<COMObject> ptr) : super(ptr);

  int get hWnd {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> CurrentWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> CurrentWindow,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set hWnd(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          IntPtr NewWindow,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int NewWindow,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Enabled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Collecting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Collecting,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Enabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 Collecting,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Collecting,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get DefaultDrawingAttributes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> CurrentAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> CurrentAttributes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_DefaultDrawingAttributes(
    Pointer<COMObject> NewAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> NewAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> NewAttributes,
          )>()(
        ptr.ref.lpVtbl,
        NewAttributes,
      );

  Pointer<COMObject> get Renderer {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> CurrentInkRenderer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> CurrentInkRenderer,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Renderer(
    Pointer<COMObject> NewInkRenderer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> NewInkRenderer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> NewInkRenderer,
          )>()(
        ptr.ref.lpVtbl,
        NewInkRenderer,
      );

  Pointer<COMObject> get Ink {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Ink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Ink,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Ink(
    Pointer<COMObject> NewInk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> NewInk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> NewInk,
          )>()(
        ptr.ref.lpVtbl,
        NewInk,
      );

  int get AutoRedraw {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> AutoRedraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> AutoRedraw,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AutoRedraw(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 AutoRedraw,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int AutoRedraw,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CollectingInk {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Collecting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Collecting,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CollectionMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Mode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CollectionMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(21)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Mode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Mode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get DynamicRendering {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Enabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DynamicRendering(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 Enabled,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Enabled,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  VARIANT get DesiredPacketDescription {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> PacketGuids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> PacketGuids,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DesiredPacketDescription(VARIANT value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          VARIANT PacketGuids,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          VARIANT PacketGuids,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get MouseIcon {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> MouseIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> MouseIcon,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MouseIcon(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> MouseIcon,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> MouseIcon,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int putref_MouseIcon(
    Pointer<COMObject> MouseIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MouseIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MouseIcon,
          )>()(
        ptr.ref.lpVtbl,
        MouseIcon,
      );

  int get MousePointer {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MousePointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MousePointer,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MousePointer(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(30)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 MousePointer,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int MousePointer,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get Cursors {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Cursors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Cursors,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get MarginX {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MarginX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MarginX,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MarginX(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(33)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 MarginX,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int MarginX,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get MarginY {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MarginY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MarginY,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MarginY(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(35)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 MarginY,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int MarginY,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get Tablet {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> SingleTablet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> SingleTablet,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get SupportHighContrastInk {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Support,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Support,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SupportHighContrastInk(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(38)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 Support,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Support,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int SetGestureStatus(
    int Gesture,
    int Listen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Gesture,
            Int16 Listen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Gesture,
            int Listen,
          )>()(
        ptr.ref.lpVtbl,
        Gesture,
        Listen,
      );

  int GetGestureStatus(
    int Gesture,
    Pointer<Int16> Listening,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Gesture,
            Pointer<Int16> Listening,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Gesture,
            Pointer<Int16> Listening,
          )>()(
        ptr.ref.lpVtbl,
        Gesture,
        Listening,
      );

  int GetWindowInputRectangle(
    Pointer<Pointer<COMObject>> WindowInputRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> WindowInputRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> WindowInputRectangle,
          )>()(
        ptr.ref.lpVtbl,
        WindowInputRectangle,
      );

  int SetWindowInputRectangle(
    Pointer<COMObject> WindowInputRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> WindowInputRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> WindowInputRectangle,
          )>()(
        ptr.ref.lpVtbl,
        WindowInputRectangle,
      );

  int SetAllTabletsMode(
    int UseMouseForInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 UseMouseForInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int UseMouseForInput,
          )>()(
        ptr.ref.lpVtbl,
        UseMouseForInput,
      );

  int SetSingleTabletIntegratedMode(
    Pointer<COMObject> Tablet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Tablet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Tablet,
          )>()(
        ptr.ref.lpVtbl,
        Tablet,
      );

  int GetEventInterest(
    int EventId,
    Pointer<Int16> Listen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EventId,
            Pointer<Int16> Listen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EventId,
            Pointer<Int16> Listen,
          )>()(
        ptr.ref.lpVtbl,
        EventId,
        Listen,
      );

  int SetEventInterest(
    int EventId,
    int Listen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EventId,
            Int16 Listen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EventId,
            int Listen,
          )>()(
        ptr.ref.lpVtbl,
        EventId,
        Listen,
      );
}

/// @nodoc
const CLSID_InkCollector = '{43FB1553-AD74-4EE8-88E4-3E6DAAC915DB}';

/// {@category com}
class InkCollector extends IInkCollector {
  InkCollector(Pointer<COMObject> ptr) : super(ptr);

  factory InkCollector.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkCollector);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkCollector);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkCollector(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
