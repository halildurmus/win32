// IRealTimeStylus.dart

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
import '../../ui/tabletpc/IStylusSyncPlugin.dart';
import '../../ui/tabletpc/IStylusAsyncPlugin.dart';
import '../../ui/tabletpc/IRealTimeStylus.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../ui/tabletpc/IInkTablet.dart';
import '../../ui/tabletpc/IInkCursors.dart';
import '../../ui/tabletpc/IInkCursor.dart';

/// @nodoc
const IID_IRealTimeStylus = '{A8BB5D22-3144-4A7B-93CD-F34A16BE513A}';

/// {@category Interface}
/// {@category com}
class IRealTimeStylus extends IUnknown {
  // vtable begins at 3, is 31 entries long.
  IRealTimeStylus(Pointer<COMObject> ptr) : super(ptr);

  int get Enabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnable,
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
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fEnable,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fEnable,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get HWND {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set HWND(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          IntPtr hwnd,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int hwnd,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_WindowInputRectangle(
    Pointer<RECT> prcWndInputRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcWndInputRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcWndInputRect,
          )>()(
        ptr.ref.lpVtbl,
        prcWndInputRect,
      );

  int put_WindowInputRectangle(
    Pointer<RECT> prcWndInputRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcWndInputRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcWndInputRect,
          )>()(
        ptr.ref.lpVtbl,
        prcWndInputRect,
      );

  int AddStylusSyncPlugin(
    int iIndex,
    Pointer<COMObject> piPlugin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<COMObject> piPlugin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<COMObject> piPlugin,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        piPlugin,
      );

  int RemoveStylusSyncPlugin(
    int iIndex,
    Pointer<Pointer<COMObject>> ppiPlugin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        ppiPlugin,
      );

  int RemoveAllStylusSyncPlugins() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetStylusSyncPlugin(
    int iIndex,
    Pointer<Pointer<COMObject>> ppiPlugin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        ppiPlugin,
      );

  int GetStylusSyncPluginCount(
    Pointer<Uint32> pcPlugins,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcPlugins,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcPlugins,
          )>()(
        ptr.ref.lpVtbl,
        pcPlugins,
      );

  int AddStylusAsyncPlugin(
    int iIndex,
    Pointer<COMObject> piPlugin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<COMObject> piPlugin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<COMObject> piPlugin,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        piPlugin,
      );

  int RemoveStylusAsyncPlugin(
    int iIndex,
    Pointer<Pointer<COMObject>> ppiPlugin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        ppiPlugin,
      );

  int RemoveAllStylusAsyncPlugins() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetStylusAsyncPlugin(
    int iIndex,
    Pointer<Pointer<COMObject>> ppiPlugin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<Pointer<COMObject>> ppiPlugin,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        ppiPlugin,
      );

  int GetStylusAsyncPluginCount(
    Pointer<Uint32> pcPlugins,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcPlugins,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcPlugins,
          )>()(
        ptr.ref.lpVtbl,
        pcPlugins,
      );

  Pointer<COMObject> get ChildRealTimeStylusPlugin {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiRTS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiRTS,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_ChildRealTimeStylusPlugin(
    Pointer<COMObject> piRTS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piRTS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piRTS,
          )>()(
        ptr.ref.lpVtbl,
        piRTS,
      );

  int AddCustomStylusDataToQueue(
    int sq,
    Pointer<GUID> pGuidId,
    int cbData,
    Pointer<Uint8> pbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 sq,
            Pointer<GUID> pGuidId,
            Uint32 cbData,
            Pointer<Uint8> pbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sq,
            Pointer<GUID> pGuidId,
            int cbData,
            Pointer<Uint8> pbData,
          )>()(
        ptr.ref.lpVtbl,
        sq,
        pGuidId,
        cbData,
        pbData,
      );

  int ClearStylusQueues() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int SetAllTabletsMode(
    int fUseMouseForInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fUseMouseForInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fUseMouseForInput,
          )>()(
        ptr.ref.lpVtbl,
        fUseMouseForInput,
      );

  int SetSingleTabletMode(
    Pointer<COMObject> piTablet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piTablet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piTablet,
          )>()(
        ptr.ref.lpVtbl,
        piTablet,
      );

  int GetTablet(
    Pointer<Pointer<COMObject>> ppiSingleTablet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiSingleTablet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiSingleTablet,
          )>()(
        ptr.ref.lpVtbl,
        ppiSingleTablet,
      );

  int GetTabletContextIdFromTablet(
    Pointer<COMObject> piTablet,
    Pointer<Uint32> ptcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piTablet,
            Pointer<Uint32> ptcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piTablet,
            Pointer<Uint32> ptcid,
          )>()(
        ptr.ref.lpVtbl,
        piTablet,
        ptcid,
      );

  int GetTabletFromTabletContextId(
    int tcid,
    Pointer<Pointer<COMObject>> ppiTablet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tcid,
            Pointer<Pointer<COMObject>> ppiTablet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tcid,
            Pointer<Pointer<COMObject>> ppiTablet,
          )>()(
        ptr.ref.lpVtbl,
        tcid,
        ppiTablet,
      );

  int GetAllTabletContextIds(
    Pointer<Uint32> pcTcidCount,
    Pointer<Pointer<Uint32>> ppTcids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcTcidCount,
            Pointer<Pointer<Uint32>> ppTcids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcTcidCount,
            Pointer<Pointer<Uint32>> ppTcids,
          )>()(
        ptr.ref.lpVtbl,
        pcTcidCount,
        ppTcids,
      );

  int GetStyluses(
    Pointer<Pointer<COMObject>> ppiInkCursors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiInkCursors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiInkCursors,
          )>()(
        ptr.ref.lpVtbl,
        ppiInkCursors,
      );

  int GetStylusForId(
    int sid,
    Pointer<Pointer<COMObject>> ppiInkCursor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 sid,
            Pointer<Pointer<COMObject>> ppiInkCursor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sid,
            Pointer<Pointer<COMObject>> ppiInkCursor,
          )>()(
        ptr.ref.lpVtbl,
        sid,
        ppiInkCursor,
      );

  int SetDesiredPacketDescription(
    int cProperties,
    Pointer<GUID> pPropertyGuids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cProperties,
            Pointer<GUID> pPropertyGuids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cProperties,
            Pointer<GUID> pPropertyGuids,
          )>()(
        ptr.ref.lpVtbl,
        cProperties,
        pPropertyGuids,
      );

  int GetDesiredPacketDescription(
    Pointer<Uint32> pcProperties,
    Pointer<Pointer<GUID>> ppPropertyGuids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcProperties,
            Pointer<Pointer<GUID>> ppPropertyGuids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcProperties,
            Pointer<Pointer<GUID>> ppPropertyGuids,
          )>()(
        ptr.ref.lpVtbl,
        pcProperties,
        ppPropertyGuids,
      );

  int GetPacketDescriptionData(
    int tcid,
    Pointer<Float> pfInkToDeviceScaleX,
    Pointer<Float> pfInkToDeviceScaleY,
    Pointer<Uint32> pcPacketProperties,
    Pointer<Pointer<PACKET_PROPERTY>> ppPacketProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tcid,
            Pointer<Float> pfInkToDeviceScaleX,
            Pointer<Float> pfInkToDeviceScaleY,
            Pointer<Uint32> pcPacketProperties,
            Pointer<Pointer<PACKET_PROPERTY>> ppPacketProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tcid,
            Pointer<Float> pfInkToDeviceScaleX,
            Pointer<Float> pfInkToDeviceScaleY,
            Pointer<Uint32> pcPacketProperties,
            Pointer<Pointer<PACKET_PROPERTY>> ppPacketProperties,
          )>()(
        ptr.ref.lpVtbl,
        tcid,
        pfInkToDeviceScaleX,
        pfInkToDeviceScaleY,
        pcPacketProperties,
        ppPacketProperties,
      );
}

/// @nodoc
const CLSID_RealTimeStylus = '{E26B366D-F998-43CE-836F-CB6D904432B0}';

/// {@category com}
class RealTimeStylus extends IRealTimeStylus {
  RealTimeStylus(Pointer<COMObject> ptr) : super(ptr);

  factory RealTimeStylus.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RealTimeStylus);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRealTimeStylus);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RealTimeStylus(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
